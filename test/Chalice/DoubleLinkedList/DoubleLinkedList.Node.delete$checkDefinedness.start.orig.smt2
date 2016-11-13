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
(declare-fun $@bf_12 ( ) Bool)
(declare-fun $@bf_13 ( ) Bool)
(declare-fun $@bf_14 ( ) Bool)
(declare-fun $@bf_15 ( ) Bool)
(declare-fun $@bf_16 ( ) Bool)
(declare-fun $@bf_17 ( ) Bool)
(declare-fun $@bf_18 ( ) Bool)
(declare-fun $@bf_19 ( ) Bool)
(declare-fun $@bf_20 ( ) Bool)
(declare-fun $@bf_21 ( ) Bool)
(declare-fun $@bf_22 ( ) Bool)
(declare-fun $@bf_23 ( ) Bool)
(declare-fun $@bf_24 ( ) Bool)
(declare-fun $@bf_25 ( ) Bool)
(declare-fun $LockBottom ( ) Mu)
(declare-fun channelK ( ) Int)
(declare-fun Credits ( ) $@Map@@ref@To@Int@@)
(declare-fun DecPerm$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun dtype ( ref ) TypeName)
(declare-fun emptyPartialHeap ( ) PartialHeapType)
(declare-fun forkK ( ) Field$Int$)
(declare-fun Fractions ( Int ) Int)
(declare-fun Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun heapFragment$Int$ ( Int ) PartialHeapType)
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
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ ) Int)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Mu$ ) Mu)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ) ref)
(declare-fun MapRead$$@Map@@PermissionComponent@To@Int@@$ ( $@Map@@PermissionComponent@To@Int@@ PermissionComponent ) Int)
(declare-fun MapRead$$@Map@@ref@To@Int@@$ ( $@Map@@ref@To@Int@@ ref ) Int)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@PermissionComponent@To@Int@@$ ( $@Map@@PermissionComponent@To@Int@@ PermissionComponent Int ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Mask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun methodK@_170 ( ) Int)
(declare-fun monitorK ( ) Int)
(declare-fun mu ( ) Field$Mu$)
(declare-fun newList@0 ( ) ref)
(declare-fun newVers@_191@0 ( ) Int)
(declare-fun newVers@_233@0 ( ) Int)
(declare-fun newVers@_265@0 ( ) Int)
(declare-fun newVers@_301@0 ( ) Int)
(declare-fun Node.inv ( ) Field$Int$)
(declare-fun Node.invLeft ( ) Field$Int$)
(declare-fun Node.invRight ( ) Field$Int$)
(declare-fun Node.next ( ) Field$ref$)
(declare-fun Node.prev ( ) Field$ref$)
(declare-fun Node@t ( ) TypeName)
(declare-fun null ( ) ref)
(declare-fun oldVers@_190@0 ( ) Int)
(declare-fun oldVers@_232@0 ( ) Int)
(declare-fun oldVers@_264@0 ( ) Int)
(declare-fun oldVers@_300@0 ( ) Int)
(declare-fun perm$N ( ) PermissionComponent)
(declare-fun perm$R ( ) PermissionComponent)
(declare-fun Permission$denominator ( ) Int)
(declare-fun Permission$Full ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Permission$FullFraction ( ) Int)
(declare-fun Permission$Zero ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun predicateK ( ) Int)
(declare-fun predRec@_192@0 ( ) ref)
(declare-fun predRec@_201@0 ( ) ref)
(declare-fun predRec@_234@0 ( ) ref)
(declare-fun predRec@_266@0 ( ) ref)
(declare-fun predRec@_302@0 ( ) ref)
(declare-fun predRec@_311@0 ( ) ref)
(declare-fun predVer@_172@0 ( ) Int)
(declare-fun predVer@_193@0 ( ) Int)
(declare-fun predVer@_202@0 ( ) Int)
(declare-fun predVer@_235@0 ( ) Int)
(declare-fun predVer@_267@0 ( ) Int)
(declare-fun predVer@_303@0 ( ) Int)
(declare-fun predVer@_312@0 ( ) Int)
(declare-fun rdheld ( ) Field$Bool$)
(declare-fun SecMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun this ( ) ref)
(declare-fun unfoldingCredits@_287@0 ( ) $@Map@@ref@To@Int@@)
(declare-fun unfoldingHeap@_174@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_174@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_217@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_217@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_249@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_249@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_284@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_284@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_284@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingK@_179 ( ) Int)
(declare-fun unfoldingK@_222 ( ) Int)
(declare-fun unfoldingK@_254 ( ) Int)
(declare-fun unfoldingK@_289 ( ) Int)
(declare-fun unfoldingMask@_175@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_175@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_175@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_175@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_175@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_175@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_175@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_175@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_218@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_218@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_218@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_218@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_218@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_218@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_250@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_250@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_250@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_250@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_250@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_250@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_285@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_285@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_285@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_285@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_285@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_285@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_285@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_285@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_285@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_176@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_219@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_219@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_219@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_219@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_219@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_219@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_219@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_219@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_219@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_219@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_251@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_251@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_251@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_251@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_251@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_251@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@22 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@23 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@24 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@25 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@26 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@27 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@28 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@29 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@30 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_286@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun ZeroCredits ( ) $@Map@@ref@To@Int@@)
(declare-fun ZeroMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)

