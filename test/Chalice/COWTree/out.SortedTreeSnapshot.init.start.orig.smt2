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
(declare-fun $@bf_26 ( ) Bool)
(declare-fun $@bf_27 ( ) Bool)
(declare-fun $@bf_28 ( ) Bool)
(declare-fun $@bf_29 ( ) Bool)
(declare-fun $@bf_30 ( ) Bool)
(declare-fun $@bf_31 ( ) Bool)
(declare-fun $@bf_32 ( ) Bool)
(declare-fun $@bf_33 ( ) Bool)
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
(declare-fun exhaleMask@_159@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_159@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_159@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_159@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_159@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_159@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_166@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_166@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_166@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_166@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_166@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_166@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_172@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_172@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun foldK@_158 ( ) Int)
(declare-fun foldK@_165 ( ) Int)
(declare-fun forkK ( ) Field$Int$)
(declare-fun Fractions ( Int ) Int)
(declare-fun Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
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
(declare-fun inhaleHeap@_157@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun inhaleHeap@_164@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun inhaleHeap@_171@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
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
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Seq$Int$$ Seq$Int$ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@PermissionComponent@To@Int@@$ ( $@Map@@PermissionComponent@To@Int@@ PermissionComponent Int ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Mask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun methodK@_154 ( ) Int)
(declare-fun module@default ( ) ModuleName)
(declare-fun monitorK ( ) Int)
(declare-fun mu ( ) Field$Mu$)
(declare-fun nostate ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun null ( ) ref)
(declare-fun perm$N ( ) PermissionComponent)
(declare-fun perm$R ( ) PermissionComponent)
(declare-fun Permission$denominator ( ) Int)
(declare-fun Permission$Full ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Permission$FullFraction ( ) Int)
(declare-fun Permission$Zero ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun predicateK ( ) Int)
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
(declare-fun SortedTreeSnapshot@t ( ) TypeName)
(declare-fun this ( ) ref)
(declare-fun treeRoot@10 ( ) ref)
(declare-fun ZeroCredits ( ) $@Map@@ref@To@Int@@)
(declare-fun ZeroMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)

;Predicates
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $@condition_$11 ( ) Bool)
(declare-fun $@condition_$13 ( ) Bool)
(declare-fun $@condition_$15 ( ) Bool)
(declare-fun $@condition_$17 ( ) Bool)
(declare-fun $@condition_$18 ( ) Bool)
(declare-fun $@condition_$19 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$21 ( ) Bool)
(declare-fun $@condition_$23 ( ) Bool)
(declare-fun $@condition_$25 ( ) Bool)
(declare-fun $@condition_$27 ( ) Bool)
(declare-fun $@condition_$29 ( ) Bool)
(declare-fun $@condition_$3 ( ) Bool)
(declare-fun $@condition_$31 ( ) Bool)
(declare-fun $@condition_$33 ( ) Bool)
(declare-fun $@condition_$35 ( ) Bool)
(declare-fun $@condition_$36 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$5 ( ) Bool)
(declare-fun $@condition_$7 ( ) Bool)
(declare-fun $@condition_$9 ( ) Bool)
(declare-fun $branchMerge_0 ( ) Bool)
(declare-fun $branchMerge_1 ( ) Bool)
(declare-fun $branchMerge_10 ( ) Bool)
(declare-fun $branchMerge_11 ( ) Bool)
(declare-fun $branchMerge_12 ( ) Bool)
(declare-fun $branchMerge_13 ( ) Bool)
(declare-fun $branchMerge_14 ( ) Bool)
(declare-fun $branchMerge_15 ( ) Bool)
(declare-fun $branchMerge_2 ( ) Bool)
(declare-fun $branchMerge_3 ( ) Bool)
(declare-fun $branchMerge_4 ( ) Bool)
(declare-fun $branchMerge_5 ( ) Bool)
(declare-fun $branchMerge_6 ( ) Bool)
(declare-fun $branchMerge_7 ( ) Bool)
(declare-fun $branchMerge_8 ( ) Bool)
(declare-fun $branchMerge_9 ( ) Bool)
(declare-fun $start ( ) Bool)
(declare-fun anon0 ( ) Bool)
(declare-fun anon19 ( ) Bool)
(declare-fun anon19@1 ( ) Bool)
(declare-fun anon19@1_assertion ( ) Bool)
(declare-fun anon19@2 ( ) Bool)
(declare-fun anon19@2_assertion ( ) Bool)
(declare-fun anon19@3 ( ) Bool)
(declare-fun anon19@3_assertion ( ) Bool)
(declare-fun anon19@4 ( ) Bool)
(declare-fun anon19_assertion ( ) Bool)
(declare-fun anon31 ( ) Bool)
(declare-fun anon44 ( ) Bool)
(declare-fun anon44@1 ( ) Bool)
(declare-fun anon44@1_assertion ( ) Bool)
(declare-fun anon44@2 ( ) Bool)
(declare-fun anon44@2_assertion ( ) Bool)
(declare-fun anon44@3 ( ) Bool)
(declare-fun anon44@3_assertion ( ) Bool)
(declare-fun anon44@4 ( ) Bool)
(declare-fun anon44_assertion ( ) Bool)
(declare-fun anon56 ( ) Bool)
(declare-fun anon6 ( ) Bool)
(declare-fun anon6@1 ( ) Bool)
(declare-fun anon6@1_assertion ( ) Bool)
(declare-fun anon6@2 ( ) Bool)
(declare-fun anon6@2_assertion ( ) Bool)
(declare-fun anon6@3 ( ) Bool)
(declare-fun anon6_assertion ( ) Bool)
(declare-fun anon63 ( ) Bool)
(declare-fun anon63@1 ( ) Bool)
(declare-fun anon63@1_assertion ( ) Bool)
(declare-fun anon63@2 ( ) Bool)
(declare-fun anon63@2_assertion ( ) Bool)
(declare-fun anon63@3 ( ) Bool)
(declare-fun anon63@3_assertion ( ) Bool)
(declare-fun anon63@4 ( ) Bool)
(declare-fun anon63_assertion ( ) Bool)
(declare-fun anon69 ( ) Bool)
(declare-fun anon69@1 ( ) Bool)
(declare-fun anon69@1_assertion ( ) Bool)
(declare-fun anon69_assertion ( ) Bool)
(declare-fun anon70_Else ( ) Bool)
(declare-fun anon70_Then ( ) Bool)
(declare-fun anon71_Else ( ) Bool)
(declare-fun anon71_Then ( ) Bool)
(declare-fun anon72_Else ( ) Bool)
(declare-fun anon72_Else@1 ( ) Bool)
(declare-fun anon72_Else@1_assertion ( ) Bool)
(declare-fun anon72_Else@2 ( ) Bool)
(declare-fun anon72_Else_assertion ( ) Bool)
(declare-fun anon72_Then ( ) Bool)
(declare-fun anon72_Then@1 ( ) Bool)
(declare-fun anon72_Then@1_assertion ( ) Bool)
(declare-fun anon72_Then@2 ( ) Bool)
(declare-fun anon72_Then@2_assertion ( ) Bool)
(declare-fun anon72_Then@3 ( ) Bool)
(declare-fun anon72_Then@3_assertion ( ) Bool)
(declare-fun anon72_Then@4 ( ) Bool)
(declare-fun anon72_Then@4_assertion ( ) Bool)
(declare-fun anon72_Then@5 ( ) Bool)
(declare-fun anon72_Then@5_assertion ( ) Bool)
(declare-fun anon72_Then@6 ( ) Bool)
(declare-fun anon72_Then_assertion ( ) Bool)
(declare-fun anon73_Else ( ) Bool)
(declare-fun anon73_Then ( ) Bool)
(declare-fun anon74_Else ( ) Bool)
(declare-fun anon74_Then ( ) Bool)
(declare-fun anon75_Else ( ) Bool)
(declare-fun anon75_Then ( ) Bool)
(declare-fun anon75_Then@1 ( ) Bool)
(declare-fun anon75_Then_assertion ( ) Bool)
(declare-fun anon76_Else ( ) Bool)
(declare-fun anon76_Then ( ) Bool)
(declare-fun anon76_Then@1 ( ) Bool)
(declare-fun anon76_Then_assertion ( ) Bool)
(declare-fun anon77_Else ( ) Bool)
(declare-fun anon77_Then ( ) Bool)
(declare-fun anon77_Then@1 ( ) Bool)
(declare-fun anon77_Then@1_assertion ( ) Bool)
(declare-fun anon77_Then@2 ( ) Bool)
(declare-fun anon77_Then_assertion ( ) Bool)
(declare-fun anon78_Else ( ) Bool)
(declare-fun anon78_Then ( ) Bool)
(declare-fun anon78_Then@1 ( ) Bool)
(declare-fun anon78_Then@1_assertion ( ) Bool)
(declare-fun anon78_Then@2 ( ) Bool)
(declare-fun anon78_Then_assertion ( ) Bool)
(declare-fun anon79_Else ( ) Bool)
(declare-fun anon79_Then ( ) Bool)
(declare-fun anon80_Else ( ) Bool)
(declare-fun anon80_Then ( ) Bool)
(declare-fun anon81_Else ( ) Bool)
(declare-fun anon81_Then ( ) Bool)
(declare-fun anon82_Else ( ) Bool)
(declare-fun anon82_Then ( ) Bool)
(declare-fun anon83_Else ( ) Bool)
(declare-fun anon83_Then ( ) Bool)
(declare-fun anon83_Then@1 ( ) Bool)
(declare-fun anon83_Then_assertion ( ) Bool)
(declare-fun anon84_Else ( ) Bool)
(declare-fun anon84_Then ( ) Bool)
(declare-fun anon84_Then@1 ( ) Bool)
(declare-fun anon84_Then_assertion ( ) Bool)
(declare-fun anon85_Else ( ) Bool)
(declare-fun anon85_Then ( ) Bool)
(declare-fun anon85_Then@1 ( ) Bool)
(declare-fun anon85_Then@1_assertion ( ) Bool)
(declare-fun anon85_Then@2 ( ) Bool)
(declare-fun anon85_Then_assertion ( ) Bool)
(declare-fun anon86_Else ( ) Bool)
(declare-fun anon86_Then ( ) Bool)
(declare-fun anon86_Then@1 ( ) Bool)
(declare-fun anon86_Then@1_assertion ( ) Bool)
(declare-fun anon86_Then@2 ( ) Bool)
(declare-fun anon86_Then_assertion ( ) Bool)
(declare-fun anon87_Else ( ) Bool)
(declare-fun anon87_Then ( ) Bool)
(declare-fun anon88_Else ( ) Bool)
(declare-fun anon88_Then ( ) Bool)
(declare-fun anon89_Else ( ) Bool)
(declare-fun anon89_Then ( ) Bool)
(declare-fun anon89_Then@1 ( ) Bool)
(declare-fun anon89_Then_assertion ( ) Bool)
(declare-fun anon90_Else ( ) Bool)
(declare-fun anon90_Then ( ) Bool)
(declare-fun anon90_Then@1 ( ) Bool)
(declare-fun anon90_Then_assertion ( ) Bool)
(declare-fun anon91_Else ( ) Bool)
(declare-fun anon91_Then ( ) Bool)
(declare-fun anon92_Else ( ) Bool)
(declare-fun anon92_Then ( ) Bool)
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
(declare-fun IsGoodInhaleState ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)
(declare-fun IsGoodMask ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)
(declare-fun IsGoodState$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
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
(declare-fun PreconditionGeneratedEntry ( ) Bool)
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
   (assert (! (forall ((|i_1| Field$ref$)(|i| ref)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v| ref))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_1 i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_1 i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_0))
   (assert (! (forall ((|i_15| Field$ref$)(|i_14| ref)(|m_8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_7| $@Map@@PermissionComponent@To@Int@@))(!(= v_7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_8 i_14 i_15 v_7) i_14 i_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_8 i_14 i_15 v_7) i_14 i_15)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_1))
   (assert (! (forall ((|i_28| PermissionComponent)(|m_15| $@Map@@PermissionComponent@To@Int@@)(|v_14| Int))(!(= v_14 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_15 i_28 v_14) i_28)):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_15 i_28 v_14) i_28)) :qid map_1_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_2))
   (assert (! (forall ((|i_31| Field$Seq$Int$$)(|i_30| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_16| Seq$Int$))(!(= v_16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_17 i_30 i_31 v_16) i_30 i_31)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_17 i_30 i_31 v_16) i_30 i_31)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_3))
   (assert (! (forall ((|i_45| Field$Seq$Int$$)(|i_44| ref)(|m_24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_23| $@Map@@PermissionComponent@To@Int@@))(!(= v_23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_24 i_44 i_45 v_23) i_44 i_45)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_24 i_44 i_45 v_23) i_44 i_45)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_4))
   (assert (! (forall ((|i_59| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_58| ref)(|m_31| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_30| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= v_30 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_31 i_58 i_59 v_30) i_58 i_59)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_31 i_58 i_59 v_30) i_58 i_59)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_5))
   (assert (! (forall ((|i_73| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_72| ref)(|m_38| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_37| $@Map@@PermissionComponent@To@Int@@))(!(= v_37 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_38 i_72 i_73 v_37) i_72 i_73)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_38 i_72 i_73 v_37) i_72 i_73)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_6))
   (assert (! (forall ((|v_1| ref)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_3| Field$ref$)(|j_1| Field$ref$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_2 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_2 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_2 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_7))
   (assert (! (forall ((|v_10| $@Map@@PermissionComponent@To@Int@@)(|i_21| Field$ref$)(|i_20| ref)(|j_17| Field$Int$)(|j_16| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_11 j_16 j_17) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_11 i_20 i_21 v_10) j_16 j_17)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_11 i_20 i_21 v_10) j_16 j_17)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__ref :weight 0 )) :named ax_8))
   (assert (! (forall ((|v_11| $@Map@@PermissionComponent@To@Int@@)(|i_23| Field$ref$)(|i_22| ref)(|j_19| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_18| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_12 j_18 j_19) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_12 i_22 i_23 v_11) j_18 j_19)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_12 i_22 i_23 v_11) j_18 j_19)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref :weight 0 )) :named ax_9))
   (assert (! (forall ((|v_12| $@Map@@PermissionComponent@To@Int@@)(|i_25| Field$ref$)(|i_24| ref)(|j_21| Field$Mu$)(|j_20| ref)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_13 j_20 j_21) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_13 i_24 i_25 v_12) j_20 j_21)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_13 i_24 i_25 v_12) j_20 j_21)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__ref :weight 0 )) :named ax_10))
   (assert (! (forall ((|v_13| $@Map@@PermissionComponent@To@Int@@)(|i_27| Field$ref$)(|i_26| ref)(|j_23| Field$Seq$Int$$)(|j_22| ref)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_14 j_22 j_23) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_14 i_26 i_27 v_13) j_22 j_23)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_14 i_26 i_27 v_13) j_22 j_23)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__ref :weight 0 )) :named ax_11))
   (assert (! (forall ((|v_15| Int)(|m_16| $@Map@@PermissionComponent@To@Int@@)(|i_29| PermissionComponent)(|j_24| PermissionComponent))(!(=> (not (= j_24 i_29)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ m_16 j_24) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_16 i_29 v_15) j_24))):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_16 i_29 v_15) j_24)) :qid map_2_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_12))
   (assert (! (forall ((|v_17| Seq$Int$)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_33| Field$Seq$Int$$)(|j_26| Field$Seq$Int$$)(|i_32| ref)(|j_25| ref))(!(=> (or (not (= j_26 i_33)) (not (= j_25 i_32))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_18 j_25 j_26) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_18 i_32 i_33 v_17) j_25 j_26))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_18 i_32 i_33 v_17) j_25 j_26)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_13))
   (assert (! (forall ((|v_18| Seq$Int$)(|i_35| Field$Seq$Int$$)(|i_34| ref)(|j_28| Field$Bool$)(|j_27| ref)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_19 j_27 j_28) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_19 i_34 i_35 v_18) j_27 j_28)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_19 i_34 i_35 v_18) j_27 j_28)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Seq$Int$ :weight 0 )) :named ax_14))
   (assert (! (forall ((|v_19| Seq$Int$)(|i_37| Field$Seq$Int$$)(|i_36| ref)(|j_30| Field$Int$)(|j_29| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_20 j_29 j_30) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_20 i_36 i_37 v_19) j_29 j_30)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_20 i_36 i_37 v_19) j_29 j_30)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__Seq$Int$ :weight 0 )) :named ax_15))
   (assert (! (forall ((|v_2| ref)(|i_5| Field$ref$)(|i_4| ref)(|j_3| Field$Bool$)(|j_2| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_3 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_3 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_16))
   (assert (! (forall ((|v_20| Seq$Int$)(|i_39| Field$Seq$Int$$)(|i_38| ref)(|j_32| Field$ref$)(|j_31| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_21 j_31 j_32) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_21 i_38 i_39 v_20) j_31 j_32)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_21 i_38 i_39 v_20) j_31 j_32)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Seq$Int$ :weight 0 )) :named ax_17))
   (assert (! (forall ((|v_21| Seq$Int$)(|i_41| Field$Seq$Int$$)(|i_40| ref)(|j_34| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_33| ref)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_22 j_33 j_34) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_22 i_40 i_41 v_21) j_33 j_34)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_22 i_40 i_41 v_21) j_33 j_34)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$ :weight 0 )) :named ax_18))
   (assert (! (forall ((|v_22| Seq$Int$)(|i_43| Field$Seq$Int$$)(|i_42| ref)(|j_36| Field$Mu$)(|j_35| ref)(|m_23| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_23 j_35 j_36) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_23 i_42 i_43 v_22) j_35 j_36)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_23 i_42 i_43 v_22) j_35 j_36)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Seq$Int$ :weight 0 )) :named ax_19))
   (assert (! (forall ((|v_24| $@Map@@PermissionComponent@To@Int@@)(|m_25| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_47| Field$Seq$Int$$)(|j_38| Field$Seq$Int$$)(|i_46| ref)(|j_37| ref))(!(=> (or (not (= j_38 i_47)) (not (= j_37 i_46))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_25 j_37 j_38) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_25 i_46 i_47 v_24) j_37 j_38))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_25 i_46 i_47 v_24) j_37 j_38)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_20))
   (assert (! (forall ((|v_25| $@Map@@PermissionComponent@To@Int@@)(|i_49| Field$Seq$Int$$)(|i_48| ref)(|j_40| Field$Bool$)(|j_39| ref)(|m_26| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_26 j_39 j_40) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_26 i_48 i_49 v_25) j_39 j_40)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_26 i_48 i_49 v_25) j_39 j_40)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Seq$Int$ :weight 0 )) :named ax_21))
   (assert (! (forall ((|v_26| $@Map@@PermissionComponent@To@Int@@)(|i_51| Field$Seq$Int$$)(|i_50| ref)(|j_42| Field$Int$)(|j_41| ref)(|m_27| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_27 j_41 j_42) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_27 i_50 i_51 v_26) j_41 j_42)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_27 i_50 i_51 v_26) j_41 j_42)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Seq$Int$ :weight 0 )) :named ax_22))
   (assert (! (forall ((|v_27| $@Map@@PermissionComponent@To@Int@@)(|i_53| Field$Seq$Int$$)(|i_52| ref)(|j_44| Field$ref$)(|j_43| ref)(|m_28| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_28 j_43 j_44) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_28 i_52 i_53 v_27) j_43 j_44)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_28 i_52 i_53 v_27) j_43 j_44)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Seq$Int$ :weight 0 )) :named ax_23))
   (assert (! (forall ((|v_28| $@Map@@PermissionComponent@To@Int@@)(|i_55| Field$Seq$Int$$)(|i_54| ref)(|j_46| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_45| ref)(|m_29| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_29 j_45 j_46) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_29 i_54 i_55 v_28) j_45 j_46)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_29 i_54 i_55 v_28) j_45 j_46)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$ :weight 0 )) :named ax_24))
   (assert (! (forall ((|v_29| $@Map@@PermissionComponent@To@Int@@)(|i_57| Field$Seq$Int$$)(|i_56| ref)(|j_48| Field$Mu$)(|j_47| ref)(|m_30| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_30 j_47 j_48) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_30 i_56 i_57 v_29) j_47 j_48)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_30 i_56 i_57 v_29) j_47 j_48)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Seq$Int$ :weight 0 )) :named ax_25))
   (assert (! (forall ((|v_3| ref)(|i_7| Field$ref$)(|i_6| ref)(|j_5| Field$Int$)(|j_4| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_4 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_4 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__ref :weight 0 )) :named ax_26))
   (assert (! (forall ((|v_31| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|m_32| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_61| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_50| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_60| ref)(|j_49| ref))(!(=> (or (not (= j_50 i_61)) (not (= j_49 i_60))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_32 j_49 j_50) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_32 i_60 i_61 v_31) j_49 j_50))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_32 i_60 i_61 v_31) j_49 j_50)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_27))
   (assert (! (forall ((|v_32| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_63| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_62| ref)(|j_52| Field$Bool$)(|j_51| ref)(|m_33| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_33 j_51 j_52) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_33 i_62 i_63 v_32) j_51 j_52)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_33 i_62 i_63 v_32) j_51 j_52)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_28))
   (assert (! (forall ((|v_33| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_65| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_64| ref)(|j_54| Field$Int$)(|j_53| ref)(|m_34| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_34 j_53 j_54) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_34 i_64 i_65 v_33) j_53 j_54)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_34 i_64 i_65 v_33) j_53 j_54)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_29))
   (assert (! (forall ((|v_34| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_67| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_66| ref)(|j_56| Field$ref$)(|j_55| ref)(|m_35| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_35 j_55 j_56) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_35 i_66 i_67 v_34) j_55 j_56)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_35 i_66 i_67 v_34) j_55 j_56)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_30))
   (assert (! (forall ((|v_35| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_69| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_68| ref)(|j_58| Field$Mu$)(|j_57| ref)(|m_36| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_36 j_57 j_58) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_36 i_68 i_69 v_35) j_57 j_58)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_36 i_68 i_69 v_35) j_57 j_58)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_31))
   (assert (! (forall ((|v_36| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_71| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_70| ref)(|j_60| Field$Seq$Int$$)(|j_59| ref)(|m_37| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_37 j_59 j_60) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_37 i_70 i_71 v_36) j_59 j_60)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_37 i_70 i_71 v_36) j_59 j_60)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_32))
   (assert (! (forall ((|v_38| $@Map@@PermissionComponent@To@Int@@)(|m_39| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_75| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_62| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_74| ref)(|j_61| ref))(!(=> (or (not (= j_62 i_75)) (not (= j_61 i_74))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_39 j_61 j_62) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_39 i_74 i_75 v_38) j_61 j_62))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_39 i_74 i_75 v_38) j_61 j_62)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_33))
   (assert (! (forall ((|v_39| $@Map@@PermissionComponent@To@Int@@)(|i_77| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_76| ref)(|j_64| Field$Bool$)(|j_63| ref)(|m_40| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_40 j_63 j_64) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_40 i_76 i_77 v_39) j_63 j_64)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_40 i_76 i_77 v_39) j_63 j_64)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_34))
   (assert (! (forall ((|v_4| ref)(|i_9| Field$ref$)(|i_8| ref)(|j_7| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_5 i_8 i_9 v_4) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_5 i_8 i_9 v_4) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref :weight 0 )) :named ax_35))
   (assert (! (forall ((|v_40| $@Map@@PermissionComponent@To@Int@@)(|i_79| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_78| ref)(|j_66| Field$Int$)(|j_65| ref)(|m_41| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_41 j_65 j_66) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_41 i_78 i_79 v_40) j_65 j_66)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_41 i_78 i_79 v_40) j_65 j_66)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_36))
   (assert (! (forall ((|v_41| $@Map@@PermissionComponent@To@Int@@)(|i_81| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_80| ref)(|j_68| Field$ref$)(|j_67| ref)(|m_42| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_42 j_67 j_68) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_42 i_80 i_81 v_41) j_67 j_68)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_42 i_80 i_81 v_41) j_67 j_68)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_37))
   (assert (! (forall ((|v_42| $@Map@@PermissionComponent@To@Int@@)(|i_83| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_82| ref)(|j_70| Field$Mu$)(|j_69| ref)(|m_43| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_43 j_69 j_70) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_43 i_82 i_83 v_42) j_69 j_70)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_43 i_82 i_83 v_42) j_69 j_70)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_38))
   (assert (! (forall ((|v_43| $@Map@@PermissionComponent@To@Int@@)(|i_85| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_84| ref)(|j_72| Field$Seq$Int$$)(|j_71| ref)(|m_44| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_44 j_71 j_72) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_44 i_84 i_85 v_43) j_71 j_72)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_44 i_84 i_85 v_43) j_71 j_72)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_39))
   (assert (! (forall ((|v_5| ref)(|i_11| Field$ref$)(|i_10| ref)(|j_9| Field$Mu$)(|j_8| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_6 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_6 i_10 i_11 v_5) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_6 i_10 i_11 v_5) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__ref :weight 0 )) :named ax_40))
   (assert (! (forall ((|v_6| ref)(|i_13| Field$ref$)(|i_12| ref)(|j_11| Field$Seq$Int$$)(|j_10| ref)(|m_7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_7 j_10 j_11) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_7 i_12 i_13 v_6) j_10 j_11)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_7 i_12 i_13 v_6) j_10 j_11)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__ref :weight 0 )) :named ax_41))
   (assert (! (forall ((|v_8| $@Map@@PermissionComponent@To@Int@@)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_17| Field$ref$)(|j_13| Field$ref$)(|i_16| ref)(|j_12| ref))(!(=> (or (not (= j_13 i_17)) (not (= j_12 i_16))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_9 j_12 j_13) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_9 i_16 i_17 v_8) j_12 j_13))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_9 i_16 i_17 v_8) j_12 j_13)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_42))
   (assert (! (forall ((|v_9| $@Map@@PermissionComponent@To@Int@@)(|i_19| Field$ref$)(|i_18| ref)(|j_15| Field$Bool$)(|j_14| ref)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_10 j_14 j_15) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_10 i_18 i_19 v_9) j_14 j_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_10 i_18 i_19 v_9) j_14 j_15)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__ref :weight 0 )) :named ax_43))
   (assert (! (not (= forkK held)) :named ax_44))
   (assert (! (not (= forkK SortedTree.numClones)) :named ax_45))
   (assert (! (not (= forkK SortedTreeNode.key)) :named ax_46))
   (assert (! (not (= held forkK)) :named ax_47))
   (assert (! (not (= held SortedTree.numClones)) :named ax_48))
   (assert (! (not (= held SortedTreeNode.key)) :named ax_49))
   (assert (! (not (= joinable forkK)) :named ax_50))
   (assert (! (not (= joinable forkK)) :named ax_51))
   (assert (! (not (= joinable held)) :named ax_52))
   (assert (! (not (= joinable held)) :named ax_53))
   (assert (! (not (= joinable SortedTree.numClones)) :named ax_54))
   (assert (! (not (= joinable SortedTreeNode.key)) :named ax_55))
   (assert (! (not (= perm$R perm$N)) :named ax_56))
   (assert (! (not (= perm$R perm$N)) :named ax_57))
   (assert (! (not (= rdheld SortedTreeNode.shared)) :named ax_58))
   (assert (! (not (= SortedTree.keys SortedTreeNode.keys)) :named ax_59))
   (assert (! (not (= SortedTree.keys SortedTreeSnapshot.keys)) :named ax_60))
   (assert (! (not (= SortedTree.numClones forkK)) :named ax_61))
   (assert (! (not (= SortedTree.numClones held)) :named ax_62))
   (assert (! (not (= SortedTree.numClones joinable)) :named ax_63))
   (assert (! (not (= SortedTree.numClones SortedTreeNode.key)) :named ax_64))
   (assert (! (not (= SortedTree.root SortedTreeNode.left)) :named ax_65))
   (assert (! (not (= SortedTree.root SortedTreeNode.right)) :named ax_66))
   (assert (! (not (= SortedTree.root SortedTreeSnapshot.root)) :named ax_67))
   (assert (! (not (= SortedTree.valid SortedTreeNode.valid)) :named ax_68))
   (assert (! (not (= SortedTree.valid SortedTreeSnapshot.valid)) :named ax_69))
   (assert (! (not (= SortedTreeNode.key forkK)) :named ax_70))
   (assert (! (not (= SortedTreeNode.key held)) :named ax_71))
   (assert (! (not (= SortedTreeNode.key joinable)) :named ax_72))
   (assert (! (not (= SortedTreeNode.key SortedTree.numClones)) :named ax_73))
   (assert (! (not (= SortedTreeNode.keys SortedTree.keys)) :named ax_74))
   (assert (! (not (= SortedTreeNode.left SortedTree.root)) :named ax_75))
   (assert (! (not (= SortedTreeNode.left SortedTreeNode.right)) :named ax_76))
   (assert (! (not (= SortedTreeNode.right SortedTree.root)) :named ax_77))
   (assert (! (not (= SortedTreeNode.right SortedTreeNode.left)) :named ax_78))
   (assert (! (not (= SortedTreeNode.shared rdheld)) :named ax_79))
   (assert (! (not (= SortedTreeNode.valid SortedTree.valid)) :named ax_80))
   (assert (! (not (= SortedTreeSnapshot.keys SortedTree.keys)) :named ax_81))
   (assert (! (not (= SortedTreeSnapshot.keys SortedTreeNode.keys)) :named ax_82))
   (assert (! (not (= SortedTreeSnapshot.keys SortedTreeNode.keys)) :named ax_83))
   (assert (! (not (= SortedTreeSnapshot.root SortedTree.root)) :named ax_84))
   (assert (! (not (= SortedTreeSnapshot.root SortedTreeNode.left)) :named ax_85))
   (assert (! (not (= SortedTreeSnapshot.root SortedTreeNode.left)) :named ax_86))
   (assert (! (not (= SortedTreeSnapshot.root SortedTreeNode.right)) :named ax_87))
   (assert (! (not (= SortedTreeSnapshot.root SortedTreeNode.right)) :named ax_88))
   (assert (! (not (= SortedTreeSnapshot.valid SortedTree.valid)) :named ax_89))
   (assert (! (not (= SortedTreeSnapshot.valid SortedTreeNode.valid)) :named ax_90))
   (assert (! (not (= SortedTreeSnapshot.valid SortedTreeNode.valid)) :named ax_91))
   (assert (! (not (= SortedTreeSnapshot@t SortedTreeNode@t)) :named ax_92))
   (assert (! (not (= SortedTreeSnapshot@t SortedTreeNode@t)) :named ax_93))

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
      (= (= true $@bf_26) (ite$Bool$ true true true))
      (= (= true $@bf_27) (ite$Bool$ true true false))
      (= (= true $@bf_28) (ite$Bool$ true false true))
      (= (= true $@bf_29) (ite$Bool$ true false false))
      (= (= true $@bf_30) (ite$Bool$ false true true))
      (= (= true $@bf_31) (ite$Bool$ false true false))
      (= (= true $@bf_32) (ite$Bool$ false false true))
      (= (= true $@bf_33) (ite$Bool$ false false false))
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
      (forall( (|o_$17| ref) (|f_$13| Field$Bool$) (|pc_$0| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ZeroMask |o_$17| |f_$13|) |pc_$0|) 0))
      (forall( (|o_$18| ref) (|f_$14| Field$Int$) (|pc_$1| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask |o_$18| |f_$14|) |pc_$1|) 0))
      (forall( (|o_$19| ref) (|f_$15| Field$ref$) (|pc_$2| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask |o_$19| |f_$15|) |pc_$2|) 0))
      (forall( (|o_$20| ref) (|f_$16| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|pc_$3| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ZeroMask |o_$20| |f_$16|) |pc_$3|) 0))
      (forall( (|o_$21| ref) (|f_$17| Field$Mu$) (|pc_$4| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ZeroMask |o_$21| |f_$17|) |pc_$4|) 0))
      (forall( (|o_$22| ref) (|f_$18| Field$Seq$Int$$) (|pc_$5| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ZeroMask |o_$22| |f_$18|) |pc_$5|) 0))
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
)) :named ax_$start))
(assert (! (=> PreconditionGeneratedEntry (and true 
   (and true
      (IsGoodMask Mask)
      (not (= this null))
      (or (= this null) (= (dtype this) SortedTreeSnapshot@t))
      (or (= treeRoot@10 null) (= (dtype treeRoot@10) SortedTreeNode@t))
      (wf Heap Mask)
   )
anon0
)) :named ax_PreconditionGeneratedEntry))
(assert (! (=> anon0 (and true 
   (and true
      (< (* 1000 methodK@_154) (Fractions 1))
      (< 0 methodK@_154)
      (= CurrentModule module@default)
      (= Heap@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this SortedTreeSnapshot.root (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ inhaleHeap@_157@0 this SortedTreeSnapshot.root)))
      (= Heap@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@0 this SortedTreeSnapshot.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_157@0 this SortedTreeSnapshot.keys)))
      (= Mask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this SortedTreeSnapshot.root (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this SortedTreeSnapshot.root) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this SortedTreeSnapshot.root) perm$R) (Fractions 100)))))
      (= Mask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this SortedTreeSnapshot.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this SortedTreeSnapshot.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this SortedTreeSnapshot.keys) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodInhaleState inhaleHeap@_157@0 Heap ZeroMask)
      (IsGoodMask Mask@0)
      (IsGoodMask Mask@1)
      (IsGoodState$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ inhaleHeap@_157@0 this SortedTreeSnapshot.root))
      (IsGoodState$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_157@0 this SortedTreeSnapshot.keys))
      (not (= this null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this SortedTreeSnapshot.root) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this SortedTreeSnapshot.root)) SortedTreeNode@t))
      (wf Heap@0 Mask@0)
      (wf Heap@0 ZeroMask)
      (wf Heap@1 Mask@0)
      (wf Heap@1 Mask@1)
      (wf inhaleHeap@_157@0 Mask@0)
      (wf inhaleHeap@_157@0 Mask@1)
      CanAssumeFunctionDefs
   )