;Predicates
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $@condition_$1 ( ) Bool)
(declare-fun $@condition_$10 ( ) Bool)
(declare-fun $@condition_$12 ( ) Bool)
(declare-fun $@condition_$13 ( ) Bool)
(declare-fun $@condition_$14 ( ) Bool)
(declare-fun $@condition_$15 ( ) Bool)
(declare-fun $@condition_$16 ( ) Bool)
(declare-fun $@condition_$17 ( ) Bool)
(declare-fun $@condition_$18 ( ) Bool)
(declare-fun $@condition_$19 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$20 ( ) Bool)
(declare-fun $@condition_$21 ( ) Bool)
(declare-fun $@condition_$22 ( ) Bool)
(declare-fun $@condition_$23 ( ) Bool)
(declare-fun $@condition_$24 ( ) Bool)
(declare-fun $@condition_$25 ( ) Bool)
(declare-fun $@condition_$26 ( ) Bool)
(declare-fun $@condition_$27 ( ) Bool)
(declare-fun $@condition_$28 ( ) Bool)
(declare-fun $@condition_$29 ( ) Bool)
(declare-fun $@condition_$3 ( ) Bool)
(declare-fun $@condition_$30 ( ) Bool)
(declare-fun $@condition_$31 ( ) Bool)
(declare-fun $@condition_$32 ( ) Bool)
(declare-fun $@condition_$34 ( ) Bool)
(declare-fun $@condition_$36 ( ) Bool)
(declare-fun $@condition_$37 ( ) Bool)
(declare-fun $@condition_$38 ( ) Bool)
(declare-fun $@condition_$39 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$40 ( ) Bool)
(declare-fun $@condition_$41 ( ) Bool)
(declare-fun $@condition_$43 ( ) Bool)
(declare-fun $@condition_$45 ( ) Bool)
(declare-fun $@condition_$46 ( ) Bool)
(declare-fun $@condition_$47 ( ) Bool)
(declare-fun $@condition_$48 ( ) Bool)
(declare-fun $@condition_$50 ( ) Bool)
(declare-fun $@condition_$51 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$7 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)
(declare-fun $@condition_$9 ( ) Bool)
(declare-fun $@Node.inv@trigger ( ref ) Bool)
(declare-fun $@Node.invLeft@trigger ( ref ) Bool)
(declare-fun $@Node.invRight@trigger ( ref ) Bool)
(declare-fun $branchMerge_0 ( ) Bool)
(declare-fun $branchMerge_1 ( ) Bool)
(declare-fun $branchMerge_2 ( ) Bool)
(declare-fun $branchMerge_3 ( ) Bool)
(declare-fun $branchMerge_4 ( ) Bool)
(declare-fun $branchMerge_5 ( ) Bool)
(declare-fun $branchMerge_6 ( ) Bool)
(declare-fun $start ( ) Bool)
(declare-fun anon0 ( ) Bool)
(declare-fun anon0@1 ( ) Bool)
(declare-fun anon0@1_assertion ( ) Bool)
(declare-fun anon0@2 ( ) Bool)
(declare-fun anon0@2_assertion ( ) Bool)
(declare-fun anon0@3 ( ) Bool)
(declare-fun anon0@3_assertion ( ) Bool)
(declare-fun anon0@4 ( ) Bool)
(declare-fun anon0_assertion ( ) Bool)
(declare-fun anon116 ( ) Bool)
(declare-fun anon117 ( ) Bool)
(declare-fun anon133 ( ) Bool)
(declare-fun anon133@1 ( ) Bool)
(declare-fun anon133@1_assertion ( ) Bool)
(declare-fun anon133@2 ( ) Bool)
(declare-fun anon133@2_assertion ( ) Bool)
(declare-fun anon133@3 ( ) Bool)
(declare-fun anon133@3_assertion ( ) Bool)
(declare-fun anon133@4 ( ) Bool)
(declare-fun anon133_assertion ( ) Bool)
(declare-fun anon150 ( ) Bool)
(declare-fun anon167 ( ) Bool)
(declare-fun anon168 ( ) Bool)
(declare-fun anon184 ( ) Bool)
(declare-fun anon184@1 ( ) Bool)
(declare-fun anon184@1_assertion ( ) Bool)
(declare-fun anon184@2 ( ) Bool)
(declare-fun anon184@2_assertion ( ) Bool)
(declare-fun anon184@3 ( ) Bool)
(declare-fun anon184@3_assertion ( ) Bool)
(declare-fun anon184@4 ( ) Bool)
(declare-fun anon184@4_assertion ( ) Bool)
(declare-fun anon184@5 ( ) Bool)
(declare-fun anon184@5_assertion ( ) Bool)
(declare-fun anon184@6 ( ) Bool)
(declare-fun anon184_assertion ( ) Bool)
(declare-fun anon187 ( ) Bool)
(declare-fun anon187@1 ( ) Bool)
(declare-fun anon187_assertion ( ) Bool)
(declare-fun anon189 ( ) Bool)
(declare-fun anon189@1 ( ) Bool)
(declare-fun anon189@1_assertion ( ) Bool)
(declare-fun anon189@2 ( ) Bool)
(declare-fun anon189@2_assertion ( ) Bool)
(declare-fun anon189@3 ( ) Bool)
(declare-fun anon189_assertion ( ) Bool)
(declare-fun anon197 ( ) Bool)
(declare-fun anon199 ( ) Bool)
(declare-fun anon201 ( ) Bool)
(declare-fun anon203 ( ) Bool)
(declare-fun anon206 ( ) Bool)
(declare-fun anon210 ( ) Bool)
(declare-fun anon211 ( ) Bool)
(declare-fun anon214 ( ) Bool)
(declare-fun anon22 ( ) Bool)
(declare-fun anon231 ( ) Bool)
(declare-fun anon249 ( ) Bool)
(declare-fun anon250 ( ) Bool)
(declare-fun anon250@1 ( ) Bool)
(declare-fun anon250@1_assertion ( ) Bool)
(declare-fun anon250_assertion ( ) Bool)
(declare-fun anon251_Else ( ) Bool)
(declare-fun anon261_Else ( ) Bool)
(declare-fun anon261_Then ( ) Bool)
(declare-fun anon262_Else ( ) Bool)
(declare-fun anon262_Then ( ) Bool)
(declare-fun anon263_Else ( ) Bool)
(declare-fun anon270_Else ( ) Bool)
(declare-fun anon270_Then ( ) Bool)
(declare-fun anon271_Else ( ) Bool)
(declare-fun anon271_Then ( ) Bool)
(declare-fun anon272_Else ( ) Bool)
(declare-fun anon279_Else ( ) Bool)
(declare-fun anon279_Then ( ) Bool)
(declare-fun anon280_Else ( ) Bool)
(declare-fun anon290_Else ( ) Bool)
(declare-fun anon290_Then ( ) Bool)
(declare-fun anon291_Else ( ) Bool)
(declare-fun anon291_Then ( ) Bool)
(declare-fun anon292_Else ( ) Bool)
(declare-fun anon292_Else@1 ( ) Bool)
(declare-fun anon292_Else@1_assertion ( ) Bool)
(declare-fun anon292_Else@2 ( ) Bool)
(declare-fun anon292_Else_assertion ( ) Bool)
(declare-fun anon292_Then ( ) Bool)
(declare-fun anon292_Then@1 ( ) Bool)
(declare-fun anon292_Then@1_assertion ( ) Bool)
(declare-fun anon292_Then@2 ( ) Bool)
(declare-fun anon292_Then@2_assertion ( ) Bool)
(declare-fun anon292_Then@3 ( ) Bool)
(declare-fun anon292_Then@3_assertion ( ) Bool)
(declare-fun anon292_Then@4 ( ) Bool)
(declare-fun anon292_Then@4_assertion ( ) Bool)
(declare-fun anon292_Then@5 ( ) Bool)
(declare-fun anon292_Then_assertion ( ) Bool)
(declare-fun anon293_Else ( ) Bool)
(declare-fun anon300_Else ( ) Bool)
(declare-fun anon300_Then ( ) Bool)
(declare-fun anon301_Else ( ) Bool)
(declare-fun anon301_Then ( ) Bool)
(declare-fun anon302_Else ( ) Bool)
(declare-fun anon309_Else ( ) Bool)
(declare-fun anon309_Then ( ) Bool)
(declare-fun anon310_Else ( ) Bool)
(declare-fun anon317_Else ( ) Bool)
(declare-fun anon317_Then ( ) Bool)
(declare-fun anon318_Else ( ) Bool)
(declare-fun anon318_Else@1 ( ) Bool)
(declare-fun anon318_Else@1_assertion ( ) Bool)
(declare-fun anon318_Else@2 ( ) Bool)
(declare-fun anon318_Else@2_assertion ( ) Bool)
(declare-fun anon318_Else@3 ( ) Bool)
(declare-fun anon318_Else@3_assertion ( ) Bool)
(declare-fun anon318_Else@4 ( ) Bool)
(declare-fun anon318_Else_assertion ( ) Bool)
(declare-fun anon318_Then ( ) Bool)
(declare-fun anon318_Then@1 ( ) Bool)
(declare-fun anon318_Then@1_assertion ( ) Bool)
(declare-fun anon318_Then@2 ( ) Bool)
(declare-fun anon318_Then@2_assertion ( ) Bool)
(declare-fun anon318_Then@3 ( ) Bool)
(declare-fun anon318_Then@3_assertion ( ) Bool)
(declare-fun anon318_Then@4 ( ) Bool)
(declare-fun anon318_Then@4_assertion ( ) Bool)
(declare-fun anon318_Then@5 ( ) Bool)
(declare-fun anon318_Then@5_assertion ( ) Bool)
(declare-fun anon318_Then@6 ( ) Bool)
(declare-fun anon318_Then@6_assertion ( ) Bool)
(declare-fun anon318_Then@7 ( ) Bool)
(declare-fun anon318_Then_assertion ( ) Bool)
(declare-fun anon319_Else ( ) Bool)
(declare-fun anon326_Else ( ) Bool)
(declare-fun anon326_Then ( ) Bool)
(declare-fun anon327_Else ( ) Bool)
(declare-fun anon327_Then ( ) Bool)
(declare-fun anon328_Else ( ) Bool)
(declare-fun anon335_Else ( ) Bool)
(declare-fun anon335_Then ( ) Bool)
(declare-fun anon336_Else ( ) Bool)
(declare-fun anon343_Else ( ) Bool)
(declare-fun anon343_Then ( ) Bool)
(declare-fun anon344_Else ( ) Bool)
(declare-fun anon344_Then ( ) Bool)
(declare-fun anon344_Then@1 ( ) Bool)
(declare-fun anon344_Then_assertion ( ) Bool)
(declare-fun anon345_Else ( ) Bool)
(declare-fun anon345_Then ( ) Bool)
(declare-fun anon346_Else ( ) Bool)
(declare-fun anon346_Then ( ) Bool)
(declare-fun anon347_Else ( ) Bool)
(declare-fun anon347_Then ( ) Bool)
(declare-fun anon348_Else ( ) Bool)
(declare-fun anon348_Then ( ) Bool)
(declare-fun anon349_Else ( ) Bool)
(declare-fun anon349_Then ( ) Bool)
(declare-fun anon350_Else ( ) Bool)
(declare-fun anon350_Then ( ) Bool)
(declare-fun anon351_Else ( ) Bool)
(declare-fun anon351_Then ( ) Bool)
(declare-fun anon352_Else ( ) Bool)
(declare-fun anon352_Then ( ) Bool)
(declare-fun anon353_Else ( ) Bool)
(declare-fun anon353_Then ( ) Bool)
(declare-fun anon354_Else ( ) Bool)
(declare-fun anon354_Then ( ) Bool)
(declare-fun anon355_Else ( ) Bool)
(declare-fun anon355_Then ( ) Bool)
(declare-fun anon356_Else ( ) Bool)
(declare-fun anon356_Then ( ) Bool)
(declare-fun anon357_Else ( ) Bool)
(declare-fun anon357_Then ( ) Bool)
(declare-fun anon358_Else ( ) Bool)
(declare-fun anon365_Else ( ) Bool)
(declare-fun anon365_Then ( ) Bool)
(declare-fun anon366_Else ( ) Bool)
(declare-fun anon366_Then ( ) Bool)
(declare-fun anon367_Else ( ) Bool)
(declare-fun anon374_Else ( ) Bool)
(declare-fun anon374_Then ( ) Bool)
(declare-fun anon39 ( ) Bool)
(declare-fun anon57 ( ) Bool)
(declare-fun anon58 ( ) Bool)
(declare-fun anon82 ( ) Bool)
(declare-fun anon82@1 ( ) Bool)
(declare-fun anon82@1_assertion ( ) Bool)
(declare-fun anon82@2 ( ) Bool)
(declare-fun anon82_assertion ( ) Bool)
(declare-fun anon99 ( ) Bool)
(declare-fun CanAssumeFunctionDefs ( ) Bool)
(declare-fun CanRead$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) Bool)
(declare-fun CanRead$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) Bool)
(declare-fun CanRead$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) Bool)
(declare-fun CanRead$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) Bool)
(declare-fun IsGoodMask ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)
(declare-fun IsGoodState ( PartialHeapType ) Bool)
(declare-fun ite$Bool$ ( Bool Bool Bool ) Bool)
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
   (assert (! (forall ((|i_1| Field$Int$)(|i| ref)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_1| $@Map@@PermissionComponent@To@Int@@))(!(= v_1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_1 i i_1 v_1) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_1 i i_1 v_1) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_0))
   (assert (! (forall ((|i_10| PermissionComponent)(|m_6| $@Map@@PermissionComponent@To@Int@@)(|v_6| Int))(!(= v_6 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_6 i_10 v_6) i_10)):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_6 i_10 v_6) i_10)) :qid map_1_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_1))
   (assert (! (forall ((|i_13| Field$Int$)(|i_12| ref)(|m_8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_8| Int))(!(= v_8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_8 i_12 i_13 v_8) i_12 i_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_8 i_12 i_13 v_8) i_12 i_13)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_2))
   (assert (! (forall ((|i_23| Field$ref$)(|i_22| ref)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_13| $@Map@@PermissionComponent@To@Int@@))(!(= v_13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_13 i_22 i_23 v_13) i_22 i_23)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_13 i_22 i_23 v_13) i_22 i_23)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_3))
   (assert (! (forall ((|i_33| Field$Mu$)(|i_32| ref)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_18| $@Map@@PermissionComponent@To@Int@@))(!(= v_18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_18 i_32 i_33 v_18) i_32 i_33)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_18 i_32 i_33 v_18) i_32 i_33)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_4))
   (assert (! (forall ((|v_10| Int)(|i_17| Field$Int$)(|i_16| ref)(|j_12| Field$Bool$)(|j_11| ref)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_10 j_11 j_12) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_10 i_16 i_17 v_10) j_11 j_12)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_10 i_16 i_17 v_10) j_11 j_12)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Int :weight 0 )) :named ax_5))
   (assert (! (forall ((|v_11| Int)(|i_19| Field$Int$)(|i_18| ref)(|j_14| Field$Mu$)(|j_13| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_11 j_13 j_14) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_11 i_18 i_19 v_11) j_13 j_14)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_11 i_18 i_19 v_11) j_13 j_14)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Int :weight 0 )) :named ax_6))
   (assert (! (forall ((|v_12| Int)(|i_21| Field$Int$)(|i_20| ref)(|j_16| Field$ref$)(|j_15| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_12 j_15 j_16) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_12 i_20 i_21 v_12) j_15 j_16)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_12 i_20 i_21 v_12) j_15 j_16)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Int :weight 0 )) :named ax_7))
   (assert (! (forall ((|v_14| $@Map@@PermissionComponent@To@Int@@)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_25| Field$ref$)(|j_18| Field$ref$)(|i_24| ref)(|j_17| ref))(!(=> (or (not (= j_18 i_25)) (not (= j_17 i_24))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_14 j_17 j_18) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_14 i_24 i_25 v_14) j_17 j_18))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_14 i_24 i_25 v_14) j_17 j_18)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_8))
   (assert (! (forall ((|v_15| $@Map@@PermissionComponent@To@Int@@)(|i_27| Field$ref$)(|i_26| ref)(|j_20| Field$Bool$)(|j_19| ref)(|m_15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_15 j_19 j_20) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_15 i_26 i_27 v_15) j_19 j_20)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_15 i_26 i_27 v_15) j_19 j_20)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__ref :weight 0 )) :named ax_9))
   (assert (! (forall ((|v_16| $@Map@@PermissionComponent@To@Int@@)(|i_29| Field$ref$)(|i_28| ref)(|j_22| Field$Int$)(|j_21| ref)(|m_16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_16 j_21 j_22) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_16 i_28 i_29 v_16) j_21 j_22)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_16 i_28 i_29 v_16) j_21 j_22)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__ref :weight 0 )) :named ax_10))
   (assert (! (forall ((|v_17| $@Map@@PermissionComponent@To@Int@@)(|i_31| Field$ref$)(|i_30| ref)(|j_24| Field$Mu$)(|j_23| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_17 j_23 j_24) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_17 i_30 i_31 v_17) j_23 j_24)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_17 i_30 i_31 v_17) j_23 j_24)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__ref :weight 0 )) :named ax_11))
   (assert (! (forall ((|v_19| $@Map@@PermissionComponent@To@Int@@)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_35| Field$Mu$)(|j_26| Field$Mu$)(|i_34| ref)(|j_25| ref))(!(=> (or (not (= j_26 i_35)) (not (= j_25 i_34))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_19 j_25 j_26) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_19 i_34 i_35 v_19) j_25 j_26))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_19 i_34 i_35 v_19) j_25 j_26)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_12))
   (assert (! (forall ((|v_2| $@Map@@PermissionComponent@To@Int@@)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_3| Field$Int$)(|j_1| Field$Int$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 i_2 i_3 v_2) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 i_2 i_3 v_2) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_13))
   (assert (! (forall ((|v_20| $@Map@@PermissionComponent@To@Int@@)(|i_37| Field$Mu$)(|i_36| ref)(|j_28| Field$Bool$)(|j_27| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_20 j_27 j_28) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_20 i_36 i_37 v_20) j_27 j_28)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_20 i_36 i_37 v_20) j_27 j_28)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Mu :weight 0 )) :named ax_14))
   (assert (! (forall ((|v_21| $@Map@@PermissionComponent@To@Int@@)(|i_39| Field$Mu$)(|i_38| ref)(|j_30| Field$Int$)(|j_29| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_21 j_29 j_30) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_21 i_38 i_39 v_21) j_29 j_30)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_21 i_38 i_39 v_21) j_29 j_30)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Mu :weight 0 )) :named ax_15))
   (assert (! (forall ((|v_22| $@Map@@PermissionComponent@To@Int@@)(|i_41| Field$Mu$)(|i_40| ref)(|j_32| Field$ref$)(|j_31| ref)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_22 j_31 j_32) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_22 i_40 i_41 v_22) j_31 j_32)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_22 i_40 i_41 v_22) j_31 j_32)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Mu :weight 0 )) :named ax_16))
   (assert (! (forall ((|v_3| $@Map@@PermissionComponent@To@Int@@)(|i_5| Field$Int$)(|i_4| ref)(|j_3| Field$Bool$)(|j_2| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_3 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_3 i_4 i_5 v_3) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_3 i_4 i_5 v_3) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Int :weight 0 )) :named ax_17))
   (assert (! (forall ((|v_4| $@Map@@PermissionComponent@To@Int@@)(|i_7| Field$Int$)(|i_6| ref)(|j_5| Field$ref$)(|j_4| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 i_6 i_7 v_4) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 i_6 i_7 v_4) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Int :weight 0 )) :named ax_18))
   (assert (! (forall ((|v_5| $@Map@@PermissionComponent@To@Int@@)(|i_9| Field$Int$)(|i_8| ref)(|j_7| Field$Mu$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_5 i_8 i_9 v_5) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_5 i_8 i_9 v_5) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Int :weight 0 )) :named ax_19))
   (assert (! (forall ((|v_7| Int)(|m_7| $@Map@@PermissionComponent@To@Int@@)(|i_11| PermissionComponent)(|j_8| PermissionComponent))(!(=> (not (= j_8 i_11)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ m_7 j_8) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_11 v_7) j_8))):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_11 v_7) j_8)) :qid map_2_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_20))
   (assert (! (forall ((|v_9| Int)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_15| Field$Int$)(|j_10| Field$Int$)(|i_14| ref)(|j_9| ref))(!(=> (or (not (= j_9 i_14)) (not (= j_10 i_15))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_9 j_9 j_10) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_9 i_14 i_15 v_9) j_9 j_10))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_9 i_14 i_15 v_9) j_9 j_10)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_21))
   (assert (! (not (= forkK held)) :named ax_22))
   (assert (! (not (= forkK Node.inv)) :named ax_23))
   (assert (! (not (= forkK Node.invLeft)) :named ax_24))
   (assert (! (not (= forkK Node.invRight)) :named ax_25))
   (assert (! (not (= held forkK)) :named ax_26))
   (assert (! (not (= held Node.inv)) :named ax_27))
   (assert (! (not (= held Node.invLeft)) :named ax_28))
   (assert (! (not (= held Node.invRight)) :named ax_29))
   (assert (! (not (= joinable forkK)) :named ax_30))
   (assert (! (not (= joinable forkK)) :named ax_31))
   (assert (! (not (= joinable held)) :named ax_32))
   (assert (! (not (= joinable held)) :named ax_33))
   (assert (! (not (= joinable Node.inv)) :named ax_34))
   (assert (! (not (= joinable Node.invLeft)) :named ax_35))
   (assert (! (not (= joinable Node.invRight)) :named ax_36))
   (assert (! (not (= Node.inv forkK)) :named ax_37))
   (assert (! (not (= Node.inv held)) :named ax_38))
   (assert (! (not (= Node.inv joinable)) :named ax_39))
   (assert (! (not (= Node.inv Node.invLeft)) :named ax_40))
   (assert (! (not (= Node.inv Node.invRight)) :named ax_41))
   (assert (! (not (= Node.invLeft forkK)) :named ax_42))
   (assert (! (not (= Node.invLeft held)) :named ax_43))
   (assert (! (not (= Node.invLeft joinable)) :named ax_44))
   (assert (! (not (= Node.invLeft Node.inv)) :named ax_45))
   (assert (! (not (= Node.invLeft Node.invRight)) :named ax_46))
   (assert (! (not (= Node.invRight forkK)) :named ax_47))
   (assert (! (not (= Node.invRight held)) :named ax_48))
   (assert (! (not (= Node.invRight joinable)) :named ax_49))
   (assert (! (not (= Node.invRight Node.inv)) :named ax_50))
   (assert (! (not (= Node.invRight Node.invLeft)) :named ax_51))
   (assert (! (not (= Node.next Node.prev)) :named ax_52))
   (assert (! (not (= Node.prev Node.next)) :named ax_53))
   (assert (! (not (= perm$R perm$N)) :named ax_54))
   (assert (! (not (= perm$R perm$N)) :named ax_55))

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
      (= (= true $@bf_12) (ite$Bool$ true true true))
      (= (= true $@bf_13) (ite$Bool$ true true false))
      (= (= true $@bf_14) (ite$Bool$ true false true))
      (= (= true $@bf_15) (ite$Bool$ true false false))
      (= (= true $@bf_16) (ite$Bool$ false true true))
      (= (= true $@bf_17) (ite$Bool$ false true false))
      (= (= true $@bf_18) (ite$Bool$ false false true))
      (= (= true $@bf_19) (ite$Bool$ false false false))
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
      (or (= newList@0 null) (= (dtype newList@0) Node@t))
      (or (= this null) (= (dtype this) Node@t))
      (wf Heap Mask SecMask)
   )
anon0
)) :named ax_PreconditionGeneratedEntry))
(assert (! (=> anon0 (and true 
   (and true
      (< (* 1000 methodK@_170) (Fractions 1))
      (< 0 methodK@_170)
      CanAssumeFunctionDefs
   )
(or anon0@1 anon0_assertion)
)) :named ax_anon0))
(assert (! (=> anon0@1 (and true 
   (and true
      ($@Node.inv@trigger this)
      (< (* 1000 unfoldingK@_179) (Fractions 1))
      (< 0 unfoldingK@_179)
      (= Mask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this Node.inv (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this Node.inv) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this Node.inv) perm$R) (Fractions 100)))))
      (= predVer@_172@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this Node.inv))
      (> (Fractions 100) 0)
      (IsGoodMask Mask@0)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this Node.inv)))
      (not (= this null))
      (wf Heap Mask@0 ZeroMask)
      (wf Heap ZeroMask ZeroMask)
   )
(or anon0@1_assertion anon0@2)
)) :named ax_anon0@1))
(assert (! (=> anon0_assertion (not (and true
   (and true
      (not (= this null))
   )
))) :named ax_anon0_assertion))
(assert (! (=> anon0@1_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon0@1_assertion))
(assert (! (=> anon0@2 (and true 
   (and true
      (=> true (not (= this null)))
      (wf Heap Mask@0 ZeroMask)
   )
(or anon0@2_assertion anon0@3)
)) :named ax_anon0@2))
(assert (! (=> anon0@2_assertion (not (and true
   (and true
      (> (Fractions 100) 0)
   )
))) :named ax_anon0@2_assertion))
(assert (! (=> anon0@3 (and true 
   (and true
      (> (Fractions 100) 0)
   )
(or anon0@3_assertion anon0@4)
)) :named ax_anon0@3))
(assert (! (=> anon0@3_assertion (not (and true
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this Node.inv) perm$R))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this Node.inv) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this Node.inv) perm$N)))
   )
))) :named ax_anon0@3_assertion))
(assert (! (=> anon0@4 (and true 
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this Node.inv) perm$R))
      (= unfoldingMask@_175@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this Node.inv (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this Node.inv) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this Node.inv) perm$R) (Fractions 100)))))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this Node.inv) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this Node.inv) perm$N)))
   )
anon251_Else
)) :named ax_anon0@4))
(assert (! (=> anon251_Else (and true 
   (and true
      (= $@condition false)
      (not $@condition)
      (not false)
   )
(or anon261_Else anon261_Then)
)) :named ax_anon251_Else))
(assert (! (=> anon261_Else (and true 
   (and true
      (= $@condition_$0 (not (CanRead$Int$ unfoldingMask@_175@0 ZeroMask this Node.inv)))
      (= unfoldingHeap@_174@1 Heap)
      (CanRead$Int$ unfoldingMask@_175@0 ZeroMask this Node.inv)
      (not $@condition_$0)
   )
anon22
)) :named ax_anon261_Else))
(assert (! (=> anon261_Then (and true 
   (and true
      $@condition_$0
      (< oldVers@_190@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_174@0 this Node.inv))
      (= $@condition_$0 (not (CanRead$Int$ unfoldingMask@_175@0 ZeroMask this Node.inv)))
      (= oldVers@_190@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this Node.inv))
      (= unfoldingHeap@_174@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this Node.inv newVers@_191@0))
      (= unfoldingHeap@_174@1 unfoldingHeap@_174@0)
      (not (CanRead$Int$ unfoldingMask@_175@0 ZeroMask this Node.inv))
   )
anon22
)) :named ax_anon261_Then))
(assert (! (=> anon22 (and true 
   (and true
      (= unfoldingMask@_175@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_175@0 this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_175@0 this Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_175@0 this Node.prev) perm$N) 1))))
      (= unfoldingMask@_175@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_175@1 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_175@1 this Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_175@1 this Node.next) perm$N) 1))))
      (= unfoldingMask@_175@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_175@2 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_175@2 this mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_175@2 this mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_175@0)
      (IsGoodMask unfoldingMask@_175@1)
      (IsGoodMask unfoldingMask@_175@2)
      (IsGoodMask unfoldingMask@_175@3)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_174@1 this mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev)))
      (not (= this null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev)) Node@t))
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@0 ZeroMask)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@1 ZeroMask)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@2 ZeroMask)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@3 ZeroMask)
   )
(or anon262_Else anon262_Then)
)) :named ax_anon22))
(assert (! (=> anon262_Else (and true 
   (and true
      (= $@condition_$1 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null)
      (= unfoldingMask@_175@5 unfoldingMask@_175@3)
      (= unfoldingSecMask@_176@5 ZeroMask)
      (not $@condition_$1)
   )
$branchMerge_0
)) :named ax_anon262_Else))
(assert (! (=> anon262_Then (and true 
   (and true
      $@condition_$1
      ($@Node.invLeft@trigger (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev))
      (= $@condition_$1 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null)))
      (= predRec@_192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev))
      (= predVer@_193@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft))
      (= unfoldingMask@_175@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_175@4)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null))
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@3 ZeroMask)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@4 ZeroMask)
   )
anon263_Else
)) :named ax_anon262_Then))
(assert (! (=> anon263_Else (and true 
   (and true
      (= $@condition_$2 false)
      (= unfoldingSecMask@_176@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask predRec@_192@0 Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask predRec@_192@0 Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask predRec@_192@0 Node.prev) perm$N) 1))))
      (= unfoldingSecMask@_176@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@0 predRec@_192@0 Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@0 predRec@_192@0 Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@0 predRec@_192@0 Node.next) perm$N) 1))))
      (= unfoldingSecMask@_176@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_176@1 predRec@_192@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_176@1 predRec@_192@0 mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_176@1 predRec@_192@0 mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_175@4)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_174@1 predRec@_192@0 mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev)))
      (not $@condition_$2)
      (not (= predRec@_192@0 null))
      (not false)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev)) Node@t))
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@4 unfoldingSecMask@_176@0)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@4 unfoldingSecMask@_176@1)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@4 unfoldingSecMask@_176@2)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@4 ZeroMask)
      (wf unfoldingHeap@_174@1 unfoldingSecMask@_176@0 unfoldingSecMask@_176@0)
      (wf unfoldingHeap@_174@1 unfoldingSecMask@_176@1 unfoldingSecMask@_176@1)
      (wf unfoldingHeap@_174@1 unfoldingSecMask@_176@2 unfoldingSecMask@_176@2)
   )