(or anon70_Else anon70_Then)
)) :named ax_anon0))
(assert (! (=> anon70_Else (and true 
   (and true
      (= $@condition (not (= treeRoot@10 null)))
      (= Heap@3 Heap@1)
      (= Mask@3 Mask@1)
      (= treeRoot@10 null)
      (not $@condition)
   )
$branchMerge_0
)) :named ax_anon70_Else))
(assert (! (=> anon70_Then (and true 
   (and true
      $@condition
      (= $@condition (not (= treeRoot@10 null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_157@0 treeRoot@10 SortedTreeNode.valid) Heap@2)
      (= Heap@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap@1 treeRoot@10 SortedTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_157@0 treeRoot@10 SortedTreeNode.valid)))
      (= Heap@3 Heap@2)
      (= Mask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 treeRoot@10 SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 treeRoot@10 SortedTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 treeRoot@10 SortedTreeNode.valid) perm$R) (Fractions 1)))))
      (= Mask@3 Mask@2)
      (> (Fractions 1) 0)
      (IsGoodMask Mask@2)
      (IsGoodState$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_157@0 treeRoot@10 SortedTreeNode.valid))
      (not (= treeRoot@10 null))
      (wf Heap@2 Mask@1)
      (wf Heap@2 Mask@2)
      (wf inhaleHeap@_157@0 Mask@2)
   )
$branchMerge_0
)) :named ax_anon70_Then))
(assert (! (=> $branchMerge_0 (and true 
   (and true
   )
(or anon71_Else anon71_Then)
)) :named ax_$branchMerge_0))
(assert (! (=> anon71_Else (and true 
   (and true
      (= $@condition_$0 (not (= treeRoot@10 null)))
      (= Heap@5 Heap@3)
      (= Mask@5 Mask@3)
      (= treeRoot@10 null)
      (not $@condition_$0)
   )
anon6
)) :named ax_anon71_Else))
(assert (! (=> anon71_Then (and true 
   (and true
      $@condition_$0
      (= $@condition_$0 (not (= treeRoot@10 null)))
      (= Heap@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 treeRoot@10 SortedTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_157@0 treeRoot@10 SortedTreeNode.keys)))
      (= Heap@5 Heap@4)
      (= Mask@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@3 treeRoot@10 SortedTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@3 treeRoot@10 SortedTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@3 treeRoot@10 SortedTreeNode.keys) perm$R) (Fractions 1)))))
      (= Mask@5 Mask@4)
      (> (Fractions 1) 0)
      (IsGoodMask Mask@4)
      (IsGoodState$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_157@0 treeRoot@10 SortedTreeNode.keys))
      (not (= treeRoot@10 null))
      (wf Heap@4 Mask@3)
      (wf Heap@4 Mask@4)
      (wf inhaleHeap@_157@0 Mask@4)
   )