(or anon270_Else anon270_Then)
)) :named ax_anon263_Else))
(assert (! (=> anon270_Else (and true 
   (and true
      (= $@condition_$4 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev) null)
      (= unfoldingSecMask@_176@4 unfoldingSecMask@_176@2)
      (not $@condition_$4)
   )
anon39
)) :named ax_anon270_Else))
(assert (! (=> anon270_Then (and true 
   (and true
      $@condition_$4
      (= $@condition_$4 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev) null)))
      (= unfoldingSecMask@_176@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_176@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_176@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_176@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (= unfoldingSecMask@_176@4 unfoldingSecMask@_176@3)
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_175@4)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_192@0 Node.prev) null))
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@4 unfoldingSecMask@_176@2)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@4 unfoldingSecMask@_176@3)
   )
anon39
)) :named ax_anon270_Then))
(assert (! (=> anon39 (and true 
   (and true
      (= unfoldingMask@_175@5 unfoldingMask@_175@4)
      (= unfoldingSecMask@_176@5 unfoldingSecMask@_176@4)
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_174@1 this mu))
   )
$branchMerge_0
)) :named ax_anon39))
(assert (! (=> $branchMerge_0 (and true 
   (and true
   )
(or anon271_Else anon271_Then)
)) :named ax_$branchMerge_0))
(assert (! (=> anon271_Else (and true 
   (and true
      (= $@condition_$3 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next) null)
      (= unfoldingMask@_175@7 unfoldingMask@_175@5)
      (= unfoldingSecMask@_176@11 unfoldingSecMask@_176@5)
      (not $@condition_$3)
   )
anon58
)) :named ax_anon271_Else))
(assert (! (=> anon271_Then (and true 
   (and true
      $@condition_$3
      ($@Node.invRight@trigger (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next))
      (= $@condition_$3 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next) null)))
      (= predRec@_201@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next))
      (= predVer@_202@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight))
      (= unfoldingMask@_175@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next) Node.invRight) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next) Node.invRight) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_175@6)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next) Node.invRight)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next) null))
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@5 unfoldingSecMask@_176@5)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@6 unfoldingSecMask@_176@5)
   )
anon272_Else
)) :named ax_anon271_Then))
(assert (! (=> anon272_Else (and true 
   (and true
      (= $@condition_$6 false)
      (= unfoldingSecMask@_176@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@5 predRec@_201@0 Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@5 predRec@_201@0 Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@5 predRec@_201@0 Node.prev) perm$N) 1))))
      (= unfoldingSecMask@_176@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@6 predRec@_201@0 Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@6 predRec@_201@0 Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@6 predRec@_201@0 Node.next) perm$N) 1))))
      (= unfoldingSecMask@_176@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_176@7 predRec@_201@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_176@7 predRec@_201@0 mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_176@7 predRec@_201@0 mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_175@6)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_174@1 predRec@_201@0 mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.prev)))
      (not $@condition_$6)
      (not (= predRec@_201@0 null))
      (not false)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.prev)) Node@t))
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@6 unfoldingSecMask@_176@5)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@6 unfoldingSecMask@_176@6)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@6 unfoldingSecMask@_176@7)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@6 unfoldingSecMask@_176@8)
      (wf unfoldingHeap@_174@1 unfoldingSecMask@_176@6 unfoldingSecMask@_176@6)
      (wf unfoldingHeap@_174@1 unfoldingSecMask@_176@7 unfoldingSecMask@_176@7)
      (wf unfoldingHeap@_174@1 unfoldingSecMask@_176@8 unfoldingSecMask@_176@8)
   )
(or anon279_Else anon279_Then)
)) :named ax_anon272_Else))
(assert (! (=> anon279_Else (and true 
   (and true
      (= $@condition_$7 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next) null)
      (= unfoldingSecMask@_176@10 unfoldingSecMask@_176@8)
      (not $@condition_$7)
   )
anon57
)) :named ax_anon279_Else))
(assert (! (=> anon279_Then (and true 
   (and true
      $@condition_$7
      (= $@condition_$7 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next) null)))
      (= unfoldingSecMask@_176@10 unfoldingSecMask@_176@9)
      (= unfoldingSecMask@_176@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_176@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_176@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next) Node.invRight) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_176@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next) Node.invRight) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_175@6)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next) Node.invRight)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 predRec@_201@0 Node.next) null))
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@6 unfoldingSecMask@_176@8)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@6 unfoldingSecMask@_176@9)
   )
anon57
)) :named ax_anon279_Then))
(assert (! (=> anon57 (and true 
   (and true
      (= unfoldingMask@_175@7 unfoldingMask@_175@6)
      (= unfoldingSecMask@_176@11 unfoldingSecMask@_176@10)
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_174@1 this mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.next) mu))
   )
anon58
)) :named ax_anon57))
(assert (! (=> anon58 (and true 
   (and true
      (IsGoodMask unfoldingMask@_175@7)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@7 unfoldingSecMask@_176@11)
   )
anon280_Else
)) :named ax_anon58))
(assert (! (=> anon280_Else (and true 
   (and true
      (= $@condition_$8 false)
      (= SecMask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev) perm$N) 1))))
      (= SecMask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@0 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@0 this Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@0 this Node.next) perm$N) 1))))
      (= SecMask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ SecMask@1 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ SecMask@1 this mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ SecMask@1 this mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask Mask@0)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap this mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev)))
      (not $@condition_$8)
      (not (= this null))
      (not false)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev)) Node@t))
      (wf Heap Mask@0 SecMask@0)
      (wf Heap Mask@0 SecMask@1)
      (wf Heap Mask@0 SecMask@2)
      (wf Heap Mask@0 ZeroMask)
      (wf Heap SecMask@0 SecMask@0)
      (wf Heap SecMask@1 SecMask@1)
      (wf Heap SecMask@2 SecMask@2)
   )
(or anon290_Else anon290_Then)
)) :named ax_anon280_Else))
(assert (! (=> anon290_Else (and true 
   (and true
      (= $@condition_$9 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null)
      (= SecMask@4 SecMask@2)
      (not $@condition_$9)
   )
$branchMerge_1
)) :named ax_anon290_Else))
(assert (! (=> anon290_Then (and true 
   (and true
      $@condition_$9
      (= $@condition_$9 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null)))
      (= SecMask@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (= SecMask@4 SecMask@3)
      (> (Fractions 100) 0)
      (IsGoodMask Mask@0)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null))
      (wf Heap Mask@0 SecMask@2)
      (wf Heap Mask@0 SecMask@3)
   )
$branchMerge_1
)) :named ax_anon290_Then))
(assert (! (=> $branchMerge_1 (and true 
   (and true
   )
(or anon291_Else anon291_Then)
)) :named ax_$branchMerge_1))
(assert (! (=> anon291_Else (and true 
   (and true
      (= $@condition_$10 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null)
      (= SecMask@6 SecMask@4)
      (not $@condition_$10)
   )
anon82
)) :named ax_anon291_Else))
(assert (! (=> anon291_Then (and true 
   (and true
      $@condition_$10
      (= $@condition_$10 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null)))
      (= SecMask@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$R) (Fractions 100)))))
      (= SecMask@6 SecMask@5)
      (> (Fractions 100) 0)
      (IsGoodMask Mask@0)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null))
      (wf Heap Mask@0 SecMask@4)
      (wf Heap Mask@0 SecMask@5)
   )
anon82
)) :named ax_anon291_Then))
(assert (! (=> anon82 (and true 
   (and true
   )
(or anon82@1 anon82_assertion)
)) :named ax_anon82))
(assert (! (=> anon82@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon82@1_assertion anon82@2)
)) :named ax_anon82@1))
(assert (! (=> anon82_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon82_assertion))
(assert (! (=> anon82@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_175@7 unfoldingSecMask@_176@11 this Node.prev))
   )
))) :named ax_anon82@1_assertion))
(assert (! (=> anon82@2 (and true 
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_175@7 unfoldingSecMask@_176@11 this Node.prev))
   )
(or anon292_Else anon292_Then)
)) :named ax_anon82@2))
(assert (! (=> anon292_Else (and true 
   (and true
      (= $@condition_$12 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null)
      (not $@condition_$12)
   )
(or anon292_Else@1 anon292_Else_assertion)
)) :named ax_anon292_Else))
(assert (! (=> anon292_Then (and true 
   (and true
      $@condition_$12
      (< (* 1000 unfoldingK@_222) (Fractions 1))
      (< 0 unfoldingK@_222)
      (= $@condition_$12 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null))
   )
(or anon292_Then@1 anon292_Then_assertion)
)) :named ax_anon292_Then))
(assert (! (=> anon292_Else@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon292_Else@1_assertion anon292_Else@2)
)) :named ax_anon292_Else@1))
(assert (! (=> anon292_Else_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon292_Else_assertion))
(assert (! (=> anon292_Then@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon292_Then@1_assertion anon292_Then@2)
)) :named ax_anon292_Then@1))
(assert (! (=> anon292_Then_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon292_Then_assertion))
(assert (! (=> anon292_Else@1_assertion (not (and true
   (and true
      (=> true (CanRead$Mu$ unfoldingMask@_175@7 unfoldingSecMask@_176@11 this mu))
   )
))) :named ax_anon292_Else@1_assertion))
(assert (! (=> anon292_Else@2 (and true 
   (and true
      (=> true (CanRead$Mu$ unfoldingMask@_175@7 unfoldingSecMask@_176@11 this mu))
   )
anon187
)) :named ax_anon292_Else@2))
(assert (! (=> anon292_Then@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_175@7 unfoldingSecMask@_176@11 this Node.prev))
   )
))) :named ax_anon292_Then@1_assertion))
(assert (! (=> anon292_Then@2 (and true 
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_175@7 unfoldingSecMask@_176@11 this Node.prev))
   )
(or anon292_Then@2_assertion anon292_Then@3)
)) :named ax_anon292_Then@2))
(assert (! (=> anon292_Then@2_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null)))
   )
))) :named ax_anon292_Then@2_assertion))
(assert (! (=> anon292_Then@3 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null)))
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@7 unfoldingSecMask@_176@11)
   )
(or anon292_Then@3_assertion anon292_Then@4)
)) :named ax_anon292_Then@3))
(assert (! (=> anon292_Then@3_assertion (not (and true
   (and true
      (> (Fractions 100) 0)
   )
))) :named ax_anon292_Then@3_assertion))
(assert (! (=> anon292_Then@4 (and true 
   (and true
      (> (Fractions 100) 0)
   )
(or anon292_Then@4_assertion anon292_Then@5)
)) :named ax_anon292_Then@4))
(assert (! (=> anon292_Then@4_assertion (not (and true
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft) perm$R))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft) perm$N)))
   )
))) :named ax_anon292_Then@4_assertion))
(assert (! (=> anon292_Then@5 (and true 
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft) perm$R))
      (= unfoldingMask@_218@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_175@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft) perm$N)))
   )
anon293_Else
)) :named ax_anon292_Then@5))
(assert (! (=> anon293_Else (and true 
   (and true
      (= $@condition_$13 false)
      (not $@condition_$13)
      (not false)
   )
(or anon300_Else anon300_Then)
)) :named ax_anon293_Else))
(assert (! (=> anon300_Else (and true 
   (and true
      (= $@condition_$14 (not (CanRead$Int$ unfoldingMask@_218@0 unfoldingSecMask@_176@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft)))
      (= unfoldingHeap@_217@1 unfoldingHeap@_174@1)
      (CanRead$Int$ unfoldingMask@_218@0 unfoldingSecMask@_176@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft)
      (not $@condition_$14)
   )
anon99
)) :named ax_anon300_Else))
(assert (! (=> anon300_Then (and true 
   (and true
      $@condition_$14
      (< oldVers@_232@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_217@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@0 this Node.prev) Node.invLeft))
      (= $@condition_$14 (not (CanRead$Int$ unfoldingMask@_218@0 unfoldingSecMask@_176@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft)))
      (= oldVers@_232@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft))
      (= unfoldingHeap@_217@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft newVers@_233@0))
      (= unfoldingHeap@_217@1 unfoldingHeap@_217@0)
      (not (CanRead$Int$ unfoldingMask@_218@0 unfoldingSecMask@_176@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.invLeft))
   )