anon6
)) :named ax_anon71_Then))
(assert (! (=> anon6 (and true 
   (and true
      (= Heap@5 Heap)
      (= Mask@5 Mask)
      (= ZeroCredits Credits)
      (IsGoodMask Mask@5)
      (wf Heap@5 Mask@5)
   )
(or anon6@1 anon6_assertion)
)) :named ax_anon6))
(assert (! (=> anon6@1 (and true 
   (and true
      (= Heap@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this SortedTreeSnapshot.root treeRoot@10))
      (CanWrite$ref$ Mask@5 this SortedTreeSnapshot.root)
      (wf Heap@6 Mask@5)
   )
(or anon6@1_assertion anon6@2)
)) :named ax_anon6@1))
(assert (! (=> anon6_assertion (not (and true
   (and true
      (CanWrite$ref$ Mask@5 this SortedTreeSnapshot.root)
   )
))) :named ax_anon6_assertion))
(assert (! (=> anon6@1_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon6@1_assertion))
(assert (! (=> anon6@2 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon6@2_assertion anon6@3)
)) :named ax_anon6@2))
(assert (! (=> anon6@2_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@5 this SortedTreeSnapshot.root))
   )
))) :named ax_anon6@2_assertion))
(assert (! (=> anon6@3 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@5 this SortedTreeSnapshot.root))
   )