anon99
)) :named ax_anon300_Then))
(assert (! (=> anon99 (and true 
   (and true
      (= unfoldingMask@_218@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_218@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_218@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_218@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) perm$N) 1))))
      (= unfoldingMask@_218@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_218@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_218@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_218@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.next) perm$N) 1))))
      (= unfoldingMask@_218@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_218@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_218@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_218@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_218@0)
      (IsGoodMask unfoldingMask@_218@1)
      (IsGoodMask unfoldingMask@_218@2)
      (IsGoodMask unfoldingMask@_218@3)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev)) Node@t))
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@0 unfoldingSecMask@_176@11)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@1 unfoldingSecMask@_176@11)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@2 unfoldingSecMask@_176@11)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@3 unfoldingSecMask@_176@11)
   )
(or anon301_Else anon301_Then)
)) :named ax_anon99))
(assert (! (=> anon301_Else (and true 
   (and true
      (= $@condition_$15 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null)
      (= unfoldingMask@_218@5 unfoldingMask@_218@3)
      (= unfoldingSecMask@_219@5 unfoldingSecMask@_176@11)
      (not $@condition_$15)
   )
anon117
)) :named ax_anon301_Else))
(assert (! (=> anon301_Then (and true 
   (and true
      $@condition_$15
      ($@Node.invLeft@trigger (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev))
      (= $@condition_$15 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null)))
      (= predRec@_234@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev))
      (= predVer@_235@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) Node.invLeft))
      (= unfoldingMask@_218@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_218@4)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null))
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@3 unfoldingSecMask@_176@11)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@4 unfoldingSecMask@_176@11)
   )
anon302_Else
)) :named ax_anon301_Then))
(assert (! (=> anon302_Else (and true 
   (and true
      (= $@condition_$16 false)
      (= unfoldingSecMask@_219@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@11 predRec@_234@0 Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@11 predRec@_234@0 Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@11 predRec@_234@0 Node.prev) perm$N) 1))))
      (= unfoldingSecMask@_219@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@0 predRec@_234@0 Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@0 predRec@_234@0 Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@0 predRec@_234@0 Node.next) perm$N) 1))))
      (= unfoldingSecMask@_219@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_219@1 predRec@_234@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_219@1 predRec@_234@0 mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_219@1 predRec@_234@0 mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_218@4)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_217@1 predRec@_234@0 mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev)))
      (not $@condition_$16)
      (not (= predRec@_234@0 null))
      (not false)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev)) Node@t))
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@4 unfoldingSecMask@_176@11)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@4 unfoldingSecMask@_219@0)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@4 unfoldingSecMask@_219@1)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@4 unfoldingSecMask@_219@2)
      (wf unfoldingHeap@_217@1 unfoldingSecMask@_219@0 unfoldingSecMask@_219@0)
      (wf unfoldingHeap@_217@1 unfoldingSecMask@_219@1 unfoldingSecMask@_219@1)
      (wf unfoldingHeap@_217@1 unfoldingSecMask@_219@2 unfoldingSecMask@_219@2)
   )
(or anon309_Else anon309_Then)
)) :named ax_anon302_Else))
(assert (! (=> anon309_Else (and true 
   (and true
      (= $@condition_$17 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev) null)
      (= unfoldingSecMask@_219@4 unfoldingSecMask@_219@2)
      (not $@condition_$17)
   )
anon116
)) :named ax_anon309_Else))
(assert (! (=> anon309_Then (and true 
   (and true
      $@condition_$17
      (= $@condition_$17 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev) null)))
      (= unfoldingSecMask@_219@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_219@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_219@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_219@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (= unfoldingSecMask@_219@4 unfoldingSecMask@_219@3)
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_218@4)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 predRec@_234@0 Node.prev) null))
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@4 unfoldingSecMask@_219@2)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@4 unfoldingSecMask@_219@3)
   )
anon116
)) :named ax_anon309_Then))
(assert (! (=> anon116 (and true 
   (and true
      (= unfoldingMask@_218@5 unfoldingMask@_218@4)
      (= unfoldingSecMask@_219@5 unfoldingSecMask@_219@4)
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) mu))
   )
anon117
)) :named ax_anon116))
(assert (! (=> anon117 (and true 
   (and true
      (IsGoodMask unfoldingMask@_218@5)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@5 unfoldingSecMask@_219@5)
   )
anon310_Else
)) :named ax_anon117))
(assert (! (=> anon310_Else (and true 
   (and true
      (= $@condition_$18 false)
      (= unfoldingSecMask@_176@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) perm$N) 1))))
      (= unfoldingSecMask@_176@13 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_176@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.next) perm$N) 1))))
      (= unfoldingSecMask@_176@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_176@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_176@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_176@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_175@7)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev)))
      (not $@condition_$18)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) null))
      (not false)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev)) Node@t))
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@7 unfoldingSecMask@_176@11)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@7 unfoldingSecMask@_176@12)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@7 unfoldingSecMask@_176@13)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@7 unfoldingSecMask@_176@14)
      (wf unfoldingHeap@_174@1 unfoldingSecMask@_176@12 unfoldingSecMask@_176@12)
      (wf unfoldingHeap@_174@1 unfoldingSecMask@_176@13 unfoldingSecMask@_176@13)
      (wf unfoldingHeap@_174@1 unfoldingSecMask@_176@14 unfoldingSecMask@_176@14)
   )
(or anon317_Else anon317_Then)
)) :named ax_anon310_Else))
(assert (! (=> anon317_Else (and true 
   (and true
      (= $@condition_$19 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) null)
      (not $@condition_$19)
   )
anon133
)) :named ax_anon317_Else))
(assert (! (=> anon317_Then (and true 
   (and true
      $@condition_$19
      (= $@condition_$19 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) null)))
      (= unfoldingSecMask@_176@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_176@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_176@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_176@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_175@7)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_174@1 this Node.prev) Node.prev) null))
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@7 unfoldingSecMask@_176@14)
      (wf unfoldingHeap@_174@1 unfoldingMask@_175@7 unfoldingSecMask@_176@15)
   )
anon133
)) :named ax_anon317_Then))
(assert (! (=> anon133 (and true 
   (and true
   )
(or anon133@1 anon133_assertion)
)) :named ax_anon133))
(assert (! (=> anon133@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon133@1_assertion anon133@2)
)) :named ax_anon133@1))
(assert (! (=> anon133_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon133_assertion))
(assert (! (=> anon133@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 this Node.prev))
   )
))) :named ax_anon133@1_assertion))
(assert (! (=> anon133@2 (and true 
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 this Node.prev))
   )
(or anon133@2_assertion anon133@3)
)) :named ax_anon133@2))
(assert (! (=> anon133@2_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) null)))
   )
))) :named ax_anon133@2_assertion))
(assert (! (=> anon133@3 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) null)))
   )
(or anon133@3_assertion anon133@4)
)) :named ax_anon133@3))
(assert (! (=> anon133@3_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev))
   )
))) :named ax_anon133@3_assertion))
(assert (! (=> anon133@4 (and true 
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev))
   )
(or anon318_Else anon318_Then)
)) :named ax_anon133@4))
(assert (! (=> anon318_Else (and true 
   (and true
      (= $@condition_$20 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null)
      (not $@condition_$20)
   )
(or anon318_Else@1 anon318_Else_assertion)
)) :named ax_anon318_Else))
(assert (! (=> anon318_Then (and true 
   (and true
      $@condition_$20
      (< (* 1000 unfoldingK@_254) (Fractions 1))
      (< 0 unfoldingK@_254)
      (= $@condition_$20 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null))
   )
(or anon318_Then@1 anon318_Then_assertion)
)) :named ax_anon318_Then))
(assert (! (=> anon318_Else@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon318_Else@1_assertion anon318_Else@2)
)) :named ax_anon318_Else@1))
(assert (! (=> anon318_Else_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon318_Else_assertion))
(assert (! (=> anon318_Then@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon318_Then@1_assertion anon318_Then@2)
)) :named ax_anon318_Then@1))
(assert (! (=> anon318_Then_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon318_Then_assertion))
(assert (! (=> anon318_Else@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 this Node.prev))
   )
))) :named ax_anon318_Else@1_assertion))
(assert (! (=> anon318_Else@2 (and true 
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 this Node.prev))
   )
(or anon318_Else@2_assertion anon318_Else@3)
)) :named ax_anon318_Else@2))
(assert (! (=> anon318_Then@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 this Node.prev))
   )
))) :named ax_anon318_Then@1_assertion))
(assert (! (=> anon318_Then@2 (and true 
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 this Node.prev))
   )
(or anon318_Then@2_assertion anon318_Then@3)
)) :named ax_anon318_Then@2))
(assert (! (=> anon318_Else@2_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) null)))
   )
))) :named ax_anon318_Else@2_assertion))
(assert (! (=> anon318_Else@3 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) null)))
   )
(or anon318_Else@3_assertion anon318_Else@4)
)) :named ax_anon318_Else@3))
(assert (! (=> anon318_Then@2_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) null)))
   )
))) :named ax_anon318_Then@2_assertion))
(assert (! (=> anon318_Then@3 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) null)))
   )
(or anon318_Then@3_assertion anon318_Then@4)
)) :named ax_anon318_Then@3))
(assert (! (=> anon318_Else@3_assertion (not (and true
   (and true
      (=> true (CanRead$Mu$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) mu))
   )
))) :named ax_anon318_Else@3_assertion))
(assert (! (=> anon318_Else@4 (and true 
   (and true
      (=> true (CanRead$Mu$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) mu))
   )
anon187
)) :named ax_anon318_Else@4))
(assert (! (=> anon318_Then@3_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev))
   )
))) :named ax_anon318_Then@3_assertion))
(assert (! (=> anon318_Then@4 (and true 
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_218@5 unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev))
   )
(or anon318_Then@4_assertion anon318_Then@5)
)) :named ax_anon318_Then@4))
(assert (! (=> anon318_Then@4_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null)))
   )
))) :named ax_anon318_Then@4_assertion))
(assert (! (=> anon318_Then@5 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null)))
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@5 unfoldingSecMask@_219@5)
   )
(or anon318_Then@5_assertion anon318_Then@6)
)) :named ax_anon318_Then@5))
(assert (! (=> anon318_Then@5_assertion (not (and true
   (and true
      (> (Fractions 100) 0)
   )
))) :named ax_anon318_Then@5_assertion))
(assert (! (=> anon318_Then@6 (and true 
   (and true
      (> (Fractions 100) 0)
   )
(or anon318_Then@6_assertion anon318_Then@7)
)) :named ax_anon318_Then@6))
(assert (! (=> anon318_Then@6_assertion (not (and true
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft) perm$R))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft) perm$N)))
   )
))) :named ax_anon318_Then@6_assertion))
(assert (! (=> anon318_Then@7 (and true 
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft) perm$R))
      (= unfoldingMask@_250@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_218@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft) perm$N)))
   )
anon319_Else
)) :named ax_anon318_Then@7))
(assert (! (=> anon319_Else (and true 
   (and true
      (= $@condition_$21 false)
      (not $@condition_$21)
      (not false)
   )
(or anon326_Else anon326_Then)
)) :named ax_anon319_Else))
(assert (! (=> anon326_Else (and true 
   (and true
      (= $@condition_$22 (not (CanRead$Int$ unfoldingMask@_250@0 unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft)))
      (= unfoldingHeap@_249@1 unfoldingHeap@_217@1)
      (CanRead$Int$ unfoldingMask@_250@0 unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft)
      (not $@condition_$22)
   )
anon150
)) :named ax_anon326_Else))
(assert (! (=> anon326_Then (and true 
   (and true
      $@condition_$22
      (< oldVers@_264@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_249@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@0 this Node.prev) Node.prev) Node.invLeft))
      (= $@condition_$22 (not (CanRead$Int$ unfoldingMask@_250@0 unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft)))
      (= oldVers@_264@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft))
      (= unfoldingHeap@_249@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft newVers@_265@0))
      (= unfoldingHeap@_249@1 unfoldingHeap@_249@0)
      (not (CanRead$Int$ unfoldingMask@_250@0 unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.invLeft))
   )