(or anon72_Else anon72_Then)
)) :named ax_anon6@3))
(assert (! (=> anon72_Else (and true 
   (and true
      (= $@condition_$2 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTreeSnapshot.root) null)
      (not $@condition_$2)
   )
(or anon72_Else@1 anon72_Else_assertion)
)) :named ax_anon72_Else))
(assert (! (=> anon72_Then (and true 
   (and true
      $@condition_$2
      (= $@condition_$2 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTreeSnapshot.root) null))
   )
(or anon72_Then@1 anon72_Then_assertion)
)) :named ax_anon72_Then))
(assert (! (=> anon72_Else@1 (and true 
   (and true
      (< (* 1000 foldK@_165) (Fractions 1))
      (< (* 1000 foldK@_165) methodK@_154)
      (< 0 foldK@_165)
      (= Heap@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 this SortedTreeSnapshot.keys Seq@Empty$Int$))
      (CanWrite$Seq$Int$$ Mask@5 this SortedTreeSnapshot.keys)
      (wf Heap@8 Mask@5)
   )
(or anon72_Else@1_assertion anon72_Else@2)
)) :named ax_anon72_Else@1))
(assert (! (=> anon72_Else_assertion (not (and true
   (and true
      (CanWrite$Seq$Int$$ Mask@5 this SortedTreeSnapshot.keys)
   )
))) :named ax_anon72_Else_assertion))
(assert (! (=> anon72_Then@1 (and true 
   (and true
      (CanWrite$Seq$Int$$ Mask@5 this SortedTreeSnapshot.keys)
   )
(or anon72_Then@1_assertion anon72_Then@2)
)) :named ax_anon72_Then@1))
(assert (! (=> anon72_Then_assertion (not (and true
   (and true
      (CanWrite$Seq$Int$$ Mask@5 this SortedTreeSnapshot.keys)
   )
))) :named ax_anon72_Then_assertion))
(assert (! (=> anon72_Else@1_assertion (not (and true
   (and true
      (not (= this null))
   )
))) :named ax_anon72_Else@1_assertion))
(assert (! (=> anon72_Else@2 (and true 
   (and true
      (not (= this null))
   )
(or anon81_Else anon81_Then)
)) :named ax_anon72_Else@2))
(assert (! (=> anon72_Then@1_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon72_Then@1_assertion))
(assert (! (=> anon72_Then@2 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon72_Then@2_assertion anon72_Then@3)
)) :named ax_anon72_Then@2))
(assert (! (=> anon81_Else (and true 
   (and true
      (= $@condition_$4 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)
      (not $@condition_$4)
   )
$branchMerge_2
)) :named ax_anon81_Else))
(assert (! (=> anon81_Then (and true 
   (and true
      $@condition_$4
      (= $@condition_$4 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
   )
$branchMerge_2
)) :named ax_anon81_Then))
(assert (! (=> anon72_Then@2_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@5 this SortedTreeSnapshot.root))
   )
))) :named ax_anon72_Then@2_assertion))
(assert (! (=> anon72_Then@3 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@5 this SortedTreeSnapshot.root))
   )
(or anon72_Then@3_assertion anon72_Then@4)
)) :named ax_anon72_Then@3))
(assert (! (=> $branchMerge_2 (and true 
   (and true
   )
(or anon82_Else anon82_Then)
)) :named ax_$branchMerge_2))
(assert (! (=> anon72_Then@3_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTreeSnapshot.root) null)))
   )
))) :named ax_anon72_Then@3_assertion))
(assert (! (=> anon72_Then@4 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTreeSnapshot.root) null)))
   )
(or anon72_Then@4_assertion anon72_Then@5)
)) :named ax_anon72_Then@4))
(assert (! (=> anon82_Else (and true 
   (and true
      (= $@condition_$7 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)
      (not $@condition_$7)
   )
$branchMerge_4
)) :named ax_anon82_Else))
(assert (! (=> anon82_Then (and true 
   (and true
      $@condition_$7
      (= $@condition_$7 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
   )
$branchMerge_4
)) :named ax_anon82_Then))
(assert (! (=> anon72_Then@4_assertion (not (and true
   (and true
      (=> true (CanRead$Seq$Int$$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTreeSnapshot.root) SortedTreeNode.keys))
   )
))) :named ax_anon72_Then@4_assertion))
(assert (! (=> anon72_Then@5 (and true 
   (and true
      (< (* 1000 foldK@_158) (Fractions 1))
      (< (* 1000 foldK@_158) methodK@_154)
      (< 0 foldK@_158)
      (= Heap@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 this SortedTreeSnapshot.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTreeSnapshot.root) SortedTreeNode.keys)))
      (=> true (CanRead$Seq$Int$$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTreeSnapshot.root) SortedTreeNode.keys))
      (wf Heap@7 Mask@5)
   )