anon150
)) :named ax_anon326_Then))
(assert (! (=> anon150 (and true 
   (and true
      (= unfoldingMask@_250@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_250@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_250@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_250@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) perm$N) 1))))
      (= unfoldingMask@_250@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_250@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_250@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_250@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.next) perm$N) 1))))
      (= unfoldingMask@_250@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_250@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_250@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_250@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_250@0)
      (IsGoodMask unfoldingMask@_250@1)
      (IsGoodMask unfoldingMask@_250@2)
      (IsGoodMask unfoldingMask@_250@3)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev)) Node@t))
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@0 unfoldingSecMask@_219@5)
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@1 unfoldingSecMask@_219@5)
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@2 unfoldingSecMask@_219@5)
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@3 unfoldingSecMask@_219@5)
   )
(or anon327_Else anon327_Then)
)) :named ax_anon150))
(assert (! (=> anon327_Else (and true 
   (and true
      (= $@condition_$23 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) null)
      (= unfoldingMask@_250@5 unfoldingMask@_250@3)
      (= unfoldingSecMask@_251@5 unfoldingSecMask@_219@5)
      (not $@condition_$23)
   )
anon168
)) :named ax_anon327_Else))
(assert (! (=> anon327_Then (and true 
   (and true
      $@condition_$23
      ($@Node.invLeft@trigger (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) Node.prev))
      (= $@condition_$23 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) null)))
      (= predRec@_266@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) Node.prev))
      (= predVer@_267@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) Node.prev) Node.invLeft))
      (= unfoldingMask@_250@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_250@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_250@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_250@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_250@4)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) null))
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@3 unfoldingSecMask@_219@5)
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@4 unfoldingSecMask@_219@5)
   )
anon328_Else
)) :named ax_anon327_Then))
(assert (! (=> anon328_Else (and true 
   (and true
      (= $@condition_$24 false)
      (= unfoldingSecMask@_251@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@5 predRec@_266@0 Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@5 predRec@_266@0 Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@5 predRec@_266@0 Node.prev) perm$N) 1))))
      (= unfoldingSecMask@_251@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_251@0 predRec@_266@0 Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_251@0 predRec@_266@0 Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_251@0 predRec@_266@0 Node.next) perm$N) 1))))
      (= unfoldingSecMask@_251@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_251@1 predRec@_266@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_251@1 predRec@_266@0 mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_251@1 predRec@_266@0 mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_250@4)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_249@1 predRec@_266@0 mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev)))
      (not $@condition_$24)
      (not (= predRec@_266@0 null))
      (not false)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev)) Node@t))
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@4 unfoldingSecMask@_219@5)
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@4 unfoldingSecMask@_251@0)
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@4 unfoldingSecMask@_251@1)
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@4 unfoldingSecMask@_251@2)
      (wf unfoldingHeap@_249@1 unfoldingSecMask@_251@0 unfoldingSecMask@_251@0)
      (wf unfoldingHeap@_249@1 unfoldingSecMask@_251@1 unfoldingSecMask@_251@1)
      (wf unfoldingHeap@_249@1 unfoldingSecMask@_251@2 unfoldingSecMask@_251@2)
   )
(or anon335_Else anon335_Then)
)) :named ax_anon328_Else))
(assert (! (=> anon335_Else (and true 
   (and true
      (= $@condition_$25 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev) null)
      (= unfoldingSecMask@_251@4 unfoldingSecMask@_251@2)
      (not $@condition_$25)
   )
anon167
)) :named ax_anon335_Else))
(assert (! (=> anon335_Then (and true 
   (and true
      $@condition_$25
      (= $@condition_$25 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev) null)))
      (= unfoldingSecMask@_251@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_251@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_251@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_251@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (= unfoldingSecMask@_251@4 unfoldingSecMask@_251@3)
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_250@4)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 predRec@_266@0 Node.prev) null))
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@4 unfoldingSecMask@_251@2)
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@4 unfoldingSecMask@_251@3)
   )
anon167
)) :named ax_anon335_Then))
(assert (! (=> anon167 (and true 
   (and true
      (= unfoldingMask@_250@5 unfoldingMask@_250@4)
      (= unfoldingSecMask@_251@5 unfoldingSecMask@_251@4)
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) Node.prev) mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) mu))
   )
anon168
)) :named ax_anon167))
(assert (! (=> anon168 (and true 
   (and true
      (IsGoodMask unfoldingMask@_250@5)
      (wf unfoldingHeap@_249@1 unfoldingMask@_250@5 unfoldingSecMask@_251@5)
   )
anon336_Else
)) :named ax_anon168))
(assert (! (=> anon336_Else (and true 
   (and true
      (= $@condition_$26 false)
      (= unfoldingSecMask@_219@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) perm$N) 1))))
      (= unfoldingSecMask@_219@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_219@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.next) perm$N) 1))))
      (= unfoldingSecMask@_219@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_219@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_219@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_219@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_218@5)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev)))
      (not $@condition_$26)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) null))
      (not false)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev)) Node@t))
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@5 unfoldingSecMask@_219@5)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@5 unfoldingSecMask@_219@6)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@5 unfoldingSecMask@_219@7)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@5 unfoldingSecMask@_219@8)
      (wf unfoldingHeap@_217@1 unfoldingSecMask@_219@6 unfoldingSecMask@_219@6)
      (wf unfoldingHeap@_217@1 unfoldingSecMask@_219@7 unfoldingSecMask@_219@7)
      (wf unfoldingHeap@_217@1 unfoldingSecMask@_219@8 unfoldingSecMask@_219@8)
   )
(or anon343_Else anon343_Then)
)) :named ax_anon336_Else))
(assert (! (=> anon343_Else (and true 
   (and true
      (= $@condition_$27 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) null)
      (not $@condition_$27)
   )
anon184
)) :named ax_anon343_Else))
(assert (! (=> anon343_Then (and true 
   (and true
      $@condition_$27
      (= $@condition_$27 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) null)))
      (= unfoldingSecMask@_219@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_219@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_219@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_219@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_218@5)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_217@1 this Node.prev) Node.prev) Node.prev) null))
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@5 unfoldingSecMask@_219@8)
      (wf unfoldingHeap@_217@1 unfoldingMask@_218@5 unfoldingSecMask@_219@9)
   )
anon184
)) :named ax_anon343_Then))
(assert (! (=> anon184 (and true 
   (and true
   )
(or anon184@1 anon184_assertion)
)) :named ax_anon184))
(assert (! (=> anon184@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon184@1_assertion anon184@2)
)) :named ax_anon184@1))
(assert (! (=> anon184_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon184_assertion))
(assert (! (=> anon184@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_250@5 unfoldingSecMask@_251@5 this Node.prev))
   )
))) :named ax_anon184@1_assertion))
(assert (! (=> anon184@2 (and true 
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_250@5 unfoldingSecMask@_251@5 this Node.prev))
   )
(or anon184@2_assertion anon184@3)
)) :named ax_anon184@2))
(assert (! (=> anon184@2_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) null)))
   )
))) :named ax_anon184@2_assertion))
(assert (! (=> anon184@3 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) null)))
   )
(or anon184@3_assertion anon184@4)
)) :named ax_anon184@3))
(assert (! (=> anon184@3_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_250@5 unfoldingSecMask@_251@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev))
   )
))) :named ax_anon184@3_assertion))
(assert (! (=> anon184@4 (and true 
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_250@5 unfoldingSecMask@_251@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev))
   )
(or anon184@4_assertion anon184@5)
)) :named ax_anon184@4))
(assert (! (=> anon184@4_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) null)))
   )
))) :named ax_anon184@4_assertion))
(assert (! (=> anon184@5 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) null)))
   )
(or anon184@5_assertion anon184@6)
)) :named ax_anon184@5))
(assert (! (=> anon184@5_assertion (not (and true
   (and true
      (=> true (CanRead$Mu$ unfoldingMask@_250@5 unfoldingSecMask@_251@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) mu))
   )
))) :named ax_anon184@5_assertion))
(assert (! (=> anon184@6 (and true 
   (and true
      (=> true (CanRead$Mu$ unfoldingMask@_250@5 unfoldingSecMask@_251@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_249@1 this Node.prev) Node.prev) mu))
   )
anon187
)) :named ax_anon184@6))
(assert (! (=> anon187 (and true 
   (and true
      (= (= true $@bf_20) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev))))
      (= (= true $@bf_21) (ite$Bool$ $@bf_22 $@bf_23 $@bf_24))
      (= (= true $@bf_22) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev))))
      (= (= true $@bf_23) (forall ((|o@_281| ref))(!(=> (or (or (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap o@_281 rdheld) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap o@_281 held))) (< (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits o@_281) 0)) (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap o@_281 mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) mu))) )))
      (= (= true $@bf_24) (forall ((|o@_282| ref))(!(=> (or (or (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap o@_282 rdheld) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap o@_282 held))) (< (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits o@_282) 0)) (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap o@_282 mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) mu))) )))
      (= (= true $@bf_25) (forall ((|o@_283| ref))(!(=> (or (or (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap o@_283 rdheld) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap o@_283 held))) (< (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits o@_283) 0)) (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap o@_283 mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap this mu))) )))
      (= Heap Heap)
      (= Mask@0 Mask)
      (= SecMask@6 SecMask)
      (= ZeroCredits Credits)
      (IsGoodMask Mask@0)
      (ite$Bool$ (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null)) (ite$Bool$ (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) null)) (forall( (|o#_281| ref))(=> (or (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |o#_281| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |o#_281| rdheld)) (< (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |o#_281|) 0)) (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap |o#_281| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) mu)))) (forall( (|o#_282| ref))(=> (or (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |o#_282| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |o#_282| rdheld)) (< (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |o#_282|) 0)) (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap |o#_282| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) mu))))) (forall( (|o#_283| ref))(=> (or (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |o#_283| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |o#_283| rdheld)) (< (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |o#_283|) 0)) (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap |o#_283| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap this mu)))))
      (wf Heap Mask@0 SecMask@6)
   )
(or anon187@1 anon187_assertion)
)) :named ax_anon187))
(assert (! (=> anon187@1 (and true 
   (and true
      (= Mask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this Node.inv (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this Node.inv) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this Node.inv) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodMask Mask@1)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this Node.inv)))
      (not (= this null))
      (wf Heap@0 Mask@1 ZeroMask)
      (wf Heap@0 ZeroMask ZeroMask)
   )
(or anon344_Else anon344_Then)
)) :named ax_anon187@1))
(assert (! (=> anon187_assertion (not (and true
   (and true
      (not (= this null))
   )
))) :named ax_anon187_assertion))
(assert (! (=> anon344_Else (and true 
   (and true
      (= $@condition_$28 (not (= newList@0 null)))
      (= Mask@3 Mask@1)
      (= newList@0 null)
      (not $@condition_$28)
   )
anon189
)) :named ax_anon344_Else))
(assert (! (=> anon344_Then (and true 
   (and true
      $@condition_$28
      (= $@condition_$28 (not (= newList@0 null)))
      (not (= newList@0 null))
   )
(or anon344_Then@1 anon344_Then_assertion)
)) :named ax_anon344_Then))
(assert (! (=> anon344_Then@1 (and true 
   (and true
      (= Mask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 newList@0 Node.inv (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 newList@0 Node.inv) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 newList@0 Node.inv) perm$R) (Fractions 100)))))
      (= Mask@3 Mask@2)
      (> (Fractions 100) 0)
      (IsGoodMask Mask@2)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 newList@0 Node.inv)))
      (not (= newList@0 null))
      (wf Heap@0 Mask@1 ZeroMask)
      (wf Heap@0 Mask@2 ZeroMask)
   )