(or anon72_Then@5_assertion anon72_Then@6)
)) :named ax_anon72_Then@5))
(assert (! (=> $branchMerge_4 (and true 
   (and true
   )
(or anon83_Else anon83_Then)
)) :named ax_$branchMerge_4))
(assert (! (=> anon72_Then@5_assertion (not (and true
   (and true
      (not (= this null))
   )
))) :named ax_anon72_Then@5_assertion))
(assert (! (=> anon72_Then@6 (and true 
   (and true
      (not (= this null))
   )
(or anon73_Else anon73_Then)
)) :named ax_anon72_Then@6))
(assert (! (=> anon83_Else (and true 
   (and true
      (= $@condition_$11 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)
      (not $@condition_$11)
   )
$branchMerge_6
)) :named ax_anon83_Else))
(assert (! (=> anon83_Then (and true 
   (and true
      $@condition_$11
      (= $@condition_$11 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
   )
(or anon83_Then@1 anon83_Then_assertion)
)) :named ax_anon83_Then))
(assert (! (=> anon73_Else (and true 
   (and true
      (= $@condition_$3 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)
      (not $@condition_$3)
   )
$branchMerge_1
)) :named ax_anon73_Else))
(assert (! (=> anon73_Then (and true 
   (and true
      $@condition_$3
      (= $@condition_$3 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
   )
$branchMerge_1
)) :named ax_anon73_Then))
(assert (! (=> anon83_Then@1 (and true 
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this SortedTreeSnapshot.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys))
   )
$branchMerge_6
)) :named ax_anon83_Then@1))
(assert (! (=> anon83_Then_assertion (not (and true
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this SortedTreeSnapshot.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys))
   )
))) :named ax_anon83_Then_assertion))
(assert (! (=> $branchMerge_1 (and true 
   (and true
   )
(or anon74_Else anon74_Then)
)) :named ax_$branchMerge_1))
(assert (! (=> $branchMerge_6 (and true 
   (and true
   )
(or anon84_Else anon84_Then)
)) :named ax_$branchMerge_6))
(assert (! (=> anon74_Else (and true 
   (and true
      (= $@condition_$5 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)
      (not $@condition_$5)
   )
$branchMerge_3
)) :named ax_anon74_Else))
(assert (! (=> anon74_Then (and true 
   (and true
      $@condition_$5
      (= $@condition_$5 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
   )
$branchMerge_3
)) :named ax_anon74_Then))
(assert (! (=> anon84_Else (and true 
   (and true
      (= $@condition_$15 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
      (not $@condition_$15)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
   )
anon44
)) :named ax_anon84_Else))
(assert (! (=> anon84_Then (and true 
   (and true
      $@condition_$15
      (= $@condition_$15 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)
   )
(or anon84_Then@1 anon84_Then_assertion)
)) :named ax_anon84_Then))
(assert (! (=> $branchMerge_3 (and true 
   (and true
   )
(or anon75_Else anon75_Then)
)) :named ax_$branchMerge_3))
(assert (! (=> anon84_Then@1 (and true 
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this SortedTreeSnapshot.keys) Seq@Empty$Int$)
   )
anon44
)) :named ax_anon84_Then@1))
(assert (! (=> anon84_Then_assertion (not (and true
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this SortedTreeSnapshot.keys) Seq@Empty$Int$)
   )
))) :named ax_anon84_Then_assertion))
(assert (! (=> anon75_Else (and true 
   (and true
      (= $@condition_$9 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)
      (not $@condition_$9)
   )
$branchMerge_5
)) :named ax_anon75_Else))
(assert (! (=> anon75_Then (and true 
   (and true
      $@condition_$9
      (= $@condition_$9 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
   )
(or anon75_Then@1 anon75_Then_assertion)
)) :named ax_anon75_Then))
(assert (! (=> anon44 (and true 
   (and true
   )
(or anon44@1 anon44_assertion)
)) :named ax_anon44))
(assert (! (=> anon75_Then@1 (and true 
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 this SortedTreeSnapshot.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys))
   )
$branchMerge_5
)) :named ax_anon75_Then@1))
(assert (! (=> anon75_Then_assertion (not (and true
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 this SortedTreeSnapshot.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys))
   )
))) :named ax_anon75_Then_assertion))
(assert (! (=> anon44@1 (and true 
   (and true
      (> (Fractions 100) 0)
   )
(or anon44@1_assertion anon44@2)
)) :named ax_anon44@1))
(assert (! (=> anon44_assertion (not (and true
   (and true
      (> (Fractions 100) 0)
   )
))) :named ax_anon44_assertion))
(assert (! (=> $branchMerge_5 (and true 
   (and true
   )
(or anon76_Else anon76_Then)
)) :named ax_$branchMerge_5))
(assert (! (=> anon44@1_assertion (not (and true
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$N)))
   )
))) :named ax_anon44@1_assertion))
(assert (! (=> anon44@2 (and true 
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R))
      (= exhaleMask@_166@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R) (Fractions 100)))))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$N)))
      (IsGoodMask Mask@5)
      (wf Heap@8 exhaleMask@_166@0)
      (wf Heap@8 Mask@5)
   )
(or anon44@2_assertion anon44@3)
)) :named ax_anon44@2))
(assert (! (=> anon76_Else (and true 
   (and true
      (= $@condition_$13 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
      (not $@condition_$13)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
   )
anon19
)) :named ax_anon76_Else))
(assert (! (=> anon76_Then (and true 
   (and true
      $@condition_$13
      (= $@condition_$13 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)
   )
(or anon76_Then@1 anon76_Then_assertion)
)) :named ax_anon76_Then))
(assert (! (=> anon44@2_assertion (not (and true
   (and true
      (> (Fractions 50) 0)
   )
))) :named ax_anon44@2_assertion))
(assert (! (=> anon44@3 (and true 
   (and true
      (> (Fractions 50) 0)
   )
(or anon44@3_assertion anon44@4)
)) :named ax_anon44@3))
(assert (! (=> anon76_Then@1 (and true 
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 this SortedTreeSnapshot.keys) Seq@Empty$Int$)
   )
anon19
)) :named ax_anon76_Then@1))
(assert (! (=> anon76_Then_assertion (not (and true
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 this SortedTreeSnapshot.keys) Seq@Empty$Int$)
   )
))) :named ax_anon76_Then_assertion))
(assert (! (=> anon44@3_assertion (not (and true
   (and true
      (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@0 this SortedTreeSnapshot.keys) perm$R))
      (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@0 this SortedTreeSnapshot.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@0 this SortedTreeSnapshot.keys) perm$N)))
   )
))) :named ax_anon44@3_assertion))
(assert (! (=> anon44@4 (and true 
   (and true
      (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@0 this SortedTreeSnapshot.keys) perm$R))
      (= exhaleMask@_166@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@0 this SortedTreeSnapshot.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@0 this SortedTreeSnapshot.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@0 this SortedTreeSnapshot.keys) perm$R) (Fractions 50)))))
      (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@0 this SortedTreeSnapshot.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@0 this SortedTreeSnapshot.keys) perm$N)))
      (IsGoodMask Mask@5)
      (wf Heap@8 exhaleMask@_166@1)
      (wf Heap@8 Mask@5)
   )
(or anon85_Else anon85_Then)
)) :named ax_anon44@4))
(assert (! (=> anon19 (and true 
   (and true
   )
(or anon19@1 anon19_assertion)
)) :named ax_anon19))
(assert (! (=> anon85_Else (and true 
   (and true
      (= $@condition_$18 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)
      (= exhaleMask@_166@3 exhaleMask@_166@1)
      (not $@condition_$18)
   )
$branchMerge_8
)) :named ax_anon85_Else))
(assert (! (=> anon85_Then (and true 
   (and true
      $@condition_$18
      (= $@condition_$18 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
   )
(or anon85_Then@1 anon85_Then_assertion)
)) :named ax_anon85_Then))
(assert (! (=> anon19@1 (and true 
   (and true
      (> (Fractions 100) 0)
   )
(or anon19@1_assertion anon19@2)
)) :named ax_anon19@1))
(assert (! (=> anon19_assertion (not (and true
   (and true
      (> (Fractions 100) 0)
   )
))) :named ax_anon19_assertion))
(assert (! (=> anon85_Then@1 (and true 
   (and true
      (> (Fractions 1) 0)
   )
(or anon85_Then@1_assertion anon85_Then@2)
)) :named ax_anon85_Then@1))
(assert (! (=> anon85_Then_assertion (not (and true
   (and true
      (> (Fractions 1) 0)
   )
))) :named ax_anon85_Then_assertion))
(assert (! (=> anon19@1_assertion (not (and true
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$N)))
   )
))) :named ax_anon19@1_assertion))
(assert (! (=> anon19@2 (and true 
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R))
      (= exhaleMask@_159@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R) (Fractions 100)))))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this SortedTreeSnapshot.root) perm$N)))
      (IsGoodMask Mask@5)
      (wf Heap@7 exhaleMask@_159@0)
      (wf Heap@7 Mask@5)
   )
(or anon19@2_assertion anon19@3)
)) :named ax_anon19@2))
(assert (! (=> anon85_Then@1_assertion (not (and true
   (and true
      (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R))
      (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$N)))
   )
))) :named ax_anon85_Then@1_assertion))
(assert (! (=> anon85_Then@2 (and true 
   (and true
      (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R))
      (= exhaleMask@_166@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R) (Fractions 1)))))
      (= exhaleMask@_166@3 exhaleMask@_166@2)
      (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$N)))
      (IsGoodMask Mask@5)
      (wf Heap@8 exhaleMask@_166@2)
      (wf Heap@8 Mask@5)
   )
$branchMerge_8
)) :named ax_anon85_Then@2))
(assert (! (=> anon19@2_assertion (not (and true
   (and true
      (> (Fractions 50) 0)
   )
))) :named ax_anon19@2_assertion))
(assert (! (=> anon19@3 (and true 
   (and true
      (> (Fractions 50) 0)
   )
(or anon19@3_assertion anon19@4)
)) :named ax_anon19@3))
(assert (! (=> $branchMerge_8 (and true 
   (and true
   )
(or anon86_Else anon86_Then)
)) :named ax_$branchMerge_8))
(assert (! (=> anon19@3_assertion (not (and true
   (and true
      (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@0 this SortedTreeSnapshot.keys) perm$R))
      (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@0 this SortedTreeSnapshot.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@0 this SortedTreeSnapshot.keys) perm$N)))
   )
))) :named ax_anon19@3_assertion))
(assert (! (=> anon19@4 (and true 
   (and true
      (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@0 this SortedTreeSnapshot.keys) perm$R))
      (= exhaleMask@_159@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@0 this SortedTreeSnapshot.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@0 this SortedTreeSnapshot.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@0 this SortedTreeSnapshot.keys) perm$R) (Fractions 50)))))
      (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@0 this SortedTreeSnapshot.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@0 this SortedTreeSnapshot.keys) perm$N)))
      (IsGoodMask Mask@5)
      (wf Heap@7 exhaleMask@_159@1)
      (wf Heap@7 Mask@5)
   )