anon189
)) :named ax_anon344_Then@1))
(assert (! (=> anon344_Then_assertion (not (and true
   (and true
      (not (= newList@0 null))
   )
))) :named ax_anon344_Then_assertion))
(assert (! (=> anon189 (and true 
   (and true
      (< (* 1000 unfoldingK@_289) (Fractions 1))
      (< 0 unfoldingK@_289)
   )
(or anon189@1 anon189_assertion)
)) :named ax_anon189))
(assert (! (=> anon189@1 (and true 
   (and true
      (= unfoldingCredits@_287@0 Credits)
      (= unfoldingHeap@_284@0 Heap)
      (= unfoldingMask@_285@0 Mask)
      (= unfoldingSecMask@_286@0 SecMask)
      (=> true (not (= this null)))
      (wf unfoldingHeap@_284@0 unfoldingMask@_285@0 unfoldingSecMask@_286@0)
   )
(or anon189@1_assertion anon189@2)
)) :named ax_anon189@1))
(assert (! (=> anon189_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon189_assertion))
(assert (! (=> anon189@1_assertion (not (and true
   (and true
      (> (Fractions 100) 0)
   )
))) :named ax_anon189@1_assertion))
(assert (! (=> anon189@2 (and true 
   (and true
      (> (Fractions 100) 0)
   )
(or anon189@2_assertion anon189@3)
)) :named ax_anon189@2))
(assert (! (=> anon189@2_assertion (not (and true
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@0 this Node.inv) perm$R))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@0 this Node.inv) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@0 this Node.inv) perm$N)))
   )
))) :named ax_anon189@2_assertion))
(assert (! (=> anon189@3 (and true 
   (and true
      (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@0 this Node.inv) perm$R))
      (= unfoldingMask@_285@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@0 this Node.inv (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@0 this Node.inv) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@0 this Node.inv) perm$R) (Fractions 100)))))
      (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@0 this Node.inv) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@0 this Node.inv) perm$N)))
   )
(or anon345_Else anon345_Then)
)) :named ax_anon189@3))
(assert (! (=> anon345_Else (and true 
   (and true
      (= $@condition_$29 (or (or false (and (and (and (= predVer@_172@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true)) (and (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this Node.inv) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true)))
      (= unfoldingSecMask@_286@18 unfoldingSecMask@_286@0)
      (not $@condition_$29)
      (not (or (or false (and (and (and (= predVer@_172@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true)) (and (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this Node.inv) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true)))
   )
$branchMerge_2
)) :named ax_anon345_Else))
(assert (! (=> anon345_Then (and true 
   (and true
      $@condition_$29
      (= $@condition_$29 (or (or false (and (and (and (= predVer@_172@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true)) (and (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this Node.inv) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true)))
      (or (or false (and (and (and (= predVer@_172@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true)) (and (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this Node.inv) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true))
   )
(or anon346_Else anon346_Then)
)) :named ax_anon345_Then))
(assert (! (=> anon346_Else (and true 
   (and true
      (= $@condition_$30 (and (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this Node.inv) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true))
      (not $@condition_$30)
      (not (and (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this Node.inv) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true))
   )
$branchMerge_3
)) :named ax_anon346_Else))
(assert (! (=> anon346_Then (and true 
   (and true
      $@condition_$30
      (= $@condition_$30 (and (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this Node.inv) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv)) (= this this)) true) true))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this Node.inv) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv))
      (= this this)
   )
$branchMerge_3
)) :named ax_anon346_Then))
(assert (! (=> $branchMerge_3 (and true 
   (and true
   )
(or anon347_Else anon347_Then)
)) :named ax_$branchMerge_3))
(assert (! (=> anon347_Else (and true 
   (and true
      (= $@condition_$32 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) null)
      (not $@condition_$32)
   )
$branchMerge_4
)) :named ax_anon347_Else))
(assert (! (=> anon347_Then (and true 
   (and true
      $@condition_$32
      (= $@condition_$32 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) null)))
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@0 this mu))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) null))
   )
$branchMerge_4
)) :named ax_anon347_Then))
(assert (! (=> $branchMerge_4 (and true 
   (and true
   )
(or anon348_Else anon348_Then)
)) :named ax_$branchMerge_4))
(assert (! (=> anon348_Else (and true 
   (and true
      (= $@condition_$34 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) null)
      (not $@condition_$34)
   )
anon197
)) :named ax_anon348_Else))
(assert (! (=> anon348_Then (and true 
   (and true
      $@condition_$34
      (= $@condition_$34 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) null)))
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@0 this mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) mu))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) null))
   )
anon197
)) :named ax_anon348_Then))
(assert (! (=> anon197 (and true 
   (and true
      (= unfoldingSecMask@_286@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@0 this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@0 this Node.prev) perm$N (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@0 this Node.prev) perm$N) 1))))
      (wf unfoldingHeap@_284@0 unfoldingMask@_285@1 unfoldingSecMask@_286@1)
   )
(or anon349_Else anon349_Then)
)) :named ax_anon197))
(assert (! (=> anon349_Else (and true 
   (and true
      (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@1 this Node.prev) perm$N))
      (= unfoldingSecMask@_286@3 unfoldingSecMask@_286@1)
      (not $@condition_$36)
   )
anon199
)) :named ax_anon349_Else))
(assert (! (=> anon349_Then (and true 
   (and true
      $@condition_$36
      (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@1 this Node.prev) perm$N) 0)
      (= unfoldingSecMask@_286@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@1 this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@1 this Node.prev) perm$N 0)))
      (= unfoldingSecMask@_286@3 unfoldingSecMask@_286@2)
   )
anon199
)) :named ax_anon349_Then))
(assert (! (=> anon199 (and true 
   (and true
      (= unfoldingSecMask@_286@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@3 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@3 this Node.next) perm$N (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@3 this Node.next) perm$N) 1))))
      (wf unfoldingHeap@_284@0 unfoldingMask@_285@1 unfoldingSecMask@_286@3)
      (wf unfoldingHeap@_284@0 unfoldingMask@_285@1 unfoldingSecMask@_286@4)
      (wf unfoldingHeap@_284@0 unfoldingSecMask@_286@3 unfoldingSecMask@_286@3)
   )
(or anon350_Else anon350_Then)
)) :named ax_anon199))
(assert (! (=> anon350_Else (and true 
   (and true
      (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@4 this Node.next) perm$N))
      (= unfoldingSecMask@_286@6 unfoldingSecMask@_286@4)
      (not $@condition_$37)
   )
anon201
)) :named ax_anon350_Else))
(assert (! (=> anon350_Then (and true 
   (and true
      $@condition_$37
      (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@4 this Node.next) perm$N) 0)
      (= unfoldingSecMask@_286@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@4 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@4 this Node.next) perm$N 0)))
      (= unfoldingSecMask@_286@6 unfoldingSecMask@_286@5)
   )
anon201
)) :named ax_anon350_Then))
(assert (! (=> anon201 (and true 
   (and true
      (= unfoldingSecMask@_286@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@6 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@6 this mu) perm$N (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@6 this mu) perm$N) 1))))
      (wf unfoldingHeap@_284@0 unfoldingMask@_285@1 unfoldingSecMask@_286@6)
      (wf unfoldingHeap@_284@0 unfoldingMask@_285@1 unfoldingSecMask@_286@7)
      (wf unfoldingHeap@_284@0 unfoldingSecMask@_286@6 unfoldingSecMask@_286@6)
   )
(or anon351_Else anon351_Then)
)) :named ax_anon201))
(assert (! (=> anon351_Else (and true 
   (and true
      (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@7 this mu) perm$N))
      (= unfoldingSecMask@_286@9 unfoldingSecMask@_286@7)
      (not $@condition_$38)
   )
anon203
)) :named ax_anon351_Else))
(assert (! (=> anon351_Then (and true 
   (and true
      $@condition_$38
      (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@7 this mu) perm$N) 0)
      (= unfoldingSecMask@_286@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@7 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@7 this mu) perm$N 0)))
      (= unfoldingSecMask@_286@9 unfoldingSecMask@_286@8)
   )
anon203
)) :named ax_anon351_Then))
(assert (! (=> anon203 (and true 
   (and true
      (wf unfoldingHeap@_284@0 unfoldingMask@_285@1 unfoldingSecMask@_286@9)
      (wf unfoldingHeap@_284@0 unfoldingSecMask@_286@9 unfoldingSecMask@_286@9)
   )
(or anon352_Else anon352_Then)
)) :named ax_anon203))
(assert (! (=> anon352_Else (and true 
   (and true
      (= $@condition_$39 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) null)
      (= unfoldingSecMask@_286@13 unfoldingSecMask@_286@9)
      (not $@condition_$39)
   )
$branchMerge_5
)) :named ax_anon352_Else))
(assert (! (=> anon352_Then (and true 
   (and true
      $@condition_$39
      (= $@condition_$39 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) null)))
      (= unfoldingSecMask@_286@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) Node.invLeft) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) null))
   )
(or anon353_Else anon353_Then)
)) :named ax_anon352_Then))
(assert (! (=> anon353_Else (and true 
   (and true
      (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) Node.invLeft) perm$R))
      (= unfoldingSecMask@_286@12 unfoldingSecMask@_286@10)
      (not $@condition_$40)
   )
anon206
)) :named ax_anon353_Else))
(assert (! (=> anon353_Then (and true 
   (and true
      $@condition_$40
      (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) Node.invLeft) perm$R) 0)
      (= unfoldingSecMask@_286@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.prev) Node.invLeft) perm$R 0)))
      (= unfoldingSecMask@_286@12 unfoldingSecMask@_286@11)
   )
anon206
)) :named ax_anon353_Then))
(assert (! (=> anon206 (and true 
   (and true
      (= unfoldingSecMask@_286@13 unfoldingSecMask@_286@12)
      (wf unfoldingHeap@_284@0 unfoldingMask@_285@1 unfoldingSecMask@_286@12)
      (wf unfoldingHeap@_284@0 unfoldingSecMask@_286@12 unfoldingSecMask@_286@12)
   )
$branchMerge_5
)) :named ax_anon206))
(assert (! (=> $branchMerge_5 (and true 
   (and true
   )
(or anon354_Else anon354_Then)
)) :named ax_$branchMerge_5))
(assert (! (=> anon354_Else (and true 
   (and true
      (= $@condition_$41 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) null)
      (= unfoldingSecMask@_286@17 unfoldingSecMask@_286@13)
      (not $@condition_$41)
   )
anon211
)) :named ax_anon354_Else))
(assert (! (=> anon354_Then (and true 
   (and true
      $@condition_$41
      (= $@condition_$41 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) null)))
      (= unfoldingSecMask@_286@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) Node.invRight) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) Node.invRight) perm$R) (Fractions 100)))))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) null))
   )
(or anon355_Else anon355_Then)
)) :named ax_anon354_Then))
(assert (! (=> anon355_Else (and true 
   (and true
      (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) Node.invRight) perm$R))
      (= unfoldingSecMask@_286@16 unfoldingSecMask@_286@14)
      (not $@condition_$43)
   )
anon210
)) :named ax_anon355_Else))
(assert (! (=> anon355_Then (and true 
   (and true
      $@condition_$43
      (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) Node.invRight) perm$R) 0)
      (= unfoldingSecMask@_286@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@0 this Node.next) Node.invRight) perm$R 0)))
      (= unfoldingSecMask@_286@16 unfoldingSecMask@_286@15)
   )
anon210
)) :named ax_anon355_Then))
(assert (! (=> anon210 (and true 
   (and true
      (= unfoldingSecMask@_286@17 unfoldingSecMask@_286@16)
      (wf unfoldingHeap@_284@0 unfoldingMask@_285@1 unfoldingSecMask@_286@16)
      (wf unfoldingHeap@_284@0 unfoldingSecMask@_286@16 unfoldingSecMask@_286@16)
   )
anon211
)) :named ax_anon210))
(assert (! (=> anon211 (and true 
   (and true
      (= unfoldingSecMask@_286@18 unfoldingSecMask@_286@17)
      (wf unfoldingHeap@_284@0 unfoldingSecMask@_286@17 unfoldingSecMask@_286@17)
   )
$branchMerge_2
)) :named ax_anon211))
(assert (! (=> $branchMerge_2 (and true 
   (and true
   )
(or anon356_Else anon356_Then)
)) :named ax_$branchMerge_2))
(assert (! (=> anon356_Else (and true 
   (and true
      (= $@condition_$31 (not (CanRead$Int$ unfoldingMask@_285@1 unfoldingSecMask@_286@18 this Node.inv)))
      (= unfoldingHeap@_284@2 unfoldingHeap@_284@0)
      (CanRead$Int$ unfoldingMask@_285@1 unfoldingSecMask@_286@18 this Node.inv)
      (not $@condition_$31)
   )
anon214
)) :named ax_anon356_Else))
(assert (! (=> anon356_Then (and true 
   (and true
      $@condition_$31
      (< oldVers@_300@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@1 this Node.inv))
      (= $@condition_$31 (not (CanRead$Int$ unfoldingMask@_285@1 unfoldingSecMask@_286@18 this Node.inv)))
      (= oldVers@_300@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv))
      (= unfoldingHeap@_284@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@0 this Node.inv newVers@_301@0))
      (= unfoldingHeap@_284@2 unfoldingHeap@_284@1)
      (not (CanRead$Int$ unfoldingMask@_285@1 unfoldingSecMask@_286@18 this Node.inv))
   )
anon214
)) :named ax_anon356_Then))
(assert (! (=> anon214 (and true 
   (and true
      (= unfoldingMask@_285@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_285@1 this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_285@1 this Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_285@1 this Node.prev) perm$N) 1))))
      (= unfoldingMask@_285@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_285@2 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_285@2 this Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_285@2 this Node.next) perm$N) 1))))
      (= unfoldingMask@_285@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_285@3 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_285@3 this mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_285@3 this mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_285@1)
      (IsGoodMask unfoldingMask@_285@2)
      (IsGoodMask unfoldingMask@_285@3)
      (IsGoodMask unfoldingMask@_285@4)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@2 this mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev)))
      (not (= this null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev)) Node@t))
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@1 unfoldingSecMask@_286@18)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@2 unfoldingSecMask@_286@18)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@3 unfoldingSecMask@_286@18)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@4 unfoldingSecMask@_286@18)
   )
(or anon357_Else anon357_Then)
)) :named ax_anon214))
(assert (! (=> anon357_Else (and true 
   (and true
      (= $@condition_$45 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev) null)
      (= unfoldingMask@_285@6 unfoldingMask@_285@4)
      (= unfoldingSecMask@_286@24 unfoldingSecMask@_286@18)
      (not $@condition_$45)
   )
$branchMerge_6
)) :named ax_anon357_Else))
(assert (! (=> anon357_Then (and true 
   (and true
      $@condition_$45
      ($@Node.invLeft@trigger (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev))
      (= $@condition_$45 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev) null)))
      (= predRec@_302@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev))
      (= predVer@_303@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.invLeft))
      (= unfoldingMask@_285@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_285@5)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev) null))
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@4 unfoldingSecMask@_286@18)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@5 unfoldingSecMask@_286@18)
   )
anon358_Else
)) :named ax_anon357_Then))
(assert (! (=> anon358_Else (and true 
   (and true
      (= $@condition_$46 false)
      (= unfoldingSecMask@_286@19 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@18 predRec@_302@0 Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@18 predRec@_302@0 Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@18 predRec@_302@0 Node.prev) perm$N) 1))))
      (= unfoldingSecMask@_286@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@19 predRec@_302@0 Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@19 predRec@_302@0 Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@19 predRec@_302@0 Node.next) perm$N) 1))))
      (= unfoldingSecMask@_286@21 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@20 predRec@_302@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@20 predRec@_302@0 mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@20 predRec@_302@0 mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_285@5)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@2 predRec@_302@0 mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev)))
      (not $@condition_$46)
      (not (= predRec@_302@0 null))
      (not false)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev)) Node@t))
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@5 unfoldingSecMask@_286@18)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@5 unfoldingSecMask@_286@19)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@5 unfoldingSecMask@_286@20)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@5 unfoldingSecMask@_286@21)
      (wf unfoldingHeap@_284@2 unfoldingSecMask@_286@19 unfoldingSecMask@_286@19)
      (wf unfoldingHeap@_284@2 unfoldingSecMask@_286@20 unfoldingSecMask@_286@20)
      (wf unfoldingHeap@_284@2 unfoldingSecMask@_286@21 unfoldingSecMask@_286@21)
   )
(or anon365_Else anon365_Then)
)) :named ax_anon358_Else))
(assert (! (=> anon365_Else (and true 
   (and true
      (= $@condition_$48 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev) null)
      (= unfoldingSecMask@_286@23 unfoldingSecMask@_286@21)
      (not $@condition_$48)
   )
anon231
)) :named ax_anon365_Else))
(assert (! (=> anon365_Then (and true 
   (and true
      $@condition_$48
      (= $@condition_$48 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev) null)))
      (= unfoldingSecMask@_286@22 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
      (= unfoldingSecMask@_286@23 unfoldingSecMask@_286@22)
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_285@5)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev) Node.invLeft)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_302@0 Node.prev) null))
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@5 unfoldingSecMask@_286@21)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@5 unfoldingSecMask@_286@22)
   )
anon231
)) :named ax_anon365_Then))
(assert (! (=> anon231 (and true 
   (and true
      (= unfoldingMask@_285@6 unfoldingMask@_285@5)
      (= unfoldingSecMask@_286@24 unfoldingSecMask@_286@23)
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.prev) mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@2 this mu))
   )
$branchMerge_6
)) :named ax_anon231))
(assert (! (=> $branchMerge_6 (and true 
   (and true
   )
(or anon366_Else anon366_Then)
)) :named ax_$branchMerge_6))
(assert (! (=> anon366_Else (and true 
   (and true
      (= $@condition_$47 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next) null)
      (= unfoldingMask@_285@8 unfoldingMask@_285@6)
      (= unfoldingSecMask@_286@30 unfoldingSecMask@_286@24)
      (not $@condition_$47)
   )
anon250
)) :named ax_anon366_Else))
(assert (! (=> anon366_Then (and true 
   (and true
      $@condition_$47
      ($@Node.invRight@trigger (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next))
      (= $@condition_$47 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next) null)))
      (= predRec@_311@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next))
      (= predVer@_312@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.invRight))
      (= unfoldingMask@_285@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next) Node.invRight) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_285@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next) Node.invRight) perm$R) (Fractions 100)))))
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_285@7)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next) Node.invRight)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next) null))
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@6 unfoldingSecMask@_286@24)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@7 unfoldingSecMask@_286@24)
   )
anon367_Else
)) :named ax_anon366_Then))
(assert (! (=> anon367_Else (and true 
   (and true
      (= $@condition_$50 false)
      (= unfoldingSecMask@_286@25 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@24 predRec@_311@0 Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@24 predRec@_311@0 Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@24 predRec@_311@0 Node.prev) perm$N) 1))))
      (= unfoldingSecMask@_286@26 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@25 predRec@_311@0 Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@25 predRec@_311@0 Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_286@25 predRec@_311@0 Node.next) perm$N) 1))))
      (= unfoldingSecMask@_286@27 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@26 predRec@_311@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@26 predRec@_311@0 mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_286@26 predRec@_311@0 mu) perm$N) 1))))
      (> 1 0)
      (IsGoodMask unfoldingMask@_285@7)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@2 predRec@_311@0 mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.prev)))
      (not $@condition_$50)
      (not (= predRec@_311@0 null))
      (not false)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.prev)) Node@t))
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@7 unfoldingSecMask@_286@24)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@7 unfoldingSecMask@_286@25)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@7 unfoldingSecMask@_286@26)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@7 unfoldingSecMask@_286@27)
      (wf unfoldingHeap@_284@2 unfoldingSecMask@_286@25 unfoldingSecMask@_286@25)
      (wf unfoldingHeap@_284@2 unfoldingSecMask@_286@26 unfoldingSecMask@_286@26)
      (wf unfoldingHeap@_284@2 unfoldingSecMask@_286@27 unfoldingSecMask@_286@27)
   )
(or anon374_Else anon374_Then)
)) :named ax_anon367_Else))
(assert (! (=> anon374_Else (and true 
   (and true
      (= $@condition_$51 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next) null)
      (= unfoldingSecMask@_286@29 unfoldingSecMask@_286@27)
      (not $@condition_$51)
   )
anon249
)) :named ax_anon374_Else))
(assert (! (=> anon374_Then (and true 
   (and true
      $@condition_$51
      (= $@condition_$51 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next) null)))
      (= unfoldingSecMask@_286@28 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@27 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@27 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next) Node.invRight) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_286@27 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next) Node.invRight) perm$R) (Fractions 100)))))
      (= unfoldingSecMask@_286@29 unfoldingSecMask@_286@28)
      (> (Fractions 100) 0)
      (IsGoodMask unfoldingMask@_285@7)
      (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_284@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next) Node.invRight)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 predRec@_311@0 Node.next) null))
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@7 unfoldingSecMask@_286@27)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@7 unfoldingSecMask@_286@28)
   )
anon249
)) :named ax_anon374_Then))
(assert (! (=> anon249 (and true 
   (and true
      (= unfoldingMask@_285@8 unfoldingMask@_285@7)
      (= unfoldingSecMask@_286@30 unfoldingSecMask@_286@29)
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@2 this mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_284@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_284@2 this Node.next) mu))
   )
anon250
)) :named ax_anon249))
(assert (! (=> anon250 (and true 
   (and true
      (IsGoodMask unfoldingMask@_285@8)
      (wf unfoldingHeap@_284@2 unfoldingMask@_285@8 unfoldingSecMask@_286@30)
   )
(or anon250@1 anon250_assertion)
)) :named ax_anon250))
(assert (! (=> anon250@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
anon250@1_assertion
)) :named ax_anon250@1))
(assert (! (=> anon250_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon250_assertion))
(assert (! (=> anon250@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ unfoldingMask@_285@8 unfoldingSecMask@_286@30 this Node.next))
   )
))) :named ax_anon250@1_assertion))
(assert (=> false (not (and
   anon0@1_assertion
   anon0@2_assertion
   anon0@3_assertion
   anon0_assertion
   anon133@1_assertion
   anon133@2_assertion
   anon133@3_assertion
   anon133_assertion
   anon184@1_assertion
   anon184@2_assertion
   anon184@3_assertion
   anon184@4_assertion
   anon184@5_assertion
   anon184_assertion
   anon187_assertion
   anon189@1_assertion
   anon189@2_assertion
   anon189_assertion
   anon250@1_assertion
   anon250_assertion
   anon292_Else@1_assertion
   anon292_Else_assertion
   anon292_Then@1_assertion
   anon292_Then@2_assertion
   anon292_Then@3_assertion
   anon292_Then@4_assertion
   anon292_Then_assertion
   anon318_Else@1_assertion
   anon318_Else@2_assertion
   anon318_Else@3_assertion
   anon318_Else_assertion
   anon318_Then@1_assertion
   anon318_Then@2_assertion
   anon318_Then@3_assertion
   anon318_Then@4_assertion
   anon318_Then@5_assertion
   anon318_Then@6_assertion
   anon318_Then_assertion
   anon344_Then_assertion
   anon82@1_assertion
   anon82_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