(or anon77_Else anon77_Then)
)) :named ax_anon19@4))
(assert (! (=> anon86_Else (and true 
   (and true
      (= $@condition_$21 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)
      (= exhaleMask@_166@5 exhaleMask@_166@3)
      (not $@condition_$21)
   )
$branchMerge_10
)) :named ax_anon86_Else))
(assert (! (=> anon86_Then (and true 
   (and true
      $@condition_$21
      (= $@condition_$21 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
   )
(or anon86_Then@1 anon86_Then_assertion)
)) :named ax_anon86_Then))
(assert (! (=> anon77_Else (and true 
   (and true
      (= $@condition_$17 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)
      (= exhaleMask@_159@3 exhaleMask@_159@1)
      (not $@condition_$17)
   )
$branchMerge_7
)) :named ax_anon77_Else))
(assert (! (=> anon77_Then (and true 
   (and true
      $@condition_$17
      (= $@condition_$17 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
   )
(or anon77_Then@1 anon77_Then_assertion)
)) :named ax_anon77_Then))
(assert (! (=> anon86_Then@1 (and true 
   (and true
      (> (Fractions 1) 0)
   )
(or anon86_Then@1_assertion anon86_Then@2)
)) :named ax_anon86_Then@1))
(assert (! (=> anon86_Then_assertion (not (and true
   (and true
      (> (Fractions 1) 0)
   )
))) :named ax_anon86_Then_assertion))
(assert (! (=> anon77_Then@1 (and true 
   (and true
      (> (Fractions 1) 0)
   )
(or anon77_Then@1_assertion anon77_Then@2)
)) :named ax_anon77_Then@1))
(assert (! (=> anon77_Then_assertion (not (and true
   (and true
      (> (Fractions 1) 0)
   )
))) :named ax_anon77_Then_assertion))
(assert (! (=> anon86_Then@1_assertion (not (and true
   (and true
      (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R))
      (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$N)))
   )
))) :named ax_anon86_Then@1_assertion))
(assert (! (=> anon86_Then@2 (and true 
   (and true
      (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R))
      (= exhaleMask@_166@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R) (Fractions 1)))))
      (= exhaleMask@_166@5 exhaleMask@_166@4)
      (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_166@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$N)))
      (IsGoodMask Mask@5)
      (wf Heap@8 exhaleMask@_166@4)
      (wf Heap@8 Mask@5)
   )
$branchMerge_10
)) :named ax_anon86_Then@2))
(assert (! (=> anon77_Then@1_assertion (not (and true
   (and true
      (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R))
      (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$N)))
   )
))) :named ax_anon77_Then@1_assertion))
(assert (! (=> anon77_Then@2 (and true 
   (and true
      (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R))
      (= exhaleMask@_159@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R) (Fractions 1)))))
      (= exhaleMask@_159@3 exhaleMask@_159@2)
      (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.valid) perm$N)))
      (IsGoodMask Mask@5)
      (wf Heap@7 exhaleMask@_159@2)
      (wf Heap@7 Mask@5)
   )
$branchMerge_7
)) :named ax_anon77_Then@2))
(assert (! (=> $branchMerge_10 (and true 
   (and true
   )
(or anon87_Else anon87_Then)
)) :named ax_$branchMerge_10))
(assert (! (=> $branchMerge_7 (and true 
   (and true
   )
(or anon78_Else anon78_Then)
)) :named ax_$branchMerge_7))
(assert (! (=> anon87_Else (and true 
   (and true
      (= $@condition_$25 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)
      (not $@condition_$25)
   )
$branchMerge_12
)) :named ax_anon87_Else))
(assert (! (=> anon87_Then (and true 
   (and true
      $@condition_$25
      (= $@condition_$25 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
   )
$branchMerge_12
)) :named ax_anon87_Then))
(assert (! (=> anon78_Else (and true 
   (and true
      (= $@condition_$19 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)
      (= exhaleMask@_159@5 exhaleMask@_159@3)
      (not $@condition_$19)
   )
$branchMerge_9
)) :named ax_anon78_Else))
(assert (! (=> anon78_Then (and true 
   (and true
      $@condition_$19
      (= $@condition_$19 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
   )
(or anon78_Then@1 anon78_Then_assertion)
)) :named ax_anon78_Then))
(assert (! (=> $branchMerge_12 (and true 
   (and true
   )
(or anon88_Else anon88_Then)
)) :named ax_$branchMerge_12))
(assert (! (=> anon78_Then@1 (and true 
   (and true
      (> (Fractions 1) 0)
   )
(or anon78_Then@1_assertion anon78_Then@2)
)) :named ax_anon78_Then@1))
(assert (! (=> anon78_Then_assertion (not (and true
   (and true
      (> (Fractions 1) 0)
   )
))) :named ax_anon78_Then_assertion))
(assert (! (=> anon88_Else (and true 
   (and true
      (= $@condition_$29 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
      (not $@condition_$29)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
   )
anon56
)) :named ax_anon88_Else))
(assert (! (=> anon88_Then (and true 
   (and true
      $@condition_$29
      (= $@condition_$29 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTreeSnapshot.root) null)
   )
anon56
)) :named ax_anon88_Then))
(assert (! (=> anon78_Then@1_assertion (not (and true
   (and true
      (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R))
      (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$N)))
   )
))) :named ax_anon78_Then@1_assertion))
(assert (! (=> anon78_Then@2 (and true 
   (and true
      (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R))
      (= exhaleMask@_159@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R) (Fractions 1)))))
      (= exhaleMask@_159@5 exhaleMask@_159@4)
      (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_159@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) SortedTreeNode.keys) perm$N)))
      (IsGoodMask Mask@5)
      (wf Heap@7 exhaleMask@_159@4)
      (wf Heap@7 Mask@5)
   )
$branchMerge_9
)) :named ax_anon78_Then@2))
(assert (! (=> anon56 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_171@0 this SortedTreeSnapshot.valid) Heap@9)
      (= Heap@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap@9 this SortedTreeSnapshot.valid Heap@9))
      (= Heap@13 Heap@10)
      (= Heap@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap@8 this SortedTreeSnapshot.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_171@0 this SortedTreeSnapshot.valid)))
      (= Mask@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@5 this SortedTreeSnapshot.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@5 this SortedTreeSnapshot.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_166@5 this SortedTreeSnapshot.valid) perm$R) (Fractions 100)))))
      (= Mask@8 Mask@6)
      (> (Fractions 100) 0)
      (IsGoodInhaleState inhaleHeap@_171@0 Heap@8 exhaleMask@_166@5)
      (IsGoodMask Mask@6)
      (IsGoodState$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_171@0 this SortedTreeSnapshot.valid))
      (not (= this null))
      (wf Heap@10 Mask@6)
      (wf Heap@8 exhaleMask@_166@5)
      (wf Heap@9 exhaleMask@_166@5)
      (wf Heap@9 Mask@6)
      (wf inhaleHeap@_171@0 Mask@6)
   )
$branchMerge_13
)) :named ax_anon56))
(assert (! (=> $branchMerge_9 (and true 
   (and true
   )
(or anon79_Else anon79_Then)
)) :named ax_$branchMerge_9))
(assert (! (=> anon79_Else (and true 
   (and true
      (= $@condition_$23 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)
      (not $@condition_$23)
   )
$branchMerge_11
)) :named ax_anon79_Else))
(assert (! (=> anon79_Then (and true 
   (and true
      $@condition_$23
      (= $@condition_$23 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
   )
$branchMerge_11
)) :named ax_anon79_Then))
(assert (! (=> $branchMerge_11 (and true 
   (and true
   )
(or anon80_Else anon80_Then)
)) :named ax_$branchMerge_11))
(assert (! (=> anon80_Else (and true 
   (and true
      (= $@condition_$27 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
      (not $@condition_$27)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
   )
anon31
)) :named ax_anon80_Else))
(assert (! (=> anon80_Then (and true 
   (and true
      $@condition_$27
      (= $@condition_$27 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTreeSnapshot.root) null)
   )
anon31
)) :named ax_anon80_Then))
(assert (! (=> anon31 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_164@0 this SortedTreeSnapshot.valid) Heap@11)
      (= Heap@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap@7 this SortedTreeSnapshot.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_164@0 this SortedTreeSnapshot.valid)))
      (= Heap@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap@11 this SortedTreeSnapshot.valid Heap@11))
      (= Heap@13 Heap@12)
      (= Mask@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@5 this SortedTreeSnapshot.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@5 this SortedTreeSnapshot.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_159@5 this SortedTreeSnapshot.valid) perm$R) (Fractions 100)))))
      (= Mask@8 Mask@7)
      (> (Fractions 100) 0)
      (IsGoodInhaleState inhaleHeap@_164@0 Heap@7 exhaleMask@_159@5)
      (IsGoodMask Mask@7)
      (IsGoodState$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_164@0 this SortedTreeSnapshot.valid))
      (not (= this null))
      (wf Heap@11 exhaleMask@_159@5)
      (wf Heap@11 Mask@7)
      (wf Heap@12 Mask@7)
      (wf Heap@7 exhaleMask@_159@5)
      (wf inhaleHeap@_164@0 Mask@7)
   )
$branchMerge_13
)) :named ax_anon31))
(assert (! (=> $branchMerge_13 (and true 
   (and true
   )
(or anon89_Else anon89_Then)
)) :named ax_$branchMerge_13))
(assert (! (=> anon89_Else (and true 
   (and true
      (= $@condition_$31 (not (= treeRoot@10 null)))
      (= treeRoot@10 null)
      (not $@condition_$31)
   )
$branchMerge_14
)) :named ax_anon89_Else))
(assert (! (=> anon89_Then (and true 
   (and true
      $@condition_$31
      (= $@condition_$31 (not (= treeRoot@10 null)))
      (not (= treeRoot@10 null))
   )
(or anon89_Then@1 anon89_Then_assertion)
)) :named ax_anon89_Then))
(assert (! (=> anon89_Then@1 (and true 
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 this SortedTreeSnapshot.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap treeRoot@10 SortedTreeNode.keys))
   )
$branchMerge_14
)) :named ax_anon89_Then@1))
(assert (! (=> anon89_Then_assertion (not (and true
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 this SortedTreeSnapshot.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap treeRoot@10 SortedTreeNode.keys))
   )
))) :named ax_anon89_Then_assertion))
(assert (! (=> $branchMerge_14 (and true 
   (and true
   )
(or anon90_Else anon90_Then)
)) :named ax_$branchMerge_14))
(assert (! (=> anon90_Else (and true 
   (and true
      (= $@condition_$33 (= treeRoot@10 null))
      (not $@condition_$33)
      (not (= treeRoot@10 null))
   )
anon63
)) :named ax_anon90_Else))
(assert (! (=> anon90_Then (and true 
   (and true
      $@condition_$33
      (= $@condition_$33 (= treeRoot@10 null))
      (= treeRoot@10 null)
   )
(or anon90_Then@1 anon90_Then_assertion)
)) :named ax_anon90_Then))
(assert (! (=> anon90_Then@1 (and true 
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 this SortedTreeSnapshot.keys) Seq@Empty$Int$)
   )
anon63
)) :named ax_anon90_Then@1))
(assert (! (=> anon90_Then_assertion (not (and true
   (and true
      (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 this SortedTreeSnapshot.keys) Seq@Empty$Int$)
   )
))) :named ax_anon90_Then_assertion))
(assert (! (=> anon63 (and true 
   (and true
   )
(or anon63@1 anon63_assertion)
)) :named ax_anon63))
(assert (! (=> anon63@1 (and true 
   (and true
      (> (Fractions 100) 0)
   )
(or anon63@1_assertion anon63@2)
)) :named ax_anon63@1))
(assert (! (=> anon63_assertion (not (and true
   (and true
      (> (Fractions 100) 0)
   )
))) :named ax_anon63_assertion))
(assert (! (=> anon63@1_assertion (not (and true
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this SortedTreeSnapshot.valid) perm$R))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this SortedTreeSnapshot.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this SortedTreeSnapshot.valid) perm$N)))
   )
))) :named ax_anon63@1_assertion))
(assert (! (=> anon63@2 (and true 
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this SortedTreeSnapshot.valid) perm$R))
      (= exhaleMask@_172@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this SortedTreeSnapshot.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this SortedTreeSnapshot.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this SortedTreeSnapshot.valid) perm$R) (Fractions 100)))))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this SortedTreeSnapshot.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this SortedTreeSnapshot.valid) perm$N)))
      (IsGoodMask Mask@8)
      (wf Heap@13 exhaleMask@_172@0)
      (wf Heap@13 Mask@8)
   )
(or anon63@2_assertion anon63@3)
)) :named ax_anon63@2))
(assert (! (=> anon63@2_assertion (not (and true
   (and true
      (> (Fractions 50) 0)
   )
))) :named ax_anon63@2_assertion))
(assert (! (=> anon63@3 (and true 
   (and true
      (> (Fractions 50) 0)
   )
(or anon63@3_assertion anon63@4)
)) :named ax_anon63@3))
(assert (! (=> anon63@3_assertion (not (and true
   (and true
      (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_172@0 this SortedTreeSnapshot.keys) perm$R))
      (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_172@0 this SortedTreeSnapshot.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_172@0 this SortedTreeSnapshot.keys) perm$N)))
   )
))) :named ax_anon63@3_assertion))
(assert (! (=> anon63@4 (and true 
   (and true
      (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_172@0 this SortedTreeSnapshot.keys) perm$R))
      (= exhaleMask@_172@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_172@0 this SortedTreeSnapshot.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_172@0 this SortedTreeSnapshot.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_172@0 this SortedTreeSnapshot.keys) perm$R) (Fractions 50)))))
      (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_172@0 this SortedTreeSnapshot.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_172@0 this SortedTreeSnapshot.keys) perm$N)))
      (IsGoodMask Mask@8)
      (wf Heap@13 exhaleMask@_172@1)
      (wf Heap@13 Mask@8)
   )
(or anon91_Else anon91_Then)
)) :named ax_anon63@4))
(assert (! (=> anon91_Else (and true 
   (and true
      (= $@condition_$35 (not (= treeRoot@10 null)))
      (= treeRoot@10 null)
      (not $@condition_$35)
   )
$branchMerge_15
)) :named ax_anon91_Else))
(assert (! (=> anon91_Then (and true 
   (and true
      $@condition_$35
      (= $@condition_$35 (not (= treeRoot@10 null)))
      (not (= treeRoot@10 null))
   )
$branchMerge_15
)) :named ax_anon91_Then))
(assert (! (=> $branchMerge_15 (and true 
   (and true
   )
(or anon92_Else anon92_Then)
)) :named ax_$branchMerge_15))
(assert (! (=> anon92_Else (and true 
   (and true
      (= $@condition_$36 (= treeRoot@10 null))
      (not $@condition_$36)
      (not (= treeRoot@10 null))
   )
anon69
)) :named ax_anon92_Else))
(assert (! (=> anon92_Then (and true 
   (and true
      $@condition_$36
      (= $@condition_$36 (= treeRoot@10 null))
      (= treeRoot@10 null)
   )
anon69
)) :named ax_anon92_Then))
(assert (! (=> anon69 (and true 
   (and true
      (wf Heap@13 exhaleMask@_172@1)
   )
(or anon69@1 anon69_assertion)
)) :named ax_anon69))
(assert (! (=> anon69@1 (and true 
   (and true
      (forall( (|lk#_175| ref))(!(or (and (= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@13 |lk#_175| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |lk#_175| held))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@13 |lk#_175| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |lk#_175| rdheld))) false)  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@13 |lk#_175| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@13 |lk#_175| rdheld))))
   )
anon69@1_assertion
)) :named ax_anon69@1))
(assert (! (=> anon69_assertion (not (and true
   (and true
      (forall( (|lk#_175| ref))(!(or (and (= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@13 |lk#_175| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |lk#_175| held))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@13 |lk#_175| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |lk#_175| rdheld))) false)  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@13 |lk#_175| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@13 |lk#_175| rdheld))))
   )
))) :named ax_anon69_assertion))
(assert (! (=> anon69@1_assertion (not (and true
   (and true
      (forall( (|ch| ref))(or (= |ch| null) (<= 0 (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |ch|))))
   )
))) :named ax_anon69@1_assertion))
(assert (=> false (not (and
   anon19@1_assertion
   anon19@2_assertion
   anon19@3_assertion
   anon19_assertion
   anon44@1_assertion
   anon44@2_assertion
   anon44@3_assertion
   anon44_assertion
   anon6@1_assertion
   anon6@2_assertion
   anon6_assertion
   anon63@1_assertion
   anon63@2_assertion
   anon63@3_assertion
   anon63_assertion
   anon69@1_assertion
   anon69_assertion
   anon72_Else@1_assertion
   anon72_Else_assertion
   anon72_Then@1_assertion
   anon72_Then@2_assertion
   anon72_Then@3_assertion
   anon72_Then@4_assertion
   anon72_Then@5_assertion
   anon72_Then_assertion
   anon75_Then_assertion
   anon76_Then_assertion
   anon77_Then@1_assertion
   anon77_Then_assertion
   anon78_Then@1_assertion
   anon78_Then_assertion
   anon83_Then_assertion
   anon84_Then_assertion
   anon85_Then@1_assertion
   anon85_Then_assertion
   anon86_Then@1_assertion
   anon86_Then_assertion
   anon89_Then_assertion
   anon90_Then_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
