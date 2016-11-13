;Analysis time until now:     7s
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
(declare-sort $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ 0)
(declare-sort $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ 0)
(declare-sort $@Map@@BoxType@To@Bool@@ 0)
(declare-sort BoxType 0)
(declare-sort ClassName 0)
(declare-sort DatatypeType 0)
(declare-sort Field$$@Map@@BoxType@To@Bool@@$ 0)
(declare-sort Field$Bool$ 0)
(declare-sort Field$BoxType$ 0)
(declare-sort Field$Int$ 0)
(declare-sort Field$ref$ 0)
(declare-sort ref 0)
(declare-sort Seq$BoxType$ 0)
(declare-sort Seq$ref$ 0)
(declare-sort TickType 0)

;Functions
(declare-fun $@bf ( ) Bool)
(declare-fun $@bf_1 ( ) Bool)
(declare-fun $@bf_10 ( ) Bool)
(declare-fun $@bf_100 ( ) Bool)
(declare-fun $@bf_103 ( ) Bool)
(declare-fun $@bf_104 ( ) Bool)
(declare-fun $@bf_107 ( ) Bool)
(declare-fun $@bf_108 ( ) Bool)
(declare-fun $@bf_11 ( ) Bool)
(declare-fun $@bf_111 ( ) Bool)
(declare-fun $@bf_112 ( ) Bool)
(declare-fun $@bf_12 ( ) Bool)
(declare-fun $@bf_13 ( ) Bool)
(declare-fun $@bf_14 ( ) Bool)
(declare-fun $@bf_15 ( ) Bool)
(declare-fun $@bf_16 ( ) Bool)
(declare-fun $@bf_17 ( ) Bool)
(declare-fun $@bf_18 ( ) Bool)
(declare-fun $@bf_19 ( ) Bool)
(declare-fun $@bf_2 ( ) Bool)
(declare-fun $@bf_20 ( ) Bool)
(declare-fun $@bf_21 ( ) Bool)
(declare-fun $@bf_22 ( ) Bool)
(declare-fun $@bf_23 ( ) Bool)
(declare-fun $@bf_24 ( ) Bool)
(declare-fun $@bf_3 ( ) Bool)
(declare-fun $@bf_4 ( ) Bool)
(declare-fun $@bf_5 ( ) Bool)
(declare-fun $@bf_6 ( ) Bool)
(declare-fun $@bf_7 ( ) Bool)
(declare-fun $@bf_8 ( ) Bool)
(declare-fun $@bf_84 ( ) Bool)
(declare-fun $@bf_85 ( ) Bool)
(declare-fun $@bf_88 ( ) Bool)
(declare-fun $@bf_89 ( ) Bool)
(declare-fun $@bf_9 ( ) Bool)
(declare-fun $@bf_92 ( ) Bool)
(declare-fun $@bf_93 ( ) Bool)
(declare-fun $@bf_95 ( ) Bool)
(declare-fun $@bf_96 ( ) Bool)
(declare-fun $@bf_97 ( ) Bool)
(declare-fun $@bf_98 ( ) Bool)
(declare-fun $@bf_99 ( ) Bool)
(declare-fun $_Frame@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun $Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) BoxType)
(declare-fun $Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ) BoxType)
(declare-fun $Box$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ ) BoxType)
(declare-fun $Box$Bool$ ( Bool ) BoxType)
(declare-fun $Box$BoxType$ ( BoxType ) BoxType)
(declare-fun $Box$ClassName$ ( ClassName ) BoxType)
(declare-fun $Box$DatatypeType$ ( DatatypeType ) BoxType)
(declare-fun $Box$Field$$@Map@@BoxType@To@Bool@@$$ ( Field$$@Map@@BoxType@To@Bool@@$ ) BoxType)
(declare-fun $Box$Field$Bool$$ ( Field$Bool$ ) BoxType)
(declare-fun $Box$Field$BoxType$$ ( Field$BoxType$ ) BoxType)
(declare-fun $Box$Field$Int$$ ( Field$Int$ ) BoxType)
(declare-fun $Box$Field$ref$$ ( Field$ref$ ) BoxType)
(declare-fun $Box$Int$ ( Int ) BoxType)
(declare-fun $Box$ref$ ( ref ) BoxType)
(declare-fun $Box$Seq$BoxType$$ ( Seq$BoxType$ ) BoxType)
(declare-fun $Box$Seq$ref$$ ( Seq$ref$ ) BoxType)
(declare-fun $Box$TickType$ ( TickType ) BoxType)
(declare-fun $FunctionContextHeight ( ) Int)
(declare-fun $Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@22 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $ModuleContextHeight ( ) Int)
(declare-fun $nw@0 ( ) ref)
(declare-fun $rhs@10 ( ) ref)
(declare-fun $rhs@11 ( ) ref)
(declare-fun $rhs@12 ( ) ref)
(declare-fun $rhs@14@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@15@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@16@0 ( ) Int)
(declare-fun $rhs@19@0 ( ) Int)
(declare-fun $rhs@2 ( ) ref)
(declare-fun $rhs@20 ( ) ref)
(declare-fun $rhs@21 ( ) ref)
(declare-fun $rhs@4@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@5@0 ( ) Int)
(declare-fun $rhs@6@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@9@0 ( ) Int)
(declare-fun $Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun $Unbox$$@Map@@BoxType@To@Bool@@$ ( BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun $Unbox$BoxType$ ( BoxType ) BoxType)
(declare-fun $Unbox$ClassName$ ( BoxType ) ClassName)
(declare-fun $Unbox$DatatypeType$ ( BoxType ) DatatypeType)
(declare-fun $Unbox$Field$$@Map@@BoxType@To@Bool@@$$ ( BoxType ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun $Unbox$Field$Bool$$ ( BoxType ) Field$Bool$)
(declare-fun $Unbox$Field$BoxType$$ ( BoxType ) Field$BoxType$)
(declare-fun $Unbox$Field$Int$$ ( BoxType ) Field$Int$)
(declare-fun $Unbox$Field$ref$$ ( BoxType ) Field$ref$)
(declare-fun $Unbox$Int$ ( BoxType ) Int)
(declare-fun $Unbox$ref$ ( BoxType ) ref)
(declare-fun $Unbox$Seq$BoxType$$ ( BoxType ) Seq$BoxType$)
(declare-fun $Unbox$Seq$ref$$ ( BoxType ) Seq$ref$)
(declare-fun $Unbox$TickType$ ( BoxType ) TickType)
(declare-fun a@65@0 ( ) Int)
(declare-fun a@71@0 ( ) Int)
(declare-fun a@83@0 ( ) Int)
(declare-fun alloc ( ) Field$Bool$)
(declare-fun array.Length ( ref ) Int)
(declare-fun AVLTree.Contents ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun AVLTree.Repr ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun AVLTree.root ( ) Field$ref$)
(declare-fun b@66@0 ( ) Int)
(declare-fun b@72@0 ( ) Int)
(declare-fun b@84@0 ( ) Int)
(declare-fun call3formal@r@19 ( ) ref)
(declare-fun call3formal@r@19@0 ( ) ref)
(declare-fun call3formal@r@24 ( ) ref)
(declare-fun call3formal@r@24@0 ( ) ref)
(declare-fun call3formal@r@29 ( ) ref)
(declare-fun call3formal@r@29@0 ( ) ref)
(declare-fun call3formal@r@34 ( ) ref)
(declare-fun call3formal@r@34@0 ( ) ref)
(declare-fun call5formal@r@8 ( ) ref)
(declare-fun call5formal@r@8@0 ( ) ref)
(declare-fun call5formal@r@8@0_$1 ( ) ref)
(declare-fun call5formal@r@8_$1 ( ) ref)
(declare-fun call6formal@deltaH@9@0 ( ) Int)
(declare-fun call6formal@deltaH@9@0_$1 ( ) Int)
(declare-fun class.AVLTree ( ) ClassName)
(declare-fun class.Node ( ) ClassName)
(declare-fun DeclType$$@Map@@BoxType@To@Bool@@$ ( Field$$@Map@@BoxType@To@Bool@@$ ) ClassName)
(declare-fun DeclType$Int$ ( Field$Int$ ) ClassName)
(declare-fun DeclType$ref$ ( Field$ref$ ) ClassName)
(declare-fun deltaH@9@0 ( ) Int)
(declare-fun deltaH@9@1 ( ) Int)
(declare-fun deltaH@9@2 ( ) Int)
(declare-fun DtType ( DatatypeType ) ClassName)
(declare-fun dtype ( ref ) ClassName)
(declare-fun FDim$$@Map@@BoxType@To@Bool@@$ ( Field$$@Map@@BoxType@To@Bool@@$ ) Int)
(declare-fun FDim$Bool$ ( Field$Bool$ ) Int)
(declare-fun FDim$BoxType$ ( Field$BoxType$ ) Int)
(declare-fun FDim$Int$ ( Field$Int$ ) Int)
(declare-fun FDim$ref$ ( Field$ref$ ) Int)
(declare-fun IndexField ( Int ) Field$BoxType$)
(declare-fun key@7 ( ) Int)
(declare-fun lambda@8 ( Field$$@Map@@BoxType@To@Bool@@$ ref $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Field$Bool$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$$@Map@@BoxType@To@Bool@@$ ) $@Map@@BoxType@To@Bool@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$BoxType$ ) BoxType)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ ) Int)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ) ref)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$$@Map@@BoxType@To@Bool@@$ $@Map@@BoxType@To@Bool@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ Bool ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$BoxType$ BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Math.max ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Int Int ) Int)
(declare-fun Math.max@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Int Int ) Int)
(declare-fun Math.max@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Int Int ) Int)
(declare-fun Math@clip ( Int ) Int)
(declare-fun Math@min ( Int Int ) Int)
(declare-fun MultiIndexField ( Field$BoxType$ Int ) Field$BoxType$)
(declare-fun MultiIndexField_Inverse0$BoxType$ ( Field$BoxType$ ) Field$BoxType$)
(declare-fun MultiIndexField_Inverse1$BoxType$ ( Field$BoxType$ ) Int)
(declare-fun n@62@0 ( ) ref)
(declare-fun n@63@0 ( ) ref)
(declare-fun n@64@0 ( ) ref)
(declare-fun n@69@0 ( ) ref)
(declare-fun n@70@0 ( ) ref)
(declare-fun n@75@0 ( ) ref)
(declare-fun n@76@0 ( ) ref)
(declare-fun n@78@0 ( ) ref)
(declare-fun n@81@0 ( ) ref)
(declare-fun n@82@0 ( ) ref)
(declare-fun n@87@0 ( ) ref)
(declare-fun n@88@0 ( ) ref)
(declare-fun Node.balance ( ) Field$Int$)
(declare-fun Node.Contents ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun Node.height ( ) Field$Int$)
(declare-fun Node.Height ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Int)
(declare-fun Node.left ( ) Field$ref$)
(declare-fun Node.Repr ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun Node.right ( ) Field$ref$)
(declare-fun Node.value ( ) Field$Int$)
(declare-fun null ( ) ref)
(declare-fun r@8 ( ) ref)
(declare-fun r@8@0 ( ) ref)
(declare-fun Seq@Append$BoxType$ ( Seq$BoxType$ Seq$BoxType$ ) Seq$BoxType$)
(declare-fun Seq@Append$ref$ ( Seq$ref$ Seq$ref$ ) Seq$ref$)
(declare-fun Seq@Build$BoxType$ ( Seq$BoxType$ Int BoxType Int ) Seq$BoxType$)
(declare-fun Seq@Build$ref$ ( Seq$ref$ Int ref Int ) Seq$ref$)
(declare-fun Seq@Drop$BoxType$ ( Seq$BoxType$ Int ) Seq$BoxType$)
(declare-fun Seq@Drop$ref$ ( Seq$ref$ Int ) Seq$ref$)
(declare-fun Seq@Empty$BoxType$ ( ) Seq$BoxType$)
(declare-fun Seq@Empty$ref$ ( ) Seq$ref$)
(declare-fun Seq@FromArray ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Seq$BoxType$)
(declare-fun Seq@Index$BoxType$ ( Seq$BoxType$ Int ) BoxType)
(declare-fun Seq@Index$ref$ ( Seq$ref$ Int ) ref)
(declare-fun Seq@Length$BoxType$ ( Seq$BoxType$ ) Int)
(declare-fun Seq@Length$ref$ ( Seq$ref$ ) Int)
(declare-fun Seq@Singleton$BoxType$ ( BoxType ) Seq$BoxType$)
(declare-fun Seq@Singleton$ref$ ( ref ) Seq$ref$)
(declare-fun Seq@Take$BoxType$ ( Seq$BoxType$ Int ) Seq$BoxType$)
(declare-fun Seq@Take$ref$ ( Seq$ref$ Int ) Seq$ref$)
(declare-fun Seq@Update$BoxType$ ( Seq$BoxType$ Int BoxType ) Seq$BoxType$)
(declare-fun Seq@Update$ref$ ( Seq$ref$ Int ref ) Seq$ref$)
(declare-fun Set@Choose$BoxType$ ( $@Map@@BoxType@To@Bool@@ TickType ) BoxType)
(declare-fun Set@Difference$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Empty$BoxType$ ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Intersection$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Singleton$BoxType$ ( BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Union$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@UnionOne$BoxType$ ( $@Map@@BoxType@To@Bool@@ BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun t@6 ( ) ref)
(declare-fun t@67@0 ( ) ref)
(declare-fun t@79@0 ( ) ref)
(declare-fun this ( ) ref)
(declare-fun TypeTuple ( ClassName ClassName ) ClassName)
(declare-fun TypeTupleCar ( ClassName ) ClassName)
(declare-fun TypeTupleCdr ( ClassName ) ClassName)

;Predicates
(declare-fun $$Language$Dafny ( ) Bool)
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $@condition_$1 ( ) Bool)
(declare-fun $@condition_$10 ( ) Bool)
(declare-fun $@condition_$11 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$3 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$5 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$7 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)
(declare-fun $@condition_$9 ( ) Bool)
(declare-fun $HeapSucc ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $InMethodContext ( ) Bool)
(declare-fun $IsCanonicalBoolBox ( BoxType ) Bool)
(declare-fun $IsGoodHeap ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $join_$@condition_$0 ( ) Bool)
(declare-fun $join_$@condition_$2 ( ) Bool)
(declare-fun $join_$@condition_$4 ( ) Bool)
(declare-fun $join_$@condition_$6 ( ) Bool)
(declare-fun $join_2 ( ) Bool)
(declare-fun $join_2@1 ( ) Bool)
(declare-fun $Unbox$Bool$ ( BoxType ) Bool)
(declare-fun anon12 ( ) Bool)
(declare-fun anon12@1_assertion ( ) Bool)
(declare-fun anon12@2 ( ) Bool)
(declare-fun anon12@3_assertion ( ) Bool)
(declare-fun anon12@4 ( ) Bool)
(declare-fun anon12@4_assertion ( ) Bool)
(declare-fun anon12@5 ( ) Bool)
(declare-fun anon12@5_assertion ( ) Bool)
(declare-fun anon12@6 ( ) Bool)
(declare-fun anon12@6_assertion ( ) Bool)
(declare-fun anon12@7 ( ) Bool)
(declare-fun anon16 ( ) Bool)
(declare-fun anon16@1 ( ) Bool)
(declare-fun anon16@10 ( ) Bool)
(declare-fun anon16@10_assertion ( ) Bool)
(declare-fun anon16@11 ( ) Bool)
(declare-fun anon16@11_assertion ( ) Bool)
(declare-fun anon16@12 ( ) Bool)
(declare-fun anon16@12_assertion ( ) Bool)
(declare-fun anon16@13 ( ) Bool)
(declare-fun anon16@13_assertion ( ) Bool)
(declare-fun anon16@14 ( ) Bool)
(declare-fun anon16@14_assertion ( ) Bool)
(declare-fun anon16@15 ( ) Bool)
(declare-fun anon16@15_assertion ( ) Bool)
(declare-fun anon16@16 ( ) Bool)
(declare-fun anon16@16_assertion ( ) Bool)
(declare-fun anon16@17 ( ) Bool)
(declare-fun anon16@17_assertion ( ) Bool)
(declare-fun anon16@18 ( ) Bool)
(declare-fun anon16@18_assertion ( ) Bool)
(declare-fun anon16@19 ( ) Bool)
(declare-fun anon16@19_assertion ( ) Bool)
(declare-fun anon16@2_assertion ( ) Bool)
(declare-fun anon16@20 ( ) Bool)
(declare-fun anon16@20_assertion ( ) Bool)
(declare-fun anon16@21 ( ) Bool)
(declare-fun anon16@21_assertion ( ) Bool)
(declare-fun anon16@22 ( ) Bool)
(declare-fun anon16@22_assertion ( ) Bool)
(declare-fun anon16@23 ( ) Bool)
(declare-fun anon16@23_assertion ( ) Bool)
(declare-fun anon16@24 ( ) Bool)
(declare-fun anon16@24_assertion ( ) Bool)
(declare-fun anon16@25 ( ) Bool)
(declare-fun anon16@25_assertion ( ) Bool)
(declare-fun anon16@26 ( ) Bool)
(declare-fun anon16@26_assertion ( ) Bool)
(declare-fun anon16@27 ( ) Bool)
(declare-fun anon16@27_assertion ( ) Bool)
(declare-fun anon16@28 ( ) Bool)
(declare-fun anon16@28_assertion ( ) Bool)
(declare-fun anon16@29 ( ) Bool)
(declare-fun anon16@29_assertion ( ) Bool)
(declare-fun anon16@3 ( ) Bool)
(declare-fun anon16@3_assertion ( ) Bool)
(declare-fun anon16@30 ( ) Bool)
(declare-fun anon16@30_assertion ( ) Bool)
(declare-fun anon16@31 ( ) Bool)
(declare-fun anon16@31_assertion ( ) Bool)
(declare-fun anon16@32 ( ) Bool)
(declare-fun anon16@32_assertion ( ) Bool)
(declare-fun anon16@33 ( ) Bool)
(declare-fun anon16@33_assertion ( ) Bool)
(declare-fun anon16@34 ( ) Bool)
(declare-fun anon16@34_assertion ( ) Bool)
(declare-fun anon16@35 ( ) Bool)
(declare-fun anon16@35_assertion ( ) Bool)
(declare-fun anon16@36 ( ) Bool)
(declare-fun anon16@4 ( ) Bool)
(declare-fun anon16@4_assertion ( ) Bool)
(declare-fun anon16@5 ( ) Bool)
(declare-fun anon16@5_assertion ( ) Bool)
(declare-fun anon16@6 ( ) Bool)
(declare-fun anon16@6_assertion ( ) Bool)
(declare-fun anon16@7 ( ) Bool)
(declare-fun anon16@7_assertion ( ) Bool)
(declare-fun anon16@8 ( ) Bool)
(declare-fun anon16@8_assertion ( ) Bool)
(declare-fun anon16@9 ( ) Bool)
(declare-fun anon16@9_assertion ( ) Bool)
(declare-fun anon16_assertion ( ) Bool)
(declare-fun anon22 ( ) Bool)
(declare-fun anon22@1_assertion ( ) Bool)
(declare-fun anon22@10 ( ) Bool)
(declare-fun anon22@10_assertion ( ) Bool)
(declare-fun anon22@11 ( ) Bool)
(declare-fun anon22@11_assertion ( ) Bool)
(declare-fun anon22@12 ( ) Bool)
(declare-fun anon22@12_assertion ( ) Bool)
(declare-fun anon22@13 ( ) Bool)
(declare-fun anon22@13_assertion ( ) Bool)
(declare-fun anon22@14 ( ) Bool)
(declare-fun anon22@14_assertion ( ) Bool)
(declare-fun anon22@15 ( ) Bool)
(declare-fun anon22@15_assertion ( ) Bool)
(declare-fun anon22@16 ( ) Bool)
(declare-fun anon22@16_assertion ( ) Bool)
(declare-fun anon22@17 ( ) Bool)
(declare-fun anon22@17_assertion ( ) Bool)
(declare-fun anon22@18 ( ) Bool)
(declare-fun anon22@18_assertion ( ) Bool)
(declare-fun anon22@19 ( ) Bool)
(declare-fun anon22@19_assertion ( ) Bool)
(declare-fun anon22@2 ( ) Bool)
(declare-fun anon22@20 ( ) Bool)
(declare-fun anon22@20_assertion ( ) Bool)
(declare-fun anon22@21 ( ) Bool)
(declare-fun anon22@21_assertion ( ) Bool)
(declare-fun anon22@22 ( ) Bool)
(declare-fun anon22@22_assertion ( ) Bool)
(declare-fun anon22@23 ( ) Bool)
(declare-fun anon22@23_assertion ( ) Bool)
(declare-fun anon22@24 ( ) Bool)
(declare-fun anon22@24_assertion ( ) Bool)
(declare-fun anon22@25 ( ) Bool)
(declare-fun anon22@25_assertion ( ) Bool)
(declare-fun anon22@26 ( ) Bool)
(declare-fun anon22@4_assertion ( ) Bool)
(declare-fun anon22@5 ( ) Bool)
(declare-fun anon22@7_assertion ( ) Bool)
(declare-fun anon22@8 ( ) Bool)
(declare-fun anon22@8_assertion ( ) Bool)
(declare-fun anon22@9 ( ) Bool)
(declare-fun anon22@9_assertion ( ) Bool)
(declare-fun anon28 ( ) Bool)
(declare-fun anon28@1_assertion ( ) Bool)
(declare-fun anon28@2 ( ) Bool)
(declare-fun anon28@3_assertion ( ) Bool)
(declare-fun anon28@4 ( ) Bool)
(declare-fun anon28@4_assertion ( ) Bool)
(declare-fun anon28@5 ( ) Bool)
(declare-fun anon28@5_assertion ( ) Bool)
(declare-fun anon28@6 ( ) Bool)
(declare-fun anon28@6_assertion ( ) Bool)
(declare-fun anon28@7 ( ) Bool)
(declare-fun anon32 ( ) Bool)
(declare-fun anon32@1 ( ) Bool)
(declare-fun anon32@10 ( ) Bool)
(declare-fun anon32@10_assertion ( ) Bool)
(declare-fun anon32@11 ( ) Bool)
(declare-fun anon32@11_assertion ( ) Bool)
(declare-fun anon32@12 ( ) Bool)
(declare-fun anon32@12_assertion ( ) Bool)
(declare-fun anon32@13 ( ) Bool)
(declare-fun anon32@13_assertion ( ) Bool)
(declare-fun anon32@14 ( ) Bool)
(declare-fun anon32@14_assertion ( ) Bool)
(declare-fun anon32@15 ( ) Bool)
(declare-fun anon32@15_assertion ( ) Bool)
(declare-fun anon32@16 ( ) Bool)
(declare-fun anon32@16_assertion ( ) Bool)
(declare-fun anon32@17 ( ) Bool)
(declare-fun anon32@17_assertion ( ) Bool)
(declare-fun anon32@18 ( ) Bool)
(declare-fun anon32@18_assertion ( ) Bool)
(declare-fun anon32@19 ( ) Bool)
(declare-fun anon32@19_assertion ( ) Bool)
(declare-fun anon32@2_assertion ( ) Bool)
(declare-fun anon32@20 ( ) Bool)
(declare-fun anon32@20_assertion ( ) Bool)
(declare-fun anon32@21 ( ) Bool)
(declare-fun anon32@21_assertion ( ) Bool)
(declare-fun anon32@22 ( ) Bool)
(declare-fun anon32@22_assertion ( ) Bool)
(declare-fun anon32@23 ( ) Bool)
(declare-fun anon32@23_assertion ( ) Bool)
(declare-fun anon32@24 ( ) Bool)
(declare-fun anon32@24_assertion ( ) Bool)
(declare-fun anon32@25 ( ) Bool)
(declare-fun anon32@25_assertion ( ) Bool)
(declare-fun anon32@26 ( ) Bool)
(declare-fun anon32@26_assertion ( ) Bool)
(declare-fun anon32@27 ( ) Bool)
(declare-fun anon32@27_assertion ( ) Bool)
(declare-fun anon32@28 ( ) Bool)
(declare-fun anon32@28_assertion ( ) Bool)
(declare-fun anon32@29 ( ) Bool)
(declare-fun anon32@29_assertion ( ) Bool)
(declare-fun anon32@3 ( ) Bool)
(declare-fun anon32@3_assertion ( ) Bool)
(declare-fun anon32@30 ( ) Bool)
(declare-fun anon32@30_assertion ( ) Bool)
(declare-fun anon32@31 ( ) Bool)
(declare-fun anon32@31_assertion ( ) Bool)
(declare-fun anon32@32 ( ) Bool)
(declare-fun anon32@32_assertion ( ) Bool)
(declare-fun anon32@33 ( ) Bool)
(declare-fun anon32@33_assertion ( ) Bool)
(declare-fun anon32@34 ( ) Bool)
(declare-fun anon32@34_assertion ( ) Bool)
(declare-fun anon32@35 ( ) Bool)
(declare-fun anon32@35_assertion ( ) Bool)
(declare-fun anon32@36 ( ) Bool)
(declare-fun anon32@4 ( ) Bool)
(declare-fun anon32@4_assertion ( ) Bool)
(declare-fun anon32@5 ( ) Bool)
(declare-fun anon32@5_assertion ( ) Bool)
(declare-fun anon32@6 ( ) Bool)
(declare-fun anon32@6_assertion ( ) Bool)
(declare-fun anon32@7 ( ) Bool)
(declare-fun anon32@7_assertion ( ) Bool)
(declare-fun anon32@8 ( ) Bool)
(declare-fun anon32@8_assertion ( ) Bool)
(declare-fun anon32@9 ( ) Bool)
(declare-fun anon32@9_assertion ( ) Bool)
(declare-fun anon32_assertion ( ) Bool)
(declare-fun anon35_Else ( ) Bool)
(declare-fun anon35_Then ( ) Bool)
(declare-fun anon35_Then@1 ( ) Bool)
(declare-fun anon35_Then_assertion ( ) Bool)
(declare-fun anon36_Else ( ) Bool)
(declare-fun anon36_Then ( ) Bool)
(declare-fun anon36_Then@1_assertion ( ) Bool)
(declare-fun anon36_Then@10 ( ) Bool)
(declare-fun anon36_Then@10_assertion ( ) Bool)
(declare-fun anon36_Then@11 ( ) Bool)
(declare-fun anon36_Then@11_assertion ( ) Bool)
(declare-fun anon36_Then@12 ( ) Bool)
(declare-fun anon36_Then@12_assertion ( ) Bool)
(declare-fun anon36_Then@13 ( ) Bool)
(declare-fun anon36_Then@13_assertion ( ) Bool)
(declare-fun anon36_Then@14 ( ) Bool)
(declare-fun anon36_Then@14_assertion ( ) Bool)
(declare-fun anon36_Then@15 ( ) Bool)
(declare-fun anon36_Then@15_assertion ( ) Bool)
(declare-fun anon36_Then@16 ( ) Bool)
(declare-fun anon36_Then@16_assertion ( ) Bool)
(declare-fun anon36_Then@17 ( ) Bool)
(declare-fun anon36_Then@2 ( ) Bool)
(declare-fun anon36_Then@2_assertion ( ) Bool)
(declare-fun anon36_Then@20_assertion ( ) Bool)
(declare-fun anon36_Then@21 ( ) Bool)
(declare-fun anon36_Then@21_assertion ( ) Bool)
(declare-fun anon36_Then@22 ( ) Bool)
(declare-fun anon36_Then@22_assertion ( ) Bool)
(declare-fun anon36_Then@23 ( ) Bool)
(declare-fun anon36_Then@24_assertion ( ) Bool)
(declare-fun anon36_Then@25 ( ) Bool)
(declare-fun anon36_Then@26_assertion ( ) Bool)
(declare-fun anon36_Then@27 ( ) Bool)
(declare-fun anon36_Then@27_assertion ( ) Bool)
(declare-fun anon36_Then@28 ( ) Bool)
(declare-fun anon36_Then@28_assertion ( ) Bool)
(declare-fun anon36_Then@29 ( ) Bool)
(declare-fun anon36_Then@29_assertion ( ) Bool)
(declare-fun anon36_Then@3 ( ) Bool)
(declare-fun anon36_Then@3_assertion ( ) Bool)
(declare-fun anon36_Then@30 ( ) Bool)
(declare-fun anon36_Then@30_assertion ( ) Bool)
(declare-fun anon36_Then@31 ( ) Bool)
(declare-fun anon36_Then@31_assertion ( ) Bool)
(declare-fun anon36_Then@32 ( ) Bool)
(declare-fun anon36_Then@32_assertion ( ) Bool)
(declare-fun anon36_Then@33 ( ) Bool)
(declare-fun anon36_Then@33_assertion ( ) Bool)
(declare-fun anon36_Then@34 ( ) Bool)
(declare-fun anon36_Then@34_assertion ( ) Bool)
(declare-fun anon36_Then@35 ( ) Bool)
(declare-fun anon36_Then@35_assertion ( ) Bool)
(declare-fun anon36_Then@36 ( ) Bool)
(declare-fun anon36_Then@36_assertion ( ) Bool)
(declare-fun anon36_Then@37 ( ) Bool)
(declare-fun anon36_Then@37_assertion ( ) Bool)
(declare-fun anon36_Then@38 ( ) Bool)
(declare-fun anon36_Then@38_assertion ( ) Bool)
(declare-fun anon36_Then@39 ( ) Bool)
(declare-fun anon36_Then@39_assertion ( ) Bool)
(declare-fun anon36_Then@4 ( ) Bool)
(declare-fun anon36_Then@4_assertion ( ) Bool)
(declare-fun anon36_Then@40 ( ) Bool)
(declare-fun anon36_Then@40_assertion ( ) Bool)
(declare-fun anon36_Then@41 ( ) Bool)
(declare-fun anon36_Then@41_assertion ( ) Bool)
(declare-fun anon36_Then@42 ( ) Bool)
(declare-fun anon36_Then@42_assertion ( ) Bool)
(declare-fun anon36_Then@43 ( ) Bool)
(declare-fun anon36_Then@43_assertion ( ) Bool)
(declare-fun anon36_Then@44 ( ) Bool)
(declare-fun anon36_Then@44_assertion ( ) Bool)
(declare-fun anon36_Then@45 ( ) Bool)
(declare-fun anon36_Then@45_assertion ( ) Bool)
(declare-fun anon36_Then@46 ( ) Bool)
(declare-fun anon36_Then@46_assertion ( ) Bool)
(declare-fun anon36_Then@47 ( ) Bool)
(declare-fun anon36_Then@47_assertion ( ) Bool)
(declare-fun anon36_Then@48 ( ) Bool)
(declare-fun anon36_Then@48_assertion ( ) Bool)
(declare-fun anon36_Then@49 ( ) Bool)
(declare-fun anon36_Then@49_assertion ( ) Bool)
(declare-fun anon36_Then@5 ( ) Bool)
(declare-fun anon36_Then@5_assertion ( ) Bool)
(declare-fun anon36_Then@50 ( ) Bool)
(declare-fun anon36_Then@51_assertion ( ) Bool)
(declare-fun anon36_Then@52 ( ) Bool)
(declare-fun anon36_Then@53_assertion ( ) Bool)
(declare-fun anon36_Then@54 ( ) Bool)
(declare-fun anon36_Then@6 ( ) Bool)
(declare-fun anon36_Then@6_assertion ( ) Bool)
(declare-fun anon36_Then@7 ( ) Bool)
(declare-fun anon36_Then@7_assertion ( ) Bool)
(declare-fun anon36_Then@8 ( ) Bool)
(declare-fun anon36_Then@8_assertion ( ) Bool)
(declare-fun anon36_Then@9 ( ) Bool)
(declare-fun anon36_Then@9_assertion ( ) Bool)
(declare-fun anon37_Else ( ) Bool)
(declare-fun anon37_Then ( ) Bool)
(declare-fun anon38_Else ( ) Bool)
(declare-fun anon38_Then ( ) Bool)
(declare-fun anon39_Else ( ) Bool)
(declare-fun anon39_Then ( ) Bool)
(declare-fun anon40_Else ( ) Bool)
(declare-fun anon40_Then ( ) Bool)
(declare-fun anon40_Then@1_assertion ( ) Bool)
(declare-fun anon40_Then@2 ( ) Bool)
(declare-fun anon40_Then@2_assertion ( ) Bool)
(declare-fun anon40_Then@3 ( ) Bool)
(declare-fun anon40_Then@3_assertion ( ) Bool)
(declare-fun anon40_Then@4 ( ) Bool)
(declare-fun anon40_Then@4_assertion ( ) Bool)
(declare-fun anon40_Then@5 ( ) Bool)
(declare-fun anon40_Then@6_assertion ( ) Bool)
(declare-fun anon40_Then@7 ( ) Bool)
(declare-fun anon41_Else ( ) Bool)
(declare-fun anon41_Then ( ) Bool)
(declare-fun anon41_Then@10 ( ) Bool)
(declare-fun anon41_Then@10_assertion ( ) Bool)
(declare-fun anon41_Then@11 ( ) Bool)
(declare-fun anon41_Then@11_assertion ( ) Bool)
(declare-fun anon41_Then@12 ( ) Bool)
(declare-fun anon41_Then@12_assertion ( ) Bool)
(declare-fun anon41_Then@13 ( ) Bool)
(declare-fun anon41_Then@13_assertion ( ) Bool)
(declare-fun anon41_Then@14 ( ) Bool)
(declare-fun anon41_Then@14_assertion ( ) Bool)
(declare-fun anon41_Then@15 ( ) Bool)
(declare-fun anon41_Then@15_assertion ( ) Bool)
(declare-fun anon41_Then@16 ( ) Bool)
(declare-fun anon41_Then@16_assertion ( ) Bool)
(declare-fun anon41_Then@17 ( ) Bool)
(declare-fun anon41_Then@17_assertion ( ) Bool)
(declare-fun anon41_Then@18 ( ) Bool)
(declare-fun anon41_Then@18_assertion ( ) Bool)
(declare-fun anon41_Then@19 ( ) Bool)
(declare-fun anon41_Then@19_assertion ( ) Bool)
(declare-fun anon41_Then@20 ( ) Bool)
(declare-fun anon41_Then@20_assertion ( ) Bool)
(declare-fun anon41_Then@21 ( ) Bool)
(declare-fun anon41_Then@21_assertion ( ) Bool)
(declare-fun anon41_Then@22 ( ) Bool)
(declare-fun anon41_Then@22_assertion ( ) Bool)
(declare-fun anon41_Then@23 ( ) Bool)
(declare-fun anon41_Then@23_assertion ( ) Bool)
(declare-fun anon41_Then@24 ( ) Bool)
(declare-fun anon41_Then@24_assertion ( ) Bool)
(declare-fun anon41_Then@25 ( ) Bool)
(declare-fun anon41_Then@25_assertion ( ) Bool)
(declare-fun anon41_Then@26 ( ) Bool)
(declare-fun anon41_Then@26_assertion ( ) Bool)
(declare-fun anon41_Then@27 ( ) Bool)
(declare-fun anon41_Then@27_assertion ( ) Bool)
(declare-fun anon41_Then@28 ( ) Bool)
(declare-fun anon41_Then@28_assertion ( ) Bool)
(declare-fun anon41_Then@29 ( ) Bool)
(declare-fun anon41_Then@3_assertion ( ) Bool)
(declare-fun anon41_Then@4 ( ) Bool)
(declare-fun anon41_Then@4_assertion ( ) Bool)
(declare-fun anon41_Then@5 ( ) Bool)
(declare-fun anon41_Then@5_assertion ( ) Bool)
(declare-fun anon41_Then@6 ( ) Bool)
(declare-fun anon41_Then@6_assertion ( ) Bool)
(declare-fun anon41_Then@7 ( ) Bool)
(declare-fun anon41_Then@7_assertion ( ) Bool)
(declare-fun anon41_Then@8 ( ) Bool)
(declare-fun anon41_Then@8_assertion ( ) Bool)
(declare-fun anon41_Then@9 ( ) Bool)
(declare-fun anon41_Then@9_assertion ( ) Bool)
(declare-fun anon42_Else ( ) Bool)
(declare-fun anon42_Then ( ) Bool)
(declare-fun anon42_Then@1_assertion ( ) Bool)
(declare-fun anon42_Then@10 ( ) Bool)
(declare-fun anon42_Then@10_assertion ( ) Bool)
(declare-fun anon42_Then@11 ( ) Bool)
(declare-fun anon42_Then@11_assertion ( ) Bool)
(declare-fun anon42_Then@12 ( ) Bool)
(declare-fun anon42_Then@12_assertion ( ) Bool)
(declare-fun anon42_Then@13 ( ) Bool)
(declare-fun anon42_Then@13_assertion ( ) Bool)
(declare-fun anon42_Then@14 ( ) Bool)
(declare-fun anon42_Then@14_assertion ( ) Bool)
(declare-fun anon42_Then@15 ( ) Bool)
(declare-fun anon42_Then@15_assertion ( ) Bool)
(declare-fun anon42_Then@16 ( ) Bool)
(declare-fun anon42_Then@16_assertion ( ) Bool)
(declare-fun anon42_Then@17 ( ) Bool)
(declare-fun anon42_Then@18_assertion ( ) Bool)
(declare-fun anon42_Then@19 ( ) Bool)
(declare-fun anon42_Then@2 ( ) Bool)
(declare-fun anon42_Then@2_assertion ( ) Bool)
(declare-fun anon42_Then@20_assertion ( ) Bool)
(declare-fun anon42_Then@21 ( ) Bool)
(declare-fun anon42_Then@21_assertion ( ) Bool)
(declare-fun anon42_Then@22 ( ) Bool)
(declare-fun anon42_Then@22_assertion ( ) Bool)
(declare-fun anon42_Then@23 ( ) Bool)
(declare-fun anon42_Then@23_assertion ( ) Bool)
(declare-fun anon42_Then@24 ( ) Bool)
(declare-fun anon42_Then@24_assertion ( ) Bool)
(declare-fun anon42_Then@25 ( ) Bool)
(declare-fun anon42_Then@25_assertion ( ) Bool)
(declare-fun anon42_Then@26 ( ) Bool)
(declare-fun anon42_Then@26_assertion ( ) Bool)
(declare-fun anon42_Then@27 ( ) Bool)
(declare-fun anon42_Then@27_assertion ( ) Bool)
(declare-fun anon42_Then@28 ( ) Bool)
(declare-fun anon42_Then@28_assertion ( ) Bool)
(declare-fun anon42_Then@29 ( ) Bool)
(declare-fun anon42_Then@29_assertion ( ) Bool)
(declare-fun anon42_Then@3 ( ) Bool)
(declare-fun anon42_Then@3_assertion ( ) Bool)
(declare-fun anon42_Then@30 ( ) Bool)
(declare-fun anon42_Then@30_assertion ( ) Bool)
(declare-fun anon42_Then@31 ( ) Bool)
(declare-fun anon42_Then@31_assertion ( ) Bool)
(declare-fun anon42_Then@32 ( ) Bool)
(declare-fun anon42_Then@32_assertion ( ) Bool)
(declare-fun anon42_Then@33 ( ) Bool)
(declare-fun anon42_Then@33_assertion ( ) Bool)
(declare-fun anon42_Then@34 ( ) Bool)
(declare-fun anon42_Then@34_assertion ( ) Bool)
(declare-fun anon42_Then@35 ( ) Bool)
(declare-fun anon42_Then@35_assertion ( ) Bool)
(declare-fun anon42_Then@36 ( ) Bool)
(declare-fun anon42_Then@36_assertion ( ) Bool)
(declare-fun anon42_Then@37 ( ) Bool)
(declare-fun anon42_Then@37_assertion ( ) Bool)
(declare-fun anon42_Then@38 ( ) Bool)
(declare-fun anon42_Then@38_assertion ( ) Bool)
(declare-fun anon42_Then@39 ( ) Bool)
(declare-fun anon42_Then@39_assertion ( ) Bool)
(declare-fun anon42_Then@4 ( ) Bool)
(declare-fun anon42_Then@4_assertion ( ) Bool)
(declare-fun anon42_Then@40 ( ) Bool)
(declare-fun anon42_Then@40_assertion ( ) Bool)
(declare-fun anon42_Then@41 ( ) Bool)
(declare-fun anon42_Then@41_assertion ( ) Bool)
(declare-fun anon42_Then@42 ( ) Bool)
(declare-fun anon42_Then@42_assertion ( ) Bool)
(declare-fun anon42_Then@43 ( ) Bool)
(declare-fun anon42_Then@43_assertion ( ) Bool)
(declare-fun anon42_Then@44 ( ) Bool)
(declare-fun anon42_Then@45_assertion ( ) Bool)
(declare-fun anon42_Then@46 ( ) Bool)
(declare-fun anon42_Then@47_assertion ( ) Bool)
(declare-fun anon42_Then@48 ( ) Bool)
(declare-fun anon42_Then@5 ( ) Bool)
(declare-fun anon42_Then@5_assertion ( ) Bool)
(declare-fun anon42_Then@6 ( ) Bool)
(declare-fun anon42_Then@6_assertion ( ) Bool)
(declare-fun anon42_Then@7 ( ) Bool)
(declare-fun anon42_Then@7_assertion ( ) Bool)
(declare-fun anon42_Then@8 ( ) Bool)
(declare-fun anon42_Then@8_assertion ( ) Bool)
(declare-fun anon42_Then@9 ( ) Bool)
(declare-fun anon42_Then@9_assertion ( ) Bool)
(declare-fun anon43_Else ( ) Bool)
(declare-fun anon43_Then ( ) Bool)
(declare-fun anon44_Else ( ) Bool)
(declare-fun anon44_Then ( ) Bool)
(declare-fun anon45_Else ( ) Bool)
(declare-fun anon45_Then ( ) Bool)
(declare-fun anon46_Else ( ) Bool)
(declare-fun anon46_Then ( ) Bool)
(declare-fun anon46_Then@1_assertion ( ) Bool)
(declare-fun anon46_Then@2 ( ) Bool)
(declare-fun anon46_Then@2_assertion ( ) Bool)
(declare-fun anon46_Then@3 ( ) Bool)
(declare-fun anon46_Then@3_assertion ( ) Bool)
(declare-fun anon46_Then@4 ( ) Bool)
(declare-fun anon46_Then@4_assertion ( ) Bool)
(declare-fun anon46_Then@5 ( ) Bool)
(declare-fun anon46_Then@6_assertion ( ) Bool)
(declare-fun anon46_Then@7 ( ) Bool)
(declare-fun anon47_Else ( ) Bool)
(declare-fun anon47_Then ( ) Bool)
(declare-fun anon47_Then@10 ( ) Bool)
(declare-fun anon47_Then@10_assertion ( ) Bool)
(declare-fun anon47_Then@11 ( ) Bool)
(declare-fun anon47_Then@11_assertion ( ) Bool)
(declare-fun anon47_Then@12 ( ) Bool)
(declare-fun anon47_Then@12_assertion ( ) Bool)
(declare-fun anon47_Then@13 ( ) Bool)
(declare-fun anon47_Then@13_assertion ( ) Bool)
(declare-fun anon47_Then@14 ( ) Bool)
(declare-fun anon47_Then@14_assertion ( ) Bool)
(declare-fun anon47_Then@15 ( ) Bool)
(declare-fun anon47_Then@15_assertion ( ) Bool)
(declare-fun anon47_Then@16 ( ) Bool)
(declare-fun anon47_Then@16_assertion ( ) Bool)
(declare-fun anon47_Then@17 ( ) Bool)
(declare-fun anon47_Then@17_assertion ( ) Bool)
(declare-fun anon47_Then@18 ( ) Bool)
(declare-fun anon47_Then@18_assertion ( ) Bool)
(declare-fun anon47_Then@19 ( ) Bool)
(declare-fun anon47_Then@19_assertion ( ) Bool)
(declare-fun anon47_Then@20 ( ) Bool)
(declare-fun anon47_Then@20_assertion ( ) Bool)
(declare-fun anon47_Then@21 ( ) Bool)
(declare-fun anon47_Then@21_assertion ( ) Bool)
(declare-fun anon47_Then@22 ( ) Bool)
(declare-fun anon47_Then@22_assertion ( ) Bool)
(declare-fun anon47_Then@23 ( ) Bool)
(declare-fun anon47_Then@23_assertion ( ) Bool)
(declare-fun anon47_Then@24 ( ) Bool)
(declare-fun anon47_Then@24_assertion ( ) Bool)
(declare-fun anon47_Then@25 ( ) Bool)
(declare-fun anon47_Then@25_assertion ( ) Bool)
(declare-fun anon47_Then@26 ( ) Bool)
(declare-fun anon47_Then@26_assertion ( ) Bool)
(declare-fun anon47_Then@27 ( ) Bool)
(declare-fun anon47_Then@27_assertion ( ) Bool)
(declare-fun anon47_Then@28 ( ) Bool)
(declare-fun anon47_Then@28_assertion ( ) Bool)
(declare-fun anon47_Then@29 ( ) Bool)
(declare-fun anon47_Then@3_assertion ( ) Bool)
(declare-fun anon47_Then@4 ( ) Bool)
(declare-fun anon47_Then@4_assertion ( ) Bool)
(declare-fun anon47_Then@5 ( ) Bool)
(declare-fun anon47_Then@5_assertion ( ) Bool)
(declare-fun anon47_Then@6 ( ) Bool)
(declare-fun anon47_Then@6_assertion ( ) Bool)
(declare-fun anon47_Then@7 ( ) Bool)
(declare-fun anon47_Then@7_assertion ( ) Bool)
(declare-fun anon47_Then@8 ( ) Bool)
(declare-fun anon47_Then@8_assertion ( ) Bool)
(declare-fun anon47_Then@9 ( ) Bool)
(declare-fun anon47_Then@9_assertion ( ) Bool)
(declare-fun anon6 ( ) Bool)
(declare-fun anon6@1_assertion ( ) Bool)
(declare-fun anon6@10_assertion ( ) Bool)
(declare-fun anon6@11 ( ) Bool)
(declare-fun anon6@11_assertion ( ) Bool)
(declare-fun anon6@12 ( ) Bool)
(declare-fun anon6@12_assertion ( ) Bool)
(declare-fun anon6@13 ( ) Bool)
(declare-fun anon6@13_assertion ( ) Bool)
(declare-fun anon6@14 ( ) Bool)
(declare-fun anon6@14_assertion ( ) Bool)
(declare-fun anon6@15 ( ) Bool)
(declare-fun anon6@15_assertion ( ) Bool)
(declare-fun anon6@16 ( ) Bool)
(declare-fun anon6@16_assertion ( ) Bool)
(declare-fun anon6@17 ( ) Bool)
(declare-fun anon6@17_assertion ( ) Bool)
(declare-fun anon6@18 ( ) Bool)
(declare-fun anon6@18_assertion ( ) Bool)
(declare-fun anon6@19 ( ) Bool)
(declare-fun anon6@19_assertion ( ) Bool)
(declare-fun anon6@2 ( ) Bool)
(declare-fun anon6@20 ( ) Bool)
(declare-fun anon6@20_assertion ( ) Bool)
(declare-fun anon6@21 ( ) Bool)
(declare-fun anon6@21_assertion ( ) Bool)
(declare-fun anon6@22 ( ) Bool)
(declare-fun anon6@22_assertion ( ) Bool)
(declare-fun anon6@23 ( ) Bool)
(declare-fun anon6@23_assertion ( ) Bool)
(declare-fun anon6@24 ( ) Bool)
(declare-fun anon6@24_assertion ( ) Bool)
(declare-fun anon6@25 ( ) Bool)
(declare-fun anon6@25_assertion ( ) Bool)
(declare-fun anon6@26 ( ) Bool)
(declare-fun anon6@4_assertion ( ) Bool)
(declare-fun anon6@5 ( ) Bool)
(declare-fun anon6@5_assertion ( ) Bool)
(declare-fun anon6@6 ( ) Bool)
(declare-fun anon6@6_assertion ( ) Bool)
(declare-fun anon6@7 ( ) Bool)
(declare-fun anon6@8_assertion ( ) Bool)
(declare-fun anon6@9 ( ) Bool)
(declare-fun AVLTree.Valid ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun AVLTree.Valid@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun DtAlloc ( DatatypeType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
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
(declare-fun GeneratedUnifiedExit@16_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@17 ( ) Bool)
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
(declare-fun GeneratedUnifiedExit@29 ( ) Bool)
(declare-fun GeneratedUnifiedExit@29_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@3 ( ) Bool)
(declare-fun GeneratedUnifiedExit@3_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@30 ( ) Bool)
(declare-fun GeneratedUnifiedExit@30_assertion ( ) Bool)
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
(declare-fun GenericAlloc ( BoxType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$$@Map@@BoxType@To@Bool@@$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$BoxType$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$Int$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$ref$ ) Bool)
(declare-fun MapRead$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ BoxType ) Bool)
(declare-fun Math.max@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Int Int ) Bool)
(declare-fun Node.Balanced ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Balanced@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Balanced@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Balanced@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.BalanceValid ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.BalanceValid@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.BalanceValid@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.BalanceValid@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Height@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Valid ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Valid@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Valid@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Valid@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Seq@Contains$BoxType$ ( Seq$BoxType$ BoxType ) Bool)
(declare-fun Seq@Contains$ref$ ( Seq$ref$ ref ) Bool)
(declare-fun Seq@Equal$BoxType$ ( Seq$BoxType$ Seq$BoxType$ ) Bool)
(declare-fun Seq@Equal$ref$ ( Seq$ref$ Seq$ref$ ) Bool)
(declare-fun Set@Disjoint$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun Set@Equal$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun Set@Subset$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)

;Axioms
   (assert (! $$Language$Dafny :named ax_0))
   (assert (! $InMethodContext :named ax_1))
   (assert (! ($IsCanonicalBoolBox ($Box$Bool$ false)) :named ax_2))
   (assert (! ($IsCanonicalBoolBox ($Box$Bool$ true)) :named ax_3))
   (assert (! ($IsGoodHeap $Heap) :named ax_4))
   (assert (! (= $_Frame@0 (lambda@8 Node.Repr null $Heap alloc t@6)) :named ax_5))
   (assert (! (= (DeclType$$@Map@@BoxType@To@Bool@@$ AVLTree.Contents) class.AVLTree) :named ax_6))
   (assert (! (= (DeclType$$@Map@@BoxType@To@Bool@@$ AVLTree.Repr) class.AVLTree) :named ax_7))
   (assert (! (= (DeclType$$@Map@@BoxType@To@Bool@@$ Node.Contents) class.Node) :named ax_8))
   (assert (! (= (DeclType$$@Map@@BoxType@To@Bool@@$ Node.Repr) class.Node) :named ax_9))
   (assert (! (= (DeclType$Int$ Node.balance) class.Node) :named ax_10))
   (assert (! (= (DeclType$Int$ Node.height) class.Node) :named ax_11))
   (assert (! (= (DeclType$Int$ Node.value) class.Node) :named ax_12))
   (assert (! (= (DeclType$ref$ AVLTree.root) class.AVLTree) :named ax_13))
   (assert (! (= (DeclType$ref$ Node.left) class.Node) :named ax_14))
   (assert (! (= (DeclType$ref$ Node.right) class.Node) :named ax_15))
   (assert (! (= (dtype this) class.AVLTree) :named ax_16))
   (assert (! (= (FDim$$@Map@@BoxType@To@Bool@@$ AVLTree.Contents) 0) :named ax_17))
   (assert (! (= (FDim$$@Map@@BoxType@To@Bool@@$ AVLTree.Repr) 0) :named ax_18))
   (assert (! (= (FDim$$@Map@@BoxType@To@Bool@@$ Node.Contents) 0) :named ax_19))
   (assert (! (= (FDim$$@Map@@BoxType@To@Bool@@$ Node.Repr) 0) :named ax_20))
   (assert (! (= (FDim$Bool$ alloc) 0) :named ax_21))
   (assert (! (= (FDim$Int$ Node.balance) 0) :named ax_22))
   (assert (! (= (FDim$Int$ Node.height) 0) :named ax_23))
   (assert (! (= (FDim$Int$ Node.value) 0) :named ax_24))
   (assert (! (= (FDim$ref$ AVLTree.root) 0) :named ax_25))
   (assert (! (= (FDim$ref$ Node.left) 0) :named ax_26))
   (assert (! (= (FDim$ref$ Node.right) 0) :named ax_27))
   (assert (! (= (Seq@Length$BoxType$ Seq@Empty$BoxType$) 0) :named ax_28))
   (assert (! (= (Seq@Length$ref$ Seq@Empty$ref$) 0) :named ax_29))
   (assert (! (= 0 $ModuleContextHeight) :named ax_30))
   (assert (! (=> (Node.Balanced@canCall $Heap t@6) (or (Node.Balanced $Heap t@6) (=> (not (= t@6 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))) :named ax_31))
   (assert (! (=> (Node.Balanced@canCall $Heap t@6) (or (Node.Balanced $Heap t@6) (=> (not (= t@6 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))) :named ax_32))
   (assert (! (=> (Node.Balanced@canCall $Heap t@6) (or (Node.Balanced $Heap t@6) (=> (not (= t@6 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) 1))))) :named ax_33))
   (assert (! (=> (Node.BalanceValid@canCall $Heap t@6) (or (Node.BalanceValid $Heap t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))) :named ax_34))
   (assert (! (=> (Node.BalanceValid@canCall $Heap t@6) (or (Node.BalanceValid $Heap t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))))) :named ax_35))
   (assert (! (=> (Node.BalanceValid@canCall $Heap t@6) (or (Node.BalanceValid $Heap t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)))))) :named ax_36))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) 1))))) :named ax_37))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr)))))) :named ax_38))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (forall( (|i#16_$5| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$5|)) (< |i#16_$5| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value))))))))) :named ax_39))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))) :named ax_40))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ t@6))))))) :named ax_41))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr)))))) :named ax_42))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (forall( (|i#17_$4| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$4|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value) |i#17_$4|)))))))) :named ax_43))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))))) :named ax_44))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ t@6))))))) :named ax_45))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr)))))) :named ax_46))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ t@6))))) :named ax_47))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))) :named ax_48))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))) :named ax_49))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ null)))))) :named ax_50))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Contents) Set@Empty$BoxType$)))))) :named ax_51))
   (assert (! (=> (Node.Valid@canCall $Heap t@6) (or (Node.Valid $Heap t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) Set@Empty$BoxType$)))))) :named ax_52))
   (assert (! (=> (not (= t@6 null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))) :named ax_53))
   (assert (! (=> (not (= t@6 null)) (and (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ t@6)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr))))) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (forall( (|i#16_$4| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$4|)) (< |i#16_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (forall( (|i#17_$3| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$3|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value) |i#17_$3|)))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) 1)))) :named ax_54))
   (assert (! (=> (not (= t@6 null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) 1)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))) :named ax_55))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 2 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#14| ref))(!(=> (or (Node.Height@canCall |$Heap_$9| |n#14|) (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 2 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$9|)) (or (= |n#14| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9| |n#14| alloc) (= (dtype |n#14|) class.Node))))) (and (and (and (=> (not (= |n#14| null)) true) (=> (= |n#14| null) true)) (= (Node.Height |$Heap_$9| |n#14|) (ite (not (= |n#14| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$9| |n#14| Node.height) 0))) (<= 0 (Node.Height |$Heap_$9| |n#14|))))  :pattern ( (Node.Height |$Heap_$9| |n#14|))))) :named ax_56))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 3 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$16| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44_$1| Int) (|b#45_$1| Int))(!(=> (or (Math.max@canCall |$Heap_$16| |a#44_$1| |b#45_$1|) (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 3 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$16|)) (<= 0 |a#44_$1|)) (<= 0 |b#45_$1|))) (and (and (and (and (and (and (=> (< |a#44_$1| |b#45_$1|) true) (=> (>= |a#44_$1| |b#45_$1|) true)) (= (Math.max |$Heap_$16| |a#44_$1| |b#45_$1|) (ite (< |a#44_$1| |b#45_$1|) |b#45_$1| |a#44_$1|))) (=> (= |a#44_$1| |b#45_$1|) (and (= (Math.max@limited |$Heap_$16| |a#44_$1| |b#45_$1|) |a#44_$1|) (= |a#44_$1| |b#45_$1|)))) (<= |a#44_$1| (Math.max@limited |$Heap_$16| |a#44_$1| |b#45_$1|))) (<= |b#45_$1| (Math.max@limited |$Heap_$16| |a#44_$1| |b#45_$1|))) (<= 0 (Math.max |$Heap_$16| |a#44_$1| |b#45_$1|))))  :pattern ( (Math.max |$Heap_$16| |a#44_$1| |b#45_$1|))))) :named ax_57))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 3 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44_$2| Int) (|b#45_$2| Int))(!(=> (or (Math.max@canCall |$Heap_$17| |a#44_$2| |b#45_$2|) (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 3 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$17|)) (<= 0 |a#44_$2|)) (<= 0 |b#45_$2|))) (= (Math.max@2 |$Heap_$17| |a#44_$2| |b#45_$2|) (ite (< |a#44_$2| |b#45_$2|) |b#45_$2| |a#44_$2|)))  :pattern ( (Math.max@2 |$Heap_$17| |a#44_$2| |b#45_$2|))))) :named ax_58))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 4 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15_$1| ref))(!(=> (or (Node.Valid@canCall |$Heap_$12| |n#15_$1|) (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 4 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$12|)) (or (= |n#15_$1| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$12| |n#15_$1| alloc) (= (dtype |n#15_$1|) class.Node))))) (and (=> (not (= |n#15_$1| null)) (and (and (and (and (and (and (and (and (and (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) true) (=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (and (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) true) (=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))) true))))) (=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (and (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) true) (=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|)))) true))))) (=> (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (and (Node.Valid@canCall |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left)) (=> (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left)) (Node.Valid@canCall |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right)))))) (=> (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) true) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null))) true)))) (=> (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr)))) (and (and (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) true) (=> (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null) true)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) true)) (=> (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null) true)))) (=> (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ |n#15_$1|)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) Set@Empty$BoxType$)))) (and (and (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) true) (=> (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null) true)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) true)) (=> (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null) true)))) (=> (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ |n#15_$1|)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$12| |n#15_$1| Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (forall( (|i#16| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Contents) ($Box$Int$ |i#16|)) true)))))) (=> (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ |n#15_$1|)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$12| |n#15_$1| Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (forall( (|i#16_$0| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Contents) ($Box$Int$ |i#16_$0|)) (< |i#16_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$12| |n#15_$1| Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (forall( (|i#17| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Contents) ($Box$Int$ |i#17|)) true)))))) (=> (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (Node.Valid |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ |n#15_$1|)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$12| |n#15_$1| Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (forall( (|i#16_$1| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Contents) ($Box$Int$ |i#16_$1|)) (< |i#16_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$12| |n#15_$1| Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (forall( (|i#17_$0| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Contents) ($Box$Int$ |i#17_$0|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$12| |n#15_$1| Node.value) |i#17_$0|)))))) (and (and (Node.Height@canCall |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left)) (Node.Height@canCall |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (Math.max@canCall |$Heap_$12| (Node.Height |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left)) (Node.Height |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))))))) (= (Node.Valid |$Heap_$12| |n#15_$1|) (=> (not (= |n#15_$1| null)) (and (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr))))) (Node.Valid@limited |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left))) (Node.Valid@limited |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ |n#15_$1|)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| |n#15_$1| Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$12| |n#15_$1| Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) null)) (forall( (|i#16_$2| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left) Node.Contents) ($Box$Int$ |i#16_$2|)) (< |i#16_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$12| |n#15_$1| Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) null)) (forall( (|i#17_$1| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right) Node.Contents) ($Box$Int$ |i#17_$1|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$12| |n#15_$1| Node.value) |i#17_$1|)))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$12| |n#15_$1| Node.height) (+ (Math.max |$Heap_$12| (Node.Height |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.left)) (Node.Height |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#15_$1| Node.right))) 1)))))))  :pattern ( (Node.Valid |$Heap_$12| |n#15_$1|))))) :named ax_59))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 4 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$13| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15_$2| ref))(!(=> (or (Node.Valid@canCall |$Heap_$13| |n#15_$2|) (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 4 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$13|)) (or (= |n#15_$2| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$13| |n#15_$2| alloc) (= (dtype |n#15_$2|) class.Node))))) (= (Node.Valid@2 |$Heap_$13| |n#15_$2|) (=> (not (= |n#15_$2| null)) (and (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| |n#15_$2| Node.Repr) ($Box$ref$ |n#15_$2|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| |n#15_$2| Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| |n#15_$2| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) Node.Repr) ($Box$ref$ |n#15_$2|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| |n#15_$2| Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| |n#15_$2| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) Node.Repr) ($Box$ref$ |n#15_$2|)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| |n#15_$2| Node.Repr))))) (Node.Valid |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left))) (Node.Valid |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| |n#15_$2| Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ |n#15_$2|)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| |n#15_$2| Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$13| |n#15_$2| Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) null)) (forall( (|i#16_$3| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left) Node.Contents) ($Box$Int$ |i#16_$3|)) (< |i#16_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$13| |n#15_$2| Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) null)) (forall( (|i#17_$2| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right) Node.Contents) ($Box$Int$ |i#17_$2|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$13| |n#15_$2| Node.value) |i#17_$2|)))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$13| |n#15_$2| Node.height) (+ (Math.max |$Heap_$13| (Node.Height |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.left)) (Node.Height |$Heap_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$13| |n#15_$2| Node.right))) 1))))))  :pattern ( (Node.Valid@2 |$Heap_$13| |n#15_$2|))))) :named ax_60))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 5 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13_$1| ref))(!(=> (or (Node.BalanceValid@canCall |$Heap_$7| |n#13_$1|) (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 5 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$7|)) (or (= |n#13_$1| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$7| |n#13_$1| alloc) (= (dtype |n#13_$1|) class.Node)))) (Node.Valid |$Heap_$7| |n#13_$1|))) (and (=> (not (= |n#13_$1| null)) (and (and (and (Node.Height@canCall |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right)) (Node.Height@canCall |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left))) (=> (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$7| |n#13_$1| Node.balance) (- (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right)) (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left) null)) (Node.BalanceValid@canCall |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left))))) (=> (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$7| |n#13_$1| Node.balance) (- (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right)) (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left) null)) (Node.BalanceValid |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right) null)) (Node.BalanceValid@canCall |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right)))))) (= (Node.BalanceValid |$Heap_$7| |n#13_$1|) (=> (not (= |n#13_$1| null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$7| |n#13_$1| Node.balance) (- (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right)) (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left) null)) (Node.BalanceValid@limited |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right) null)) (Node.BalanceValid@limited |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right))))))))  :pattern ( (Node.BalanceValid |$Heap_$7| |n#13_$1|))))) :named ax_61))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 5 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13_$2| ref))(!(=> (or (Node.BalanceValid@canCall |$Heap_$8| |n#13_$2|) (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 5 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$8|)) (or (= |n#13_$2| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$8| |n#13_$2| alloc) (= (dtype |n#13_$2|) class.Node)))) (Node.Valid |$Heap_$8| |n#13_$2|))) (= (Node.BalanceValid@2 |$Heap_$8| |n#13_$2|) (=> (not (= |n#13_$2| null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$8| |n#13_$2| Node.balance) (- (Node.Height |$Heap_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.right)) (Node.Height |$Heap_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.left) null)) (Node.BalanceValid |$Heap_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.right) null)) (Node.BalanceValid |$Heap_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.right)))))))  :pattern ( (Node.BalanceValid@2 |$Heap_$8| |n#13_$2|))))) :named ax_62))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 6 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12_$1| ref))(!(=> (or (Node.Balanced@canCall |$Heap_$3| |n#12_$1|) (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 6 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$3|)) (or (= |n#12_$1| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$3| |n#12_$1| alloc) (= (dtype |n#12_$1|) class.Node)))) (Node.Valid |$Heap_$3| |n#12_$1|)) (Node.BalanceValid |$Heap_$3| |n#12_$1|))) (and (=> (not (= |n#12_$1| null)) (and (=> (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance) 1)) (Node.Balanced@canCall |$Heap_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$3| |n#12_$1| Node.right))) (=> (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance) 1)) (Node.Balanced |$Heap_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$3| |n#12_$1| Node.right))) (Node.Balanced@canCall |$Heap_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$3| |n#12_$1| Node.left))))) (= (Node.Balanced |$Heap_$3| |n#12_$1|) (=> (not (= |n#12_$1| null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance) 1)) (Node.Balanced@limited |$Heap_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$3| |n#12_$1| Node.right))) (Node.Balanced@limited |$Heap_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$3| |n#12_$1| Node.left)))))))  :pattern ( (Node.Balanced |$Heap_$3| |n#12_$1|))))) :named ax_63))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 6 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12_$2| ref))(!(=> (or (Node.Balanced@canCall |$Heap_$4| |n#12_$2|) (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 6 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$4|)) (or (= |n#12_$2| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$4| |n#12_$2| alloc) (= (dtype |n#12_$2|) class.Node)))) (Node.Valid |$Heap_$4| |n#12_$2|)) (Node.BalanceValid |$Heap_$4| |n#12_$2|))) (= (Node.Balanced@2 |$Heap_$4| |n#12_$2|) (=> (not (= |n#12_$2| null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$4| |n#12_$2| Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$4| |n#12_$2| Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$4| |n#12_$2| Node.balance) 1)) (Node.Balanced |$Heap_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$4| |n#12_$2| Node.right))) (Node.Balanced |$Heap_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$4| |n#12_$2| Node.left))))))  :pattern ( (Node.Balanced@2 |$Heap_$4| |n#12_$2|))))) :named ax_64))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 7 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$0| ref))(!(=> (or (AVLTree.Valid@canCall |$Heap_$0| |this_$0|) (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 7 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$0|)) (not (= |this_$0| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$0| |this_$0| alloc)) (= (dtype |this_$0|) class.AVLTree))) (and (and (and (and (and (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) null)) true) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) true)) (=> (and (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Repr))) true)) (=> (and (and (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Repr))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Contents))) (Node.Valid@canCall |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) (=> (and (and (and (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Repr))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Contents))) (Node.Valid |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (Node.BalanceValid@canCall |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) (=> (and (and (and (and (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Repr))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Contents))) (Node.Valid |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (Node.BalanceValid |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (Node.Balanced@canCall |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) (= (AVLTree.Valid |$Heap_$0| |this_$0|) (and (and (and (and (and (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Repr))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Contents))) (Node.Valid |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (Node.BalanceValid |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (Node.Balanced |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))))))  :pattern ( (AVLTree.Valid |$Heap_$0| |this_$0|))))) :named ax_65))
   (assert (! (forall ((|i_1| Field$Bool$)(|i| ref)(|m| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v| Bool))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_66))
   (assert (! (forall ((|i_13| Field$Int$)(|i_12| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_6| Int))(!(= v_6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_6 i_12 i_13 v_6) i_12 i_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_6 i_12 i_13 v_6) i_12 i_13)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_67))
   (assert (! (forall ((|i_25| Field$ref$)(|i_24| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_12| ref))(!(= v_12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_12 i_24 i_25 v_12) i_24 i_25)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_12 i_24 i_25 v_12) i_24 i_25)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_68))
   (assert (! (forall ((|i_37| Field$BoxType$)(|i_36| ref)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_18| BoxType))(!(= v_18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_18 i_36 i_37 v_18) i_36 i_37)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_18 i_36 i_37 v_18) i_36 i_37)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_69))
   (assert (! (forall ((|i_49| Field$$@Map@@BoxType@To@Bool@@$)(|i_48| ref)(|m_24| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_24| $@Map@@BoxType@To@Bool@@))(!(= v_24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_24 i_48 i_49 v_24) i_48 i_49)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_24 i_48 i_49 v_24) i_48 i_49)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_70))
   (assert (! (forall ((|v_1| Bool)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_3| Field$Bool$)(|j_1| Field$Bool$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_71))
   (assert (! (forall ((|v_10| Int)(|i_21| Field$Int$)(|i_20| ref)(|j_17| Field$ref$)(|j_16| ref)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_10 j_16 j_17) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_10 i_20 i_21 v_10) j_16 j_17)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_10 i_20 i_21 v_10) j_16 j_17)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Int :weight 0 )) :named ax_72))
   (assert (! (forall ((|v_11| Int)(|i_23| Field$Int$)(|i_22| ref)(|j_19| Field$$@Map@@BoxType@To@Bool@@$)(|j_18| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_11 j_18 j_19) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_11 i_22 i_23 v_11) j_18 j_19)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_11 i_22 i_23 v_11) j_18 j_19)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__Int :weight 0 )) :named ax_73))
   (assert (! (forall ((|v_13| ref)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_27| Field$ref$)(|j_21| Field$ref$)(|i_26| ref)(|j_20| ref))(!(=> (or (not (= j_21 i_27)) (not (= j_20 i_26))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_13 j_20 j_21) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_13 i_26 i_27 v_13) j_20 j_21))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_13 i_26 i_27 v_13) j_20 j_21)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_74))
   (assert (! (forall ((|v_14| ref)(|i_29| Field$ref$)(|i_28| ref)(|j_23| Field$BoxType$)(|j_22| ref)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_14 j_22 j_23) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_14 i_28 i_29 v_14) j_22 j_23)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_14 i_28 i_29 v_14) j_22 j_23)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__ref :weight 0 )) :named ax_75))
   (assert (! (forall ((|v_15| ref)(|i_31| Field$ref$)(|i_30| ref)(|j_25| Field$Bool$)(|j_24| ref)(|m_15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_15 j_24 j_25) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_15 i_30 i_31 v_15) j_24 j_25)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_15 i_30 i_31 v_15) j_24 j_25)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_76))
   (assert (! (forall ((|v_16| ref)(|i_33| Field$ref$)(|i_32| ref)(|j_27| Field$Int$)(|j_26| ref)(|m_16| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 j_26 j_27) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_16 i_32 i_33 v_16) j_26 j_27)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_16 i_32 i_33 v_16) j_26 j_27)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__ref :weight 0 )) :named ax_77))
   (assert (! (forall ((|v_17| ref)(|i_35| Field$ref$)(|i_34| ref)(|j_29| Field$$@Map@@BoxType@To@Bool@@$)(|j_28| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_17 j_28 j_29) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_17 i_34 i_35 v_17) j_28 j_29)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_17 i_34 i_35 v_17) j_28 j_29)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__ref :weight 0 )) :named ax_78))
   (assert (! (forall ((|v_19| BoxType)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_39| Field$BoxType$)(|j_31| Field$BoxType$)(|i_38| ref)(|j_30| ref))(!(=> (or (not (= j_31 i_39)) (not (= j_30 i_38))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_19 j_30 j_31) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_19 i_38 i_39 v_19) j_30 j_31))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_19 i_38 i_39 v_19) j_30 j_31)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_79))
   (assert (! (forall ((|v_2| Bool)(|i_5| Field$Bool$)(|i_4| ref)(|j_3| Field$BoxType$)(|j_2| ref)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_2 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__Bool :weight 0 )) :named ax_80))
   (assert (! (forall ((|v_20| BoxType)(|i_41| Field$BoxType$)(|i_40| ref)(|j_33| Field$Bool$)(|j_32| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_20 j_32 j_33) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_20 i_40 i_41 v_20) j_32 j_33)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_20 i_40 i_41 v_20) j_32 j_33)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__BoxType :weight 0 )) :named ax_81))
   (assert (! (forall ((|v_21| BoxType)(|i_43| Field$BoxType$)(|i_42| ref)(|j_35| Field$Int$)(|j_34| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_21 j_34 j_35) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_21 i_42 i_43 v_21) j_34 j_35)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_21 i_42 i_43 v_21) j_34 j_35)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__BoxType :weight 0 )) :named ax_82))
   (assert (! (forall ((|v_22| BoxType)(|i_45| Field$BoxType$)(|i_44| ref)(|j_37| Field$ref$)(|j_36| ref)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_22 j_36 j_37) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_22 i_44 i_45 v_22) j_36 j_37)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_22 i_44 i_45 v_22) j_36 j_37)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__BoxType :weight 0 )) :named ax_83))
   (assert (! (forall ((|v_23| BoxType)(|i_47| Field$BoxType$)(|i_46| ref)(|j_39| Field$$@Map@@BoxType@To@Bool@@$)(|j_38| ref)(|m_23| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_23 j_38 j_39) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_23 i_46 i_47 v_23) j_38 j_39)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_23 i_46 i_47 v_23) j_38 j_39)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__BoxType :weight 0 )) :named ax_84))
   (assert (! (forall ((|v_25| $@Map@@BoxType@To@Bool@@)(|m_25| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_51| Field$$@Map@@BoxType@To@Bool@@$)(|j_41| Field$$@Map@@BoxType@To@Bool@@$)(|i_50| ref)(|j_40| ref))(!(=> (or (not (= j_41 i_51)) (not (= j_40 i_50))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_25 j_40 j_41) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_25 i_50 i_51 v_25) j_40 j_41))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_25 i_50 i_51 v_25) j_40 j_41)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_85))
   (assert (! (forall ((|v_26| $@Map@@BoxType@To@Bool@@)(|i_53| Field$$@Map@@BoxType@To@Bool@@$)(|i_52| ref)(|j_43| Field$BoxType$)(|j_42| ref)(|m_26| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_26 j_42 j_43) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_26 i_52 i_53 v_26) j_42 j_43)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_26 i_52 i_53 v_26) j_42 j_43)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_86))
   (assert (! (forall ((|v_27| $@Map@@BoxType@To@Bool@@)(|i_55| Field$$@Map@@BoxType@To@Bool@@$)(|i_54| ref)(|j_45| Field$Bool$)(|j_44| ref)(|m_27| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_27 j_44 j_45) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_27 i_54 i_55 v_27) j_44 j_45)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_27 i_54 i_55 v_27) j_44 j_45)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_87))
   (assert (! (forall ((|v_28| $@Map@@BoxType@To@Bool@@)(|i_57| Field$$@Map@@BoxType@To@Bool@@$)(|i_56| ref)(|j_47| Field$Int$)(|j_46| ref)(|m_28| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_28 j_46 j_47) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_28 i_56 i_57 v_28) j_46 j_47)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_28 i_56 i_57 v_28) j_46 j_47)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_88))
   (assert (! (forall ((|v_29| $@Map@@BoxType@To@Bool@@)(|i_59| Field$$@Map@@BoxType@To@Bool@@$)(|i_58| ref)(|j_49| Field$ref$)(|j_48| ref)(|m_29| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_29 j_48 j_49) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_29 i_58 i_59 v_29) j_48 j_49)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_29 i_58 i_59 v_29) j_48 j_49)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_89))
   (assert (! (forall ((|v_3| Bool)(|i_7| Field$Bool$)(|i_6| ref)(|j_5| Field$Int$)(|j_4| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_3 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__Bool :weight 0 )) :named ax_90))
   (assert (! (forall ((|v_4| Bool)(|i_9| Field$Bool$)(|i_8| ref)(|j_7| Field$ref$)(|j_6| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_4 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_4 i_8 i_9 v_4) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_4 i_8 i_9 v_4) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Bool :weight 0 )) :named ax_91))
   (assert (! (forall ((|v_5| Bool)(|i_11| Field$Bool$)(|i_10| ref)(|j_9| Field$$@Map@@BoxType@To@Bool@@$)(|j_8| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_5 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_5 i_10 i_11 v_5) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_5 i_10 i_11 v_5) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__Bool :weight 0 )) :named ax_92))
   (assert (! (forall ((|v_7| Int)(|m_7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_15| Field$Int$)(|j_11| Field$Int$)(|i_14| ref)(|j_10| ref))(!(=> (or (not (= j_11 i_15)) (not (= j_10 i_14))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_7 j_10 j_11) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_7 i_14 i_15 v_7) j_10 j_11))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_7 i_14 i_15 v_7) j_10 j_11)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_93))
   (assert (! (forall ((|v_8| Int)(|i_17| Field$Int$)(|i_16| ref)(|j_13| Field$BoxType$)(|j_12| ref)(|m_8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_8 j_12 j_13) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_8 i_16 i_17 v_8) j_12 j_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_8 i_16 i_17 v_8) j_12 j_13)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__Int :weight 0 )) :named ax_94))
   (assert (! (forall ((|v_9| Int)(|i_19| Field$Int$)(|i_18| ref)(|j_15| Field$Bool$)(|j_14| ref)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_9 j_14 j_15) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_9 i_18 i_19 v_9) j_14 j_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_9 i_18 i_19 v_9) j_14 j_15)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Int :weight 0 )) :named ax_95))
   (assert (! (forall( (|$h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$0| ref))(!(=> (and (and ($IsGoodHeap |$h_$0|) (not (= |$o_$0| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$0| |$o_$0| alloc)) (forall( (|$t#1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$0| |$o_$0| AVLTree.Repr) |$t#1|) (or (= ($Unbox$ref$ |$t#1|) null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$0| ($Unbox$ref$ |$t#1|) alloc) (= (dtype ($Unbox$ref$ |$t#1|)) class.Node))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$0| |$o_$0| AVLTree.Repr) |$t#1|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$0| |$o_$0| AVLTree.Repr)))) :named ax_96))
   (assert (! (forall( (|$h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$2| ref))(!(=> (and (and ($IsGoodHeap |$h_$1|) (not (= |$o_$2| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$1| |$o_$2| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$1| |$o_$2| Node.left) null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$1| |$o_$2| Node.left) alloc) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$1| |$o_$2| Node.left)) class.Node))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$1| |$o_$2| Node.left)))) :named ax_97))
   (assert (! (forall( (|$h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$3| ref))(!(=> (and (and ($IsGoodHeap |$h_$2|) (not (= |$o_$3| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$2| |$o_$3| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$3| Node.right) null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$3| Node.right) alloc) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$3| Node.right)) class.Node))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$3| Node.right)))) :named ax_98))
   (assert (! (forall( (|$h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$4| ref))(!(=> (and (and ($IsGoodHeap |$h_$3|) (not (= |$o_$4| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$3| |$o_$4| alloc)) (forall( (|$t#1_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$3| |$o_$4| Node.Repr) |$t#1_$0|) (or (= ($Unbox$ref$ |$t#1_$0|) null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$3| ($Unbox$ref$ |$t#1_$0|) alloc) (= (dtype ($Unbox$ref$ |$t#1_$0|)) class.Node))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$3| |$o_$4| Node.Repr) |$t#1_$0|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$3| |$o_$4| Node.Repr)))) :named ax_99))
   (assert (! (forall( (|$h_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$5| ref))(!(=> (and (and ($IsGoodHeap |$h_$4|) (not (= |$o_$5| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$4| |$o_$5| alloc)) (<= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h_$4| |$o_$5| Node.height)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h_$4| |$o_$5| Node.height)))) :named ax_100))
   (assert (! (forall( (|$h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o| ref))(!(=> (and (and ($IsGoodHeap |$h|) (not (= |$o| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h| |$o| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| AVLTree.root) null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| AVLTree.root) alloc) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| AVLTree.root)) class.Node))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| AVLTree.root)))) :named ax_101))
   (assert (! (forall( (|$h0_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12_$3| ref))(!(=> (and (and (and (and ($IsGoodHeap |$h0_$0|) ($IsGoodHeap |$h1_$0|)) (or (= |n#12_$3| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |n#12_$3| alloc) (= (dtype |n#12_$3|) class.Node)))) (or (= |n#12_$3| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |n#12_$3| alloc) (= (dtype |n#12_$3|) class.Node)))) ($HeapSucc |$h0_$0| |$h1_$0|)) (=> (and (and (and (and (forall( (|$o_$6_$0| ref) (|$f_$0_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$6_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$6_$0| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$6_$0| alloc)) (or (= |$o_$6_$0| |n#12_$3|) (and (not (= |n#12_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |n#12_$3| Node.Repr) ($Box$ref$ |$o_$6_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$6_$0| |$f_$0_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$6_$0| |$f_$0_$0|)))) (forall( (|$o_$6_$1| ref) (|$f_$0_$1| Field$Int$))(=> (and (and (and (not (= |$o_$6_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$6_$1| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$6_$1| alloc)) (or (= |$o_$6_$1| |n#12_$3|) (and (not (= |n#12_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |n#12_$3| Node.Repr) ($Box$ref$ |$o_$6_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$0| |$o_$6_$1| |$f_$0_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$0| |$o_$6_$1| |$f_$0_$1|))))) (forall( (|$o_$6_$2| ref) (|$f_$0_$2| Field$ref$))(=> (and (and (and (not (= |$o_$6_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$6_$2| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$6_$2| alloc)) (or (= |$o_$6_$2| |n#12_$3|) (and (not (= |n#12_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |n#12_$3| Node.Repr) ($Box$ref$ |$o_$6_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$0| |$o_$6_$2| |$f_$0_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$0| |$o_$6_$2| |$f_$0_$2|))))) (forall( (|$o_$6_$3| ref) (|$f_$0_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$6_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$6_$3| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$6_$3| alloc)) (or (= |$o_$6_$3| |n#12_$3|) (and (not (= |n#12_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |n#12_$3| Node.Repr) ($Box$ref$ |$o_$6_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$0| |$o_$6_$3| |$f_$0_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$0| |$o_$6_$3| |$f_$0_$3|))))) (forall( (|$o_$6_$4| ref) (|$f_$0_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$6_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$6_$4| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$6_$4| alloc)) (or (= |$o_$6_$4| |n#12_$3|) (and (not (= |n#12_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |n#12_$3| Node.Repr) ($Box$ref$ |$o_$6_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |$o_$6_$4| |$f_$0_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$0| |$o_$6_$4| |$f_$0_$4|))))) (= (Node.Balanced |$h0_$0| |n#12_$3|) (Node.Balanced |$h1_$0| |n#12_$3|))))  :pattern ( ($HeapSucc |$h0_$0| |$h1_$0|) (Node.Balanced |$h1_$0| |n#12_$3|)))) :named ax_102))
   (assert (! (forall( (|$h0_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12_$4| ref))(!(=> (and (and (and (and ($IsGoodHeap |$h0_$1|) ($IsGoodHeap |$h1_$1|)) (or (= |n#12_$4| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |n#12_$4| alloc) (= (dtype |n#12_$4|) class.Node)))) (or (= |n#12_$4| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |n#12_$4| alloc) (= (dtype |n#12_$4|) class.Node)))) ($HeapSucc |$h0_$1| |$h1_$1|)) (=> (and (and (and (and (forall( (|$o_$7_$0| ref) (|$f_$1_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$7_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$7_$0| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$7_$0| alloc)) (or (= |$o_$7_$0| |n#12_$4|) (and (not (= |n#12_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |n#12_$4| Node.Repr) ($Box$ref$ |$o_$7_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$7_$0| |$f_$1_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$7_$0| |$f_$1_$0|)))) (forall( (|$o_$7_$1| ref) (|$f_$1_$1| Field$Int$))(=> (and (and (and (not (= |$o_$7_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$7_$1| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$7_$1| alloc)) (or (= |$o_$7_$1| |n#12_$4|) (and (not (= |n#12_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |n#12_$4| Node.Repr) ($Box$ref$ |$o_$7_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$1| |$o_$7_$1| |$f_$1_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$1| |$o_$7_$1| |$f_$1_$1|))))) (forall( (|$o_$7_$2| ref) (|$f_$1_$2| Field$ref$))(=> (and (and (and (not (= |$o_$7_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$7_$2| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$7_$2| alloc)) (or (= |$o_$7_$2| |n#12_$4|) (and (not (= |n#12_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |n#12_$4| Node.Repr) ($Box$ref$ |$o_$7_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$1| |$o_$7_$2| |$f_$1_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$1| |$o_$7_$2| |$f_$1_$2|))))) (forall( (|$o_$7_$3| ref) (|$f_$1_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$7_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$7_$3| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$7_$3| alloc)) (or (= |$o_$7_$3| |n#12_$4|) (and (not (= |n#12_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |n#12_$4| Node.Repr) ($Box$ref$ |$o_$7_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$1| |$o_$7_$3| |$f_$1_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$1| |$o_$7_$3| |$f_$1_$3|))))) (forall( (|$o_$7_$4| ref) (|$f_$1_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$7_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$7_$4| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$7_$4| alloc)) (or (= |$o_$7_$4| |n#12_$4|) (and (not (= |n#12_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |n#12_$4| Node.Repr) ($Box$ref$ |$o_$7_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |$o_$7_$4| |$f_$1_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$1| |$o_$7_$4| |$f_$1_$4|))))) (= (Node.Balanced@limited |$h0_$1| |n#12_$4|) (Node.Balanced@limited |$h1_$1| |n#12_$4|))))  :pattern ( ($HeapSucc |$h0_$1| |$h1_$1|) (Node.Balanced@limited |$h1_$1| |n#12_$4|)))) :named ax_103))
   (assert (! (forall( (|$h0_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13_$3| ref))(!(=> (and (and (and (and ($IsGoodHeap |$h0_$2|) ($IsGoodHeap |$h1_$2|)) (or (= |n#13_$3| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |n#13_$3| alloc) (= (dtype |n#13_$3|) class.Node)))) (or (= |n#13_$3| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |n#13_$3| alloc) (= (dtype |n#13_$3|) class.Node)))) ($HeapSucc |$h0_$2| |$h1_$2|)) (=> (and (and (and (and (forall( (|$o_$8_$0| ref) (|$f_$2_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$8_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$8_$0| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$8_$0| alloc)) (or (= |$o_$8_$0| |n#13_$3|) (and (not (= |n#13_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |n#13_$3| Node.Repr) ($Box$ref$ |$o_$8_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$8_$0| |$f_$2_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$8_$0| |$f_$2_$0|)))) (forall( (|$o_$8_$1| ref) (|$f_$2_$1| Field$Int$))(=> (and (and (and (not (= |$o_$8_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$8_$1| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$8_$1| alloc)) (or (= |$o_$8_$1| |n#13_$3|) (and (not (= |n#13_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |n#13_$3| Node.Repr) ($Box$ref$ |$o_$8_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$2| |$o_$8_$1| |$f_$2_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$2| |$o_$8_$1| |$f_$2_$1|))))) (forall( (|$o_$8_$2| ref) (|$f_$2_$2| Field$ref$))(=> (and (and (and (not (= |$o_$8_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$8_$2| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$8_$2| alloc)) (or (= |$o_$8_$2| |n#13_$3|) (and (not (= |n#13_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |n#13_$3| Node.Repr) ($Box$ref$ |$o_$8_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$2| |$o_$8_$2| |$f_$2_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$2| |$o_$8_$2| |$f_$2_$2|))))) (forall( (|$o_$8_$3| ref) (|$f_$2_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$8_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$8_$3| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$8_$3| alloc)) (or (= |$o_$8_$3| |n#13_$3|) (and (not (= |n#13_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |n#13_$3| Node.Repr) ($Box$ref$ |$o_$8_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$2| |$o_$8_$3| |$f_$2_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$2| |$o_$8_$3| |$f_$2_$3|))))) (forall( (|$o_$8_$4| ref) (|$f_$2_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$8_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$8_$4| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$8_$4| alloc)) (or (= |$o_$8_$4| |n#13_$3|) (and (not (= |n#13_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |n#13_$3| Node.Repr) ($Box$ref$ |$o_$8_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |$o_$8_$4| |$f_$2_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$2| |$o_$8_$4| |$f_$2_$4|))))) (= (Node.BalanceValid |$h0_$2| |n#13_$3|) (Node.BalanceValid |$h1_$2| |n#13_$3|))))  :pattern ( ($HeapSucc |$h0_$2| |$h1_$2|) (Node.BalanceValid |$h1_$2| |n#13_$3|)))) :named ax_104))
   (assert (! (forall( (|$h0_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13_$4| ref))(!(=> (and (and (and (and ($IsGoodHeap |$h0_$3|) ($IsGoodHeap |$h1_$3|)) (or (= |n#13_$4| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |n#13_$4| alloc) (= (dtype |n#13_$4|) class.Node)))) (or (= |n#13_$4| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |n#13_$4| alloc) (= (dtype |n#13_$4|) class.Node)))) ($HeapSucc |$h0_$3| |$h1_$3|)) (=> (and (and (and (and (forall( (|$o_$9_$0| ref) (|$f_$3_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$9_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$9_$0| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$9_$0| alloc)) (or (= |$o_$9_$0| |n#13_$4|) (and (not (= |n#13_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |n#13_$4| Node.Repr) ($Box$ref$ |$o_$9_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$9_$0| |$f_$3_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$9_$0| |$f_$3_$0|)))) (forall( (|$o_$9_$1| ref) (|$f_$3_$1| Field$Int$))(=> (and (and (and (not (= |$o_$9_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$9_$1| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$9_$1| alloc)) (or (= |$o_$9_$1| |n#13_$4|) (and (not (= |n#13_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |n#13_$4| Node.Repr) ($Box$ref$ |$o_$9_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$3| |$o_$9_$1| |$f_$3_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$3| |$o_$9_$1| |$f_$3_$1|))))) (forall( (|$o_$9_$2| ref) (|$f_$3_$2| Field$ref$))(=> (and (and (and (not (= |$o_$9_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$9_$2| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$9_$2| alloc)) (or (= |$o_$9_$2| |n#13_$4|) (and (not (= |n#13_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |n#13_$4| Node.Repr) ($Box$ref$ |$o_$9_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$3| |$o_$9_$2| |$f_$3_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$3| |$o_$9_$2| |$f_$3_$2|))))) (forall( (|$o_$9_$3| ref) (|$f_$3_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$9_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$9_$3| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$9_$3| alloc)) (or (= |$o_$9_$3| |n#13_$4|) (and (not (= |n#13_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |n#13_$4| Node.Repr) ($Box$ref$ |$o_$9_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$3| |$o_$9_$3| |$f_$3_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$3| |$o_$9_$3| |$f_$3_$3|))))) (forall( (|$o_$9_$4| ref) (|$f_$3_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$9_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$9_$4| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$9_$4| alloc)) (or (= |$o_$9_$4| |n#13_$4|) (and (not (= |n#13_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |n#13_$4| Node.Repr) ($Box$ref$ |$o_$9_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |$o_$9_$4| |$f_$3_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$3| |$o_$9_$4| |$f_$3_$4|))))) (= (Node.BalanceValid@limited |$h0_$3| |n#13_$4|) (Node.BalanceValid@limited |$h1_$3| |n#13_$4|))))  :pattern ( ($HeapSucc |$h0_$3| |$h1_$3|) (Node.BalanceValid@limited |$h1_$3| |n#13_$4|)))) :named ax_105))
   (assert (! (forall( (|$h0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#14_$0| ref))(!(=> (and (and (and (and ($IsGoodHeap |$h0_$4|) ($IsGoodHeap |$h1_$4|)) (or (= |n#14_$0| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |n#14_$0| alloc) (= (dtype |n#14_$0|) class.Node)))) (or (= |n#14_$0| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |n#14_$0| alloc) (= (dtype |n#14_$0|) class.Node)))) ($HeapSucc |$h0_$4| |$h1_$4|)) (=> (and (and (and (and (forall( (|$o_$10_$0| ref) (|$f_$4_$0| Field$Bool$))(=> (and (and (and (and (not (= |$o_$10_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$10_$0| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$10_$0| alloc)) (= |$o_$10_$0| |n#14_$0|)) false) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$10_$0| |$f_$4_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$10_$0| |$f_$4_$0|)))) (forall( (|$o_$10_$1| ref) (|$f_$4_$1| Field$Int$))(=> (and (and (and (and (not (= |$o_$10_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$10_$1| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$10_$1| alloc)) (= |$o_$10_$1| |n#14_$0|)) (= |$f_$4_$1| Node.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$4| |$o_$10_$1| |$f_$4_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$4| |$o_$10_$1| |$f_$4_$1|))))) (forall( (|$o_$10_$2| ref) (|$f_$4_$2| Field$ref$))(=> (and (and (and (and (not (= |$o_$10_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$10_$2| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$10_$2| alloc)) (= |$o_$10_$2| |n#14_$0|)) false) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$4| |$o_$10_$2| |$f_$4_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$4| |$o_$10_$2| |$f_$4_$2|))))) (forall( (|$o_$10_$3| ref) (|$f_$4_$3| Field$BoxType$))(=> (and (and (and (and (not (= |$o_$10_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$10_$3| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$10_$3| alloc)) (= |$o_$10_$3| |n#14_$0|)) false) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$4| |$o_$10_$3| |$f_$4_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$4| |$o_$10_$3| |$f_$4_$3|))))) (forall( (|$o_$10_$4| ref) (|$f_$4_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (and (not (= |$o_$10_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$10_$4| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$10_$4| alloc)) (= |$o_$10_$4| |n#14_$0|)) false) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$4| |$o_$10_$4| |$f_$4_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$4| |$o_$10_$4| |$f_$4_$4|))))) (= (Node.Height |$h0_$4| |n#14_$0|) (Node.Height |$h1_$4| |n#14_$0|))))  :pattern ( ($HeapSucc |$h0_$4| |$h1_$4|) (Node.Height |$h1_$4| |n#14_$0|)))) :named ax_106))
   (assert (! (forall( (|$h0_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15_$3| ref))(!(=> (and (and (and (and ($IsGoodHeap |$h0_$5|) ($IsGoodHeap |$h1_$5|)) (or (= |n#15_$3| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |n#15_$3| alloc) (= (dtype |n#15_$3|) class.Node)))) (or (= |n#15_$3| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |n#15_$3| alloc) (= (dtype |n#15_$3|) class.Node)))) ($HeapSucc |$h0_$5| |$h1_$5|)) (=> (and (and (and (and (forall( (|$o_$11_$0| ref) (|$f_$5_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$11_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$11_$0| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$11_$0| alloc)) (or (= |$o_$11_$0| |n#15_$3|) (and (not (= |n#15_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |n#15_$3| Node.Repr) ($Box$ref$ |$o_$11_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$11_$0| |$f_$5_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$11_$0| |$f_$5_$0|)))) (forall( (|$o_$11_$1| ref) (|$f_$5_$1| Field$Int$))(=> (and (and (and (not (= |$o_$11_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$11_$1| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$11_$1| alloc)) (or (= |$o_$11_$1| |n#15_$3|) (and (not (= |n#15_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |n#15_$3| Node.Repr) ($Box$ref$ |$o_$11_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$5| |$o_$11_$1| |$f_$5_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$5| |$o_$11_$1| |$f_$5_$1|))))) (forall( (|$o_$11_$2| ref) (|$f_$5_$2| Field$ref$))(=> (and (and (and (not (= |$o_$11_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$11_$2| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$11_$2| alloc)) (or (= |$o_$11_$2| |n#15_$3|) (and (not (= |n#15_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |n#15_$3| Node.Repr) ($Box$ref$ |$o_$11_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$5| |$o_$11_$2| |$f_$5_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$5| |$o_$11_$2| |$f_$5_$2|))))) (forall( (|$o_$11_$3| ref) (|$f_$5_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$11_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$11_$3| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$11_$3| alloc)) (or (= |$o_$11_$3| |n#15_$3|) (and (not (= |n#15_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |n#15_$3| Node.Repr) ($Box$ref$ |$o_$11_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$5| |$o_$11_$3| |$f_$5_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$5| |$o_$11_$3| |$f_$5_$3|))))) (forall( (|$o_$11_$4| ref) (|$f_$5_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$11_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$11_$4| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$11_$4| alloc)) (or (= |$o_$11_$4| |n#15_$3|) (and (not (= |n#15_$3| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |n#15_$3| Node.Repr) ($Box$ref$ |$o_$11_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |$o_$11_$4| |$f_$5_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$5| |$o_$11_$4| |$f_$5_$4|))))) (= (Node.Valid |$h0_$5| |n#15_$3|) (Node.Valid |$h1_$5| |n#15_$3|))))  :pattern ( ($HeapSucc |$h0_$5| |$h1_$5|) (Node.Valid |$h1_$5| |n#15_$3|)))) :named ax_107))
   (assert (! (forall( (|$h0_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15_$4| ref))(!(=> (and (and (and (and ($IsGoodHeap |$h0_$6|) ($IsGoodHeap |$h1_$6|)) (or (= |n#15_$4| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |n#15_$4| alloc) (= (dtype |n#15_$4|) class.Node)))) (or (= |n#15_$4| null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |n#15_$4| alloc) (= (dtype |n#15_$4|) class.Node)))) ($HeapSucc |$h0_$6| |$h1_$6|)) (=> (and (and (and (and (forall( (|$o_$12_$0| ref) (|$f_$6_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$12_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$12_$0| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$12_$0| alloc)) (or (= |$o_$12_$0| |n#15_$4|) (and (not (= |n#15_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |n#15_$4| Node.Repr) ($Box$ref$ |$o_$12_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$12_$0| |$f_$6_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$12_$0| |$f_$6_$0|)))) (forall( (|$o_$12_$1| ref) (|$f_$6_$1| Field$Int$))(=> (and (and (and (not (= |$o_$12_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$12_$1| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$12_$1| alloc)) (or (= |$o_$12_$1| |n#15_$4|) (and (not (= |n#15_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |n#15_$4| Node.Repr) ($Box$ref$ |$o_$12_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$6| |$o_$12_$1| |$f_$6_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$6| |$o_$12_$1| |$f_$6_$1|))))) (forall( (|$o_$12_$2| ref) (|$f_$6_$2| Field$ref$))(=> (and (and (and (not (= |$o_$12_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$12_$2| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$12_$2| alloc)) (or (= |$o_$12_$2| |n#15_$4|) (and (not (= |n#15_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |n#15_$4| Node.Repr) ($Box$ref$ |$o_$12_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$6| |$o_$12_$2| |$f_$6_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$6| |$o_$12_$2| |$f_$6_$2|))))) (forall( (|$o_$12_$3| ref) (|$f_$6_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$12_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$12_$3| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$12_$3| alloc)) (or (= |$o_$12_$3| |n#15_$4|) (and (not (= |n#15_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |n#15_$4| Node.Repr) ($Box$ref$ |$o_$12_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$6| |$o_$12_$3| |$f_$6_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$6| |$o_$12_$3| |$f_$6_$3|))))) (forall( (|$o_$12_$4| ref) (|$f_$6_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$12_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$12_$4| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$12_$4| alloc)) (or (= |$o_$12_$4| |n#15_$4|) (and (not (= |n#15_$4| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |n#15_$4| Node.Repr) ($Box$ref$ |$o_$12_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |$o_$12_$4| |$f_$6_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$6| |$o_$12_$4| |$f_$6_$4|))))) (= (Node.Valid@limited |$h0_$6| |n#15_$4|) (Node.Valid@limited |$h1_$6| |n#15_$4|))))  :pattern ( ($HeapSucc |$h0_$6| |$h1_$6|) (Node.Valid@limited |$h1_$6| |n#15_$4|)))) :named ax_108))
   (assert (! (forall( (|$h0_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44_$3| Int) (|b#45_$3| Int))(!(=> (and (and (and (and (and (and ($IsGoodHeap |$h0_$7|) ($IsGoodHeap |$h1_$7|)) (<= 0 |a#44_$3|)) (<= 0 |a#44_$3|)) (<= 0 |b#45_$3|)) (<= 0 |b#45_$3|)) ($HeapSucc |$h0_$7| |$h1_$7|)) (=> (and (and (and (and (forall( (|$o_$13_$0| ref) (|$f_$7_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$7| |$o_$13_$0| |$f_$7_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$7| |$o_$13_$0| |$f_$7_$0|)))) (forall( (|$o_$13_$1| ref) (|$f_$7_$1| Field$Int$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$7| |$o_$13_$1| |$f_$7_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$7| |$o_$13_$1| |$f_$7_$1|))))) (forall( (|$o_$13_$2| ref) (|$f_$7_$2| Field$ref$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$7| |$o_$13_$2| |$f_$7_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$7| |$o_$13_$2| |$f_$7_$2|))))) (forall( (|$o_$13_$3| ref) (|$f_$7_$3| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$7| |$o_$13_$3| |$f_$7_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$7| |$o_$13_$3| |$f_$7_$3|))))) (forall( (|$o_$13_$4| ref) (|$f_$7_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$7| |$o_$13_$4| |$f_$7_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$7| |$o_$13_$4| |$f_$7_$4|))))) (= (Math.max |$h0_$7| |a#44_$3| |b#45_$3|) (Math.max |$h1_$7| |a#44_$3| |b#45_$3|))))  :pattern ( ($HeapSucc |$h0_$7| |$h1_$7|) (Math.max |$h1_$7| |a#44_$3| |b#45_$3|)))) :named ax_109))
   (assert (! (forall( (|$h0_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44_$4| Int) (|b#45_$4| Int))(!(=> (and (and (and (and (and (and ($IsGoodHeap |$h0_$8|) ($IsGoodHeap |$h1_$8|)) (<= 0 |a#44_$4|)) (<= 0 |a#44_$4|)) (<= 0 |b#45_$4|)) (<= 0 |b#45_$4|)) ($HeapSucc |$h0_$8| |$h1_$8|)) (=> (and (and (and (and (forall( (|$o_$14_$0| ref) (|$f_$8_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$8| |$o_$14_$0| |$f_$8_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$8| |$o_$14_$0| |$f_$8_$0|)))) (forall( (|$o_$14_$1| ref) (|$f_$8_$1| Field$Int$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$8| |$o_$14_$1| |$f_$8_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$8| |$o_$14_$1| |$f_$8_$1|))))) (forall( (|$o_$14_$2| ref) (|$f_$8_$2| Field$ref$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$8| |$o_$14_$2| |$f_$8_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$8| |$o_$14_$2| |$f_$8_$2|))))) (forall( (|$o_$14_$3| ref) (|$f_$8_$3| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$8| |$o_$14_$3| |$f_$8_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$8| |$o_$14_$3| |$f_$8_$3|))))) (forall( (|$o_$14_$4| ref) (|$f_$8_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$8| |$o_$14_$4| |$f_$8_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$8| |$o_$14_$4| |$f_$8_$4|))))) (= (Math.max@limited |$h0_$8| |a#44_$4| |b#45_$4|) (Math.max@limited |$h1_$8| |a#44_$4| |b#45_$4|))))  :pattern ( ($HeapSucc |$h0_$8| |$h1_$8|) (Math.max@limited |$h1_$8| |a#44_$4| |b#45_$4|)))) :named ax_110))
   (assert (! (forall( (|$h0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$1| ref))(!(=> (and (and (and (and (and (and (and ($IsGoodHeap |$h0|) ($IsGoodHeap |$h1|)) (not (= |this_$1| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |this_$1| alloc)) (= (dtype |this_$1|) class.AVLTree)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |this_$1| alloc)) (= (dtype |this_$1|) class.AVLTree)) ($HeapSucc |$h0| |$h1|)) (=> (and (and (and (and (forall( (|$o_$1_$0| ref) (|$f_$49| Field$Bool$))(=> (and (and (and (not (= |$o_$1_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$0| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$0| alloc)) (or (= |$o_$1_$0| |this_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| AVLTree.Repr) ($Box$ref$ |$o_$1_$0|)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$0| |$f_$49|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$0| |$f_$49|)))) (forall( (|$o_$1_$1| ref) (|$f_$50| Field$Int$))(=> (and (and (and (not (= |$o_$1_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$1| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$1| alloc)) (or (= |$o_$1_$1| |this_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| AVLTree.Repr) ($Box$ref$ |$o_$1_$1|)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0| |$o_$1_$1| |$f_$50|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1| |$o_$1_$1| |$f_$50|))))) (forall( (|$o_$1_$2| ref) (|$f_$51| Field$ref$))(=> (and (and (and (not (= |$o_$1_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$2| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$2| alloc)) (or (= |$o_$1_$2| |this_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| AVLTree.Repr) ($Box$ref$ |$o_$1_$2|)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0| |$o_$1_$2| |$f_$51|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1| |$o_$1_$2| |$f_$51|))))) (forall( (|$o_$1_$3| ref) (|$f_$52| Field$BoxType$))(=> (and (and (and (not (= |$o_$1_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$3| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$3| alloc)) (or (= |$o_$1_$3| |this_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| AVLTree.Repr) ($Box$ref$ |$o_$1_$3|)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0| |$o_$1_$3| |$f_$52|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1| |$o_$1_$3| |$f_$52|))))) (forall( (|$o_$1_$4| ref) (|$f_$53| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$1_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$4| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$4| alloc)) (or (= |$o_$1_$4| |this_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| AVLTree.Repr) ($Box$ref$ |$o_$1_$4|)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |$o_$1_$4| |$f_$53|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1| |$o_$1_$4| |$f_$53|))))) (= (AVLTree.Valid |$h0| |this_$1|) (AVLTree.Valid |$h1| |this_$1|))))  :pattern ( ($HeapSucc |$h0| |$h1|) (AVLTree.Valid |$h1| |this_$1|)))) :named ax_111))
   (assert (! (forall( (|$Heap_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12| ref))(!(= (Node.Balanced@2 |$Heap_$1| |n#12|) (Node.Balanced |$Heap_$1| |n#12|))  :pattern ( (Node.Balanced@2 |$Heap_$1| |n#12|)))) :named ax_112))
   (assert (! (forall( (|$Heap_$10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15| ref))(!(= (Node.Valid@2 |$Heap_$10| |n#15|) (Node.Valid |$Heap_$10| |n#15|))  :pattern ( (Node.Valid@2 |$Heap_$10| |n#15|)))) :named ax_113))
   (assert (! (forall( (|$Heap_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15_$0| ref))(!(= (Node.Valid |$Heap_$11| |n#15_$0|) (Node.Valid@limited |$Heap_$11| |n#15_$0|))  :pattern ( (Node.Valid |$Heap_$11| |n#15_$0|)))) :named ax_114))
   (assert (! (forall( (|$Heap_$14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44| Int) (|b#45| Int))(!(= (Math.max@2 |$Heap_$14| |a#44| |b#45|) (Math.max |$Heap_$14| |a#44| |b#45|))  :pattern ( (Math.max@2 |$Heap_$14| |a#44| |b#45|)))) :named ax_115))
   (assert (! (forall( (|$Heap_$15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44_$0| Int) (|b#45_$0| Int))(!(= (Math.max |$Heap_$15| |a#44_$0| |b#45_$0|) (Math.max@limited |$Heap_$15| |a#44_$0| |b#45_$0|))  :pattern ( (Math.max |$Heap_$15| |a#44_$0| |b#45_$0|)))) :named ax_116))
   (assert (! (forall( (|$Heap_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12_$0| ref))(!(= (Node.Balanced |$Heap_$2| |n#12_$0|) (Node.Balanced@limited |$Heap_$2| |n#12_$0|))  :pattern ( (Node.Balanced |$Heap_$2| |n#12_$0|)))) :named ax_117))
   (assert (! (forall( (|$Heap_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13| ref))(!(= (Node.BalanceValid@2 |$Heap_$5| |n#13|) (Node.BalanceValid |$Heap_$5| |n#13|))  :pattern ( (Node.BalanceValid@2 |$Heap_$5| |n#13|)))) :named ax_118))
   (assert (! (forall( (|$Heap_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13_$0| ref))(!(= (Node.BalanceValid |$Heap_$6| |n#13_$0|) (Node.BalanceValid@limited |$Heap_$6| |n#13_$0|))  :pattern ( (Node.BalanceValid |$Heap_$6| |n#13_$0|)))) :named ax_119))
   (assert (! (forall( (|$o_$23_$0| ref) (|$f_$17_$0| Field$Bool$) (|Node.Repr_$1_$0| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$0| ref) (|$Heap_$26_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$0| Field$Bool$) (|t#6_$1_$0| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@8 |Node.Repr_$1_$0| |null_$8_$0| |$Heap_$26_$0| |alloc_$8_$0| |t#6_$1_$0|) |$o_$23_$0| |$f_$17_$0|) (=> (and (not (= |$o_$23_$0| |null_$8_$0|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$26_$0| |$o_$23_$0| |alloc_$8_$0|)) (and (not (= |t#6_$1_$0| |null_$8_$0|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$26_$0| |t#6_$1_$0| |Node.Repr_$1_$0|) ($Box$ref$ |$o_$23_$0|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@8 |Node.Repr_$1_$0| |null_$8_$0| |$Heap_$26_$0| |alloc_$8_$0| |t#6_$1_$0|) |$o_$23_$0| |$f_$17_$0|)))) :named ax_120))
   (assert (! (forall( (|$o_$23_$1| ref) (|$f_$17_$1| Field$Int$) (|Node.Repr_$1_$1| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$1| ref) (|$Heap_$26_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$1| Field$Bool$) (|t#6_$1_$1| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ (lambda@8 |Node.Repr_$1_$1| |null_$8_$1| |$Heap_$26_$1| |alloc_$8_$1| |t#6_$1_$1|) |$o_$23_$1| |$f_$17_$1|) (=> (and (not (= |$o_$23_$1| |null_$8_$1|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$26_$1| |$o_$23_$1| |alloc_$8_$1|)) (and (not (= |t#6_$1_$1| |null_$8_$1|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$26_$1| |t#6_$1_$1| |Node.Repr_$1_$1|) ($Box$ref$ |$o_$23_$1|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ (lambda@8 |Node.Repr_$1_$1| |null_$8_$1| |$Heap_$26_$1| |alloc_$8_$1| |t#6_$1_$1|) |$o_$23_$1| |$f_$17_$1|)))) :named ax_121))
   (assert (! (forall( (|$o_$23_$2| ref) (|$f_$17_$2| Field$ref$) (|Node.Repr_$1_$2| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$2| ref) (|$Heap_$26_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$2| Field$Bool$) (|t#6_$1_$2| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ (lambda@8 |Node.Repr_$1_$2| |null_$8_$2| |$Heap_$26_$2| |alloc_$8_$2| |t#6_$1_$2|) |$o_$23_$2| |$f_$17_$2|) (=> (and (not (= |$o_$23_$2| |null_$8_$2|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$26_$2| |$o_$23_$2| |alloc_$8_$2|)) (and (not (= |t#6_$1_$2| |null_$8_$2|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$26_$2| |t#6_$1_$2| |Node.Repr_$1_$2|) ($Box$ref$ |$o_$23_$2|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ (lambda@8 |Node.Repr_$1_$2| |null_$8_$2| |$Heap_$26_$2| |alloc_$8_$2| |t#6_$1_$2|) |$o_$23_$2| |$f_$17_$2|)))) :named ax_122))
   (assert (! (forall( (|$o_$23_$3| ref) (|$f_$17_$3| Field$BoxType$) (|Node.Repr_$1_$3| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$3| ref) (|$Heap_$26_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$3| Field$Bool$) (|t#6_$1_$3| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@8 |Node.Repr_$1_$3| |null_$8_$3| |$Heap_$26_$3| |alloc_$8_$3| |t#6_$1_$3|) |$o_$23_$3| |$f_$17_$3|) (=> (and (not (= |$o_$23_$3| |null_$8_$3|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$26_$3| |$o_$23_$3| |alloc_$8_$3|)) (and (not (= |t#6_$1_$3| |null_$8_$3|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$26_$3| |t#6_$1_$3| |Node.Repr_$1_$3|) ($Box$ref$ |$o_$23_$3|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@8 |Node.Repr_$1_$3| |null_$8_$3| |$Heap_$26_$3| |alloc_$8_$3| |t#6_$1_$3|) |$o_$23_$3| |$f_$17_$3|)))) :named ax_123))
   (assert (! (forall( (|$o_$23_$4| ref) (|$f_$17_$4| Field$$@Map@@BoxType@To@Bool@@$) (|Node.Repr_$1_$4| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$4| ref) (|$Heap_$26_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$4| Field$Bool$) (|t#6_$1_$4| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ (lambda@8 |Node.Repr_$1_$4| |null_$8_$4| |$Heap_$26_$4| |alloc_$8_$4| |t#6_$1_$4|) |$o_$23_$4| |$f_$17_$4|) (=> (and (not (= |$o_$23_$4| |null_$8_$4|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$26_$4| |$o_$23_$4| |alloc_$8_$4|)) (and (not (= |t#6_$1_$4| |null_$8_$4|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$26_$4| |t#6_$1_$4| |Node.Repr_$1_$4|) ($Box$ref$ |$o_$23_$4|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ (lambda@8 |Node.Repr_$1_$4| |null_$8_$4| |$Heap_$26_$4| |alloc_$8_$4| |t#6_$1_$4|) |$o_$23_$4| |$f_$17_$4|)))) :named ax_124))
   (assert (! (forall( (|a_$0_$0| $@Map@@BoxType@To@Bool@@) (|x_$0_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$0_$0| |x_$0_$0|) |x_$0_$0|)  :pattern ( (Set@UnionOne$BoxType$ |a_$0_$0| |x_$0_$0|)))) :named ax_125))
   (assert (! (forall( (|a_$1_$0| $@Map@@BoxType@To@Bool@@) (|x_$1_$0| BoxType) (|y_$11| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$11|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$1_$0| |x_$1_$0|) |y_$11|))  :pattern ( (Set@UnionOne$BoxType$ |a_$1_$0| |x_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$11|)))) :named ax_126))
   (assert (! (forall( (|a_$10_$0| $@Map@@BoxType@To@Bool@@) (|b_$7_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ |a_$10_$0| (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|)) (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|))  :pattern ( (Set@Intersection$BoxType$ |a_$10_$0| (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|))))) :named ax_127))
   (assert (! (forall( (|a_$11_$0| $@Map@@BoxType@To@Bool@@) (|b_$8_$0| $@Map@@BoxType@To@Bool@@) (|o_$4_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$11_$0| |b_$8_$0|) |o_$4_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$11_$0| |o_$4_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$8_$0| |o_$4_$0|))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$11_$0| |b_$8_$0|) |o_$4_$0|)))) :named ax_128))
   (assert (! (forall( (|a_$12_$0| $@Map@@BoxType@To@Bool@@) (|b_$9_$0| $@Map@@BoxType@To@Bool@@) (|y_$2_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |y_$2_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$12_$0| |b_$9_$0|) |y_$2_$0|)))  :pattern ( (Set@Difference$BoxType$ |a_$12_$0| |b_$9_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |y_$2_$0|)))) :named ax_129))
   (assert (! (forall( (|a_$13_$0| $@Map@@BoxType@To@Bool@@) (|b_$10_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Subset$BoxType$ |a_$13_$0| |b_$10_$0|) (forall( (|o_$5_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$13_$0| |o_$5_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$10_$0| |o_$5_$1|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$13_$0| |o_$5_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$10_$0| |o_$5_$1|)))))  :pattern ( (Set@Subset$BoxType$ |a_$13_$0| |b_$10_$0|)))) :named ax_130))
   (assert (! (forall( (|a_$14_$0| $@Map@@BoxType@To@Bool@@) (|b_$11_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Equal$BoxType$ |a_$14_$0| |b_$11_$0|) (forall( (|o_$6_$1| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$6_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$11_$0| |o_$6_$1|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$6_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$11_$0| |o_$6_$1|)))))  :pattern ( (Set@Equal$BoxType$ |a_$14_$0| |b_$11_$0|)))) :named ax_131))
   (assert (! (forall( (|a_$15_$0| $@Map@@BoxType@To@Bool@@) (|b_$12_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Equal$BoxType$ |a_$15_$0| |b_$12_$0|) (= |a_$15_$0| |b_$12_$0|))  :pattern ( (Set@Equal$BoxType$ |a_$15_$0| |b_$12_$0|)))) :named ax_132))
   (assert (! (forall( (|a_$16_$0| $@Map@@BoxType@To@Bool@@) (|b_$13_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Disjoint$BoxType$ |a_$16_$0| |b_$13_$0|) (forall( (|o_$7_$1| BoxType))(!(or (not (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$16_$0| |o_$7_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$7_$1|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$16_$0| |o_$7_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$7_$1|)))))  :pattern ( (Set@Disjoint$BoxType$ |a_$16_$0| |b_$13_$0|)))) :named ax_133))
   (assert (! (forall( (|a_$17_$0| $@Map@@BoxType@To@Bool@@) (|tick_$0| TickType))(!(=> (not (= |a_$17_$0| Set@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$17_$0| (Set@Choose$BoxType$ |a_$17_$0| |tick_$0|)))  :pattern ( (Set@Choose$BoxType$ |a_$17_$0| |tick_$0|)))) :named ax_134))
   (assert (! (forall( (|a_$18| Int) (|b_$14| Int))(!(= (<= |a_$18| |b_$14|) (= (Math@min |a_$18| |b_$14|) |a_$18|))  :pattern ( (Math@min |a_$18| |b_$14|)))) :named ax_135))
   (assert (! (forall( (|a_$19| Int) (|b_$15| Int))(!(= (<= |b_$15| |a_$19|) (= (Math@min |a_$19| |b_$15|) |b_$15|))  :pattern ( (Math@min |a_$19| |b_$15|)))) :named ax_136))
   (assert (! (forall( (|a_$2_$0| $@Map@@BoxType@To@Bool@@) (|b_$44| $@Map@@BoxType@To@Bool@@) (|o_$2_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$2_$0| |b_$44|) |o_$2_$0|) (or (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$2_$0| |o_$2_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$44| |o_$2_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$2_$0| |b_$44|) |o_$2_$0|)))) :named ax_137))
   (assert (! (forall( (|a_$20| Int) (|b_$16| Int))(!(or (= (Math@min |a_$20| |b_$16|) |a_$20|) (= (Math@min |a_$20| |b_$16|) |b_$16|))  :pattern ( (Math@min |a_$20| |b_$16|)))) :named ax_138))
   (assert (! (forall( (|a_$21| Int))(!(=> (<= 0 |a_$21|) (= (Math@clip |a_$21|) |a_$21|))  :pattern ( (Math@clip |a_$21|)))) :named ax_139))
   (assert (! (forall( (|a_$22| Int))(!(=> (< |a_$22| 0) (= (Math@clip |a_$22|) 0))  :pattern ( (Math@clip |a_$22|)))) :named ax_140))
   (assert (! (forall( (|a_$3_$0| $@Map@@BoxType@To@Bool@@) (|b_$0_$0| $@Map@@BoxType@To@Bool@@) (|y_$0_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |y_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$3_$0| |b_$0_$0|) |y_$0_$0|))  :pattern ( (Set@Union$BoxType$ |a_$3_$0| |b_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |y_$0_$0|)))) :named ax_141))
   (assert (! (forall( (|a_$4_$0| $@Map@@BoxType@To@Bool@@) (|b_$1_$0| $@Map@@BoxType@To@Bool@@) (|y_$1_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$4_$0| |b_$1_$0|) |y_$1_$0|))  :pattern ( (Set@Union$BoxType$ |a_$4_$0| |b_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|)))) :named ax_142))
   (assert (! (forall( (|a_$41_$0| Seq$ref$) (|b_$30_$0| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$41_$0| |b_$30_$0|) (= |a_$41_$0| |b_$30_$0|))  :pattern ( (Seq@Equal$ref$ |a_$41_$0| |b_$30_$0|)))) :named ax_143))
   (assert (! (forall( (|a_$41_$1| Seq$BoxType$) (|b_$30_$1| Seq$BoxType$))(!(=> (Seq@Equal$BoxType$ |a_$41_$1| |b_$30_$1|) (= |a_$41_$1| |b_$30_$1|))  :pattern ( (Seq@Equal$BoxType$ |a_$41_$1| |b_$30_$1|)))) :named ax_144))
   (assert (! (forall( (|a_$44| ClassName) (|b_$37| ClassName))(!(and (= (TypeTupleCar (TypeTuple |a_$44| |b_$37|)) |a_$44|) (= (TypeTupleCdr (TypeTuple |a_$44| |b_$37|)) |b_$37|))  :pattern ( (TypeTuple |a_$44| |b_$37|)))) :named ax_145))
   (assert (! (forall( (|a_$45| Int) (|b_$43| Int) (|d_$1| Int))(!(=> (and (and (<= 2 |d_$1|) (= (mod |a_$45| |d_$1|) (mod |b_$43| |d_$1|))) (< |a_$45| |b_$43|)) (<= (+ |a_$45| |d_$1|) |b_$43|))  :pattern ( (mod |a_$45| |d_$1|) (mod |b_$43| |d_$1|)))) :named ax_146))
   (assert (! (forall( (|a_$46| $@Map@@BoxType@To@Bool@@) (|x_$19| BoxType) (|o_$1_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$46| |x_$19|) |o_$1_$0|) (or (= |o_$1_$0| |x_$19|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$46| |o_$1_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$46| |x_$19|) |o_$1_$0|)))) :named ax_147))
   (assert (! (forall( (|a_$5_$0| $@Map@@BoxType@To@Bool@@) (|b_$2_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Disjoint$BoxType$ |a_$5_$0| |b_$2_$0|) (and (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|) |a_$5_$0|) |b_$2_$0|) (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|) |b_$2_$0|) |a_$5_$0|)))  :pattern ( (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|)))) :named ax_148))
   (assert (! (forall( (|a_$6_$0| $@Map@@BoxType@To@Bool@@) (|b_$3_$0| $@Map@@BoxType@To@Bool@@) (|o_$3_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$6_$0| |b_$3_$0|) |o_$3_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$6_$0| |o_$3_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$3_$0| |o_$3_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$6_$0| |b_$3_$0|) |o_$3_$0|)))) :named ax_149))
   (assert (! (forall( (|a_$7_$0| $@Map@@BoxType@To@Bool@@) (|b_$4_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|) |b_$4_$0|) (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|))  :pattern ( (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|) |b_$4_$0|)))) :named ax_150))
   (assert (! (forall( (|a_$8_$0| $@Map@@BoxType@To@Bool@@) (|b_$5_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ |a_$8_$0| (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|)) (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|))  :pattern ( (Set@Union$BoxType$ |a_$8_$0| (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|))))) :named ax_151))
   (assert (! (forall( (|a_$9_$0| $@Map@@BoxType@To@Bool@@) (|b_$6_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|) |b_$6_$0|) (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|))  :pattern ( (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|) |b_$6_$0|)))) :named ax_152))
   (assert (! (forall( (|b_$31| BoxType))(!(= ($Box$Int$ ($Unbox$Int$ |b_$31|)) |b_$31|)  :pattern ( ($Unbox$Int$ |b_$31|)))) :named ax_153))
   (assert (! (forall( (|b_$32| BoxType))(!(= ($Box$ref$ ($Unbox$ref$ |b_$32|)) |b_$32|)  :pattern ( ($Unbox$ref$ |b_$32|)))) :named ax_154))
   (assert (! (forall( (|b_$33| BoxType))(!(= ($Box$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$33|)) |b_$33|)  :pattern ( ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$33|)))) :named ax_155))
   (assert (! (forall( (|b_$34| BoxType))(!(= ($Box$Seq$BoxType$$ ($Unbox$Seq$BoxType$$ |b_$34|)) |b_$34|)  :pattern ( ($Unbox$Seq$BoxType$$ |b_$34|)))) :named ax_156))
   (assert (! (forall( (|b_$35| BoxType))(!(= ($Box$DatatypeType$ ($Unbox$DatatypeType$ |b_$35|)) |b_$35|)  :pattern ( ($Unbox$DatatypeType$ |b_$35|)))) :named ax_157))
   (assert (! (forall( (|b_$36| BoxType))(!(=> ($IsCanonicalBoolBox |b_$36|) (= ($Box$Bool$ ($Unbox$Bool$ |b_$36|)) |b_$36|))  :pattern ( ($Unbox$Bool$ |b_$36|)))) :named ax_158))
   (assert (! (forall( (|b_$38| BoxType) (|h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$38| |h_$3|) (or (= ($Unbox$ref$ |b_$38|) null) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$3| ($Unbox$ref$ |b_$38|) alloc)))  :pattern ( (GenericAlloc |b_$38| |h_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$3| ($Unbox$ref$ |b_$38|) alloc)))) :named ax_159))
   (assert (! (forall( (|b_$39| BoxType) (|h_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|i_$12| Int))(!(=> (and (and (GenericAlloc |b_$39| |h_$4|) (<= 0 |i_$12|)) (< |i_$12| (Seq@Length$BoxType$ ($Unbox$Seq$BoxType$$ |b_$39|)))) (GenericAlloc (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$39|) |i_$12|) |h_$4|))  :pattern ( (GenericAlloc |b_$39| |h_$4|) (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$39|) |i_$12|)))) :named ax_160))
   (assert (! (forall( (|b_$40| BoxType) (|h_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|t_$2| BoxType))(!(=> (and (GenericAlloc |b_$40| |h_$5|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$40|) |t_$2|)) (GenericAlloc |t_$2| |h_$5|))  :pattern ( (GenericAlloc |b_$40| |h_$5|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$40|) |t_$2|)))) :named ax_161))
   (assert (! (forall( (|b_$41| BoxType) (|h_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$41| |h_$6|) (DtAlloc ($Unbox$DatatypeType$ |b_$41|) |h_$6|))  :pattern ( (GenericAlloc |b_$41| |h_$6|) (DtType ($Unbox$DatatypeType$ |b_$41|))))) :named ax_162))
   (assert (! (forall( (|b_$42| Bool) (|h_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$7|) (GenericAlloc ($Box$Bool$ |b_$42|) |h_$7|))) :named ax_163))
   (assert (! (forall( (|f_$1| Field$BoxType$) (|i_$10| Int))(!(= (FDim$BoxType$ (MultiIndexField |f_$1| |i_$10|)) (+ (FDim$BoxType$ |f_$1|) 1))  :pattern ( (MultiIndexField |f_$1| |i_$10|)))) :named ax_164))
   (assert (! (forall( (|f_$2| Field$BoxType$) (|i_$11| Int))(!(and (= (MultiIndexField_Inverse0$BoxType$ (MultiIndexField |f_$2| |i_$11|)) |f_$2|) (= (MultiIndexField_Inverse1$BoxType$ (MultiIndexField |f_$2| |i_$11|)) |i_$11|))  :pattern ( (MultiIndexField |f_$2| |i_$11|)))) :named ax_165))
   (assert (! (forall( (|f_$4| Field$Bool$) (|r_$7| ref) (|H_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$7| |f_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$7| |f_$4|))) :named ax_166))
   (assert (! (forall( (|f_$5| Field$Int$) (|r_$8| ref) (|H_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |H_$2| |r_$8| |f_$5|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |H_$2| |r_$8| |f_$5|))) :named ax_167))
   (assert (! (forall( (|f_$6| Field$ref$) (|r_$9| ref) (|H_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$3| |r_$9| |f_$6|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$3| |r_$9| |f_$6|))) :named ax_168))
   (assert (! (forall( (|f_$7| Field$BoxType$) (|r_$10| ref) (|H_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$4| |r_$10| |f_$7|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$4| |r_$10| |f_$7|))) :named ax_169))
   (assert (! (forall( (|f_$8| Field$$@Map@@BoxType@To@Bool@@$) (|r_$11| ref) (|H_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$5| |r_$11| |f_$8|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$5| |r_$11| |f_$8|))) :named ax_170))
   (assert (! (forall( (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a_$43| ref) (|i_$7| Int))(=> (and (<= 0 |i_$7|) (< |i_$7| (Seq@Length$BoxType$ (Seq@FromArray |h_$0| |a_$43|)))) (= (Seq@Index$BoxType$ (Seq@FromArray |h_$0| |a_$43|) |i_$7|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$0| |a_$43| (IndexField |i_$7|))))) :named ax_171))
   (assert (! (forall( (|h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d| DatatypeType))(!(=> ($HeapSucc |h_$1| |k|) (=> (DtAlloc |d| |h_$1|) (DtAlloc |d| |k|)))  :pattern ( ($HeapSucc |h_$1| |k|) (DtAlloc |d| |h_$1|)) :pattern ( ($HeapSucc |h_$1| |k|) (DtAlloc |d| |k|)))) :named ax_172))
   (assert (! (forall( (|h_$10_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$0| ref) (|f_$3_$0| Field$Bool$) (|x_$15_$0| Bool))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$10_$0| |r_$6_$0| |f_$3_$0| |x_$15_$0|)) ($HeapSucc |h_$10_$0| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$10_$0| |r_$6_$0| |f_$3_$0| |x_$15_$0|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$10_$0| |r_$6_$0| |f_$3_$0| |x_$15_$0|)))) :named ax_173))
   (assert (! (forall( (|h_$10_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$1| ref) (|f_$3_$1| Field$Int$) (|x_$15_$1| Int))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$10_$1| |r_$6_$1| |f_$3_$1| |x_$15_$1|)) ($HeapSucc |h_$10_$1| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$10_$1| |r_$6_$1| |f_$3_$1| |x_$15_$1|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$10_$1| |r_$6_$1| |f_$3_$1| |x_$15_$1|)))) :named ax_174))
   (assert (! (forall( (|h_$10_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$2| ref) (|f_$3_$2| Field$ref$) (|x_$15_$2| ref))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$10_$2| |r_$6_$2| |f_$3_$2| |x_$15_$2|)) ($HeapSucc |h_$10_$2| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$10_$2| |r_$6_$2| |f_$3_$2| |x_$15_$2|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$10_$2| |r_$6_$2| |f_$3_$2| |x_$15_$2|)))) :named ax_175))
   (assert (! (forall( (|h_$10_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$3| ref) (|f_$3_$3| Field$BoxType$) (|x_$15_$3| BoxType))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$10_$3| |r_$6_$3| |f_$3_$3| |x_$15_$3|)) ($HeapSucc |h_$10_$3| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$10_$3| |r_$6_$3| |f_$3_$3| |x_$15_$3|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$10_$3| |r_$6_$3| |f_$3_$3| |x_$15_$3|)))) :named ax_176))
   (assert (! (forall( (|h_$10_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$4| ref) (|f_$3_$4| Field$$@Map@@BoxType@To@Bool@@$) (|x_$15_$4| $@Map@@BoxType@To@Bool@@))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |h_$10_$4| |r_$6_$4| |f_$3_$4| |x_$15_$4|)) ($HeapSucc |h_$10_$4| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |h_$10_$4| |r_$6_$4| |f_$3_$4| |x_$15_$4|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |h_$10_$4| |r_$6_$4| |f_$3_$4| |x_$15_$4|)))) :named ax_177))
   (assert (! (forall( (|h_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($HeapSucc |h_$11| |k_$1|) (forall( (|o_$19| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$11| |o_$19| alloc) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$19| alloc))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$19| alloc)))))  :pattern ( ($HeapSucc |h_$11| |k_$1|)))) :named ax_178))
   (assert (! (forall( (|h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d_$0| BoxType))(!(=> ($HeapSucc |h_$2| |k_$0|) (=> (GenericAlloc |d_$0| |h_$2|) (GenericAlloc |d_$0| |k_$0|)))  :pattern ( ($HeapSucc |h_$2| |k_$0|) (GenericAlloc |d_$0| |h_$2|)) :pattern ( ($HeapSucc |h_$2| |k_$0|) (GenericAlloc |d_$0| |k_$0|)))) :named ax_179))
   (assert (! (forall( (|h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a_$42| ref))(!(= (Seq@Length$BoxType$ (Seq@FromArray |h| |a_$42|)) (array.Length |a_$42|))  :pattern ( (Seq@Length$BoxType$ (Seq@FromArray |h| |a_$42|))))) :named ax_180))
   (assert (! (forall( (|i_$4_$0| Int) (|v_$4_$0| ref) (|len_$1_$0| Int) (|x_$9_$0| ref))(!(=> (and (<= 0 |i_$4_$0|) (< |i_$4_$0| |len_$1_$0|)) (= (Seq@Contains$ref$ (Seq@Build$ref$ Seq@Empty$ref$ |i_$4_$0| |v_$4_$0| |len_$1_$0|) |x_$9_$0|) (= |x_$9_$0| |v_$4_$0|)))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ Seq@Empty$ref$ |i_$4_$0| |v_$4_$0| |len_$1_$0|) |x_$9_$0|)))) :named ax_181))
   (assert (! (forall( (|i_$4_$1| Int) (|v_$4_$1| BoxType) (|len_$1_$1| Int) (|x_$9_$1| BoxType))(!(=> (and (<= 0 |i_$4_$1|) (< |i_$4_$1| |len_$1_$1|)) (= (Seq@Contains$BoxType$ (Seq@Build$BoxType$ Seq@Empty$BoxType$ |i_$4_$1| |v_$4_$1| |len_$1_$1|) |x_$9_$1|) (= |x_$9_$1| |v_$4_$1|)))  :pattern ( (Seq@Contains$BoxType$ (Seq@Build$BoxType$ Seq@Empty$BoxType$ |i_$4_$1| |v_$4_$1| |len_$1_$1|) |x_$9_$1|)))) :named ax_182))
   (assert (! (forall( (|i_$8| Int))(!(= (FDim$BoxType$ (IndexField |i_$8|)) 1)  :pattern ( (IndexField |i_$8|)))) :named ax_183))
   (assert (! (forall( (|o_$18| ref))(<= 0 (array.Length |o_$18|))) :named ax_184))
   (assert (! (forall( (|o_$20| BoxType))(!(not (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$20|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$20|)))) :named ax_185))
   (assert (! (forall( (|r_$1_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$1_$0|) |r_$1_$0|)  :pattern ( (Set@Singleton$BoxType$ |r_$1_$0|)))) :named ax_186))
   (assert (! (forall( (|r_$2_$0| BoxType) (|o_$0_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|) (= |r_$2_$0| |o_$0_$0|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|)))) :named ax_187))
   (assert (! (forall( (|r_$5| ref) (|h_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (and ($IsGoodHeap |h_$9|) (or (= |r_$5| null) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$9| |r_$5| alloc))) (GenericAlloc ($Box$ref$ |r_$5|) |h_$9|))  :pattern ( (GenericAlloc ($Box$ref$ |r_$5|) |h_$9|)))) :named ax_188))
   (assert (! (forall( (|s_$0_$0| Seq$ref$))(!(<= 0 (Seq@Length$ref$ |s_$0_$0|))  :pattern ( (Seq@Length$ref$ |s_$0_$0|)))) :named ax_189))
   (assert (! (forall( (|s_$0_$1| Seq$BoxType$))(!(<= 0 (Seq@Length$BoxType$ |s_$0_$1|))  :pattern ( (Seq@Length$BoxType$ |s_$0_$1|)))) :named ax_190))
   (assert (! (forall( (|s_$1_$0| Seq$ref$))(!(=> (= (Seq@Length$ref$ |s_$1_$0|) 0) (= |s_$1_$0| Seq@Empty$ref$))  :pattern ( (Seq@Length$ref$ |s_$1_$0|)))) :named ax_191))
   (assert (! (forall( (|s_$1_$1| Seq$BoxType$))(!(=> (= (Seq@Length$BoxType$ |s_$1_$1|) 0) (= |s_$1_$1| Seq@Empty$BoxType$))  :pattern ( (Seq@Length$BoxType$ |s_$1_$1|)))) :named ax_192))
   (assert (! (forall( (|s_$10_$0| Seq$ref$) (|n_$5_$0| Int))(!(=> (<= 0 |n_$5_$0|) (and (=> (<= |n_$5_$0| (Seq@Length$ref$ |s_$10_$0|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$10_$0| |n_$5_$0|)) |n_$5_$0|)) (=> (< (Seq@Length$ref$ |s_$10_$0|) |n_$5_$0|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$10_$0| |n_$5_$0|)) (Seq@Length$ref$ |s_$10_$0|)))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$10_$0| |n_$5_$0|))))) :named ax_193))
   (assert (! (forall( (|s_$10_$1| Seq$BoxType$) (|n_$5_$1| Int))(!(=> (<= 0 |n_$5_$1|) (and (=> (<= |n_$5_$1| (Seq@Length$BoxType$ |s_$10_$1|)) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$10_$1| |n_$5_$1|)) |n_$5_$1|)) (=> (< (Seq@Length$BoxType$ |s_$10_$1|) |n_$5_$1|) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$10_$1| |n_$5_$1|)) (Seq@Length$BoxType$ |s_$10_$1|)))))  :pattern ( (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$10_$1| |n_$5_$1|))))) :named ax_194))
   (assert (! (forall( (|s_$11_$0| Seq$ref$) (|n_$6_$0| Int) (|j_$1_$0| Int))(!(=> (and (and (<= 0 |j_$1_$0|) (< |j_$1_$0| |n_$6_$0|)) (< |j_$1_$0| (Seq@Length$ref$ |s_$11_$0|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$11_$0| |n_$6_$0|) |j_$1_$0|) (Seq@Index$ref$ |s_$11_$0| |j_$1_$0|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$11_$0| |n_$6_$0|) |j_$1_$0|)))) :named ax_195))
   (assert (! (forall( (|s_$11_$1| Seq$BoxType$) (|n_$6_$1| Int) (|j_$1_$1| Int))(!(=> (and (and (<= 0 |j_$1_$1|) (< |j_$1_$1| |n_$6_$1|)) (< |j_$1_$1| (Seq@Length$BoxType$ |s_$11_$1|))) (= (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$11_$1| |n_$6_$1|) |j_$1_$1|) (Seq@Index$BoxType$ |s_$11_$1| |j_$1_$1|)))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$11_$1| |n_$6_$1|) |j_$1_$1|)))) :named ax_196))
   (assert (! (forall( (|s_$12_$0| Seq$ref$) (|n_$7_$0| Int))(!(=> (<= 0 |n_$7_$0|) (and (=> (<= |n_$7_$0| (Seq@Length$ref$ |s_$12_$0|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$12_$0| |n_$7_$0|)) (- (Seq@Length$ref$ |s_$12_$0|) |n_$7_$0|))) (=> (< (Seq@Length$ref$ |s_$12_$0|) |n_$7_$0|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$12_$0| |n_$7_$0|)) 0))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$12_$0| |n_$7_$0|))))) :named ax_197))
   (assert (! (forall( (|s_$12_$1| Seq$BoxType$) (|n_$7_$1| Int))(!(=> (<= 0 |n_$7_$1|) (and (=> (<= |n_$7_$1| (Seq@Length$BoxType$ |s_$12_$1|)) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$12_$1| |n_$7_$1|)) (- (Seq@Length$BoxType$ |s_$12_$1|) |n_$7_$1|))) (=> (< (Seq@Length$BoxType$ |s_$12_$1|) |n_$7_$1|) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$12_$1| |n_$7_$1|)) 0))))  :pattern ( (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$12_$1| |n_$7_$1|))))) :named ax_198))
   (assert (! (forall( (|s_$13_$0| Seq$ref$) (|n_$8_$0| Int) (|j_$2_$0| Int))(!(=> (and (and (<= 0 |n_$8_$0|) (<= 0 |j_$2_$0|)) (< |j_$2_$0| (- (Seq@Length$ref$ |s_$13_$0|) |n_$8_$0|))) (= (Seq@Index$ref$ (Seq@Drop$ref$ |s_$13_$0| |n_$8_$0|) |j_$2_$0|) (Seq@Index$ref$ |s_$13_$0| (+ |j_$2_$0| |n_$8_$0|))))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Drop$ref$ |s_$13_$0| |n_$8_$0|) |j_$2_$0|)))) :named ax_199))
   (assert (! (forall( (|s_$13_$1| Seq$BoxType$) (|n_$8_$1| Int) (|j_$2_$1| Int))(!(=> (and (and (<= 0 |n_$8_$1|) (<= 0 |j_$2_$1|)) (< |j_$2_$1| (- (Seq@Length$BoxType$ |s_$13_$1|) |n_$8_$1|))) (= (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$13_$1| |n_$8_$1|) |j_$2_$1|) (Seq@Index$BoxType$ |s_$13_$1| (+ |j_$2_$1| |n_$8_$1|))))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$13_$1| |n_$8_$1|) |j_$2_$1|)))) :named ax_200))
   (assert (! (forall( (|s_$14_$0| Seq$ref$) (|t_$1_$0| Seq$ref$))(!(and (= (Seq@Take$ref$ (Seq@Append$ref$ |s_$14_$0| |t_$1_$0|) (Seq@Length$ref$ |s_$14_$0|)) |s_$14_$0|) (= (Seq@Drop$ref$ (Seq@Append$ref$ |s_$14_$0| |t_$1_$0|) (Seq@Length$ref$ |s_$14_$0|)) |t_$1_$0|))  :pattern ( (Seq@Append$ref$ |s_$14_$0| |t_$1_$0|)))) :named ax_201))
   (assert (! (forall( (|s_$14_$1| Seq$BoxType$) (|t_$1_$1| Seq$BoxType$))(!(and (= (Seq@Take$BoxType$ (Seq@Append$BoxType$ |s_$14_$1| |t_$1_$1|) (Seq@Length$BoxType$ |s_$14_$1|)) |s_$14_$1|) (= (Seq@Drop$BoxType$ (Seq@Append$BoxType$ |s_$14_$1| |t_$1_$1|) (Seq@Length$BoxType$ |s_$14_$1|)) |t_$1_$1|))  :pattern ( (Seq@Append$BoxType$ |s_$14_$1| |t_$1_$1|)))) :named ax_202))
   (assert (! (forall( (|s_$2_$0| Seq$ref$) (|i_$13| Int) (|v_$0_$0| ref) (|len_$2| Int))(!(=> (<= 0 |len_$2|) (= (Seq@Length$ref$ (Seq@Build$ref$ |s_$2_$0| |i_$13| |v_$0_$0| |len_$2|)) |len_$2|))  :pattern ( (Seq@Length$ref$ (Seq@Build$ref$ |s_$2_$0| |i_$13| |v_$0_$0| |len_$2|))))) :named ax_203))
   (assert (! (forall( (|s_$2_$1| Seq$BoxType$) (|i_$14| Int) (|v_$0_$1| BoxType) (|len_$3| Int))(!(=> (<= 0 |len_$3|) (= (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$2_$1| |i_$14| |v_$0_$1| |len_$3|)) |len_$3|))  :pattern ( (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$2_$1| |i_$14| |v_$0_$1| |len_$3|))))) :named ax_204))
   (assert (! (forall( (|s_$3_$0| Seq$ref$) (|i_$0_$0| Int) (|v_$1_$0| ref) (|len_$0_$0| Int) (|n_$0_$0| Int))(!(=> (and (<= 0 |n_$0_$0|) (< |n_$0_$0| |len_$0_$0|)) (and (=> (= |i_$0_$0| |n_$0_$0|) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$3_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|) |v_$1_$0|)) (=> (not (= |i_$0_$0| |n_$0_$0|)) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$3_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|) (Seq@Index$ref$ |s_$3_$0| |n_$0_$0|)))))  :pattern ( (Seq@Index$ref$ (Seq@Build$ref$ |s_$3_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|)))) :named ax_205))
   (assert (! (forall( (|s_$3_$1| Seq$BoxType$) (|i_$0_$1| Int) (|v_$1_$1| BoxType) (|len_$0_$1| Int) (|n_$0_$1| Int))(!(=> (and (<= 0 |n_$0_$1|) (< |n_$0_$1| |len_$0_$1|)) (and (=> (= |i_$0_$1| |n_$0_$1|) (= (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$3_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|) |v_$1_$1|)) (=> (not (= |i_$0_$1| |n_$0_$1|)) (= (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$3_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|) (Seq@Index$BoxType$ |s_$3_$1| |n_$0_$1|)))))  :pattern ( (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$3_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|)))) :named ax_206))
   (assert (! (forall( (|s_$4_$0| Seq$ref$) (|i_$1_$0| Int) (|v_$2_$0| ref))(!(=> (and (<= 0 |i_$1_$0|) (< |i_$1_$0| (Seq@Length$ref$ |s_$4_$0|))) (= (Seq@Length$ref$ (Seq@Update$ref$ |s_$4_$0| |i_$1_$0| |v_$2_$0|)) (Seq@Length$ref$ |s_$4_$0|)))  :pattern ( (Seq@Length$ref$ (Seq@Update$ref$ |s_$4_$0| |i_$1_$0| |v_$2_$0|))))) :named ax_207))
   (assert (! (forall( (|s_$4_$1| Seq$BoxType$) (|i_$1_$1| Int) (|v_$2_$1| BoxType))(!(=> (and (<= 0 |i_$1_$1|) (< |i_$1_$1| (Seq@Length$BoxType$ |s_$4_$1|))) (= (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$4_$1| |i_$1_$1| |v_$2_$1|)) (Seq@Length$BoxType$ |s_$4_$1|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$4_$1| |i_$1_$1| |v_$2_$1|))))) :named ax_208))
   (assert (! (forall( (|s_$5_$0| Seq$ref$) (|i_$2_$0| Int) (|v_$3_$0| ref) (|n_$1_$0| Int))(!(=> (and (<= 0 |n_$1_$0|) (< |n_$1_$0| (Seq@Length$ref$ |s_$5_$0|))) (and (=> (= |i_$2_$0| |n_$1_$0|) (= (Seq@Index$ref$ (Seq@Update$ref$ |s_$5_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|) |v_$3_$0|)) (=> (not (= |i_$2_$0| |n_$1_$0|)) (= (Seq@Index$ref$ (Seq@Update$ref$ |s_$5_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|) (Seq@Index$ref$ |s_$5_$0| |n_$1_$0|)))))  :pattern ( (Seq@Index$ref$ (Seq@Update$ref$ |s_$5_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|)))) :named ax_209))
   (assert (! (forall( (|s_$5_$1| Seq$BoxType$) (|i_$2_$1| Int) (|v_$3_$1| BoxType) (|n_$1_$1| Int))(!(=> (and (<= 0 |n_$1_$1|) (< |n_$1_$1| (Seq@Length$BoxType$ |s_$5_$1|))) (and (=> (= |i_$2_$1| |n_$1_$1|) (= (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$5_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|) |v_$3_$1|)) (=> (not (= |i_$2_$1| |n_$1_$1|)) (= (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$5_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|) (Seq@Index$BoxType$ |s_$5_$1| |n_$1_$1|)))))  :pattern ( (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$5_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|)))) :named ax_210))
   (assert (! (forall( (|s_$6_$0| Seq$ref$) (|x_$6_$0| ref))(!(= (Seq@Contains$ref$ |s_$6_$0| |x_$6_$0|) (exists( (|i_$3_$1| Int))(!(and (and (<= 0 |i_$3_$1|) (< |i_$3_$1| (Seq@Length$ref$ |s_$6_$0|))) (= (Seq@Index$ref$ |s_$6_$0| |i_$3_$1|) |x_$6_$0|))  :pattern ( (Seq@Index$ref$ |s_$6_$0| |i_$3_$1|)))))  :pattern ( (Seq@Contains$ref$ |s_$6_$0| |x_$6_$0|)))) :named ax_211))
   (assert (! (forall( (|s_$6_$1| Seq$BoxType$) (|x_$6_$1| BoxType))(!(= (Seq@Contains$BoxType$ |s_$6_$1| |x_$6_$1|) (exists( (|i_$3_$3| Int))(!(and (and (<= 0 |i_$3_$3|) (< |i_$3_$3| (Seq@Length$BoxType$ |s_$6_$1|))) (= (Seq@Index$BoxType$ |s_$6_$1| |i_$3_$3|) |x_$6_$1|))  :pattern ( (Seq@Index$BoxType$ |s_$6_$1| |i_$3_$3|)))))  :pattern ( (Seq@Contains$BoxType$ |s_$6_$1| |x_$6_$1|)))) :named ax_212))
   (assert (! (forall( (|s_$7_$0| Seq$ref$) (|i0_$0| Int) (|v0_$0| ref) (|len0_$0| Int) (|i1_$0| Int) (|v1_$0| ref) (|len1_$0| Int) (|x_$10_$0| ref))(!(=> (and (and (and (<= 0 |i0_$0|) (< |i0_$0| |len0_$0|)) (<= |len0_$0| |i1_$0|)) (< |i1_$0| |len1_$0|)) (= (Seq@Contains$ref$ (Seq@Build$ref$ (Seq@Build$ref$ |s_$7_$0| |i0_$0| |v0_$0| |len0_$0|) |i1_$0| |v1_$0| |len1_$0|) |x_$10_$0|) (or (= |v1_$0| |x_$10_$0|) (Seq@Contains$ref$ (Seq@Build$ref$ |s_$7_$0| |i0_$0| |v0_$0| |len0_$0|) |x_$10_$0|))))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ (Seq@Build$ref$ |s_$7_$0| |i0_$0| |v0_$0| |len0_$0|) |i1_$0| |v1_$0| |len1_$0|) |x_$10_$0|)))) :named ax_213))
   (assert (! (forall( (|s_$7_$1| Seq$BoxType$) (|i0_$1| Int) (|v0_$1| BoxType) (|len0_$1| Int) (|i1_$1| Int) (|v1_$1| BoxType) (|len1_$1| Int) (|x_$10_$1| BoxType))(!(=> (and (and (and (<= 0 |i0_$1|) (< |i0_$1| |len0_$1|)) (<= |len0_$1| |i1_$1|)) (< |i1_$1| |len1_$1|)) (= (Seq@Contains$BoxType$ (Seq@Build$BoxType$ (Seq@Build$BoxType$ |s_$7_$1| |i0_$1| |v0_$1| |len0_$1|) |i1_$1| |v1_$1| |len1_$1|) |x_$10_$1|) (or (= |v1_$1| |x_$10_$1|) (Seq@Contains$BoxType$ (Seq@Build$BoxType$ |s_$7_$1| |i0_$1| |v0_$1| |len0_$1|) |x_$10_$1|))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Build$BoxType$ (Seq@Build$BoxType$ |s_$7_$1| |i0_$1| |v0_$1| |len0_$1|) |i1_$1| |v1_$1| |len1_$1|) |x_$10_$1|)))) :named ax_214))
   (assert (! (forall( (|s_$8_$0| Seq$ref$) (|n_$2_$0| Int) (|x_$11_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$8_$0| |n_$2_$0|) |x_$11_$0|) (exists( (|i_$5_$1| Int))(!(and (and (and (<= 0 |i_$5_$1|) (< |i_$5_$1| |n_$2_$0|)) (< |i_$5_$1| (Seq@Length$ref$ |s_$8_$0|))) (= (Seq@Index$ref$ |s_$8_$0| |i_$5_$1|) |x_$11_$0|))  :pattern ( (Seq@Index$ref$ |s_$8_$0| |i_$5_$1|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$8_$0| |n_$2_$0|) |x_$11_$0|)))) :named ax_215))
   (assert (! (forall( (|s_$8_$1| Seq$BoxType$) (|n_$2_$1| Int) (|x_$11_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$8_$1| |n_$2_$1|) |x_$11_$1|) (exists( (|i_$5_$3| Int))(!(and (and (and (<= 0 |i_$5_$3|) (< |i_$5_$3| |n_$2_$1|)) (< |i_$5_$3| (Seq@Length$BoxType$ |s_$8_$1|))) (= (Seq@Index$BoxType$ |s_$8_$1| |i_$5_$3|) |x_$11_$1|))  :pattern ( (Seq@Index$BoxType$ |s_$8_$1| |i_$5_$3|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$8_$1| |n_$2_$1|) |x_$11_$1|)))) :named ax_216))
   (assert (! (forall( (|s_$9_$0| Seq$ref$) (|n_$3_$0| Int) (|x_$12_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$9_$0| |n_$3_$0|) |x_$12_$0|) (exists( (|i_$6_$1| Int))(!(and (and (and (<= 0 |n_$3_$0|) (<= |n_$3_$0| |i_$6_$1|)) (< |i_$6_$1| (Seq@Length$ref$ |s_$9_$0|))) (= (Seq@Index$ref$ |s_$9_$0| |i_$6_$1|) |x_$12_$0|))  :pattern ( (Seq@Index$ref$ |s_$9_$0| |i_$6_$1|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$9_$0| |n_$3_$0|) |x_$12_$0|)))) :named ax_217))
   (assert (! (forall( (|s_$9_$1| Seq$BoxType$) (|n_$3_$1| Int) (|x_$12_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$9_$1| |n_$3_$1|) |x_$12_$1|) (exists( (|i_$6_$3| Int))(!(and (and (and (<= 0 |n_$3_$1|) (<= |n_$3_$1| |i_$6_$3|)) (< |i_$6_$3| (Seq@Length$BoxType$ |s_$9_$1|))) (= (Seq@Index$BoxType$ |s_$9_$1| |i_$6_$3|) |x_$12_$1|))  :pattern ( (Seq@Index$BoxType$ |s_$9_$1| |i_$6_$3|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$9_$1| |n_$3_$1|) |x_$12_$1|)))) :named ax_218))
   (assert (! (forall( (|s0_$0_$0| Seq$ref$) (|s1_$0_$0| Seq$ref$) (|n_$9| Int))(!(and (=> (< |n_$9| (Seq@Length$ref$ |s0_$0_$0|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|) (Seq@Index$ref$ |s0_$0_$0| |n_$9|))) (=> (<= (Seq@Length$ref$ |s0_$0_$0|) |n_$9|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|) (Seq@Index$ref$ |s1_$0_$0| (- |n_$9| (Seq@Length$ref$ |s0_$0_$0|))))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|)))) :named ax_219))
   (assert (! (forall( (|s0_$0_$1| Seq$BoxType$) (|s1_$0_$1| Seq$BoxType$) (|n_$10| Int))(!(and (=> (< |n_$10| (Seq@Length$BoxType$ |s0_$0_$1|)) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|) (Seq@Index$BoxType$ |s0_$0_$1| |n_$10|))) (=> (<= (Seq@Length$BoxType$ |s0_$0_$1|) |n_$10|) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|) (Seq@Index$BoxType$ |s1_$0_$1| (- |n_$10| (Seq@Length$BoxType$ |s0_$0_$1|))))))  :pattern ( (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|)))) :named ax_220))
   (assert (! (forall( (|s0_$1_$0| Seq$ref$) (|s1_$1_$0| Seq$ref$) (|x_$8_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$0| |s1_$1_$0|) |x_$8_$0|) (or (Seq@Contains$ref$ |s0_$1_$0| |x_$8_$0|) (Seq@Contains$ref$ |s1_$1_$0| |x_$8_$0|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$0| |s1_$1_$0|) |x_$8_$0|)))) :named ax_221))
   (assert (! (forall( (|s0_$1_$1| Seq$BoxType$) (|s1_$1_$1| Seq$BoxType$) (|x_$8_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$1| |s1_$1_$1|) |x_$8_$1|) (or (Seq@Contains$BoxType$ |s0_$1_$1| |x_$8_$1|) (Seq@Contains$BoxType$ |s1_$1_$1| |x_$8_$1|)))  :pattern ( (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$1| |s1_$1_$1|) |x_$8_$1|)))) :named ax_222))
   (assert (! (forall( (|s0_$2_$0| Seq$ref$) (|s1_$2_$0| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$ref$ |s0_$2_$0|) (Seq@Length$ref$ |s1_$2_$0|)) (forall( (|j_$4| Int))(!(=> (and (<= 0 |j_$4|) (< |j_$4| (Seq@Length$ref$ |s0_$2_$0|))) (= (Seq@Index$ref$ |s0_$2_$0| |j_$4|) (Seq@Index$ref$ |s1_$2_$0| |j_$4|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$0| |j_$4|)) :pattern ( (Seq@Index$ref$ |s1_$2_$0| |j_$4|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$0| |s1_$2_$0|)))) :named ax_223))
   (assert (! (forall( (|s0_$2_$1| Seq$BoxType$) (|s1_$2_$1| Seq$BoxType$))(!(= (Seq@Equal$BoxType$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$BoxType$ |s0_$2_$1|) (Seq@Length$BoxType$ |s1_$2_$1|)) (forall( (|j_$6| Int))(!(=> (and (<= 0 |j_$6|) (< |j_$6| (Seq@Length$BoxType$ |s0_$2_$1|))) (= (Seq@Index$BoxType$ |s0_$2_$1| |j_$6|) (Seq@Index$BoxType$ |s1_$2_$1| |j_$6|)))  :pattern ( (Seq@Index$BoxType$ |s0_$2_$1| |j_$6|)) :pattern ( (Seq@Index$BoxType$ |s1_$2_$1| |j_$6|))))))  :pattern ( (Seq@Equal$BoxType$ |s0_$2_$1| |s1_$2_$1|)))) :named ax_224))
   (assert (! (forall( (|s0_$4| Seq$ref$) (|s1_$4| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$4| |s1_$4|)) (+ (Seq@Length$ref$ |s0_$4|) (Seq@Length$ref$ |s1_$4|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$4| |s1_$4|))))) :named ax_225))
   (assert (! (forall( (|s0_$5| Seq$BoxType$) (|s1_$5| Seq$BoxType$))(!(= (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$5| |s1_$5|)) (+ (Seq@Length$BoxType$ |s0_$5|) (Seq@Length$BoxType$ |s1_$5|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$5| |s1_$5|))))) :named ax_226))
   (assert (! (forall( (|t_$0_$0| ref))(!(= (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$0|) 0) |t_$0_$0|)  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$0|) 0)))) :named ax_227))
   (assert (! (forall( (|t_$0_$1| BoxType))(!(= (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$1|) 0) |t_$0_$1|)  :pattern ( (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$1|) 0)))) :named ax_228))
   (assert (! (forall( (|t_$3| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|))))) :named ax_229))
   (assert (! (forall( (|t_$4| BoxType))(!(= (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|)) 1)  :pattern ( (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|))))) :named ax_230))
   (assert (! (forall( (|v_$5| Bool) (|f_$0_$0| Field$Bool$) (|r_$0_$0| ref) (|H_$0_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$5|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$5|))) :named ax_231))
   (assert (! (forall( (|v_$6| Int) (|f_$0_$1| Field$Int$) (|r_$0_$1| ref) (|H_$0_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$6|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$6|))) :named ax_232))
   (assert (! (forall( (|v_$7| ref) (|f_$0_$2| Field$ref$) (|r_$0_$2| ref) (|H_$0_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$0_$2| |r_$0_$2| |f_$0_$2| |v_$7|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$0_$2| |r_$0_$2| |f_$0_$2| |v_$7|))) :named ax_233))
   (assert (! (forall( (|v_$8| BoxType) (|f_$0_$3| Field$BoxType$) (|r_$0_$3| ref) (|H_$0_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$3| |r_$0_$3| |f_$0_$3| |v_$8|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$3| |r_$0_$3| |f_$0_$3| |v_$8|))) :named ax_234))
   (assert (! (forall( (|v_$9| $@Map@@BoxType@To@Bool@@) (|f_$0_$4| Field$$@Map@@BoxType@To@Bool@@$) (|r_$0_$4| ref) (|H_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$0_$4| |r_$0_$4| |f_$0_$4| |v_$9|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$0_$4| |r_$0_$4| |f_$0_$4| |v_$9|))) :named ax_235))
   (assert (! (forall( (|x_$13_$0| Bool))(!(= ($Unbox$Bool$ ($Box$Bool$ |x_$13_$0|)) |x_$13_$0|)  :pattern ( ($Box$Bool$ |x_$13_$0|)))) :named ax_236))
   (assert (! (forall( (|x_$13_$1| TickType))(!(= ($Unbox$TickType$ ($Box$TickType$ |x_$13_$1|)) |x_$13_$1|)  :pattern ( ($Box$TickType$ |x_$13_$1|)))) :named ax_237))
   (assert (! (forall( (|x_$13_$10| DatatypeType))(!(= ($Unbox$DatatypeType$ ($Box$DatatypeType$ |x_$13_$10|)) |x_$13_$10|)  :pattern ( ($Box$DatatypeType$ |x_$13_$10|)))) :named ax_238))
   (assert (! (forall( (|x_$13_$11| ClassName))(!(= ($Unbox$ClassName$ ($Box$ClassName$ |x_$13_$11|)) |x_$13_$11|)  :pattern ( ($Box$ClassName$ |x_$13_$11|)))) :named ax_239))
   (assert (! (forall( (|x_$13_$12| Field$Bool$))(!(= ($Unbox$Field$Bool$$ ($Box$Field$Bool$$ |x_$13_$12|)) |x_$13_$12|)  :pattern ( ($Box$Field$Bool$$ |x_$13_$12|)))) :named ax_240))
   (assert (! (forall( (|x_$13_$13| Field$ref$))(!(= ($Unbox$Field$ref$$ ($Box$Field$ref$$ |x_$13_$13|)) |x_$13_$13|)  :pattern ( ($Box$Field$ref$$ |x_$13_$13|)))) :named ax_241))
   (assert (! (forall( (|x_$13_$14| Field$$@Map@@BoxType@To@Bool@@$))(!(= ($Unbox$Field$$@Map@@BoxType@To@Bool@@$$ ($Box$Field$$@Map@@BoxType@To@Bool@@$$ |x_$13_$14|)) |x_$13_$14|)  :pattern ( ($Box$Field$$@Map@@BoxType@To@Bool@@$$ |x_$13_$14|)))) :named ax_242))
   (assert (! (forall( (|x_$13_$15| Field$Int$))(!(= ($Unbox$Field$Int$$ ($Box$Field$Int$$ |x_$13_$15|)) |x_$13_$15|)  :pattern ( ($Box$Field$Int$$ |x_$13_$15|)))) :named ax_243))
   (assert (! (forall( (|x_$13_$16| $@Map@@$T0@@ref@Field$$T0$@To@Bool@@))(!(= ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$13_$16|)) |x_$13_$16|)  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$13_$16|)))) :named ax_244))
   (assert (! (forall( (|x_$13_$2| Int))(!(= ($Unbox$Int$ ($Box$Int$ |x_$13_$2|)) |x_$13_$2|)  :pattern ( ($Box$Int$ |x_$13_$2|)))) :named ax_245))
   (assert (! (forall( (|x_$13_$3| Seq$ref$))(!(= ($Unbox$Seq$ref$$ ($Box$Seq$ref$$ |x_$13_$3|)) |x_$13_$3|)  :pattern ( ($Box$Seq$ref$$ |x_$13_$3|)))) :named ax_246))
   (assert (! (forall( (|x_$13_$4| ref))(!(= ($Unbox$ref$ ($Box$ref$ |x_$13_$4|)) |x_$13_$4|)  :pattern ( ($Box$ref$ |x_$13_$4|)))) :named ax_247))
   (assert (! (forall( (|x_$13_$5| Seq$BoxType$))(!(= ($Unbox$Seq$BoxType$$ ($Box$Seq$BoxType$$ |x_$13_$5|)) |x_$13_$5|)  :pattern ( ($Box$Seq$BoxType$$ |x_$13_$5|)))) :named ax_248))
   (assert (! (forall( (|x_$13_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$13_$6|)) |x_$13_$6|)  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$13_$6|)))) :named ax_249))
   (assert (! (forall( (|x_$13_$7| BoxType))(!(= ($Unbox$BoxType$ ($Box$BoxType$ |x_$13_$7|)) |x_$13_$7|)  :pattern ( ($Box$BoxType$ |x_$13_$7|)))) :named ax_250))
   (assert (! (forall( (|x_$13_$8| Field$BoxType$))(!(= ($Unbox$Field$BoxType$$ ($Box$Field$BoxType$$ |x_$13_$8|)) |x_$13_$8|)  :pattern ( ($Box$Field$BoxType$$ |x_$13_$8|)))) :named ax_251))
   (assert (! (forall( (|x_$13_$9| $@Map@@BoxType@To@Bool@@))(!(= ($Unbox$$@Map@@BoxType@To@Bool@@$ ($Box$$@Map@@BoxType@To@Bool@@$ |x_$13_$9|)) |x_$13_$9|)  :pattern ( ($Box$$@Map@@BoxType@To@Bool@@$ |x_$13_$9|)))) :named ax_252))
   (assert (! (forall( (|x_$14| Int) (|h_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$8|) (GenericAlloc ($Box$Int$ |x_$14|) |h_$8|))) :named ax_253))
   (assert (! (forall( (|x_$16| Int) (|y_$8| Int))(!(= (mod |x_$16| |y_$8|) (- |x_$16| (* (div |x_$16| |y_$8|) |y_$8|)))  :pattern ( (mod |x_$16| |y_$8|)) :pattern ( (div |x_$16| |y_$8|)))) :named ax_254))
   (assert (! (forall( (|x_$17| Int) (|y_$9| Int))(!(=> (< 0 |y_$9|) (and (<= 0 (mod |x_$17| |y_$9|)) (< (mod |x_$17| |y_$9|) |y_$9|)))  :pattern ( (mod |x_$17| |y_$9|)))) :named ax_255))
   (assert (! (forall( (|x_$18| Int) (|y_$10| Int))(!(=> (< |y_$10| 0) (and (<= 0 (mod |x_$18| |y_$10|)) (< (mod |x_$18| |y_$10|) (- 0 |y_$10|))))  :pattern ( (mod |x_$18| |y_$10|)))) :named ax_256))
   (assert (! (forall( (|x_$7| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$7|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$7|)))) :named ax_257))
   (assert (! (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap this alloc) :named ax_258))
   (assert (! (Node.Balanced $Heap t@6) :named ax_259))
   (assert (! (Node.Balanced@canCall $Heap t@6) :named ax_260))
   (assert (! (Node.BalanceValid $Heap t@6) :named ax_261))
   (assert (! (Node.BalanceValid@canCall $Heap t@6) :named ax_262))
   (assert (! (Node.Valid $Heap t@6) :named ax_263))
   (assert (! (Node.Valid@canCall $Heap t@6) :named ax_264))
   (assert (! (not (= AVLTree.Contents AVLTree.Repr)) :named ax_265))
   (assert (! (not (= AVLTree.Contents Node.Contents)) :named ax_266))
   (assert (! (not (= AVLTree.Contents Node.Repr)) :named ax_267))
   (assert (! (not (= AVLTree.Repr AVLTree.Contents)) :named ax_268))
   (assert (! (not (= AVLTree.Repr Node.Contents)) :named ax_269))
   (assert (! (not (= AVLTree.Repr Node.Repr)) :named ax_270))
   (assert (! (not (= AVLTree.root Node.left)) :named ax_271))
   (assert (! (not (= AVLTree.root Node.right)) :named ax_272))
   (assert (! (not (= class.AVLTree class.Node)) :named ax_273))
   (assert (! (not (= class.Node class.AVLTree)) :named ax_274))
   (assert (! (not (= Node.balance Node.height)) :named ax_275))
   (assert (! (not (= Node.Contents AVLTree.Contents)) :named ax_276))
   (assert (! (not (= Node.Contents AVLTree.Repr)) :named ax_277))
   (assert (! (not (= Node.Contents Node.Repr)) :named ax_278))
   (assert (! (not (= Node.height Node.balance)) :named ax_279))
   (assert (! (not (= Node.left AVLTree.root)) :named ax_280))
   (assert (! (not (= Node.left Node.right)) :named ax_281))
   (assert (! (not (= Node.Repr AVLTree.Contents)) :named ax_282))
   (assert (! (not (= Node.Repr AVLTree.Repr)) :named ax_283))
   (assert (! (not (= Node.Repr Node.Contents)) :named ax_284))
   (assert (! (not (= Node.right AVLTree.root)) :named ax_285))
   (assert (! (not (= Node.right Node.left)) :named ax_286))
   (assert (! (not (= Node.value Node.balance)) :named ax_287))
   (assert (! (not (= Node.value Node.balance)) :named ax_288))
   (assert (! (not (= Node.value Node.height)) :named ax_289))
   (assert (! (not (= Node.value Node.height)) :named ax_290))
   (assert (! (not (= this null)) :named ax_291))
   (assert (! (or (= $rhs@10 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@10 alloc) (= (dtype $rhs@10) class.Node))) :named ax_292))
   (assert (! (or (= $rhs@11 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@11 alloc) (= (dtype $rhs@11) class.Node))) :named ax_293))
   (assert (! (or (= $rhs@12 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@12 alloc) (= (dtype $rhs@12) class.Node))) :named ax_294))
   (assert (! (or (= $rhs@2 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@2 alloc) (= (dtype $rhs@2) class.Node))) :named ax_295))
   (assert (! (or (= $rhs@20 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@20 alloc) (= (dtype $rhs@20) class.Node))) :named ax_296))
   (assert (! (or (= $rhs@21 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@21 alloc) (= (dtype $rhs@21) class.Node))) :named ax_297))
   (assert (! (or (= r@8 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap r@8 alloc) (= (dtype r@8) class.Node))) :named ax_298))
   (assert (! (or (= t@6 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap t@6 alloc) (= (dtype t@6) class.Node))) :named ax_299))

;Program
(assert (! (and true
(or anon35_Else anon35_Then)
) :named ax_true))
(assert (! (=> anon35_Else (and true 
   (and true
      (= $@condition (= t@6 null))
      (not $@condition)
      (not (= t@6 null))
   )
(or anon36_Else anon36_Then)
)) :named ax_anon35_Else))
(assert (! (=> anon35_Then (and true 
   (and true
      $@condition
      ($IsGoodHeap $Heap@0)
      (= $@condition (= t@6 null))
      (= $Heap@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $nw@0 alloc true))
      (= (dtype $nw@0) class.Node)
      (= t@6 null)
      (not (= $nw@0 null))
      (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $nw@0 alloc))
   )
(or anon35_Then@1 anon35_Then_assertion)
)) :named ax_anon35_Then))
(assert (! (=> anon36_Else (and true 
   (and true
      (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value) key@7)
      (not $@condition_$0)
      (not (= t@6 null))
   )
(or anon42_Else anon42_Then)
)) :named ax_anon36_Else))
(assert (! (=> anon36_Then (and true 
   (and true
      $@condition_$0
      (< key@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value))
      (= n@62@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
      (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
      (not (= t@6 null))
   )
(or anon36_Then@1_assertion anon36_Then@2)
)) :named ax_anon36_Then))
(assert (! (=> anon35_Then@1 (and true 
   (and true
      ($HeapSucc $Heap@0 $Heap@1)
      ($IsGoodHeap $Heap@1)
      (= $Heap@22 $Heap@1)
      (= (= true $@bf_84) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left))))
      (= (= true $@bf_85) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right))))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)
      (= deltaH@9@2 1)
      (= r@8@0 $nw@0)
      (=> (Node.Balanced@canCall $Heap@1 $nw@0) (or (Node.Balanced $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (Node.Balanced $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left)))))
      (=> (Node.Balanced@canCall $Heap@1 $nw@0) (or (Node.Balanced $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (Node.Balanced $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right)))))
      (=> (Node.Balanced@canCall $Heap@1 $nw@0) (or (Node.Balanced $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) 1)))))
      (=> (Node.BalanceValid@canCall $Heap@1 $nw@0) (or (Node.BalanceValid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) (- (Node.Height $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right)) (Node.Height $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left)))))))
      (=> (Node.BalanceValid@canCall $Heap@1 $nw@0) (or (Node.BalanceValid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (Node.BalanceValid $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left))))))
      (=> (Node.BalanceValid@canCall $Heap@1 $nw@0) (or (Node.BalanceValid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (Node.BalanceValid $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.height) (+ (Math.max $Heap@1 (Node.Height $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left)) (Node.Height $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right))) 1)))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (forall( (|i#16_$7| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$7|)) (< |i#16_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.value)))))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left)))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Repr) ($Box$ref$ $nw@0)))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (forall( (|i#17_$6| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$6|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.value) |i#17_$6|))))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right)))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Repr) ($Box$ref$ $nw@0)))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) ($Box$ref$ $nw@0)))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (Node.Valid $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left)))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (Node.Valid $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right)))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) ($Box$ref$ null))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
      (=> (Node.Valid@canCall $Heap@1 $nw@0) (or (Node.Valid $Heap@1 $nw@0) (=> (not (= $nw@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ $nw@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
      (=> (not (= $nw@0 null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) (- (Node.Height $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right)) (Node.Height $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (Node.BalanceValid $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (Node.BalanceValid $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right)))))
      (=> (not (= $nw@0 null)) (and (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) ($Box$ref$ $nw@0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Repr) ($Box$ref$ $nw@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Repr) ($Box$ref$ $nw@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr))))) (Node.Valid $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left))) (Node.Valid $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ $nw@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (forall( (|i#16_$6| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$6|)) (< |i#16_$6| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (forall( (|i#17_$5| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$5|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.value) |i#17_$5|)))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.height) (+ (Math.max $Heap@1 (Node.Height $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left)) (Node.Height $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right))) 1))))
      (=> (not (= $nw@0 null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) 1)) (Node.Balanced $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right))) (Node.Balanced $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left))))
      (forall( (|$o_$41_$0| ref) (|$f_$35_$0| Field$Bool$))(=> (and (and (not (= |$o_$41_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$0| alloc)) (= |$o_$41_$0| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$41_$0| |$f_$35_$0|)))
      (forall( (|$o_$41_$1| ref) (|$f_$35_$1| Field$Int$))(=> (and (and (not (= |$o_$41_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$1| alloc)) (= |$o_$41_$1| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$41_$1| |$f_$35_$1|)))
      (forall( (|$o_$41_$2| ref) (|$f_$35_$2| Field$ref$))(=> (and (and (not (= |$o_$41_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$2| alloc)) (= |$o_$41_$2| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$41_$2| |$f_$35_$2|)))
      (forall( (|$o_$41_$3| ref) (|$f_$35_$3| Field$BoxType$))(=> (and (and (not (= |$o_$41_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$3| alloc)) (= |$o_$41_$3| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$41_$3| |$f_$35_$3|)))
      (forall( (|$o_$41_$4| ref) (|$f_$35_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$41_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$4| alloc)) (= |$o_$41_$4| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$41_$4| |$f_$35_$4|)))
      (forall( (|$o_$42_$0| ref) (|$f_$36_$0| Field$Bool$))(!(=> (and (not (= |$o_$42_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$0| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@1 |$o_$42_$0| |$f_$36_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$0| |$f_$36_$0|)) (= |$o_$42_$0| $nw@0)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@1 |$o_$42_$0| |$f_$36_$0|))))
      (forall( (|$o_$42_$1| ref) (|$f_$36_$1| Field$Int$))(!(=> (and (not (= |$o_$42_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$1| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 |$o_$42_$1| |$f_$36_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@0 |$o_$42_$1| |$f_$36_$1|)) (= |$o_$42_$1| $nw@0)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 |$o_$42_$1| |$f_$36_$1|))))
      (forall( (|$o_$42_$2| ref) (|$f_$36_$2| Field$ref$))(!(=> (and (not (= |$o_$42_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$2| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 |$o_$42_$2| |$f_$36_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@0 |$o_$42_$2| |$f_$36_$2|)) (= |$o_$42_$2| $nw@0)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 |$o_$42_$2| |$f_$36_$2|))))
      (forall( (|$o_$42_$3| ref) (|$f_$36_$3| Field$BoxType$))(!(=> (and (not (= |$o_$42_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$3| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@1 |$o_$42_$3| |$f_$36_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$42_$3| |$f_$36_$3|)) (= |$o_$42_$3| $nw@0)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@1 |$o_$42_$3| |$f_$36_$3|))))
      (forall( (|$o_$42_$4| ref) (|$f_$36_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (not (= |$o_$42_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$4| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 |$o_$42_$4| |$f_$36_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@0 |$o_$42_$4| |$f_$36_$4|)) (= |$o_$42_$4| $nw@0)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 |$o_$42_$4| |$f_$36_$4|))))
      (Node.Balanced $Heap@1 $nw@0)
      (Node.Balanced@canCall $Heap@1 $nw@0)
      (Node.BalanceValid $Heap@1 $nw@0)
      (Node.BalanceValid@canCall $Heap@1 $nw@0)
      (Node.Valid $Heap@1 $nw@0)
      (Node.Valid@canCall $Heap@1 $nw@0)
      (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7)))
   )
GeneratedUnifiedExit
)) :named ax_anon35_Then@1))
(assert (! (=> anon35_Then_assertion (not (and true
   (and true
      (forall( (|$o_$41_$0| ref) (|$f_$35_$0| Field$Bool$))(=> (and (and (not (= |$o_$41_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$0| alloc)) (= |$o_$41_$0| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$41_$0| |$f_$35_$0|)))
      (forall( (|$o_$41_$1| ref) (|$f_$35_$1| Field$Int$))(=> (and (and (not (= |$o_$41_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$1| alloc)) (= |$o_$41_$1| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$41_$1| |$f_$35_$1|)))
      (forall( (|$o_$41_$2| ref) (|$f_$35_$2| Field$ref$))(=> (and (and (not (= |$o_$41_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$2| alloc)) (= |$o_$41_$2| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$41_$2| |$f_$35_$2|)))
      (forall( (|$o_$41_$3| ref) (|$f_$35_$3| Field$BoxType$))(=> (and (and (not (= |$o_$41_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$3| alloc)) (= |$o_$41_$3| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$41_$3| |$f_$35_$3|)))
      (forall( (|$o_$41_$4| ref) (|$f_$35_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$41_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$4| alloc)) (= |$o_$41_$4| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$41_$4| |$f_$35_$4|)))
   )
))) :named ax_anon35_Then_assertion))
(assert (! (=> anon42_Else (and true 
   (and true
      (<= key@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value))
      (= $Heap@22 $Heap)
      (= deltaH@9@2 0)
      (= r@8@0 t@6)
      (not $@condition_$2)
   )
$join_$@condition_$2
)) :named ax_anon42_Else))
(assert (! (=> anon42_Then (and true 
   (and true
      $@condition_$2
      (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value) key@7)
      (= n@78@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
      (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
      (not (= t@6 null))
   )
(or anon42_Then@1_assertion anon42_Then@2)
)) :named ax_anon42_Then))
(assert (! (=> anon36_Then@1_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))
   )
))) :named ax_anon36_Then@1_assertion))
(assert (! (=> anon36_Then@2 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))
   )
(or anon36_Then@2_assertion anon36_Then@3)
)) :named ax_anon36_Then@2))
(assert (! (=> anon42_Then@1_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))))
   )
))) :named ax_anon42_Then@1_assertion))
(assert (! (=> anon42_Then@2 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))))
   )
(or anon42_Then@2_assertion anon42_Then@3)
)) :named ax_anon42_Then@2))
(assert (! (=> anon36_Then@2_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_anon36_Then@2_assertion))
(assert (! (=> anon36_Then@3 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ null))))))
   )
(or anon36_Then@3_assertion anon36_Then@4)
)) :named ax_anon36_Then@3))
(assert (! (=> anon42_Then@2_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_anon42_Then@2_assertion))
(assert (! (=> anon42_Then@3 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ null))))))
   )
(or anon42_Then@3_assertion anon42_Then@4)
)) :named ax_anon42_Then@3))
(assert (! (=> anon36_Then@3_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left)))))))
   )
))) :named ax_anon36_Then@3_assertion))
(assert (! (=> anon36_Then@4 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left)))))))
   )
(or anon36_Then@4_assertion anon36_Then@5)
)) :named ax_anon36_Then@4))
(assert (! (=> anon42_Then@3_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left)))))))
   )
))) :named ax_anon42_Then@3_assertion))
(assert (! (=> anon42_Then@4 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left)))))))
   )
(or anon42_Then@4_assertion anon42_Then@5)
)) :named ax_anon42_Then@4))
(assert (! (=> anon36_Then@4_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))))
   )
))) :named ax_anon36_Then@4_assertion))
(assert (! (=> anon36_Then@5 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))))
   )
(or anon36_Then@5_assertion anon36_Then@6)
)) :named ax_anon36_Then@5))
(assert (! (=> anon42_Then@4_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))))))
   )
))) :named ax_anon42_Then@4_assertion))
(assert (! (=> anon42_Then@5 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))))))
   )
(or anon42_Then@5_assertion anon42_Then@6)
)) :named ax_anon42_Then@5))
(assert (! (=> anon36_Then@5_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr))))))
   )
))) :named ax_anon36_Then@5_assertion))
(assert (! (=> anon36_Then@6 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr))))))
   )
(or anon36_Then@6_assertion anon36_Then@7)
)) :named ax_anon36_Then@6))
(assert (! (=> anon42_Then@5_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr))))))
   )
))) :named ax_anon42_Then@5_assertion))
(assert (! (=> anon42_Then@6 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr))))))
   )
(or anon42_Then@6_assertion anon42_Then@7)
)) :named ax_anon42_Then@6))
(assert (! (=> anon36_Then@6_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right)))))))
   )
))) :named ax_anon36_Then@6_assertion))
(assert (! (=> anon36_Then@7 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right)))))))
   )
(or anon36_Then@7_assertion anon36_Then@8)
)) :named ax_anon36_Then@7))
(assert (! (=> anon42_Then@6_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right)))))))
   )
))) :named ax_anon42_Then@6_assertion))
(assert (! (=> anon42_Then@7 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right)))))))
   )
(or anon42_Then@7_assertion anon42_Then@8)
)) :named ax_anon42_Then@7))
(assert (! (=> anon36_Then@7_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))))
   )
))) :named ax_anon36_Then@7_assertion))
(assert (! (=> anon36_Then@8 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))))
   )
(or anon36_Then@8_assertion anon36_Then@9)
)) :named ax_anon36_Then@8))
(assert (! (=> anon42_Then@7_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))))))
   )
))) :named ax_anon42_Then@7_assertion))
(assert (! (=> anon42_Then@8 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))))))
   )
(or anon42_Then@8_assertion anon42_Then@9)
)) :named ax_anon42_Then@8))
(assert (! (=> anon36_Then@8_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr))))))
   )
))) :named ax_anon36_Then@8_assertion))
(assert (! (=> anon36_Then@9 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr))))))
   )
(or anon36_Then@10 anon36_Then@9_assertion)
)) :named ax_anon36_Then@9))
(assert (! (=> anon42_Then@8_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr))))))
   )
))) :named ax_anon42_Then@8_assertion))
(assert (! (=> anon42_Then@9 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr))))))
   )
(or anon42_Then@10 anon42_Then@9_assertion)
)) :named ax_anon42_Then@9))
(assert (! (=> anon36_Then@10 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left)))))
   )
(or anon36_Then@10_assertion anon36_Then@11)
)) :named ax_anon36_Then@10))
(assert (! (=> anon36_Then@9_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left)))))
   )
))) :named ax_anon36_Then@9_assertion))
(assert (! (=> anon42_Then@10 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left)))))
   )
(or anon42_Then@10_assertion anon42_Then@11)
)) :named ax_anon42_Then@10))
(assert (! (=> anon42_Then@9_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left)))))
   )
))) :named ax_anon42_Then@9_assertion))
(assert (! (=> anon36_Then@10_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right)))))
   )
))) :named ax_anon36_Then@10_assertion))
(assert (! (=> anon36_Then@11 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right)))))
   )
(or anon36_Then@11_assertion anon36_Then@12)
)) :named ax_anon36_Then@11))
(assert (! (=> anon42_Then@10_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right)))))
   )
))) :named ax_anon42_Then@10_assertion))
(assert (! (=> anon42_Then@11 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right)))))
   )
(or anon42_Then@11_assertion anon42_Then@12)
)) :named ax_anon42_Then@11))
(assert (! (=> anon36_Then@11_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr))))))
   )
))) :named ax_anon36_Then@11_assertion))
(assert (! (=> anon36_Then@12 (and true 
   (and true
      (= (= true $@bf) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left))))
      (= (= true $@bf_1) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right))))
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr))))))
   )
(or anon36_Then@12_assertion anon36_Then@13)
)) :named ax_anon36_Then@12))
(assert (! (=> anon42_Then@11_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr))))))
   )
))) :named ax_anon42_Then@11_assertion))
(assert (! (=> anon42_Then@12 (and true 
   (and true
      (= (= true $@bf_6) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left))))
      (= (= true $@bf_7) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right))))
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr))))))
   )
(or anon42_Then@12_assertion anon42_Then@13)
)) :named ax_anon42_Then@12))
(assert (! (=> anon36_Then@12_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_anon36_Then@12_assertion))
(assert (! (=> anon36_Then@13 (and true 
   (and true
      (= (= true $@bf) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left))))
      (= (= true $@bf_1) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right))))
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or anon36_Then@13_assertion anon36_Then@14)
)) :named ax_anon36_Then@13))
(assert (! (=> anon42_Then@12_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_anon42_Then@12_assertion))
(assert (! (=> anon42_Then@13 (and true 
   (and true
      (= (= true $@bf_6) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left))))
      (= (= true $@bf_7) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right))))
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or anon42_Then@13_assertion anon42_Then@14)
)) :named ax_anon42_Then@13))
(assert (! (=> anon36_Then@13_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_anon36_Then@13_assertion))
(assert (! (=> anon36_Then@14 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or anon36_Then@14_assertion anon36_Then@15)
)) :named ax_anon36_Then@14))
(assert (! (=> anon42_Then@13_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_anon42_Then@13_assertion))
(assert (! (=> anon42_Then@14 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or anon42_Then@14_assertion anon42_Then@15)
)) :named ax_anon42_Then@14))
(assert (! (=> anon36_Then@14_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (forall( (|i#16_$8| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Contents) ($Box$Int$ |i#16_$8|)) (< |i#16_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value)))))))))
   )
))) :named ax_anon36_Then@14_assertion))
(assert (! (=> anon36_Then@15 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (forall( (|i#16_$8| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Contents) ($Box$Int$ |i#16_$8|)) (< |i#16_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value)))))))))
   )
(or anon36_Then@15_assertion anon36_Then@16)
)) :named ax_anon36_Then@15))
(assert (! (=> anon42_Then@14_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (forall( (|i#16_$12| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Contents) ($Box$Int$ |i#16_$12|)) (< |i#16_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value)))))))))
   )
))) :named ax_anon42_Then@14_assertion))
(assert (! (=> anon42_Then@15 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (forall( (|i#16_$12| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Contents) ($Box$Int$ |i#16_$12|)) (< |i#16_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value)))))))))
   )
(or anon42_Then@15_assertion anon42_Then@16)
)) :named ax_anon42_Then@15))
(assert (! (=> anon36_Then@15_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (forall( (|i#17_$7| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Contents) ($Box$Int$ |i#17_$7|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value) |i#17_$7|))))))))
   )
))) :named ax_anon36_Then@15_assertion))
(assert (! (=> anon36_Then@16 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (forall( (|i#17_$7| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Contents) ($Box$Int$ |i#17_$7|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value) |i#17_$7|))))))))
   )
(or anon36_Then@16_assertion anon36_Then@17)
)) :named ax_anon36_Then@16))
(assert (! (=> anon42_Then@15_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (forall( (|i#17_$11| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Contents) ($Box$Int$ |i#17_$11|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value) |i#17_$11|))))))))
   )
))) :named ax_anon42_Then@15_assertion))
(assert (! (=> anon42_Then@16 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (forall( (|i#17_$11| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Contents) ($Box$Int$ |i#17_$11|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value) |i#17_$11|))))))))
   )
(or anon42_Then@16_assertion anon42_Then@17)
)) :named ax_anon42_Then@16))
(assert (! (=> anon36_Then@16_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right))) 1)))))
   )
))) :named ax_anon36_Then@16_assertion))
(assert (! (=> anon36_Then@17 (and true 
   (and true
      (= n@63@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
      (= n@64@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right))) 1)))))
      (Node.Height@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
      (Node.Height@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
      (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
      (not (= t@6 null))
   )
(or anon36_Then@20_assertion anon36_Then@21)
)) :named ax_anon36_Then@17))
(assert (! (=> anon42_Then@16_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right))) 1)))))
   )
))) :named ax_anon42_Then@16_assertion))
(assert (! (=> anon42_Then@17 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right))) 1)))))
      (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
      (not (= t@6 null))
   )
(or anon42_Then@18_assertion anon42_Then@19)
)) :named ax_anon42_Then@17))
(assert (! (=> anon36_Then@20_assertion (not (and true
   (and true
      (<= 0 (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))
   )
))) :named ax_anon36_Then@20_assertion))
(assert (! (=> anon36_Then@21 (and true 
   (and true
      (<= 0 (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))
      (= a@65@0 (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))
   )
(or anon36_Then@21_assertion anon36_Then@22)
)) :named ax_anon36_Then@21))
(assert (! (=> anon42_Then@18_assertion (not (and true
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 t@6 Node.right)
   )
))) :named ax_anon42_Then@18_assertion))
(assert (! (=> anon42_Then@19 (and true 
   (and true
      (= t@79@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 t@6 Node.right)
      (not (= t@6 null))
   )
(or anon42_Then@20_assertion anon42_Then@21)
)) :named ax_anon42_Then@19))
(assert (! (=> anon36_Then@21_assertion (not (and true
   (and true
      (<= 0 (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)))
   )
))) :named ax_anon36_Then@21_assertion))
(assert (! (=> anon36_Then@22 (and true 
   (and true
      (<= 0 (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)))
      (= b@66@0 (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)))
      (Math.max@canCall $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)))
      (Node.Height@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
      (Node.Height@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
   )
(or anon36_Then@22_assertion anon36_Then@23)
)) :named ax_anon36_Then@22))
(assert (! (=> anon42_Then@20_assertion (not (and true
   (and true
      (forall( (|$o_$47_$0| ref) (|$f_$39_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$47_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$0| alloc)) (not (= t@79@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$47_$0|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$47_$0| |$f_$39_$0|)))
      (forall( (|$o_$47_$1| ref) (|$f_$39_$1| Field$Int$))(=> (and (and (and (not (= |$o_$47_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$1| alloc)) (not (= t@79@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$47_$1|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$47_$1| |$f_$39_$1|)))
      (forall( (|$o_$47_$2| ref) (|$f_$39_$2| Field$ref$))(=> (and (and (and (not (= |$o_$47_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$2| alloc)) (not (= t@79@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$47_$2|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$47_$2| |$f_$39_$2|)))
      (forall( (|$o_$47_$3| ref) (|$f_$39_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$47_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$3| alloc)) (not (= t@79@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$47_$3|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$47_$3| |$f_$39_$3|)))
      (forall( (|$o_$47_$4| ref) (|$f_$39_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$47_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$4| alloc)) (not (= t@79@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$47_$4|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$47_$4| |$f_$39_$4|)))
   )
))) :named ax_anon42_Then@20_assertion))
(assert (! (=> anon42_Then@21 (and true 
   (and true
      (= (= true $@bf_3) (not (= t@6 null)))
      (= (= true $@bf_8) (not (= t@79@0 null)))
      (forall( (|$o_$47_$0| ref) (|$f_$39_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$47_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$0| alloc)) (not (= t@79@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$47_$0|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$47_$0| |$f_$39_$0|)))
      (forall( (|$o_$47_$1| ref) (|$f_$39_$1| Field$Int$))(=> (and (and (and (not (= |$o_$47_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$1| alloc)) (not (= t@79@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$47_$1|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$47_$1| |$f_$39_$1|)))
      (forall( (|$o_$47_$2| ref) (|$f_$39_$2| Field$ref$))(=> (and (and (and (not (= |$o_$47_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$2| alloc)) (not (= t@79@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$47_$2|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$47_$2| |$f_$39_$2|)))
      (forall( (|$o_$47_$3| ref) (|$f_$39_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$47_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$3| alloc)) (not (= t@79@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$47_$3|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$47_$3| |$f_$39_$3|)))
      (forall( (|$o_$47_$4| ref) (|$f_$39_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$47_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$4| alloc)) (not (= t@79@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$47_$4|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$47_$4| |$f_$39_$4|)))
   )
(or anon42_Then@21_assertion anon42_Then@22)
)) :named ax_anon42_Then@21))
(assert (! (=> anon36_Then@22_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.height) (+ (Math.max@2 $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) 1))
   )
))) :named ax_anon36_Then@22_assertion))
(assert (! (=> anon36_Then@23 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) 1))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.height) (+ (Math.max@2 $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) 1))
      (not (= t@6 null))
   )
(or anon36_Then@24_assertion anon36_Then@25)
)) :named ax_anon36_Then@23))
(assert (! (=> anon42_Then@21_assertion (not (and true
   (and true
      (not (Set@Subset$BoxType$ (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@79@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) Set@Empty$BoxType$)))
      (Set@Subset$BoxType$ (ite (not (= t@79@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$))
   )
))) :named ax_anon42_Then@21_assertion))
(assert (! (=> anon42_Then@22 (and true 
   (and true
      (not (Set@Subset$BoxType$ (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@79@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) Set@Empty$BoxType$)))
      (or (= call5formal@r@8 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call5formal@r@8 alloc) (= (dtype call5formal@r@8) class.Node)))
      (Set@Subset$BoxType$ (ite (not (= t@79@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$))
   )
(or anon42_Then@22_assertion anon42_Then@23)
)) :named ax_anon42_Then@22))
(assert (! (=> anon36_Then@24_assertion (not (and true
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 t@6 Node.left)
   )
))) :named ax_anon36_Then@24_assertion))
(assert (! (=> anon36_Then@25 (and true 
   (and true
      (= t@67@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 t@6 Node.left)
      (not (= t@6 null))
   )
(or anon36_Then@26_assertion anon36_Then@27)
)) :named ax_anon36_Then@25))
(assert (! (=> anon42_Then@22_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ t@79@0)))))
   )
))) :named ax_anon42_Then@22_assertion))
(assert (! (=> anon42_Then@23 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ t@79@0)))))
   )
(or anon42_Then@23_assertion anon42_Then@24)
)) :named ax_anon42_Then@23))
(assert (! (=> anon36_Then@26_assertion (not (and true
   (and true
      (forall( (|$o_$43_$0| ref) (|$f_$37_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$43_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$0| alloc)) (not (= t@67@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$43_$0|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$43_$0| |$f_$37_$0|)))
      (forall( (|$o_$43_$1| ref) (|$f_$37_$1| Field$Int$))(=> (and (and (and (not (= |$o_$43_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$1| alloc)) (not (= t@67@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$43_$1|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$43_$1| |$f_$37_$1|)))
      (forall( (|$o_$43_$2| ref) (|$f_$37_$2| Field$ref$))(=> (and (and (and (not (= |$o_$43_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$2| alloc)) (not (= t@67@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$43_$2|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$43_$2| |$f_$37_$2|)))
      (forall( (|$o_$43_$3| ref) (|$f_$37_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$43_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$3| alloc)) (not (= t@67@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$43_$3|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$43_$3| |$f_$37_$3|)))
      (forall( (|$o_$43_$4| ref) (|$f_$37_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$43_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$4| alloc)) (not (= t@67@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$43_$4|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$43_$4| |$f_$37_$4|)))
   )
))) :named ax_anon36_Then@26_assertion))
(assert (! (=> anon36_Then@27 (and true 
   (and true
      (= (= true $@bf_2) (not (= t@67@0 null)))
      (= (= true $@bf_3) (not (= t@6 null)))
      (forall( (|$o_$43_$0| ref) (|$f_$37_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$43_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$0| alloc)) (not (= t@67@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$43_$0|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$43_$0| |$f_$37_$0|)))
      (forall( (|$o_$43_$1| ref) (|$f_$37_$1| Field$Int$))(=> (and (and (and (not (= |$o_$43_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$1| alloc)) (not (= t@67@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$43_$1|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$43_$1| |$f_$37_$1|)))
      (forall( (|$o_$43_$2| ref) (|$f_$37_$2| Field$ref$))(=> (and (and (and (not (= |$o_$43_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$2| alloc)) (not (= t@67@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$43_$2|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$43_$2| |$f_$37_$2|)))
      (forall( (|$o_$43_$3| ref) (|$f_$37_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$43_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$3| alloc)) (not (= t@67@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$43_$3|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$43_$3| |$f_$37_$3|)))
      (forall( (|$o_$43_$4| ref) (|$f_$37_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$43_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$4| alloc)) (not (= t@67@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$43_$4|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$43_$4| |$f_$37_$4|)))
   )
(or anon36_Then@27_assertion anon36_Then@28)
)) :named ax_anon36_Then@27))
(assert (! (=> anon42_Then@23_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_anon42_Then@23_assertion))
(assert (! (=> anon42_Then@24 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ null))))))
   )
(or anon42_Then@24_assertion anon42_Then@25)
)) :named ax_anon42_Then@24))
(assert (! (=> anon36_Then@27_assertion (not (and true
   (and true
      (not (Set@Subset$BoxType$ (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@67@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) Set@Empty$BoxType$)))
      (Set@Subset$BoxType$ (ite (not (= t@67@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$))
   )
))) :named ax_anon36_Then@27_assertion))
(assert (! (=> anon36_Then@28 (and true 
   (and true
      (not (Set@Subset$BoxType$ (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@67@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) Set@Empty$BoxType$)))
      (or (= call5formal@r@8_$1 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call5formal@r@8_$1 alloc) (= (dtype call5formal@r@8_$1) class.Node)))
      (Set@Subset$BoxType$ (ite (not (= t@67@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$))
   )
(or anon36_Then@28_assertion anon36_Then@29)
)) :named ax_anon36_Then@28))
(assert (! (=> anon42_Then@24_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left)))))))
   )
))) :named ax_anon42_Then@24_assertion))
(assert (! (=> anon42_Then@25 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left)))))))
   )
(or anon42_Then@25_assertion anon42_Then@26)
)) :named ax_anon42_Then@25))
(assert (! (=> anon36_Then@28_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ t@67@0)))))
   )
))) :named ax_anon36_Then@28_assertion))
(assert (! (=> anon36_Then@29 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ t@67@0)))))
   )
(or anon36_Then@29_assertion anon36_Then@30)
)) :named ax_anon36_Then@29))
(assert (! (=> anon42_Then@25_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Repr) ($Box$ref$ t@79@0)))))))
   )
))) :named ax_anon42_Then@25_assertion))
(assert (! (=> anon42_Then@26 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Repr) ($Box$ref$ t@79@0)))))))
   )
(or anon42_Then@26_assertion anon42_Then@27)
)) :named ax_anon42_Then@26))
(assert (! (=> anon36_Then@29_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_anon36_Then@29_assertion))
(assert (! (=> anon36_Then@30 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ null))))))
   )
(or anon36_Then@30_assertion anon36_Then@31)
)) :named ax_anon36_Then@30))
(assert (! (=> anon42_Then@26_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr))))))
   )
))) :named ax_anon42_Then@26_assertion))
(assert (! (=> anon42_Then@27 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr))))))
   )
(or anon42_Then@27_assertion anon42_Then@28)
)) :named ax_anon42_Then@27))
(assert (! (=> anon36_Then@30_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left)))))))
   )
))) :named ax_anon36_Then@30_assertion))
(assert (! (=> anon36_Then@31 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left)))))))
   )
(or anon36_Then@31_assertion anon36_Then@32)
)) :named ax_anon36_Then@31))
(assert (! (=> anon42_Then@27_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right)))))))
   )
))) :named ax_anon42_Then@27_assertion))
(assert (! (=> anon42_Then@28 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right)))))))
   )
(or anon42_Then@28_assertion anon42_Then@29)
)) :named ax_anon42_Then@28))
(assert (! (=> anon36_Then@31_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Repr) ($Box$ref$ t@67@0)))))))
   )
))) :named ax_anon36_Then@31_assertion))
(assert (! (=> anon36_Then@32 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Repr) ($Box$ref$ t@67@0)))))))
   )
(or anon36_Then@32_assertion anon36_Then@33)
)) :named ax_anon36_Then@32))
(assert (! (=> anon42_Then@28_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Repr) ($Box$ref$ t@79@0)))))))
   )
))) :named ax_anon42_Then@28_assertion))
(assert (! (=> anon42_Then@29 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Repr) ($Box$ref$ t@79@0)))))))
   )
(or anon42_Then@29_assertion anon42_Then@30)
)) :named ax_anon42_Then@29))
(assert (! (=> anon36_Then@32_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr))))))
   )
))) :named ax_anon36_Then@32_assertion))
(assert (! (=> anon36_Then@33 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr))))))
   )
(or anon36_Then@33_assertion anon36_Then@34)
)) :named ax_anon36_Then@33))
(assert (! (=> anon42_Then@29_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr))))))
   )
))) :named ax_anon42_Then@29_assertion))
(assert (! (=> anon42_Then@30 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr))))))
   )
(or anon42_Then@30_assertion anon42_Then@31)
)) :named ax_anon42_Then@30))
(assert (! (=> anon36_Then@33_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right)))))))
   )
))) :named ax_anon36_Then@33_assertion))
(assert (! (=> anon36_Then@34 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right)))))))
   )
(or anon36_Then@34_assertion anon36_Then@35)
)) :named ax_anon36_Then@34))
(assert (! (=> anon42_Then@30_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left)))))
   )
))) :named ax_anon42_Then@30_assertion))
(assert (! (=> anon42_Then@31 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left)))))
   )
(or anon42_Then@31_assertion anon42_Then@32)
)) :named ax_anon42_Then@31))
(assert (! (=> anon36_Then@34_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Repr) ($Box$ref$ t@67@0)))))))
   )
))) :named ax_anon36_Then@34_assertion))
(assert (! (=> anon36_Then@35 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Repr) ($Box$ref$ t@67@0)))))))
   )
(or anon36_Then@35_assertion anon36_Then@36)
)) :named ax_anon36_Then@35))
(assert (! (=> anon42_Then@31_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right)))))
   )
))) :named ax_anon42_Then@31_assertion))
(assert (! (=> anon42_Then@32 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right)))))
   )
(or anon42_Then@32_assertion anon42_Then@33)
)) :named ax_anon42_Then@32))
(assert (! (=> anon36_Then@35_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr))))))
   )
))) :named ax_anon36_Then@35_assertion))
(assert (! (=> anon36_Then@36 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr))))))
   )
(or anon36_Then@36_assertion anon36_Then@37)
)) :named ax_anon36_Then@36))
(assert (! (=> anon42_Then@32_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Repr))))))
   )
))) :named ax_anon42_Then@32_assertion))
(assert (! (=> anon42_Then@33 (and true 
   (and true
      (= (= true $@bf_10) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right))))
      (= (= true $@bf_9) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left))))
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Repr))))))
   )
(or anon42_Then@33_assertion anon42_Then@34)
)) :named ax_anon42_Then@33))
(assert (! (=> anon36_Then@36_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left)))))
   )
))) :named ax_anon36_Then@36_assertion))
(assert (! (=> anon36_Then@37 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left)))))
   )
(or anon36_Then@37_assertion anon36_Then@38)
)) :named ax_anon36_Then@37))
(assert (! (=> anon42_Then@33_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@79@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_anon42_Then@33_assertion))
(assert (! (=> anon42_Then@34 (and true 
   (and true
      (= (= true $@bf_10) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right))))
      (= (= true $@bf_9) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left))))
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@79@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or anon42_Then@34_assertion anon42_Then@35)
)) :named ax_anon42_Then@34))
(assert (! (=> anon36_Then@37_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right)))))
   )
))) :named ax_anon36_Then@37_assertion))
(assert (! (=> anon36_Then@38 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right)))))
   )
(or anon36_Then@38_assertion anon36_Then@39)
)) :named ax_anon36_Then@38))
(assert (! (=> anon42_Then@34_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_anon42_Then@34_assertion))
(assert (! (=> anon42_Then@35 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or anon42_Then@35_assertion anon42_Then@36)
)) :named ax_anon42_Then@35))
(assert (! (=> anon36_Then@38_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Repr))))))
   )
))) :named ax_anon36_Then@38_assertion))
(assert (! (=> anon36_Then@39 (and true 
   (and true
      (= (= true $@bf_4) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left))))
      (= (= true $@bf_5) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right))))
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Repr))))))
   )
(or anon36_Then@39_assertion anon36_Then@40)
)) :named ax_anon36_Then@39))
(assert (! (=> anon42_Then@35_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (forall( (|i#16_$13| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$13|)) (< |i#16_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.value)))))))))
   )
))) :named ax_anon42_Then@35_assertion))
(assert (! (=> anon42_Then@36 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (forall( (|i#16_$13| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$13|)) (< |i#16_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.value)))))))))
   )
(or anon42_Then@36_assertion anon42_Then@37)
)) :named ax_anon42_Then@36))
(assert (! (=> anon36_Then@39_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@67@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_anon36_Then@39_assertion))
(assert (! (=> anon36_Then@40 (and true 
   (and true
      (= (= true $@bf_4) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left))))
      (= (= true $@bf_5) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right))))
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@67@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or anon36_Then@40_assertion anon36_Then@41)
)) :named ax_anon36_Then@40))
(assert (! (=> anon42_Then@36_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (forall( (|i#17_$12| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$12|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.value) |i#17_$12|))))))))
   )
))) :named ax_anon42_Then@36_assertion))
(assert (! (=> anon42_Then@37 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (forall( (|i#17_$12| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$12|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.value) |i#17_$12|))))))))
   )
(or anon42_Then@37_assertion anon42_Then@38)
)) :named ax_anon42_Then@37))
(assert (! (=> anon36_Then@40_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_anon36_Then@40_assertion))
(assert (! (=> anon36_Then@41 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or anon36_Then@41_assertion anon36_Then@42)
)) :named ax_anon36_Then@41))
(assert (! (=> anon42_Then@37_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right))) 1)))))
   )
))) :named ax_anon42_Then@37_assertion))
(assert (! (=> anon42_Then@38 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@79@0) (or (Node.Valid $Heap t@79@0) (=> (not (= t@79@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right))) 1)))))
   )
(or anon42_Then@38_assertion anon42_Then@39)
)) :named ax_anon42_Then@38))
(assert (! (=> anon36_Then@41_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (forall( (|i#16_$9| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$9|)) (< |i#16_$9| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.value)))))))))
   )
))) :named ax_anon36_Then@41_assertion))
(assert (! (=> anon36_Then@42 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (forall( (|i#16_$9| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$9|)) (< |i#16_$9| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.value)))))))))
   )
(or anon36_Then@42_assertion anon36_Then@43)
)) :named ax_anon36_Then@42))
(assert (! (=> anon42_Then@38_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@79@0) (or (Node.BalanceValid $Heap t@79@0) (=> (not (= t@79@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left)))))))
   )
))) :named ax_anon42_Then@38_assertion))
(assert (! (=> anon42_Then@39 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@79@0) (or (Node.BalanceValid $Heap t@79@0) (=> (not (= t@79@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left)))))))
   )
(or anon42_Then@39_assertion anon42_Then@40)
)) :named ax_anon42_Then@39))
(assert (! (=> anon36_Then@42_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (forall( (|i#17_$8| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$8|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.value) |i#17_$8|))))))))
   )
))) :named ax_anon36_Then@42_assertion))
(assert (! (=> anon36_Then@43 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (forall( (|i#17_$8| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$8|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.value) |i#17_$8|))))))))
   )
(or anon36_Then@43_assertion anon36_Then@44)
)) :named ax_anon36_Then@43))
(assert (! (=> anon42_Then@39_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@79@0) (or (Node.BalanceValid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left))))))
   )
))) :named ax_anon42_Then@39_assertion))
(assert (! (=> anon42_Then@40 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@79@0) (or (Node.BalanceValid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left))))))
   )
(or anon42_Then@40_assertion anon42_Then@41)
)) :named ax_anon42_Then@40))
(assert (! (=> anon36_Then@43_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right))) 1)))))
   )
))) :named ax_anon36_Then@43_assertion))
(assert (! (=> anon36_Then@44 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap t@67@0) (or (Node.Valid $Heap t@67@0) (=> (not (= t@67@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.height) (+ (Math.max $Heap (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right))) 1)))))
   )
(or anon36_Then@44_assertion anon36_Then@45)
)) :named ax_anon36_Then@44))
(assert (! (=> anon42_Then@40_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@79@0) (or (Node.BalanceValid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right))))))
   )
))) :named ax_anon42_Then@40_assertion))
(assert (! (=> anon42_Then@41 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@79@0) (or (Node.BalanceValid $Heap t@79@0) (=> (not (= t@79@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right))))))
   )
(or anon42_Then@41_assertion anon42_Then@42)
)) :named ax_anon42_Then@41))
(assert (! (=> anon36_Then@44_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@67@0) (or (Node.BalanceValid $Heap t@67@0) (=> (not (= t@67@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left)))))))
   )
))) :named ax_anon36_Then@44_assertion))
(assert (! (=> anon36_Then@45 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@67@0) (or (Node.BalanceValid $Heap t@67@0) (=> (not (= t@67@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left)))))))
   )
(or anon36_Then@45_assertion anon36_Then@46)
)) :named ax_anon36_Then@45))
(assert (! (=> anon42_Then@41_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap t@79@0) (or (Node.Balanced $Heap t@79@0) (=> (not (= t@79@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.balance) 1)))))
   )
))) :named ax_anon42_Then@41_assertion))
(assert (! (=> anon42_Then@42 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap t@79@0) (or (Node.Balanced $Heap t@79@0) (=> (not (= t@79@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@79@0 Node.balance) 1)))))
   )
(or anon42_Then@42_assertion anon42_Then@43)
)) :named ax_anon42_Then@42))
(assert (! (=> anon36_Then@45_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@67@0) (or (Node.BalanceValid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left))))))
   )
))) :named ax_anon36_Then@45_assertion))
(assert (! (=> anon36_Then@46 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@67@0) (or (Node.BalanceValid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left))))))
   )
(or anon36_Then@46_assertion anon36_Then@47)
)) :named ax_anon36_Then@46))
(assert (! (=> anon42_Then@42_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap t@79@0) (or (Node.Balanced $Heap t@79@0) (=> (not (= t@79@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right)))))
   )
))) :named ax_anon42_Then@42_assertion))
(assert (! (=> anon42_Then@43 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap t@79@0) (or (Node.Balanced $Heap t@79@0) (=> (not (= t@79@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.right)))))
   )
(or anon42_Then@43_assertion anon42_Then@44)
)) :named ax_anon42_Then@43))
(assert (! (=> anon36_Then@46_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@67@0) (or (Node.BalanceValid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right))))))
   )
))) :named ax_anon36_Then@46_assertion))
(assert (! (=> anon36_Then@47 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap t@67@0) (or (Node.BalanceValid $Heap t@67@0) (=> (not (= t@67@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right))))))
   )
(or anon36_Then@47_assertion anon36_Then@48)
)) :named ax_anon36_Then@47))
(assert (! (=> anon42_Then@43_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap t@79@0) (or (Node.Balanced $Heap t@79@0) (=> (not (= t@79@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left)))))
   )
))) :named ax_anon42_Then@43_assertion))
(assert (! (=> anon42_Then@44 (and true 
   (and true
      ($HeapSucc $Heap $Heap@4)
      ($IsGoodHeap $Heap@4)
      ($IsGoodHeap $Heap@5)
      (= $Heap@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.right call5formal@r@8@0))
      (= (- (Node.Height $Heap@4 call5formal@r@8@0) (Node.Height $Heap t@79@0)) call6formal@deltaH@9@0)
      (= (= true $@bf_92) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left))))
      (= (= true $@bf_93) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right))))
      (=> (= t@79@0 null) (forall( (|$o_$49| ref))(=> (and (not (= |$o_$49| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ |$o_$49|))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$49| alloc)))))
      (=> (= t@79@0 null) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
      (=> (and (not (= t@79@0 null)) (= call6formal@deltaH@9@0 1)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) 0)))
      (=> (Node.Balanced@canCall $Heap t@79@0) (or (Node.Balanced $Heap t@79@0) (=> (not (= t@79@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@79@0 Node.left)))))
      (=> (Node.Balanced@canCall $Heap@4 call5formal@r@8@0) (or (Node.Balanced $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (Node.Balanced $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)))))
      (=> (Node.Balanced@canCall $Heap@4 call5formal@r@8@0) (or (Node.Balanced $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (Node.Balanced $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right)))))
      (=> (Node.Balanced@canCall $Heap@4 call5formal@r@8@0) (or (Node.Balanced $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) 1)))))
      (=> (Node.BalanceValid@canCall $Heap@4 call5formal@r@8@0) (or (Node.BalanceValid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) (- (Node.Height $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right)) (Node.Height $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)))))))
      (=> (Node.BalanceValid@canCall $Heap@4 call5formal@r@8@0) (or (Node.BalanceValid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (Node.BalanceValid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left))))))
      (=> (Node.BalanceValid@canCall $Heap@4 call5formal@r@8@0) (or (Node.BalanceValid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (Node.BalanceValid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.height) (+ (Math.max $Heap@4 (Node.Height $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)) (Node.Height $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right))) 1)))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (forall( (|i#16_$15| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$15|)) (< |i#16_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.value)))))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) ($Box$ref$ call5formal@r@8@0)))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (forall( (|i#17_$14| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$14|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.value) |i#17_$14|))))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right)))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr) ($Box$ref$ call5formal@r@8@0)))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ call5formal@r@8@0)))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (Node.Valid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (Node.Valid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right)))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ null))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
      (=> (Node.Valid@canCall $Heap@4 call5formal@r@8@0) (or (Node.Valid $Heap@4 call5formal@r@8@0) (=> (not (= call5formal@r@8@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call5formal@r@8@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
      (=> (not (= call5formal@r@8@0 null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) (- (Node.Height $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right)) (Node.Height $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (Node.BalanceValid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (Node.BalanceValid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right)))))
      (=> (not (= call5formal@r@8@0 null)) (and (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ call5formal@r@8@0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) ($Box$ref$ call5formal@r@8@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr) ($Box$ref$ call5formal@r@8@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr))))) (Node.Valid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left))) (Node.Valid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call5formal@r@8@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (forall( (|i#16_$14| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$14|)) (< |i#16_$14| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (forall( (|i#17_$13| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$13|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.value) |i#17_$13|)))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.height) (+ (Math.max $Heap@4 (Node.Height $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)) (Node.Height $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right))) 1))))
      (=> (not (= call5formal@r@8@0 null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) 1)) (Node.Balanced $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right))) (Node.Balanced $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left))))
      (=> (not (= t@79@0 null)) (forall( (|$o_$48| ref))(=> (and (and (not (= |$o_$48| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ |$o_$48|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$48|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$48| alloc)))))
      (=> (not (= t@79@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Contents) (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7)))))
      (forall( (|$o_$50_$0| ref) (|$f_$40_$0| Field$Bool$))(!(=> (and (not (= |$o_$50_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$0| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@4 |$o_$50_$0| |$f_$40_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$0| |$f_$40_$0|)) (and (not (= t@79@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$50_$0|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@4 |$o_$50_$0| |$f_$40_$0|))))
      (forall( (|$o_$50_$1| ref) (|$f_$40_$1| Field$Int$))(!(=> (and (not (= |$o_$50_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$1| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 |$o_$50_$1| |$f_$40_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap |$o_$50_$1| |$f_$40_$1|)) (and (not (= t@79@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$50_$1|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 |$o_$50_$1| |$f_$40_$1|))))
      (forall( (|$o_$50_$2| ref) (|$f_$40_$2| Field$ref$))(!(=> (and (not (= |$o_$50_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$2| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 |$o_$50_$2| |$f_$40_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$50_$2| |$f_$40_$2|)) (and (not (= t@79@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$50_$2|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 |$o_$50_$2| |$f_$40_$2|))))
      (forall( (|$o_$50_$3| ref) (|$f_$40_$3| Field$BoxType$))(!(=> (and (not (= |$o_$50_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$3| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@4 |$o_$50_$3| |$f_$40_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$50_$3| |$f_$40_$3|)) (and (not (= t@79@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$50_$3|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@4 |$o_$50_$3| |$f_$40_$3|))))
      (forall( (|$o_$50_$4| ref) (|$f_$40_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (not (= |$o_$50_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$4| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 |$o_$50_$4| |$f_$40_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap |$o_$50_$4| |$f_$40_$4|)) (and (not (= t@79@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ |$o_$50_$4|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 |$o_$50_$4| |$f_$40_$4|))))
      (Node.Balanced $Heap@4 call5formal@r@8@0)
      (Node.Balanced@canCall $Heap@4 call5formal@r@8@0)
      (Node.BalanceValid $Heap@4 call5formal@r@8@0)
      (Node.BalanceValid@canCall $Heap@4 call5formal@r@8@0)
      (Node.Valid $Heap@4 call5formal@r@8@0)
      (Node.Valid@canCall $Heap@4 call5formal@r@8@0)
      (not (= call5formal@r@8@0 null))
      (not (= t@6 null))
      (or (= call5formal@r@8@0 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@4 call5formal@r@8@0 alloc) (= (dtype call5formal@r@8@0) class.Node)))
      (or (= call6formal@deltaH@9@0 0) (= call6formal@deltaH@9@0 1))
      (or (or (and (not (= t@79@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@79@0 Node.Repr) ($Box$ref$ call5formal@r@8@0))) (= call5formal@r@8@0 null)) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call5formal@r@8@0 alloc)))
   )
(or anon42_Then@45_assertion anon42_Then@46)
)) :named ax_anon42_Then@44))
(assert (! (=> anon36_Then@47_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap t@67@0) (or (Node.Balanced $Heap t@67@0) (=> (not (= t@67@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.balance) 1)))))
   )
))) :named ax_anon36_Then@47_assertion))
(assert (! (=> anon36_Then@48 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap t@67@0) (or (Node.Balanced $Heap t@67@0) (=> (not (= t@67@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@67@0 Node.balance) 1)))))
   )
(or anon36_Then@48_assertion anon36_Then@49)
)) :named ax_anon36_Then@48))
(assert (! (=> anon42_Then@45_assertion (not (and true
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Repr)
   )
))) :named ax_anon42_Then@45_assertion))
(assert (! (=> anon42_Then@46 (and true 
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Repr)
      (not (= t@6 null))
   )
(or anon42_Then@47_assertion anon42_Then@48)
)) :named ax_anon42_Then@46))
(assert (! (=> anon36_Then@48_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap t@67@0) (or (Node.Balanced $Heap t@67@0) (=> (not (= t@67@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right)))))
   )
))) :named ax_anon36_Then@48_assertion))
(assert (! (=> anon36_Then@49 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap t@67@0) (or (Node.Balanced $Heap t@67@0) (=> (not (= t@67@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.right)))))
   )
(or anon36_Then@49_assertion anon36_Then@50)
)) :named ax_anon36_Then@49))
(assert (! (=> anon42_Then@47_assertion (not (and true
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.right) null))
   )
))) :named ax_anon42_Then@47_assertion))
(assert (! (=> anon42_Then@48 (and true 
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.right) null))
      (not (= t@6 null))
   )
(or anon43_Else anon43_Then)
)) :named ax_anon42_Then@48))
(assert (! (=> anon36_Then@49_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap t@67@0) (or (Node.Balanced $Heap t@67@0) (=> (not (= t@67@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left)))))
   )
))) :named ax_anon36_Then@49_assertion))
(assert (! (=> anon36_Then@50 (and true 
   (and true
      ($HeapSucc $Heap $Heap@2)
      ($IsGoodHeap $Heap@2)
      ($IsGoodHeap $Heap@3)
      (= $Heap@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 t@6 Node.left call5formal@r@8@0_$1))
      (= (- (Node.Height $Heap@2 call5formal@r@8@0_$1) (Node.Height $Heap t@67@0)) call6formal@deltaH@9@0_$1)
      (= (= true $@bf_88) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left))))
      (= (= true $@bf_89) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right))))
      (=> (= t@67@0 null) (forall( (|$o_$45| ref))(=> (and (not (= |$o_$45| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) ($Box$ref$ |$o_$45|))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$45| alloc)))))
      (=> (= t@67@0 null) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
      (=> (and (not (= t@67@0 null)) (= call6formal@deltaH@9@0_$1 1)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.balance) 0)))
      (=> (Node.Balanced@canCall $Heap t@67@0) (or (Node.Balanced $Heap t@67@0) (=> (not (= t@67@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@67@0 Node.left)))))
      (=> (Node.Balanced@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Balanced $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (Node.Balanced $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left)))))
      (=> (Node.Balanced@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Balanced $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (Node.Balanced $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right)))))
      (=> (Node.Balanced@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Balanced $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.balance) 1)))))
      (=> (Node.BalanceValid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.BalanceValid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.balance) (- (Node.Height $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right)) (Node.Height $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left)))))))
      (=> (Node.BalanceValid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.BalanceValid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (Node.BalanceValid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left))))))
      (=> (Node.BalanceValid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.BalanceValid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (Node.BalanceValid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.height) (+ (Math.max $Heap@2 (Node.Height $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left)) (Node.Height $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right))) 1)))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (forall( (|i#16_$11| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Contents) ($Box$Int$ |i#16_$11|)) (< |i#16_$11| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.value)))))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left)))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Repr) ($Box$ref$ call5formal@r@8@0_$1)))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (forall( (|i#17_$10| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Contents) ($Box$Int$ |i#17_$10|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.value) |i#17_$10|))))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right)))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Repr) ($Box$ref$ call5formal@r@8@0_$1)))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) ($Box$ref$ call5formal@r@8@0_$1)))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (Node.Valid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left)))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (Node.Valid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right)))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) ($Box$ref$ null))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Contents) Set@Empty$BoxType$))))))
      (=> (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1) (or (Node.Valid $Heap@2 call5formal@r@8@0_$1) (=> (not (= call5formal@r@8@0_$1 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call5formal@r@8@0_$1)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Repr) Set@Empty$BoxType$))))))
      (=> (not (= call5formal@r@8@0_$1 null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.balance) (- (Node.Height $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right)) (Node.Height $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (Node.BalanceValid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (Node.BalanceValid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right)))))
      (=> (not (= call5formal@r@8@0_$1 null)) (and (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) ($Box$ref$ call5formal@r@8@0_$1)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Repr) ($Box$ref$ call5formal@r@8@0_$1)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Repr) ($Box$ref$ call5formal@r@8@0_$1)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr))))) (Node.Valid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left))) (Node.Valid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call5formal@r@8@0_$1)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) null)) (forall( (|i#16_$10| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left) Node.Contents) ($Box$Int$ |i#16_$10|)) (< |i#16_$10| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) null)) (forall( (|i#17_$9| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right) Node.Contents) ($Box$Int$ |i#17_$9|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.value) |i#17_$9|)))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.height) (+ (Math.max $Heap@2 (Node.Height $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left)) (Node.Height $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right))) 1))))
      (=> (not (= call5formal@r@8@0_$1 null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0_$1 Node.balance) 1)) (Node.Balanced $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.right))) (Node.Balanced $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0_$1 Node.left))))
      (=> (not (= t@67@0 null)) (forall( (|$o_$44| ref))(=> (and (and (not (= |$o_$44| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Repr) ($Box$ref$ |$o_$44|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$44|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$44| alloc)))))
      (=> (not (= t@67@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0_$1 Node.Contents) (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7)))))
      (forall( (|$o_$46_$0| ref) (|$f_$38_$0| Field$Bool$))(!(=> (and (not (= |$o_$46_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$0| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 |$o_$46_$0| |$f_$38_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$0| |$f_$38_$0|)) (and (not (= t@67@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$46_$0|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 |$o_$46_$0| |$f_$38_$0|))))
      (forall( (|$o_$46_$1| ref) (|$f_$38_$1| Field$Int$))(!(=> (and (not (= |$o_$46_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$1| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 |$o_$46_$1| |$f_$38_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap |$o_$46_$1| |$f_$38_$1|)) (and (not (= t@67@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$46_$1|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 |$o_$46_$1| |$f_$38_$1|))))
      (forall( (|$o_$46_$2| ref) (|$f_$38_$2| Field$ref$))(!(=> (and (not (= |$o_$46_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$2| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 |$o_$46_$2| |$f_$38_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$46_$2| |$f_$38_$2|)) (and (not (= t@67@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$46_$2|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 |$o_$46_$2| |$f_$38_$2|))))
      (forall( (|$o_$46_$3| ref) (|$f_$38_$3| Field$BoxType$))(!(=> (and (not (= |$o_$46_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$3| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@2 |$o_$46_$3| |$f_$38_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$46_$3| |$f_$38_$3|)) (and (not (= t@67@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$46_$3|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@2 |$o_$46_$3| |$f_$38_$3|))))
      (forall( (|$o_$46_$4| ref) (|$f_$38_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (not (= |$o_$46_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$4| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 |$o_$46_$4| |$f_$38_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap |$o_$46_$4| |$f_$38_$4|)) (and (not (= t@67@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ |$o_$46_$4|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 |$o_$46_$4| |$f_$38_$4|))))
      (Node.Balanced $Heap@2 call5formal@r@8@0_$1)
      (Node.Balanced@canCall $Heap@2 call5formal@r@8@0_$1)
      (Node.BalanceValid $Heap@2 call5formal@r@8@0_$1)
      (Node.BalanceValid@canCall $Heap@2 call5formal@r@8@0_$1)
      (Node.Valid $Heap@2 call5formal@r@8@0_$1)
      (Node.Valid@canCall $Heap@2 call5formal@r@8@0_$1)
      (not (= call5formal@r@8@0_$1 null))
      (not (= t@6 null))
      (or (= call5formal@r@8@0_$1 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 call5formal@r@8@0_$1 alloc) (= (dtype call5formal@r@8@0_$1) class.Node)))
      (or (= call6formal@deltaH@9@0_$1 0) (= call6formal@deltaH@9@0_$1 1))
      (or (or (and (not (= t@67@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@67@0 Node.Repr) ($Box$ref$ call5formal@r@8@0_$1))) (= call5formal@r@8@0_$1 null)) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call5formal@r@8@0_$1 alloc)))
   )
(or anon36_Then@51_assertion anon36_Then@52)
)) :named ax_anon36_Then@50))
(assert (! (=> anon43_Else (and true 
   (and true
      (= $@condition_$3 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) null)
      (not $@condition_$3)
   )
anon22
)) :named ax_anon43_Else))
(assert (! (=> anon43_Then (and true 
   (and true
      $@condition_$3
      (= $@condition_$3 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) null))
      (not (= t@6 null))
   )
anon22
)) :named ax_anon43_Then))
(assert (! (=> anon36_Then@51_assertion (not (and true
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Repr)
   )
))) :named ax_anon36_Then@51_assertion))
(assert (! (=> anon36_Then@52 (and true 
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Repr)
      (not (= t@6 null))
   )
(or anon36_Then@53_assertion anon36_Then@54)
)) :named ax_anon36_Then@52))
(assert (! (=> anon22 (and true 
   (and true
      ($IsGoodHeap $Heap@6)
      (= $Heap@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@5 t@6 Node.Repr $rhs@14@0))
      (= $rhs@14@0 (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.right) Node.Repr)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)))
      (= (= true $@bf_96) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left))))
      (=> (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) null) true)
      (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) null)) true)
      (not (= t@6 null))
   )
(or anon22@1_assertion anon22@2)
)) :named ax_anon22))
(assert (! (=> anon36_Then@53_assertion (not (and true
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.left) null))
   )
))) :named ax_anon36_Then@53_assertion))
(assert (! (=> anon36_Then@54 (and true 
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.left) null))
      (not (= t@6 null))
   )
(or anon37_Else anon37_Then)
)) :named ax_anon36_Then@54))
(assert (! (=> anon22@1_assertion (not (and true
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Contents)
   )
))) :named ax_anon22@1_assertion))
(assert (! (=> anon22@2 (and true 
   (and true
      ($IsGoodHeap $Heap@7)
      (= $Heap@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 t@6 Node.Contents $rhs@15@0))
      (= $rhs@15@0 (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 t@6 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Contents)
      (not (= t@6 null))
   )
(or anon22@4_assertion anon22@5)
)) :named ax_anon22@2))
(assert (! (=> anon37_Else (and true 
   (and true
      (= $@condition_$1 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) null)
      (not $@condition_$1)
   )
anon6
)) :named ax_anon37_Else))
(assert (! (=> anon37_Then (and true 
   (and true
      $@condition_$1
      (= $@condition_$1 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) null))
      (not (= t@6 null))
   )
anon6
)) :named ax_anon37_Then))
(assert (! (=> anon22@4_assertion (not (and true
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.height)
   )
))) :named ax_anon22@4_assertion))
(assert (! (=> anon22@5 (and true 
   (and true
      (= n@81@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left))
      (= n@82@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right))
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.height)
      (Node.Height@canCall $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left))
      (Node.Height@canCall $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right))
      (not (= t@6 null))
   )
(or anon22@7_assertion anon22@8)
)) :named ax_anon22@5))
(assert (! (=> anon6 (and true 
   (and true
      ($IsGoodHeap $Heap@14)
      (= $Heap@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@3 t@6 Node.Repr $rhs@4@0))
      (= $rhs@4@0 (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.left) Node.Repr)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) Node.Repr) Set@Empty$BoxType$)))
      (= (= true $@bf_95) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right))))
      (=> (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) null) true)
      (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) null)) true)
      (not (= t@6 null))
   )
(or anon6@1_assertion anon6@2)
)) :named ax_anon6))
(assert (! (=> anon22@7_assertion (not (and true
   (and true
      (<= 0 (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left)))
   )
))) :named ax_anon22@7_assertion))
(assert (! (=> anon22@8 (and true 
   (and true
      (<= 0 (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left)))
      (= a@83@0 (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left)))
   )
(or anon22@8_assertion anon22@9)
)) :named ax_anon22@8))
(assert (! (=> anon6@1_assertion (not (and true
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.height)
   )
))) :named ax_anon6@1_assertion))
(assert (! (=> anon6@2 (and true 
   (and true
      (= n@69@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left))
      (= n@70@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right))
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.height)
      (Node.Height@canCall $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left))
      (Node.Height@canCall $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right))
      (not (= t@6 null))
   )
(or anon6@4_assertion anon6@5)
)) :named ax_anon6@2))
(assert (! (=> anon22@8_assertion (not (and true
   (and true
      (<= 0 (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right)))
   )
))) :named ax_anon22@8_assertion))
(assert (! (=> anon22@9 (and true 
   (and true
      (<= 0 (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right)))
      (= b@84@0 (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right)))
      (Math.max@canCall $Heap@7 (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left)) (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right)))
      (Node.Height@canCall $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left))
      (Node.Height@canCall $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right))
   )
(or anon22@10 anon22@9_assertion)
)) :named ax_anon22@9))
(assert (! (=> anon6@4_assertion (not (and true
   (and true
      (<= 0 (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left)))
   )
))) :named ax_anon6@4_assertion))
(assert (! (=> anon6@5 (and true 
   (and true
      (<= 0 (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left)))
      (= a@71@0 (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left)))
   )
(or anon6@5_assertion anon6@6)
)) :named ax_anon6@5))
(assert (! (=> anon22@10 (and true 
   (and true
      ($IsGoodHeap $Heap@8)
      (<= 0 (+ (Math.max $Heap@7 (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left)) (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right))) 1))
      (= $Heap@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.height $rhs@16@0))
      (= $rhs@16@0 (+ (Math.max $Heap@7 (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left)) (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right))) 1))
      (Node.Valid@canCall $Heap@8 t@6)
   )
(or anon22@10_assertion anon22@11)
)) :named ax_anon22@10))
(assert (! (=> anon22@9_assertion (not (and true
   (and true
      (<= 0 (+ (Math.max $Heap@7 (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left)) (Node.Height $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right))) 1))
   )
))) :named ax_anon22@9_assertion))
(assert (! (=> anon6@5_assertion (not (and true
   (and true
      (<= 0 (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right)))
   )
))) :named ax_anon6@5_assertion))
(assert (! (=> anon6@6 (and true 
   (and true
      (<= 0 (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right)))
      (= b@72@0 (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right)))
      (Math.max@canCall $Heap@14 (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left)) (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right)))
      (Node.Height@canCall $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left))
      (Node.Height@canCall $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right))
   )
(or anon6@6_assertion anon6@7)
)) :named ax_anon6@6))
(assert (! (=> anon22@10_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr) ($Box$ref$ t@6)))))
   )
))) :named ax_anon22@10_assertion))
(assert (! (=> anon22@11 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr) ($Box$ref$ t@6)))))
   )
(or anon22@11_assertion anon22@12)
)) :named ax_anon22@11))
(assert (! (=> anon6@6_assertion (not (and true
   (and true
      (<= 0 (+ (Math.max $Heap@14 (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left)) (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right))) 1))
   )
))) :named ax_anon6@6_assertion))
(assert (! (=> anon6@7 (and true 
   (and true
      ($IsGoodHeap $Heap@15)
      (<= 0 (+ (Math.max $Heap@14 (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left)) (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right))) 1))
      (= $Heap@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.height $rhs@5@0))
      (= $rhs@5@0 (+ (Math.max $Heap@14 (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left)) (Node.Height $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right))) 1))
      (not (= t@6 null))
   )
(or anon6@8_assertion anon6@9)
)) :named ax_anon6@7))
(assert (! (=> anon22@11_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_anon22@11_assertion))
(assert (! (=> anon22@12 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr) ($Box$ref$ null))))))
   )
(or anon22@12_assertion anon22@13)
)) :named ax_anon22@12))
(assert (! (=> anon6@8_assertion (not (and true
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Contents)
   )
))) :named ax_anon6@8_assertion))
(assert (! (=> anon6@9 (and true 
   (and true
      ($IsGoodHeap $Heap@16)
      (= $Heap@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@15 t@6 Node.Contents $rhs@6@0))
      (= $rhs@6@0 (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@15 t@6 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Contents)
      (Node.Valid@canCall $Heap@16 t@6)
      (not (= t@6 null))
   )
(or anon6@10_assertion anon6@11)
)) :named ax_anon6@9))
(assert (! (=> anon22@12_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left)))))))
   )
))) :named ax_anon22@12_assertion))
(assert (! (=> anon22@13 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left)))))))
   )
(or anon22@13_assertion anon22@14)
)) :named ax_anon22@13))
(assert (! (=> anon6@10_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr) ($Box$ref$ t@6)))))
   )
))) :named ax_anon6@10_assertion))
(assert (! (=> anon6@11 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr) ($Box$ref$ t@6)))))
   )
(or anon6@11_assertion anon6@12)
)) :named ax_anon6@11))
(assert (! (=> anon22@13_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
   )
))) :named ax_anon22@13_assertion))
(assert (! (=> anon22@14 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
   )
(or anon22@14_assertion anon22@15)
)) :named ax_anon22@14))
(assert (! (=> anon6@11_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_anon6@11_assertion))
(assert (! (=> anon6@12 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr) ($Box$ref$ null))))))
   )
(or anon6@12_assertion anon6@13)
)) :named ax_anon6@12))
(assert (! (=> anon22@14_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr))))))
   )
))) :named ax_anon22@14_assertion))
(assert (! (=> anon22@15 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr))))))
   )
(or anon22@15_assertion anon22@16)
)) :named ax_anon22@15))
(assert (! (=> anon6@12_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left)))))))
   )
))) :named ax_anon6@12_assertion))
(assert (! (=> anon6@13 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left)))))))
   )
(or anon6@13_assertion anon6@14)
)) :named ax_anon6@13))
(assert (! (=> anon22@15_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)))))))
   )
))) :named ax_anon22@15_assertion))
(assert (! (=> anon22@16 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)))))))
   )
(or anon22@16_assertion anon22@17)
)) :named ax_anon22@16))
(assert (! (=> anon6@13_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
   )
))) :named ax_anon6@13_assertion))
(assert (! (=> anon6@14 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
   )
(or anon6@14_assertion anon6@15)
)) :named ax_anon6@14))
(assert (! (=> anon22@16_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
   )
))) :named ax_anon22@16_assertion))
(assert (! (=> anon22@17 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
   )
(or anon22@17_assertion anon22@18)
)) :named ax_anon22@17))
(assert (! (=> anon6@14_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr))))))
   )
))) :named ax_anon6@14_assertion))
(assert (! (=> anon6@15 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr))))))
   )
(or anon6@15_assertion anon6@16)
)) :named ax_anon6@15))
(assert (! (=> anon22@17_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr))))))
   )
))) :named ax_anon22@17_assertion))
(assert (! (=> anon22@18 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr))))))
   )
(or anon22@18_assertion anon22@19)
)) :named ax_anon22@18))
(assert (! (=> anon6@15_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right)))))))
   )
))) :named ax_anon6@15_assertion))
(assert (! (=> anon6@16 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right)))))))
   )
(or anon6@16_assertion anon6@17)
)) :named ax_anon6@16))
(assert (! (=> anon22@18_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left)))))
   )
))) :named ax_anon22@18_assertion))
(assert (! (=> anon22@19 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left)))))
   )
(or anon22@19_assertion anon22@20)
)) :named ax_anon22@19))
(assert (! (=> anon6@16_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
   )
))) :named ax_anon6@16_assertion))
(assert (! (=> anon6@17 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
   )
(or anon6@17_assertion anon6@18)
)) :named ax_anon6@17))
(assert (! (=> anon22@19_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)))))
   )
))) :named ax_anon22@19_assertion))
(assert (! (=> anon22@20 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)))))
   )
(or anon22@20_assertion anon22@21)
)) :named ax_anon22@20))
(assert (! (=> anon6@17_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr))))))
   )
))) :named ax_anon6@17_assertion))
(assert (! (=> anon6@18 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr))))))
   )
(or anon6@18_assertion anon6@19)
)) :named ax_anon6@18))
(assert (! (=> anon22@20_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Repr))))))
   )
))) :named ax_anon22@20_assertion))
(assert (! (=> anon22@21 (and true 
   (and true
      (= (= true $@bf_13) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left))))
      (= (= true $@bf_14) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right))))
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Repr))))))
   )
(or anon22@21_assertion anon22@22)
)) :named ax_anon22@21))
(assert (! (=> anon6@18_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left)))))
   )
))) :named ax_anon6@18_assertion))
(assert (! (=> anon6@19 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left)))))
   )
(or anon6@19_assertion anon6@20)
)) :named ax_anon6@19))
(assert (! (=> anon22@21_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_anon22@21_assertion))
(assert (! (=> anon22@22 (and true 
   (and true
      (= (= true $@bf_13) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left))))
      (= (= true $@bf_14) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right))))
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or anon22@22_assertion anon22@23)
)) :named ax_anon22@22))
(assert (! (=> anon6@19_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right)))))
   )
))) :named ax_anon6@19_assertion))
(assert (! (=> anon6@20 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right)))))
   )
(or anon6@20_assertion anon6@21)
)) :named ax_anon6@20))
(assert (! (=> anon22@22_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_anon22@22_assertion))
(assert (! (=> anon22@23 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or anon22@23_assertion anon22@24)
)) :named ax_anon22@23))
(assert (! (=> anon6@20_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Repr))))))
   )
))) :named ax_anon6@20_assertion))
(assert (! (=> anon6@21 (and true 
   (and true
      (= (= true $@bf_11) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left))))
      (= (= true $@bf_12) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right))))
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Repr))))))
   )
(or anon6@21_assertion anon6@22)
)) :named ax_anon6@21))
(assert (! (=> anon22@23_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (forall( (|i#16_$17| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$17|)) (< |i#16_$17| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.value)))))))))
   )
))) :named ax_anon22@23_assertion))
(assert (! (=> anon22@24 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (forall( (|i#16_$17| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$17|)) (< |i#16_$17| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.value)))))))))
   )
(or anon22@24_assertion anon22@25)
)) :named ax_anon22@24))
(assert (! (=> anon6@21_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_anon6@21_assertion))
(assert (! (=> anon6@22 (and true 
   (and true
      (= (= true $@bf_11) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left))))
      (= (= true $@bf_12) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right))))
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or anon6@22_assertion anon6@23)
)) :named ax_anon6@22))
(assert (! (=> anon22@24_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (forall( (|i#17_$16| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$16|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.value) |i#17_$16|))))))))
   )
))) :named ax_anon22@24_assertion))
(assert (! (=> anon22@25 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (forall( (|i#17_$16| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$16|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.value) |i#17_$16|))))))))
   )
(or anon22@25_assertion anon22@26)
)) :named ax_anon22@25))
(assert (! (=> anon6@22_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_anon6@22_assertion))
(assert (! (=> anon6@23 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or anon6@23_assertion anon6@24)
)) :named ax_anon6@23))
(assert (! (=> anon22@25_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.height) (+ (Math.max $Heap@8 (Node.Height $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left)) (Node.Height $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right))) 1)))))
   )
))) :named ax_anon22@25_assertion))
(assert (! (=> anon22@26 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@8 t@6) (or (Node.Valid $Heap@8 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.height) (+ (Math.max $Heap@8 (Node.Height $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left)) (Node.Height $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right))) 1)))))
      (Node.Valid $Heap@8 t@6)
   )
(or anon44_Else anon44_Then)
)) :named ax_anon22@26))
(assert (! (=> anon6@23_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (forall( (|i#16_$16| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$16|)) (< |i#16_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.value)))))))))
   )
))) :named ax_anon6@23_assertion))
(assert (! (=> anon6@24 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) null)) (forall( (|i#16_$16| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$16|)) (< |i#16_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.value)))))))))
   )
(or anon6@24_assertion anon6@25)
)) :named ax_anon6@24))
(assert (! (=> anon44_Else (and true 
   (and true
      (= $@condition_$6 (= call6formal@deltaH@9@0 0))
      (not $@condition_$6)
      (not (= call6formal@deltaH@9@0 0))
      (not (= t@6 null))
   )
(or anon45_Else anon45_Then)
)) :named ax_anon44_Else))
(assert (! (=> anon44_Then (and true 
   (and true
      $@condition_$6
      (= $@condition_$6 (= call6formal@deltaH@9@0 0))
      (= $Heap@22 $Heap@8)
      (= call6formal@deltaH@9@0 0)
      (= deltaH@9@2 0)
      (= r@8@0 t@6)
   )
$join_$@condition_$6
)) :named ax_anon44_Then))
(assert (! (=> anon6@24_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (forall( (|i#17_$15| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$15|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.value) |i#17_$15|))))))))
   )
))) :named ax_anon6@24_assertion))
(assert (! (=> anon6@25 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) null)) (forall( (|i#17_$15| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$15|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.value) |i#17_$15|))))))))
   )
(or anon6@25_assertion anon6@26)
)) :named ax_anon6@25))
(assert (! (=> anon45_Else (and true 
   (and true
      (= $@condition_$7 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 0))
      (not $@condition_$7)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 0))
   )
anon28
)) :named ax_anon45_Else))
(assert (! (=> anon45_Then (and true 
   (and true
      $@condition_$7
      (= $@condition_$7 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 0))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 0)
   )
anon28
)) :named ax_anon45_Then))
(assert (! (=> anon6@25_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.height) (+ (Math.max $Heap@16 (Node.Height $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left)) (Node.Height $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right))) 1)))))
   )
))) :named ax_anon6@25_assertion))
(assert (! (=> anon6@26 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@16 t@6) (or (Node.Valid $Heap@16 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.height) (+ (Math.max $Heap@16 (Node.Height $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left)) (Node.Height $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.right))) 1)))))
      (Node.Valid $Heap@16 t@6)
   )
(or anon38_Else anon38_Then)
)) :named ax_anon6@26))
(assert (! (=> anon28 (and true 
   (and true
      (= (= true $@bf_98) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 0))
      (= deltaH@9@0 (ite (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 0) 1 0))
      (=> (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 0) true)
      (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 0)) true)
      (not (= t@6 null))
   )
(or anon28@1_assertion anon28@2)
)) :named ax_anon28))
(assert (! (=> anon38_Else (and true 
   (and true
      (= $@condition_$4 (= call6formal@deltaH@9@0_$1 0))
      (not $@condition_$4)
      (not (= call6formal@deltaH@9@0_$1 0))
      (not (= t@6 null))
   )
(or anon39_Else anon39_Then)
)) :named ax_anon38_Else))
(assert (! (=> anon38_Then (and true 
   (and true
      $@condition_$4
      (= $@condition_$4 (= call6formal@deltaH@9@0_$1 0))
      (= $Heap@22 $Heap@16)
      (= call6formal@deltaH@9@0_$1 0)
      (= deltaH@9@2 0)
      (= r@8@0 t@6)
   )
$join_$@condition_$4
)) :named ax_anon38_Then))
(assert (! (=> anon28@1_assertion (not (and true
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.balance)
   )
))) :named ax_anon28@1_assertion))
(assert (! (=> anon28@2 (and true 
   (and true
      ($IsGoodHeap $Heap@9)
      (= $Heap@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance $rhs@19@0))
      (= $rhs@19@0 (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) call6formal@deltaH@9@0))
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.balance)
      (not (= t@6 null))
   )
(or anon28@3_assertion anon28@4)
)) :named ax_anon28@2))
(assert (! (=> anon39_Else (and true 
   (and true
      (= $@condition_$5 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.balance) 0))
      (not $@condition_$5)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.balance) 0))
   )
anon12
)) :named ax_anon39_Else))
(assert (! (=> anon39_Then (and true 
   (and true
      $@condition_$5
      (= $@condition_$5 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.balance) 0))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.balance) 0)
   )
anon12
)) :named ax_anon39_Then))
(assert (! (=> anon28@3_assertion (not (and true
   (and true
      (Node.Valid $Heap@9 t@6)
   )
))) :named ax_anon28@3_assertion))
(assert (! (=> anon28@4 (and true 
   (and true
      (Node.BalanceValid@canCall $Heap@9 t@6)
      (Node.Valid $Heap@9 t@6)
   )
(or anon28@4_assertion anon28@5)
)) :named ax_anon28@4))
(assert (! (=> anon12 (and true 
   (and true
      (= (= true $@bf_97) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.balance) 0))
      (= deltaH@9@1 (ite (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.balance) 0) 1 0))
      (=> (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.balance) 0) true)
      (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.balance) 0)) true)
      (not (= t@6 null))
   )
(or anon12@1_assertion anon12@2)
)) :named ax_anon12))
(assert (! (=> anon28@4_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 t@6) (or (Node.BalanceValid $Heap@9 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 t@6 Node.balance) (- (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.left)))))))
   )
))) :named ax_anon28@4_assertion))
(assert (! (=> anon28@5 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 t@6) (or (Node.BalanceValid $Heap@9 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 t@6 Node.balance) (- (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.left)))))))
   )
(or anon28@5_assertion anon28@6)
)) :named ax_anon28@5))
(assert (! (=> anon12@1_assertion (not (and true
   (and true
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.balance)
   )
))) :named ax_anon12@1_assertion))
(assert (! (=> anon12@2 (and true 
   (and true
      ($IsGoodHeap $Heap@17)
      (= $Heap@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.balance $rhs@9@0))
      (= $rhs@9@0 (- (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 t@6 Node.balance) 1))
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.balance)
      (not (= t@6 null))
   )
(or anon12@3_assertion anon12@4)
)) :named ax_anon12@2))
(assert (! (=> anon28@5_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 t@6) (or (Node.BalanceValid $Heap@9 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.left) null)) (Node.BalanceValid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.left))))))
   )
))) :named ax_anon28@5_assertion))
(assert (! (=> anon28@6 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 t@6) (or (Node.BalanceValid $Heap@9 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.left) null)) (Node.BalanceValid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.left))))))
   )
(or anon28@6_assertion anon28@7)
)) :named ax_anon28@6))
(assert (! (=> anon12@3_assertion (not (and true
   (and true
      (Node.Valid $Heap@17 t@6)
   )
))) :named ax_anon12@3_assertion))
(assert (! (=> anon12@4 (and true 
   (and true
      (Node.BalanceValid@canCall $Heap@17 t@6)
      (Node.Valid $Heap@17 t@6)
   )
(or anon12@4_assertion anon12@5)
)) :named ax_anon12@4))
(assert (! (=> anon28@6_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 t@6) (or (Node.BalanceValid $Heap@9 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) null)) (Node.BalanceValid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right))))))
   )
))) :named ax_anon28@6_assertion))
(assert (! (=> anon28@7 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 t@6) (or (Node.BalanceValid $Heap@9 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) null)) (Node.BalanceValid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right))))))
      (Node.BalanceValid $Heap@9 t@6)
      (not (= t@6 null))
   )
(or anon46_Else anon46_Then)
)) :named ax_anon28@7))
(assert (! (=> anon12@4_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 t@6) (or (Node.BalanceValid $Heap@17 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 t@6 Node.balance) (- (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.right)) (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)))))))
   )
))) :named ax_anon12@4_assertion))
(assert (! (=> anon12@5 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 t@6) (or (Node.BalanceValid $Heap@17 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 t@6 Node.balance) (- (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.right)) (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)))))))
   )
(or anon12@5_assertion anon12@6)
)) :named ax_anon12@5))
(assert (! (=> anon46_Else (and true 
   (and true
      (= $@condition_$10 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 t@6 Node.balance) 2))
      (= $Heap@22 $Heap@9)
      (= deltaH@9@2 deltaH@9@0)
      (= r@8@0 t@6)
      (not $@condition_$10)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 t@6 Node.balance) 2))
   )
$join_2
)) :named ax_anon46_Else))
(assert (! (=> anon46_Then (and true 
   (and true
      $@condition_$10
      (= $@condition_$10 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 t@6 Node.balance) 2))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 t@6 Node.balance) 2)
      (= n@87@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right))
      (not (= t@6 null))
   )
(or anon46_Then@1_assertion anon46_Then@2)
)) :named ax_anon46_Then))
(assert (! (=> anon12@5_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 t@6) (or (Node.BalanceValid $Heap@17 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) null)) (Node.BalanceValid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left))))))
   )
))) :named ax_anon12@5_assertion))
(assert (! (=> anon12@6 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 t@6) (or (Node.BalanceValid $Heap@17 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) null)) (Node.BalanceValid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left))))))
   )
(or anon12@6_assertion anon12@7)
)) :named ax_anon12@6))
(assert (! (=> anon46_Then@1_assertion (not (and true
   (and true
      (Node.BalanceValid $Heap@9 n@87@0)
      (Node.Valid $Heap@9 n@87@0)
   )
))) :named ax_anon46_Then@1_assertion))
(assert (! (=> anon46_Then@2 (and true 
   (and true
      (Node.Balanced@canCall $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right))
      (Node.BalanceValid $Heap@9 n@87@0)
      (Node.Valid $Heap@9 n@87@0)
   )
(or anon46_Then@2_assertion anon46_Then@3)
)) :named ax_anon46_Then@2))
(assert (! (=> anon12@6_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 t@6) (or (Node.BalanceValid $Heap@17 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.right) null)) (Node.BalanceValid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.right))))))
   )
))) :named ax_anon12@6_assertion))
(assert (! (=> anon12@7 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 t@6) (or (Node.BalanceValid $Heap@17 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.right) null)) (Node.BalanceValid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.right))))))
      (Node.BalanceValid $Heap@17 t@6)
      (not (= t@6 null))
   )
(or anon40_Else anon40_Then)
)) :named ax_anon12@7))
(assert (! (=> anon46_Then@2_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (or (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.balance) 1)))))
   )
))) :named ax_anon46_Then@2_assertion))
(assert (! (=> anon46_Then@3 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (or (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.balance) 1)))))
   )
(or anon46_Then@3_assertion anon46_Then@4)
)) :named ax_anon46_Then@3))
(assert (! (=> anon40_Else (and true 
   (and true
      (= $@condition_$8 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 t@6 Node.balance) (- 0 2)))
      (= $Heap@22 $Heap@17)
      (= deltaH@9@2 deltaH@9@1)
      (= r@8@0 t@6)
      (not $@condition_$8)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 t@6 Node.balance) (- 0 2)))
   )
$join_2@1
)) :named ax_anon40_Else))
(assert (! (=> anon40_Then (and true 
   (and true
      $@condition_$8
      (= $@condition_$8 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 t@6 Node.balance) (- 0 2)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 t@6 Node.balance) (- 0 2))
      (= n@75@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left))
      (not (= t@6 null))
   )
(or anon40_Then@1_assertion anon40_Then@2)
)) :named ax_anon40_Then))
(assert (! (=> anon46_Then@3_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (or (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) null)) (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.right)))))
   )
))) :named ax_anon46_Then@3_assertion))
(assert (! (=> anon46_Then@4 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (or (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) null)) (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.right)))))
   )
(or anon46_Then@4_assertion anon46_Then@5)
)) :named ax_anon46_Then@4))
(assert (! (=> anon40_Then@1_assertion (not (and true
   (and true
      (Node.BalanceValid $Heap@17 n@75@0)
      (Node.Valid $Heap@17 n@75@0)
   )
))) :named ax_anon40_Then@1_assertion))
(assert (! (=> anon40_Then@2 (and true 
   (and true
      (Node.Balanced@canCall $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left))
      (Node.BalanceValid $Heap@17 n@75@0)
      (Node.Valid $Heap@17 n@75@0)
   )
(or anon40_Then@2_assertion anon40_Then@3)
)) :named ax_anon40_Then@2))
(assert (! (=> anon46_Then@4_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (or (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) null)) (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.left)))))
   )
))) :named ax_anon46_Then@4_assertion))
(assert (! (=> anon46_Then@5 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (or (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) null)) (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.left)))))
      (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right))
      (not (= t@6 null))
   )
(or anon46_Then@6_assertion anon46_Then@7)
)) :named ax_anon46_Then@5))
(assert (! (=> anon40_Then@2_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (or (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.balance) 1)))))
   )
))) :named ax_anon40_Then@2_assertion))
(assert (! (=> anon40_Then@3 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (or (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.balance) 1)))))
   )
(or anon40_Then@3_assertion anon40_Then@4)
)) :named ax_anon40_Then@3))
(assert (! (=> anon46_Then@6_assertion (not (and true
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) null))
   )
))) :named ax_anon46_Then@6_assertion))
(assert (! (=> anon46_Then@7 (and true 
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) null))
   )
(or anon47_Else anon47_Then)
)) :named ax_anon46_Then@7))
(assert (! (=> anon40_Then@3_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (or (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) null)) (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.right)))))
   )
))) :named ax_anon40_Then@3_assertion))
(assert (! (=> anon40_Then@4 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (or (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) null)) (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.right)))))
   )
(or anon40_Then@4_assertion anon40_Then@5)
)) :named ax_anon40_Then@4))
(assert (! (=> anon47_Else (and true 
   (and true
      (= $@condition_$11 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.balance) (- 0 1)))
      (= $Heap@12 $Heap@9)
      (not $@condition_$11)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.balance) (- 0 1)))
   )
anon32
)) :named ax_anon47_Else))
(assert (! (=> anon47_Then (and true 
   (and true
      $@condition_$11
      (= $@condition_$11 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.balance) (- 0 1)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right) Node.balance) (- 0 1))
      (= n@88@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right))
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 t@6 Node.right)
      (not (= t@6 null))
   )
(or anon47_Then@3_assertion anon47_Then@4)
)) :named ax_anon47_Then))
(assert (! (=> anon40_Then@4_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (or (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) null)) (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.left)))))
   )
))) :named ax_anon40_Then@4_assertion))
(assert (! (=> anon40_Then@5 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (or (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) null)) (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.left)))))
      (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left))
      (not (= t@6 null))
   )
(or anon40_Then@6_assertion anon40_Then@7)
)) :named ax_anon40_Then@5))
(assert (! (=> anon47_Then@3_assertion (not (and true
   (and true
      (forall( (|$o_$55_$0| ref) (|$f_$45_$0| Field$Bool$))(=> (and (and (not (= |$o_$55_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$55_$0| alloc)) (or (= |$o_$55_$0| n@88@0) (and (not (= n@88@0 null)) (= |$o_$55_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$55_$0| |$f_$45_$0|)))
      (forall( (|$o_$55_$1| ref) (|$f_$45_$1| Field$Int$))(=> (and (and (not (= |$o_$55_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$55_$1| alloc)) (or (= |$o_$55_$1| n@88@0) (and (not (= n@88@0 null)) (= |$o_$55_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$55_$1| |$f_$45_$1|)))
      (forall( (|$o_$55_$2| ref) (|$f_$45_$2| Field$ref$))(=> (and (and (not (= |$o_$55_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$55_$2| alloc)) (or (= |$o_$55_$2| n@88@0) (and (not (= n@88@0 null)) (= |$o_$55_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$55_$2| |$f_$45_$2|)))
      (forall( (|$o_$55_$3| ref) (|$f_$45_$3| Field$BoxType$))(=> (and (and (not (= |$o_$55_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$55_$3| alloc)) (or (= |$o_$55_$3| n@88@0) (and (not (= n@88@0 null)) (= |$o_$55_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$55_$3| |$f_$45_$3|)))
      (forall( (|$o_$55_$4| ref) (|$f_$45_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$55_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$55_$4| alloc)) (or (= |$o_$55_$4| n@88@0) (and (not (= n@88@0 null)) (= |$o_$55_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$55_$4| |$f_$45_$4|)))
   )
))) :named ax_anon47_Then@3_assertion))
(assert (! (=> anon47_Then@4 (and true 
   (and true
      (forall( (|$o_$55_$0| ref) (|$f_$45_$0| Field$Bool$))(=> (and (and (not (= |$o_$55_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$55_$0| alloc)) (or (= |$o_$55_$0| n@88@0) (and (not (= n@88@0 null)) (= |$o_$55_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$55_$0| |$f_$45_$0|)))
      (forall( (|$o_$55_$1| ref) (|$f_$45_$1| Field$Int$))(=> (and (and (not (= |$o_$55_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$55_$1| alloc)) (or (= |$o_$55_$1| n@88@0) (and (not (= n@88@0 null)) (= |$o_$55_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$55_$1| |$f_$45_$1|)))
      (forall( (|$o_$55_$2| ref) (|$f_$45_$2| Field$ref$))(=> (and (and (not (= |$o_$55_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$55_$2| alloc)) (or (= |$o_$55_$2| n@88@0) (and (not (= n@88@0 null)) (= |$o_$55_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$55_$2| |$f_$45_$2|)))
      (forall( (|$o_$55_$3| ref) (|$f_$45_$3| Field$BoxType$))(=> (and (and (not (= |$o_$55_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$55_$3| alloc)) (or (= |$o_$55_$3| n@88@0) (and (not (= n@88@0 null)) (= |$o_$55_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$55_$3| |$f_$45_$3|)))
      (forall( (|$o_$55_$4| ref) (|$f_$45_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$55_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$55_$4| alloc)) (or (= |$o_$55_$4| n@88@0) (and (not (= n@88@0 null)) (= |$o_$55_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$55_$4| |$f_$45_$4|)))
      (or (= call3formal@r@19 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call3formal@r@19 alloc) (= (dtype call3formal@r@19) class.Node)))
   )
(or anon47_Then@4_assertion anon47_Then@5)
)) :named ax_anon47_Then@4))
(assert (! (=> anon40_Then@6_assertion (not (and true
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) null))
   )
))) :named ax_anon40_Then@6_assertion))
(assert (! (=> anon40_Then@7 (and true 
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) null))
   )
(or anon41_Else anon41_Then)
)) :named ax_anon40_Then@7))
(assert (! (=> anon47_Then@4_assertion (not (and true
   (and true
      (not (= n@88@0 null))
   )
))) :named ax_anon47_Then@4_assertion))
(assert (! (=> anon47_Then@5 (and true 
   (and true
      (not (= n@88@0 null))
   )
(or anon47_Then@5_assertion anon47_Then@6)
)) :named ax_anon47_Then@5))
(assert (! (=> anon41_Else (and true 
   (and true
      (= $@condition_$9 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.balance) 1))
      (= $Heap@20 $Heap@17)
      (not $@condition_$9)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.balance) 1))
   )
anon16
)) :named ax_anon41_Else))
(assert (! (=> anon41_Then (and true 
   (and true
      $@condition_$9
      (= $@condition_$9 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.balance) 1))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left) Node.balance) 1)
      (= n@76@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 t@6 Node.left))
      (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 t@6 Node.left)
      (not (= t@6 null))
   )
(or anon41_Then@3_assertion anon41_Then@4)
)) :named ax_anon41_Then))
(assert (! (=> anon47_Then@5_assertion (not (and true
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null))
   )
))) :named ax_anon47_Then@5_assertion))
(assert (! (=> anon47_Then@6 (and true 
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null))
   )
(or anon47_Then@6_assertion anon47_Then@7)
)) :named ax_anon47_Then@6))
(assert (! (=> anon41_Then@3_assertion (not (and true
   (and true
      (forall( (|$o_$51_$0| ref) (|$f_$41_$0| Field$Bool$))(=> (and (and (not (= |$o_$51_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$51_$0| alloc)) (or (= |$o_$51_$0| n@76@0) (and (not (= n@76@0 null)) (= |$o_$51_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$51_$0| |$f_$41_$0|)))
      (forall( (|$o_$51_$1| ref) (|$f_$41_$1| Field$Int$))(=> (and (and (not (= |$o_$51_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$51_$1| alloc)) (or (= |$o_$51_$1| n@76@0) (and (not (= n@76@0 null)) (= |$o_$51_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$51_$1| |$f_$41_$1|)))
      (forall( (|$o_$51_$2| ref) (|$f_$41_$2| Field$ref$))(=> (and (and (not (= |$o_$51_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$51_$2| alloc)) (or (= |$o_$51_$2| n@76@0) (and (not (= n@76@0 null)) (= |$o_$51_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$51_$2| |$f_$41_$2|)))
      (forall( (|$o_$51_$3| ref) (|$f_$41_$3| Field$BoxType$))(=> (and (and (not (= |$o_$51_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$51_$3| alloc)) (or (= |$o_$51_$3| n@76@0) (and (not (= n@76@0 null)) (= |$o_$51_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$51_$3| |$f_$41_$3|)))
      (forall( (|$o_$51_$4| ref) (|$f_$41_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$51_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$51_$4| alloc)) (or (= |$o_$51_$4| n@76@0) (and (not (= n@76@0 null)) (= |$o_$51_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$51_$4| |$f_$41_$4|)))
   )
))) :named ax_anon41_Then@3_assertion))
(assert (! (=> anon41_Then@4 (and true 
   (and true
      (forall( (|$o_$51_$0| ref) (|$f_$41_$0| Field$Bool$))(=> (and (and (not (= |$o_$51_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$51_$0| alloc)) (or (= |$o_$51_$0| n@76@0) (and (not (= n@76@0 null)) (= |$o_$51_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$51_$0| |$f_$41_$0|)))
      (forall( (|$o_$51_$1| ref) (|$f_$41_$1| Field$Int$))(=> (and (and (not (= |$o_$51_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$51_$1| alloc)) (or (= |$o_$51_$1| n@76@0) (and (not (= n@76@0 null)) (= |$o_$51_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$51_$1| |$f_$41_$1|)))
      (forall( (|$o_$51_$2| ref) (|$f_$41_$2| Field$ref$))(=> (and (and (not (= |$o_$51_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$51_$2| alloc)) (or (= |$o_$51_$2| n@76@0) (and (not (= n@76@0 null)) (= |$o_$51_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$51_$2| |$f_$41_$2|)))
      (forall( (|$o_$51_$3| ref) (|$f_$41_$3| Field$BoxType$))(=> (and (and (not (= |$o_$51_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$51_$3| alloc)) (or (= |$o_$51_$3| n@76@0) (and (not (= n@76@0 null)) (= |$o_$51_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$51_$3| |$f_$41_$3|)))
      (forall( (|$o_$51_$4| ref) (|$f_$41_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$51_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$51_$4| alloc)) (or (= |$o_$51_$4| n@76@0) (and (not (= n@76@0 null)) (= |$o_$51_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$51_$4| |$f_$41_$4|)))
      (or (= call3formal@r@24 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call3formal@r@24 alloc) (= (dtype call3formal@r@24) class.Node)))
   )
(or anon41_Then@4_assertion anon41_Then@5)
)) :named ax_anon41_Then@4))
(assert (! (=> anon47_Then@6_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr) ($Box$ref$ n@88@0)))))
   )
))) :named ax_anon47_Then@6_assertion))
(assert (! (=> anon47_Then@7 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr) ($Box$ref$ n@88@0)))))
   )
(or anon47_Then@7_assertion anon47_Then@8)
)) :named ax_anon47_Then@7))
(assert (! (=> anon41_Then@4_assertion (not (and true
   (and true
      (not (= n@76@0 null))
   )
))) :named ax_anon41_Then@4_assertion))
(assert (! (=> anon41_Then@5 (and true 
   (and true
      (not (= n@76@0 null))
   )
(or anon41_Then@5_assertion anon41_Then@6)
)) :named ax_anon41_Then@5))
(assert (! (=> anon47_Then@7_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_anon47_Then@7_assertion))
(assert (! (=> anon47_Then@8 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr) ($Box$ref$ null))))))
   )
(or anon47_Then@8_assertion anon47_Then@9)
)) :named ax_anon47_Then@8))
(assert (! (=> anon41_Then@5_assertion (not (and true
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null))
   )
))) :named ax_anon41_Then@5_assertion))
(assert (! (=> anon41_Then@6 (and true 
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null))
   )
(or anon41_Then@6_assertion anon41_Then@7)
)) :named ax_anon41_Then@6))
(assert (! (=> anon47_Then@8_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))))
   )
))) :named ax_anon47_Then@8_assertion))
(assert (! (=> anon47_Then@9 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))))
   )
(or anon47_Then@10 anon47_Then@9_assertion)
)) :named ax_anon47_Then@9))
(assert (! (=> anon41_Then@6_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr) ($Box$ref$ n@76@0)))))
   )
))) :named ax_anon41_Then@6_assertion))
(assert (! (=> anon41_Then@7 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr) ($Box$ref$ n@76@0)))))
   )
(or anon41_Then@7_assertion anon41_Then@8)
)) :named ax_anon41_Then@7))
(assert (! (=> anon47_Then@10 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Repr) ($Box$ref$ n@88@0)))))))
   )
(or anon47_Then@10_assertion anon47_Then@11)
)) :named ax_anon47_Then@10))
(assert (! (=> anon47_Then@9_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Repr) ($Box$ref$ n@88@0)))))))
   )
))) :named ax_anon47_Then@9_assertion))
(assert (! (=> anon41_Then@7_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_anon41_Then@7_assertion))
(assert (! (=> anon41_Then@8 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr) ($Box$ref$ null))))))
   )
(or anon41_Then@8_assertion anon41_Then@9)
)) :named ax_anon41_Then@8))
(assert (! (=> anon47_Then@10_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr))))))
   )
))) :named ax_anon47_Then@10_assertion))
(assert (! (=> anon47_Then@11 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr))))))
   )
(or anon47_Then@11_assertion anon47_Then@12)
)) :named ax_anon47_Then@11))
(assert (! (=> anon41_Then@8_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left)))))))
   )
))) :named ax_anon41_Then@8_assertion))
(assert (! (=> anon41_Then@9 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left)))))))
   )
(or anon41_Then@10 anon41_Then@9_assertion)
)) :named ax_anon41_Then@9))
(assert (! (=> anon47_Then@11_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right)))))))
   )
))) :named ax_anon47_Then@11_assertion))
(assert (! (=> anon47_Then@12 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right)))))))
   )
(or anon47_Then@12_assertion anon47_Then@13)
)) :named ax_anon47_Then@12))
(assert (! (=> anon41_Then@10 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Repr) ($Box$ref$ n@76@0)))))))
   )
(or anon41_Then@10_assertion anon41_Then@11)
)) :named ax_anon41_Then@10))
(assert (! (=> anon41_Then@9_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Repr) ($Box$ref$ n@76@0)))))))
   )
))) :named ax_anon41_Then@9_assertion))
(assert (! (=> anon47_Then@12_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Repr) ($Box$ref$ n@88@0)))))))
   )
))) :named ax_anon47_Then@12_assertion))
(assert (! (=> anon47_Then@13 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Repr) ($Box$ref$ n@88@0)))))))
   )
(or anon47_Then@13_assertion anon47_Then@14)
)) :named ax_anon47_Then@13))
(assert (! (=> anon41_Then@10_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr))))))
   )
))) :named ax_anon41_Then@10_assertion))
(assert (! (=> anon41_Then@11 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr))))))
   )
(or anon41_Then@11_assertion anon41_Then@12)
)) :named ax_anon41_Then@11))
(assert (! (=> anon47_Then@13_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr))))))
   )
))) :named ax_anon47_Then@13_assertion))
(assert (! (=> anon47_Then@14 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr))))))
   )
(or anon47_Then@14_assertion anon47_Then@15)
)) :named ax_anon47_Then@14))
(assert (! (=> anon41_Then@11_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))))
   )
))) :named ax_anon41_Then@11_assertion))
(assert (! (=> anon41_Then@12 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))))
   )
(or anon41_Then@12_assertion anon41_Then@13)
)) :named ax_anon41_Then@12))
(assert (! (=> anon47_Then@14_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Node.Valid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))
   )
))) :named ax_anon47_Then@14_assertion))
(assert (! (=> anon47_Then@15 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Node.Valid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))
   )
(or anon47_Then@15_assertion anon47_Then@16)
)) :named ax_anon47_Then@15))
(assert (! (=> anon41_Then@12_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Repr) ($Box$ref$ n@76@0)))))))
   )
))) :named ax_anon41_Then@12_assertion))
(assert (! (=> anon41_Then@13 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Repr) ($Box$ref$ n@76@0)))))))
   )
(or anon41_Then@13_assertion anon41_Then@14)
)) :named ax_anon41_Then@13))
(assert (! (=> anon47_Then@15_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Node.Valid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right)))))
   )
))) :named ax_anon47_Then@15_assertion))
(assert (! (=> anon47_Then@16 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Node.Valid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right)))))
   )
(or anon47_Then@16_assertion anon47_Then@17)
)) :named ax_anon47_Then@16))
(assert (! (=> anon41_Then@13_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr))))))
   )
))) :named ax_anon41_Then@13_assertion))
(assert (! (=> anon41_Then@14 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr))))))
   )
(or anon41_Then@14_assertion anon41_Then@15)
)) :named ax_anon41_Then@14))
(assert (! (=> anon47_Then@16_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Repr))))))
   )
))) :named ax_anon47_Then@16_assertion))
(assert (! (=> anon47_Then@17 (and true 
   (and true
      (= (= true $@bf_19) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))
      (= (= true $@bf_20) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right))))
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Repr))))))
   )
(or anon47_Then@17_assertion anon47_Then@18)
)) :named ax_anon47_Then@17))
(assert (! (=> anon41_Then@14_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Node.Valid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left)))))
   )
))) :named ax_anon41_Then@14_assertion))
(assert (! (=> anon41_Then@15 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Node.Valid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left)))))
   )
(or anon41_Then@15_assertion anon41_Then@16)
)) :named ax_anon41_Then@15))
(assert (! (=> anon47_Then@17_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ n@88@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_anon47_Then@17_assertion))
(assert (! (=> anon47_Then@18 (and true 
   (and true
      (= (= true $@bf_19) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))
      (= (= true $@bf_20) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right))))
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ n@88@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or anon47_Then@18_assertion anon47_Then@19)
)) :named ax_anon47_Then@18))
(assert (! (=> anon41_Then@15_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Node.Valid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))
   )
))) :named ax_anon41_Then@15_assertion))
(assert (! (=> anon41_Then@16 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Node.Valid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))
   )
(or anon41_Then@16_assertion anon41_Then@17)
)) :named ax_anon41_Then@16))
(assert (! (=> anon47_Then@18_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_anon47_Then@18_assertion))
(assert (! (=> anon47_Then@19 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or anon47_Then@19_assertion anon47_Then@20)
)) :named ax_anon47_Then@19))
(assert (! (=> anon41_Then@16_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Repr))))))
   )
))) :named ax_anon41_Then@16_assertion))
(assert (! (=> anon41_Then@17 (and true 
   (and true
      (= (= true $@bf_15) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left))))
      (= (= true $@bf_16) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Repr))))))
   )
(or anon41_Then@17_assertion anon41_Then@18)
)) :named ax_anon41_Then@17))
(assert (! (=> anon47_Then@19_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (forall( (|i#16_$24| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$24|)) (< |i#16_$24| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.value)))))))))
   )
))) :named ax_anon47_Then@19_assertion))
(assert (! (=> anon47_Then@20 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (forall( (|i#16_$24| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$24|)) (< |i#16_$24| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.value)))))))))
   )
(or anon47_Then@20_assertion anon47_Then@21)
)) :named ax_anon47_Then@20))
(assert (! (=> anon41_Then@17_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ n@76@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_anon41_Then@17_assertion))
(assert (! (=> anon41_Then@18 (and true 
   (and true
      (= (= true $@bf_15) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left))))
      (= (= true $@bf_16) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ n@76@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or anon41_Then@18_assertion anon41_Then@19)
)) :named ax_anon41_Then@18))
(assert (! (=> anon47_Then@20_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (forall( (|i#17_$23| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$23|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.value) |i#17_$23|))))))))
   )
))) :named ax_anon47_Then@20_assertion))
(assert (! (=> anon47_Then@21 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (forall( (|i#17_$23| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$23|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.value) |i#17_$23|))))))))
   )
(or anon47_Then@21_assertion anon47_Then@22)
)) :named ax_anon47_Then@21))
(assert (! (=> anon41_Then@18_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_anon41_Then@18_assertion))
(assert (! (=> anon41_Then@19 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or anon41_Then@19_assertion anon41_Then@20)
)) :named ax_anon41_Then@19))
(assert (! (=> anon47_Then@21_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.height) (+ (Math.max $Heap@9 (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)) (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right))) 1)))))
   )
))) :named ax_anon47_Then@21_assertion))
(assert (! (=> anon47_Then@22 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@9 n@88@0) (or (Node.Valid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.height) (+ (Math.max $Heap@9 (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)) (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right))) 1)))))
   )
(or anon47_Then@22_assertion anon47_Then@23)
)) :named ax_anon47_Then@22))
(assert (! (=> anon41_Then@19_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (forall( (|i#16_$18| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$18|)) (< |i#16_$18| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.value)))))))))
   )
))) :named ax_anon41_Then@19_assertion))
(assert (! (=> anon41_Then@20 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (forall( (|i#16_$18| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$18|)) (< |i#16_$18| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.value)))))))))
   )
(or anon41_Then@20_assertion anon41_Then@21)
)) :named ax_anon41_Then@20))
(assert (! (=> anon47_Then@22_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 n@88@0) (or (Node.BalanceValid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.balance) (- (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right)) (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))))
   )
))) :named ax_anon47_Then@22_assertion))
(assert (! (=> anon47_Then@23 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 n@88@0) (or (Node.BalanceValid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.balance) (- (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right)) (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))))
   )
(or anon47_Then@23_assertion anon47_Then@24)
)) :named ax_anon47_Then@23))
(assert (! (=> anon41_Then@20_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (forall( (|i#17_$17| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$17|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.value) |i#17_$17|))))))))
   )
))) :named ax_anon41_Then@20_assertion))
(assert (! (=> anon41_Then@21 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (forall( (|i#17_$17| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$17|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.value) |i#17_$17|))))))))
   )
(or anon41_Then@21_assertion anon41_Then@22)
)) :named ax_anon41_Then@21))
(assert (! (=> anon47_Then@23_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 n@88@0) (or (Node.BalanceValid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (Node.BalanceValid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))))
   )
))) :named ax_anon47_Then@23_assertion))
(assert (! (=> anon47_Then@24 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 n@88@0) (or (Node.BalanceValid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left) null)) (Node.BalanceValid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))))))
   )
(or anon47_Then@24_assertion anon47_Then@25)
)) :named ax_anon47_Then@24))
(assert (! (=> anon41_Then@21_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.height) (+ (Math.max $Heap@17 (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left)) (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))) 1)))))
   )
))) :named ax_anon41_Then@21_assertion))
(assert (! (=> anon41_Then@22 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@17 n@76@0) (or (Node.Valid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.height) (+ (Math.max $Heap@17 (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left)) (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))) 1)))))
   )
(or anon41_Then@22_assertion anon41_Then@23)
)) :named ax_anon41_Then@22))
(assert (! (=> anon47_Then@24_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 n@88@0) (or (Node.BalanceValid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (Node.BalanceValid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right))))))
   )
))) :named ax_anon47_Then@24_assertion))
(assert (! (=> anon47_Then@25 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@9 n@88@0) (or (Node.BalanceValid $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right) null)) (Node.BalanceValid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right))))))
   )
(or anon47_Then@25_assertion anon47_Then@26)
)) :named ax_anon47_Then@25))
(assert (! (=> anon41_Then@22_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 n@76@0) (or (Node.BalanceValid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.balance) (- (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)) (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left)))))))
   )
))) :named ax_anon41_Then@22_assertion))
(assert (! (=> anon41_Then@23 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 n@76@0) (or (Node.BalanceValid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.balance) (- (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)) (Node.Height $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left)))))))
   )
(or anon41_Then@23_assertion anon41_Then@24)
)) :named ax_anon41_Then@23))
(assert (! (=> anon47_Then@25_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@9 n@88@0) (or (Node.Balanced $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.balance) 1)))))
   )
))) :named ax_anon47_Then@25_assertion))
(assert (! (=> anon47_Then@26 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@9 n@88@0) (or (Node.Balanced $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.balance) 1)))))
   )
(or anon47_Then@26_assertion anon47_Then@27)
)) :named ax_anon47_Then@26))
(assert (! (=> anon41_Then@23_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 n@76@0) (or (Node.BalanceValid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (Node.BalanceValid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left))))))
   )
))) :named ax_anon41_Then@23_assertion))
(assert (! (=> anon41_Then@24 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 n@76@0) (or (Node.BalanceValid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left) null)) (Node.BalanceValid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left))))))
   )
(or anon41_Then@24_assertion anon41_Then@25)
)) :named ax_anon41_Then@24))
(assert (! (=> anon47_Then@26_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@9 n@88@0) (or (Node.Balanced $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right)))))
   )
))) :named ax_anon47_Then@26_assertion))
(assert (! (=> anon47_Then@27 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@9 n@88@0) (or (Node.Balanced $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.right)))))
   )
(or anon47_Then@27_assertion anon47_Then@28)
)) :named ax_anon47_Then@27))
(assert (! (=> anon41_Then@24_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 n@76@0) (or (Node.BalanceValid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (Node.BalanceValid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))))
   )
))) :named ax_anon41_Then@24_assertion))
(assert (! (=> anon41_Then@25 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@17 n@76@0) (or (Node.BalanceValid $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right) null)) (Node.BalanceValid $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))))))
   )
(or anon41_Then@25_assertion anon41_Then@26)
)) :named ax_anon41_Then@25))
(assert (! (=> anon47_Then@27_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@9 n@88@0) (or (Node.Balanced $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))
   )
))) :named ax_anon47_Then@27_assertion))
(assert (! (=> anon47_Then@28 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@9 n@88@0) (or (Node.Balanced $Heap@9 n@88@0) (=> (not (= n@88@0 null)) (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))
   )
(or anon47_Then@28_assertion anon47_Then@29)
)) :named ax_anon47_Then@28))
(assert (! (=> anon41_Then@25_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@17 n@76@0) (or (Node.Balanced $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.balance) 1)))))
   )
))) :named ax_anon41_Then@25_assertion))
(assert (! (=> anon41_Then@26 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@17 n@76@0) (or (Node.Balanced $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.balance) 1)))))
   )
(or anon41_Then@26_assertion anon41_Then@27)
)) :named ax_anon41_Then@26))
(assert (! (=> anon47_Then@28_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.balance) (- 0 1))
   )
))) :named ax_anon47_Then@28_assertion))
(assert (! (=> anon47_Then@29 (and true 
   (and true
      ($HeapSucc $Heap@9 $Heap@10)
      ($IsGoodHeap $Heap@10)
      ($IsGoodHeap $Heap@11)
      (= $Heap@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 t@6 Node.right call3formal@r@19@0))
      (= $Heap@12 $Heap@11)
      (= (= true $@bf_107) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left))))
      (= (= true $@bf_108) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right))))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 n@88@0 Node.balance) (- 0 1))
      (= (Node.Height $Heap@10 call3formal@r@19@0) (Node.Height $Heap@9 n@88@0))
      (= call3formal@r@19@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left))
      (=> (Node.Balanced@canCall $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)) (or (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.left)))))
      (=> (Node.Balanced@canCall $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)) (or (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.right)))))
      (=> (Node.Balanced@canCall $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)) (or (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.balance) 1)))))
      (=> (Node.Balanced@canCall $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)) (or (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.left)))))
      (=> (Node.Balanced@canCall $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)) (or (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.right)))))
      (=> (Node.Balanced@canCall $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)) (or (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.balance) 1)))))
      (=> (Node.BalanceValid@canCall $Heap@10 call3formal@r@19@0) (or (Node.BalanceValid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.balance) (- (Node.Height $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)) (Node.Height $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)))))))
      (=> (Node.BalanceValid@canCall $Heap@10 call3formal@r@19@0) (or (Node.BalanceValid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (Node.BalanceValid $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left))))))
      (=> (Node.BalanceValid@canCall $Heap@10 call3formal@r@19@0) (or (Node.BalanceValid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (Node.BalanceValid $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.height) (+ (Math.max $Heap@10 (Node.Height $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)) (Node.Height $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right))) 1)))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (forall( (|i#16_$26| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$26|)) (< |i#16_$26| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.value)))))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@19@0)))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (forall( (|i#17_$25| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$25|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.value) |i#17_$25|))))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@19@0)))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) ($Box$ref$ call3formal@r@19@0)))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (Node.Valid $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (Node.Valid $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) ($Box$ref$ null))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
      (=> (Node.Valid@canCall $Heap@10 call3formal@r@19@0) (or (Node.Valid $Heap@10 call3formal@r@19@0) (=> (not (= call3formal@r@19@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@19@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
      (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.balance) 1)) (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.right))) (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.left))))
      (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.balance) 1)) (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.right))) (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.left))))
      (=> (not (= call3formal@r@19@0 null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.balance) (- (Node.Height $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)) (Node.Height $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (Node.BalanceValid $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (Node.BalanceValid $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right)))))
      (=> (not (= call3formal@r@19@0 null)) (and (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) ($Box$ref$ call3formal@r@19@0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@19@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@19@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr))))) (Node.Valid $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left))) (Node.Valid $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@19@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) null)) (forall( (|i#16_$25| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$25|)) (< |i#16_$25| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) null)) (forall( (|i#17_$24| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$24|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.value) |i#17_$24|)))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.height) (+ (Math.max $Heap@10 (Node.Height $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left)) (Node.Height $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right))) 1))))
      (forall( (|$o_$56_$0| ref) (|$f_$46_$0| Field$Bool$))(!(=> (and (not (= |$o_$56_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$56_$0| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@10 |$o_$56_$0| |$f_$46_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$56_$0| |$f_$46_$0|)) (= |$o_$56_$0| n@88@0)) (and (not (= n@88@0 null)) (= |$o_$56_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@10 |$o_$56_$0| |$f_$46_$0|))))
      (forall( (|$o_$56_$1| ref) (|$f_$46_$1| Field$Int$))(!(=> (and (not (= |$o_$56_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$56_$1| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 |$o_$56_$1| |$f_$46_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 |$o_$56_$1| |$f_$46_$1|)) (= |$o_$56_$1| n@88@0)) (and (not (= n@88@0 null)) (= |$o_$56_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 |$o_$56_$1| |$f_$46_$1|))))
      (forall( (|$o_$56_$2| ref) (|$f_$46_$2| Field$ref$))(!(=> (and (not (= |$o_$56_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$56_$2| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 |$o_$56_$2| |$f_$46_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 |$o_$56_$2| |$f_$46_$2|)) (= |$o_$56_$2| n@88@0)) (and (not (= n@88@0 null)) (= |$o_$56_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 |$o_$56_$2| |$f_$46_$2|))))
      (forall( (|$o_$56_$3| ref) (|$f_$46_$3| Field$BoxType$))(!(=> (and (not (= |$o_$56_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$56_$3| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@10 |$o_$56_$3| |$f_$46_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@9 |$o_$56_$3| |$f_$46_$3|)) (= |$o_$56_$3| n@88@0)) (and (not (= n@88@0 null)) (= |$o_$56_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@10 |$o_$56_$3| |$f_$46_$3|))))
      (forall( (|$o_$56_$4| ref) (|$f_$46_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (not (= |$o_$56_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$56_$4| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 |$o_$56_$4| |$f_$46_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 |$o_$56_$4| |$f_$46_$4|)) (= |$o_$56_$4| n@88@0)) (and (not (= n@88@0 null)) (= |$o_$56_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 n@88@0 Node.left)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 |$o_$56_$4| |$f_$46_$4|))))
      (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left))
      (Node.Balanced $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right))
      (Node.Balanced@canCall $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.left))
      (Node.Balanced@canCall $Heap@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@10 call3formal@r@19@0 Node.right))
      (Node.BalanceValid $Heap@10 call3formal@r@19@0)
      (Node.BalanceValid@canCall $Heap@10 call3formal@r@19@0)
      (Node.Valid $Heap@10 call3formal@r@19@0)
      (Node.Valid@canCall $Heap@10 call3formal@r@19@0)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.balance) 1) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@10 call3formal@r@19@0 Node.balance) 2))
      (or (= call3formal@r@19@0 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@10 call3formal@r@19@0 alloc) (= (dtype call3formal@r@19@0) class.Node)))
      (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Contents))
      (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@10 call3formal@r@19@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 n@88@0 Node.Repr))
   )
anon32
)) :named ax_anon47_Then@29))
(assert (! (=> anon41_Then@26_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@17 n@76@0) (or (Node.Balanced $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))
   )
))) :named ax_anon41_Then@26_assertion))
(assert (! (=> anon41_Then@27 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@17 n@76@0) (or (Node.Balanced $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))
   )
(or anon41_Then@27_assertion anon41_Then@28)
)) :named ax_anon41_Then@27))
(assert (! (=> anon32 (and true 
   (and true
   )
(or anon32@1 anon32_assertion)
)) :named ax_anon32))
(assert (! (=> anon41_Then@27_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@17 n@76@0) (or (Node.Balanced $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left)))))
   )
))) :named ax_anon41_Then@27_assertion))
(assert (! (=> anon41_Then@28 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@17 n@76@0) (or (Node.Balanced $Heap@17 n@76@0) (=> (not (= n@76@0 null)) (Node.Balanced $Heap@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.left)))))
   )
(or anon41_Then@28_assertion anon41_Then@29)
)) :named ax_anon41_Then@28))
(assert (! (=> anon32@1 (and true 
   (and true
      (forall( (|$o_$57_$0| ref) (|$f_$47_$0| Field$Bool$))(=> (and (and (not (= |$o_$57_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$57_$0| alloc)) (or (= |$o_$57_$0| t@6) (and (not (= t@6 null)) (= |$o_$57_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$57_$0| |$f_$47_$0|)))
      (forall( (|$o_$57_$1| ref) (|$f_$47_$1| Field$Int$))(=> (and (and (not (= |$o_$57_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$57_$1| alloc)) (or (= |$o_$57_$1| t@6) (and (not (= t@6 null)) (= |$o_$57_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$57_$1| |$f_$47_$1|)))
      (forall( (|$o_$57_$2| ref) (|$f_$47_$2| Field$ref$))(=> (and (and (not (= |$o_$57_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$57_$2| alloc)) (or (= |$o_$57_$2| t@6) (and (not (= t@6 null)) (= |$o_$57_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$57_$2| |$f_$47_$2|)))
      (forall( (|$o_$57_$3| ref) (|$f_$47_$3| Field$BoxType$))(=> (and (and (not (= |$o_$57_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$57_$3| alloc)) (or (= |$o_$57_$3| t@6) (and (not (= t@6 null)) (= |$o_$57_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$57_$3| |$f_$47_$3|)))
      (forall( (|$o_$57_$4| ref) (|$f_$47_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$57_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$57_$4| alloc)) (or (= |$o_$57_$4| t@6) (and (not (= t@6 null)) (= |$o_$57_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$57_$4| |$f_$47_$4|)))
      (not (= t@6 null))
      (or (= call3formal@r@34 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call3formal@r@34 alloc) (= (dtype call3formal@r@34) class.Node)))
   )
(or anon32@2_assertion anon32@3)
)) :named ax_anon32@1))
(assert (! (=> anon32_assertion (not (and true
   (and true
      (forall( (|$o_$57_$0| ref) (|$f_$47_$0| Field$Bool$))(=> (and (and (not (= |$o_$57_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$57_$0| alloc)) (or (= |$o_$57_$0| t@6) (and (not (= t@6 null)) (= |$o_$57_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$57_$0| |$f_$47_$0|)))
      (forall( (|$o_$57_$1| ref) (|$f_$47_$1| Field$Int$))(=> (and (and (not (= |$o_$57_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$57_$1| alloc)) (or (= |$o_$57_$1| t@6) (and (not (= t@6 null)) (= |$o_$57_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$57_$1| |$f_$47_$1|)))
      (forall( (|$o_$57_$2| ref) (|$f_$47_$2| Field$ref$))(=> (and (and (not (= |$o_$57_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$57_$2| alloc)) (or (= |$o_$57_$2| t@6) (and (not (= t@6 null)) (= |$o_$57_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$57_$2| |$f_$47_$2|)))
      (forall( (|$o_$57_$3| ref) (|$f_$47_$3| Field$BoxType$))(=> (and (and (not (= |$o_$57_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$57_$3| alloc)) (or (= |$o_$57_$3| t@6) (and (not (= t@6 null)) (= |$o_$57_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$57_$3| |$f_$47_$3|)))
      (forall( (|$o_$57_$4| ref) (|$f_$47_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$57_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$57_$4| alloc)) (or (= |$o_$57_$4| t@6) (and (not (= t@6 null)) (= |$o_$57_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$57_$4| |$f_$47_$4|)))
   )
))) :named ax_anon32_assertion))
(assert (! (=> anon41_Then@28_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.balance) 1)
   )
))) :named ax_anon41_Then@28_assertion))
(assert (! (=> anon41_Then@29 (and true 
   (and true
      ($HeapSucc $Heap@17 $Heap@18)
      ($IsGoodHeap $Heap@18)
      ($IsGoodHeap $Heap@19)
      (= $Heap@19 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left call3formal@r@24@0))
      (= $Heap@20 $Heap@19)
      (= (= true $@bf_100) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right))))
      (= (= true $@bf_99) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left))))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 n@76@0 Node.balance) 1)
      (= (Node.Height $Heap@18 call3formal@r@24@0) (Node.Height $Heap@17 n@76@0))
      (= call3formal@r@24@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right))
      (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.left)))))
      (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.right)))))
      (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.balance) 1)))))
      (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.left)))))
      (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.right)))))
      (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.balance) 1)))))
      (=> (Node.BalanceValid@canCall $Heap@18 call3formal@r@24@0) (or (Node.BalanceValid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.balance) (- (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)) (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)))))))
      (=> (Node.BalanceValid@canCall $Heap@18 call3formal@r@24@0) (or (Node.BalanceValid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left))))))
      (=> (Node.BalanceValid@canCall $Heap@18 call3formal@r@24@0) (or (Node.BalanceValid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.height) (+ (Math.max $Heap@18 (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)) (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right))) 1)))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (forall( (|i#16_$20| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$20|)) (< |i#16_$20| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.value)))))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@24@0)))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (forall( (|i#17_$19| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$19|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.value) |i#17_$19|))))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@24@0)))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) ($Box$ref$ call3formal@r@24@0)))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (Node.Valid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (Node.Valid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) ($Box$ref$ null))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
      (=> (Node.Valid@canCall $Heap@18 call3formal@r@24@0) (or (Node.Valid $Heap@18 call3formal@r@24@0) (=> (not (= call3formal@r@24@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@24@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
      (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.balance) 1)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.right))) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.left))))
      (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.balance) 1)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.right))) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.left))))
      (=> (not (= call3formal@r@24@0 null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.balance) (- (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)) (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right)))))
      (=> (not (= call3formal@r@24@0 null)) (and (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) ($Box$ref$ call3formal@r@24@0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@24@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@24@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr))))) (Node.Valid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left))) (Node.Valid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@24@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) null)) (forall( (|i#16_$19| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$19|)) (< |i#16_$19| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) null)) (forall( (|i#17_$18| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$18|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.value) |i#17_$18|)))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.height) (+ (Math.max $Heap@18 (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left)) (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right))) 1))))
      (forall( (|$o_$52_$0| ref) (|$f_$42_$0| Field$Bool$))(!(=> (and (not (= |$o_$52_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$52_$0| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$52_$0| |$f_$42_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$52_$0| |$f_$42_$0|)) (= |$o_$52_$0| n@76@0)) (and (not (= n@76@0 null)) (= |$o_$52_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$52_$0| |$f_$42_$0|))))
      (forall( (|$o_$52_$1| ref) (|$f_$42_$1| Field$Int$))(!(=> (and (not (= |$o_$52_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$52_$1| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 |$o_$52_$1| |$f_$42_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@17 |$o_$52_$1| |$f_$42_$1|)) (= |$o_$52_$1| n@76@0)) (and (not (= n@76@0 null)) (= |$o_$52_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 |$o_$52_$1| |$f_$42_$1|))))
      (forall( (|$o_$52_$2| ref) (|$f_$42_$2| Field$ref$))(!(=> (and (not (= |$o_$52_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$52_$2| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 |$o_$52_$2| |$f_$42_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 |$o_$52_$2| |$f_$42_$2|)) (= |$o_$52_$2| n@76@0)) (and (not (= n@76@0 null)) (= |$o_$52_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 |$o_$52_$2| |$f_$42_$2|))))
      (forall( (|$o_$52_$3| ref) (|$f_$42_$3| Field$BoxType$))(!(=> (and (not (= |$o_$52_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$52_$3| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@18 |$o_$52_$3| |$f_$42_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@17 |$o_$52_$3| |$f_$42_$3|)) (= |$o_$52_$3| n@76@0)) (and (not (= n@76@0 null)) (= |$o_$52_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@18 |$o_$52_$3| |$f_$42_$3|))))
      (forall( (|$o_$52_$4| ref) (|$f_$42_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (not (= |$o_$52_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@17 |$o_$52_$4| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 |$o_$52_$4| |$f_$42_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 |$o_$52_$4| |$f_$42_$4|)) (= |$o_$52_$4| n@76@0)) (and (not (= n@76@0 null)) (= |$o_$52_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@17 n@76@0 Node.right)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 |$o_$52_$4| |$f_$42_$4|))))
      (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left))
      (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right))
      (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.left))
      (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 call3formal@r@24@0 Node.right))
      (Node.BalanceValid $Heap@18 call3formal@r@24@0)
      (Node.BalanceValid@canCall $Heap@18 call3formal@r@24@0)
      (Node.Valid $Heap@18 call3formal@r@24@0)
      (Node.Valid@canCall $Heap@18 call3formal@r@24@0)
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 call3formal@r@24@0 Node.balance) (- 0 2)))
      (or (= call3formal@r@24@0 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 call3formal@r@24@0 alloc) (= (dtype call3formal@r@24@0) class.Node)))
      (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Contents))
      (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 call3formal@r@24@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@17 n@76@0 Node.Repr))
   )
anon16
)) :named ax_anon41_Then@29))
(assert (! (=> anon32@2_assertion (not (and true
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null))
   )
))) :named ax_anon32@2_assertion))
(assert (! (=> anon32@3 (and true 
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null))
   )
(or anon32@3_assertion anon32@4)
)) :named ax_anon32@3))
(assert (! (=> anon16 (and true 
   (and true
   )
(or anon16@1 anon16_assertion)
)) :named ax_anon16))
(assert (! (=> anon32@3_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr) ($Box$ref$ t@6)))))
   )
))) :named ax_anon32@3_assertion))
(assert (! (=> anon32@4 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr) ($Box$ref$ t@6)))))
   )
(or anon32@4_assertion anon32@5)
)) :named ax_anon32@4))
(assert (! (=> anon16@1 (and true 
   (and true
      (forall( (|$o_$53_$0| ref) (|$f_$43_$0| Field$Bool$))(=> (and (and (not (= |$o_$53_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$53_$0| alloc)) (or (= |$o_$53_$0| t@6) (and (not (= t@6 null)) (= |$o_$53_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$53_$0| |$f_$43_$0|)))
      (forall( (|$o_$53_$1| ref) (|$f_$43_$1| Field$Int$))(=> (and (and (not (= |$o_$53_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$53_$1| alloc)) (or (= |$o_$53_$1| t@6) (and (not (= t@6 null)) (= |$o_$53_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$53_$1| |$f_$43_$1|)))
      (forall( (|$o_$53_$2| ref) (|$f_$43_$2| Field$ref$))(=> (and (and (not (= |$o_$53_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$53_$2| alloc)) (or (= |$o_$53_$2| t@6) (and (not (= t@6 null)) (= |$o_$53_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$53_$2| |$f_$43_$2|)))
      (forall( (|$o_$53_$3| ref) (|$f_$43_$3| Field$BoxType$))(=> (and (and (not (= |$o_$53_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$53_$3| alloc)) (or (= |$o_$53_$3| t@6) (and (not (= t@6 null)) (= |$o_$53_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$53_$3| |$f_$43_$3|)))
      (forall( (|$o_$53_$4| ref) (|$f_$43_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$53_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$53_$4| alloc)) (or (= |$o_$53_$4| t@6) (and (not (= t@6 null)) (= |$o_$53_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$53_$4| |$f_$43_$4|)))
      (not (= t@6 null))
      (or (= call3formal@r@29 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call3formal@r@29 alloc) (= (dtype call3formal@r@29) class.Node)))
   )
(or anon16@2_assertion anon16@3)
)) :named ax_anon16@1))
(assert (! (=> anon16_assertion (not (and true
   (and true
      (forall( (|$o_$53_$0| ref) (|$f_$43_$0| Field$Bool$))(=> (and (and (not (= |$o_$53_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$53_$0| alloc)) (or (= |$o_$53_$0| t@6) (and (not (= t@6 null)) (= |$o_$53_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$53_$0| |$f_$43_$0|)))
      (forall( (|$o_$53_$1| ref) (|$f_$43_$1| Field$Int$))(=> (and (and (not (= |$o_$53_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$53_$1| alloc)) (or (= |$o_$53_$1| t@6) (and (not (= t@6 null)) (= |$o_$53_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$53_$1| |$f_$43_$1|)))
      (forall( (|$o_$53_$2| ref) (|$f_$43_$2| Field$ref$))(=> (and (and (not (= |$o_$53_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$53_$2| alloc)) (or (= |$o_$53_$2| t@6) (and (not (= t@6 null)) (= |$o_$53_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$53_$2| |$f_$43_$2|)))
      (forall( (|$o_$53_$3| ref) (|$f_$43_$3| Field$BoxType$))(=> (and (and (not (= |$o_$53_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$53_$3| alloc)) (or (= |$o_$53_$3| t@6) (and (not (= t@6 null)) (= |$o_$53_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$53_$3| |$f_$43_$3|)))
      (forall( (|$o_$53_$4| ref) (|$f_$43_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$53_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$53_$4| alloc)) (or (= |$o_$53_$4| t@6) (and (not (= t@6 null)) (= |$o_$53_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$53_$4| |$f_$43_$4|)))
   )
))) :named ax_anon16_assertion))
(assert (! (=> anon32@4_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_anon32@4_assertion))
(assert (! (=> anon32@5 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr) ($Box$ref$ null))))))
   )
(or anon32@5_assertion anon32@6)
)) :named ax_anon32@5))
(assert (! (=> anon16@2_assertion (not (and true
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null))
   )
))) :named ax_anon16@2_assertion))
(assert (! (=> anon16@3 (and true 
   (and true
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null))
   )
(or anon16@3_assertion anon16@4)
)) :named ax_anon16@3))
(assert (! (=> anon32@5_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)))))))
   )
))) :named ax_anon32@5_assertion))
(assert (! (=> anon32@6 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)))))))
   )
(or anon32@6_assertion anon32@7)
)) :named ax_anon32@6))
(assert (! (=> anon16@3_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr) ($Box$ref$ t@6)))))
   )
))) :named ax_anon16@3_assertion))
(assert (! (=> anon16@4 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr) ($Box$ref$ t@6)))))
   )
(or anon16@4_assertion anon16@5)
)) :named ax_anon16@4))
(assert (! (=> anon32@6_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
   )
))) :named ax_anon32@6_assertion))
(assert (! (=> anon32@7 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
   )
(or anon32@7_assertion anon32@8)
)) :named ax_anon32@7))
(assert (! (=> anon16@4_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_anon16@4_assertion))
(assert (! (=> anon16@5 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr) ($Box$ref$ null))))))
   )
(or anon16@5_assertion anon16@6)
)) :named ax_anon16@5))
(assert (! (=> anon32@7_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr))))))
   )
))) :named ax_anon32@7_assertion))
(assert (! (=> anon32@8 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr))))))
   )
(or anon32@8_assertion anon32@9)
)) :named ax_anon32@8))
(assert (! (=> anon16@5_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))))
   )
))) :named ax_anon16@5_assertion))
(assert (! (=> anon16@6 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))))
   )
(or anon16@6_assertion anon16@7)
)) :named ax_anon16@6))
(assert (! (=> anon32@8_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)))))))
   )
))) :named ax_anon32@8_assertion))
(assert (! (=> anon32@9 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)))))))
   )
(or anon32@10 anon32@9_assertion)
)) :named ax_anon32@9))
(assert (! (=> anon16@6_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
   )
))) :named ax_anon16@6_assertion))
(assert (! (=> anon16@7 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
   )
(or anon16@7_assertion anon16@8)
)) :named ax_anon16@7))
(assert (! (=> anon32@10 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
   )
(or anon32@10_assertion anon32@11)
)) :named ax_anon32@10))
(assert (! (=> anon32@9_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
   )
))) :named ax_anon32@9_assertion))
(assert (! (=> anon16@7_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr))))))
   )
))) :named ax_anon16@7_assertion))
(assert (! (=> anon16@8 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr))))))
   )
(or anon16@8_assertion anon16@9)
)) :named ax_anon16@8))
(assert (! (=> anon32@10_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr))))))
   )
))) :named ax_anon32@10_assertion))
(assert (! (=> anon32@11 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr))))))
   )
(or anon32@11_assertion anon32@12)
)) :named ax_anon32@11))
(assert (! (=> anon16@8_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)))))))
   )
))) :named ax_anon16@8_assertion))
(assert (! (=> anon16@9 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)))))))
   )
(or anon16@10 anon16@9_assertion)
)) :named ax_anon16@9))
(assert (! (=> anon32@11_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)))))
   )
))) :named ax_anon32@11_assertion))
(assert (! (=> anon32@12 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)))))
   )
(or anon32@12_assertion anon32@13)
)) :named ax_anon32@12))
(assert (! (=> anon16@10 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
   )
(or anon16@10_assertion anon16@11)
)) :named ax_anon16@10))
(assert (! (=> anon16@9_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
   )
))) :named ax_anon16@9_assertion))
(assert (! (=> anon32@12_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)))))
   )
))) :named ax_anon32@12_assertion))
(assert (! (=> anon32@13 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)))))
   )
(or anon32@13_assertion anon32@14)
)) :named ax_anon32@13))
(assert (! (=> anon16@10_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr))))))
   )
))) :named ax_anon16@10_assertion))
(assert (! (=> anon16@11 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr))))))
   )
(or anon16@11_assertion anon16@12)
)) :named ax_anon16@11))
(assert (! (=> anon32@13_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Repr))))))
   )
))) :named ax_anon32@13_assertion))
(assert (! (=> anon32@14 (and true 
   (and true
      (= (= true $@bf_21) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left))))
      (= (= true $@bf_22) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Repr))))))
   )
(or anon32@14_assertion anon32@15)
)) :named ax_anon32@14))
(assert (! (=> anon16@11_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))
   )
))) :named ax_anon16@11_assertion))
(assert (! (=> anon16@12 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))
   )
(or anon16@12_assertion anon16@13)
)) :named ax_anon16@12))
(assert (! (=> anon32@14_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_anon32@14_assertion))
(assert (! (=> anon32@15 (and true 
   (and true
      (= (= true $@bf_21) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left))))
      (= (= true $@bf_22) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or anon32@15_assertion anon32@16)
)) :named ax_anon32@15))
(assert (! (=> anon16@12_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)))))
   )
))) :named ax_anon16@12_assertion))
(assert (! (=> anon16@13 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)))))
   )
(or anon16@13_assertion anon16@14)
)) :named ax_anon16@13))
(assert (! (=> anon32@15_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_anon32@15_assertion))
(assert (! (=> anon32@16 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or anon32@16_assertion anon32@17)
)) :named ax_anon32@16))
(assert (! (=> anon16@13_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Repr))))))
   )
))) :named ax_anon16@13_assertion))
(assert (! (=> anon16@14 (and true 
   (and true
      (= (= true $@bf_17) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))
      (= (= true $@bf_18) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right))))
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Repr))))))
   )
(or anon16@14_assertion anon16@15)
)) :named ax_anon16@14))
(assert (! (=> anon32@16_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (forall( (|i#16_$27| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$27|)) (< |i#16_$27| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.value)))))))))
   )
))) :named ax_anon32@16_assertion))
(assert (! (=> anon32@17 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (forall( (|i#16_$27| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$27|)) (< |i#16_$27| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.value)))))))))
   )
(or anon32@17_assertion anon32@18)
)) :named ax_anon32@17))
(assert (! (=> anon16@14_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_anon16@14_assertion))
(assert (! (=> anon16@15 (and true 
   (and true
      (= (= true $@bf_17) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))
      (= (= true $@bf_18) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right))))
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or anon16@15_assertion anon16@16)
)) :named ax_anon16@15))
(assert (! (=> anon32@17_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (forall( (|i#17_$26| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$26|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.value) |i#17_$26|))))))))
   )
))) :named ax_anon32@17_assertion))
(assert (! (=> anon32@18 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (forall( (|i#17_$26| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$26|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.value) |i#17_$26|))))))))
   )
(or anon32@18_assertion anon32@19)
)) :named ax_anon32@18))
(assert (! (=> anon16@15_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_anon16@15_assertion))
(assert (! (=> anon16@16 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or anon16@16_assertion anon16@17)
)) :named ax_anon16@16))
(assert (! (=> anon32@18_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.height) (+ (Math.max $Heap@12 (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))) 1)))))
   )
))) :named ax_anon32@18_assertion))
(assert (! (=> anon32@19 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@12 t@6) (or (Node.Valid $Heap@12 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.height) (+ (Math.max $Heap@12 (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))) 1)))))
   )
(or anon32@19_assertion anon32@20)
)) :named ax_anon32@19))
(assert (! (=> anon16@16_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (forall( (|i#16_$21| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$21|)) (< |i#16_$21| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.value)))))))))
   )
))) :named ax_anon16@16_assertion))
(assert (! (=> anon16@17 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (forall( (|i#16_$21| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$21|)) (< |i#16_$21| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.value)))))))))
   )
(or anon16@17_assertion anon16@18)
)) :named ax_anon16@17))
(assert (! (=> anon32@19_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 t@6) (or (Node.BalanceValid $Heap@12 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.balance) (- (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)))))))
   )
))) :named ax_anon32@19_assertion))
(assert (! (=> anon32@20 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 t@6) (or (Node.BalanceValid $Heap@12 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.balance) (- (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)))))))
   )
(or anon32@20_assertion anon32@21)
)) :named ax_anon32@20))
(assert (! (=> anon16@17_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (forall( (|i#17_$20| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$20|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.value) |i#17_$20|))))))))
   )
))) :named ax_anon16@17_assertion))
(assert (! (=> anon16@18 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (forall( (|i#17_$20| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$20|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.value) |i#17_$20|))))))))
   )
(or anon16@18_assertion anon16@19)
)) :named ax_anon16@18))
(assert (! (=> anon32@20_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 t@6) (or (Node.BalanceValid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left))))))
   )
))) :named ax_anon32@20_assertion))
(assert (! (=> anon32@21 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 t@6) (or (Node.BalanceValid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left))))))
   )
(or anon32@21_assertion anon32@22)
)) :named ax_anon32@21))
(assert (! (=> anon16@18_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.height) (+ (Math.max $Heap@20 (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right))) 1)))))
   )
))) :named ax_anon16@18_assertion))
(assert (! (=> anon16@19 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@20 t@6) (or (Node.Valid $Heap@20 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.height) (+ (Math.max $Heap@20 (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right))) 1)))))
   )
(or anon16@19_assertion anon16@20)
)) :named ax_anon16@19))
(assert (! (=> anon32@21_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 t@6) (or (Node.BalanceValid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))))
   )
))) :named ax_anon32@21_assertion))
(assert (! (=> anon32@22 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 t@6) (or (Node.BalanceValid $Heap@12 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))))))
   )
(or anon32@22_assertion anon32@23)
)) :named ax_anon32@22))
(assert (! (=> anon16@19_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 t@6) (or (Node.BalanceValid $Heap@20 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.balance) (- (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))))
   )
))) :named ax_anon16@19_assertion))
(assert (! (=> anon16@20 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 t@6) (or (Node.BalanceValid $Heap@20 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.balance) (- (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))))
   )
(or anon16@20_assertion anon16@21)
)) :named ax_anon16@20))
(assert (! (=> anon32@22_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.balance) 2)
   )
))) :named ax_anon32@22_assertion))
(assert (! (=> anon32@23 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 t@6 Node.balance) 2)
   )
(or anon32@23_assertion anon32@24)
)) :named ax_anon32@23))
(assert (! (=> anon16@20_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 t@6) (or (Node.BalanceValid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))))
   )
))) :named ax_anon16@20_assertion))
(assert (! (=> anon16@21 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 t@6) (or (Node.BalanceValid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))))))
   )
(or anon16@21_assertion anon16@22)
)) :named ax_anon16@21))
(assert (! (=> anon32@23_assertion (not (and true
   (and true
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.balance) 1) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.balance) 2))
   )
))) :named ax_anon32@23_assertion))
(assert (! (=> anon32@24 (and true 
   (and true
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.balance) 1) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.balance) 2))
   )
(or anon32@24_assertion anon32@25)
)) :named ax_anon32@24))
(assert (! (=> anon16@21_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 t@6) (or (Node.BalanceValid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right))))))
   )
))) :named ax_anon16@21_assertion))
(assert (! (=> anon16@22 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 t@6) (or (Node.BalanceValid $Heap@20 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right))))))
   )
(or anon16@22_assertion anon16@23)
)) :named ax_anon16@22))
(assert (! (=> anon32@24_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (or (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.balance) (- (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)))))))
   )
))) :named ax_anon32@24_assertion))
(assert (! (=> anon32@25 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (or (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.balance) (- (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)))))))
   )
(or anon32@25_assertion anon32@26)
)) :named ax_anon32@25))
(assert (! (=> anon16@22_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.balance) (- 0 2))
   )
))) :named ax_anon16@22_assertion))
(assert (! (=> anon16@23 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 t@6 Node.balance) (- 0 2))
   )
(or anon16@23_assertion anon16@24)
)) :named ax_anon16@23))
(assert (! (=> anon32@25_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (or (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) null)) (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left))))))
   )
))) :named ax_anon32@25_assertion))
(assert (! (=> anon32@26 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (or (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) null)) (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left))))))
   )
(or anon32@26_assertion anon32@27)
)) :named ax_anon32@26))
(assert (! (=> anon16@23_assertion (not (and true
   (and true
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.balance) (- 0 2)))
   )
))) :named ax_anon16@23_assertion))
(assert (! (=> anon16@24 (and true 
   (and true
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.balance) (- 0 2)))
   )
(or anon16@24_assertion anon16@25)
)) :named ax_anon16@24))
(assert (! (=> anon32@26_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (or (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) null)) (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right))))))
   )
))) :named ax_anon32@26_assertion))
(assert (! (=> anon32@27 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (or (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) null)) (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right))))))
   )
(or anon32@27_assertion anon32@28)
)) :named ax_anon32@27))
(assert (! (=> anon16@24_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (or (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.balance) (- (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)))))))
   )
))) :named ax_anon16@24_assertion))
(assert (! (=> anon16@25 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (or (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.balance) (- (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)))))))
   )
(or anon16@25_assertion anon16@26)
)) :named ax_anon16@25))
(assert (! (=> anon32@27_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) Node.balance) 1)))))
   )
))) :named ax_anon32@27_assertion))
(assert (! (=> anon32@28 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) Node.balance) 1)))))
   )
(or anon32@28_assertion anon32@29)
)) :named ax_anon32@28))
(assert (! (=> anon16@25_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (or (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left))))))
   )
))) :named ax_anon16@25_assertion))
(assert (! (=> anon16@26 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (or (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left))))))
   )
(or anon16@26_assertion anon16@27)
)) :named ax_anon16@26))
(assert (! (=> anon32@28_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) Node.right)))))
   )
))) :named ax_anon32@28_assertion))
(assert (! (=> anon32@29 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) Node.right)))))
   )
(or anon32@29_assertion anon32@30)
)) :named ax_anon32@29))
(assert (! (=> anon16@26_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (or (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right))))))
   )
))) :named ax_anon16@26_assertion))
(assert (! (=> anon16@27 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (or (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right))))))
   )
(or anon16@27_assertion anon16@28)
)) :named ax_anon16@27))
(assert (! (=> anon32@29_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) Node.left)))))
   )
))) :named ax_anon32@29_assertion))
(assert (! (=> anon32@30 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.right) Node.left)))))
   )
(or anon32@30_assertion anon32@31)
)) :named ax_anon32@30))
(assert (! (=> anon16@27_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) Node.balance) 1)))))
   )
))) :named ax_anon16@27_assertion))
(assert (! (=> anon16@28 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) Node.balance) 1)))))
   )
(or anon16@28_assertion anon16@29)
)) :named ax_anon16@28))
(assert (! (=> anon32@30_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) Node.balance) 1)))))
   )
))) :named ax_anon32@30_assertion))
(assert (! (=> anon32@31 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) Node.balance) 1)))))
   )
(or anon32@31_assertion anon32@32)
)) :named ax_anon32@31))
(assert (! (=> anon16@28_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) Node.right)))))
   )
))) :named ax_anon16@28_assertion))
(assert (! (=> anon16@29 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) Node.right)))))
   )
(or anon16@29_assertion anon16@30)
)) :named ax_anon16@29))
(assert (! (=> anon32@31_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) Node.right)))))
   )
))) :named ax_anon32@31_assertion))
(assert (! (=> anon32@32 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) Node.right)))))
   )
(or anon32@32_assertion anon32@33)
)) :named ax_anon32@32))
(assert (! (=> anon16@29_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) Node.left)))))
   )
))) :named ax_anon16@29_assertion))
(assert (! (=> anon16@30 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.right) Node.left)))))
   )
(or anon16@30_assertion anon16@31)
)) :named ax_anon16@30))
(assert (! (=> anon32@32_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) Node.left)))))
   )
))) :named ax_anon32@32_assertion))
(assert (! (=> anon32@33 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right) Node.left) Node.left)))))
   )
(or anon32@33_assertion anon32@34)
)) :named ax_anon32@33))
(assert (! (=> anon16@30_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) Node.balance) 1)))))
   )
))) :named ax_anon16@30_assertion))
(assert (! (=> anon16@31 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) Node.balance) 1)))))
   )
(or anon16@31_assertion anon16@32)
)) :named ax_anon16@31))
(assert (! (=> anon32@33_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.balance) 1)))))
   )
))) :named ax_anon32@33_assertion))
(assert (! (=> anon32@34 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.balance) 1)))))
   )
(or anon32@34_assertion anon32@35)
)) :named ax_anon32@34))
(assert (! (=> anon16@31_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) Node.right)))))
   )
))) :named ax_anon16@31_assertion))
(assert (! (=> anon16@32 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) Node.right)))))
   )
(or anon16@32_assertion anon16@33)
)) :named ax_anon16@32))
(assert (! (=> anon32@34_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.right)))))
   )
))) :named ax_anon32@34_assertion))
(assert (! (=> anon32@35 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.right)))))
   )
(or anon32@35_assertion anon32@36)
)) :named ax_anon32@35))
(assert (! (=> anon16@32_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) Node.left)))))
   )
))) :named ax_anon16@32_assertion))
(assert (! (=> anon16@33 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left) Node.left) Node.left)))))
   )
(or anon16@33_assertion anon16@34)
)) :named ax_anon16@33))
(assert (! (=> anon32@35_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.left)))))
   )
))) :named ax_anon32@35_assertion))
(assert (! (=> anon32@36 (and true 
   (and true
      ($HeapSucc $Heap@12 $Heap@13)
      ($IsGoodHeap $Heap@13)
      (= $Heap@22 $Heap@13)
      (= (+ (Node.Height $Heap@13 call3formal@r@34@0) 1) (Node.Height $Heap@12 t@6))
      (= (= true $@bf_111) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left))))
      (= (= true $@bf_112) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right))))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.balance) 0)
      (= call3formal@r@34@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right))
      (= deltaH@9@2 deltaH@9@0)
      (= r@8@0 call3formal@r@34@0)
      (=> (Node.Balanced@canCall $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (or (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) null)) (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.left) Node.left)))))
      (=> (Node.Balanced@canCall $Heap@13 call3formal@r@34@0) (or (Node.Balanced $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (Node.Balanced $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left)))))
      (=> (Node.Balanced@canCall $Heap@13 call3formal@r@34@0) (or (Node.Balanced $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (Node.Balanced $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right)))))
      (=> (Node.Balanced@canCall $Heap@13 call3formal@r@34@0) (or (Node.Balanced $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.balance) 1)))))
      (=> (Node.BalanceValid@canCall $Heap@13 call3formal@r@34@0) (or (Node.BalanceValid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.balance) (- (Node.Height $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right)) (Node.Height $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left)))))))
      (=> (Node.BalanceValid@canCall $Heap@13 call3formal@r@34@0) (or (Node.BalanceValid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (Node.BalanceValid $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left))))))
      (=> (Node.BalanceValid@canCall $Heap@13 call3formal@r@34@0) (or (Node.BalanceValid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (Node.BalanceValid $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.height) (+ (Math.max $Heap@13 (Node.Height $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left)) (Node.Height $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right))) 1)))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (forall( (|i#16_$29| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$29|)) (< |i#16_$29| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.value)))))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left)))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@34@0)))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (forall( (|i#17_$28| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$28|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.value) |i#17_$28|))))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right)))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@34@0)))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) ($Box$ref$ call3formal@r@34@0)))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (Node.Valid $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left)))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (Node.Valid $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right)))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) ($Box$ref$ null))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
      (=> (Node.Valid@canCall $Heap@13 call3formal@r@34@0) (or (Node.Valid $Heap@13 call3formal@r@34@0) (=> (not (= call3formal@r@34@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@34@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
      (=> (not (= call3formal@r@34@0 null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.balance) (- (Node.Height $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right)) (Node.Height $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (Node.BalanceValid $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (Node.BalanceValid $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right)))))
      (=> (not (= call3formal@r@34@0 null)) (and (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) ($Box$ref$ call3formal@r@34@0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@34@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@34@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr))))) (Node.Valid $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left))) (Node.Valid $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@34@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) null)) (forall( (|i#16_$28| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$28|)) (< |i#16_$28| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) null)) (forall( (|i#17_$27| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$27|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.value) |i#17_$27|)))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.height) (+ (Math.max $Heap@13 (Node.Height $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left)) (Node.Height $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right))) 1))))
      (=> (not (= call3formal@r@34@0 null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 call3formal@r@34@0 Node.balance) 1)) (Node.Balanced $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.right))) (Node.Balanced $Heap@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 call3formal@r@34@0 Node.left))))
      (forall( (|$o_$58_$0| ref) (|$f_$48_$0| Field$Bool$))(!(=> (and (not (= |$o_$58_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$58_$0| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@13 |$o_$58_$0| |$f_$48_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$58_$0| |$f_$48_$0|)) (= |$o_$58_$0| t@6)) (and (not (= t@6 null)) (= |$o_$58_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@13 |$o_$58_$0| |$f_$48_$0|))))
      (forall( (|$o_$58_$1| ref) (|$f_$48_$1| Field$Int$))(!(=> (and (not (= |$o_$58_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$58_$1| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 |$o_$58_$1| |$f_$48_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 |$o_$58_$1| |$f_$48_$1|)) (= |$o_$58_$1| t@6)) (and (not (= t@6 null)) (= |$o_$58_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@13 |$o_$58_$1| |$f_$48_$1|))))
      (forall( (|$o_$58_$2| ref) (|$f_$48_$2| Field$ref$))(!(=> (and (not (= |$o_$58_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$58_$2| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 |$o_$58_$2| |$f_$48_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 |$o_$58_$2| |$f_$48_$2|)) (= |$o_$58_$2| t@6)) (and (not (= t@6 null)) (= |$o_$58_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@13 |$o_$58_$2| |$f_$48_$2|))))
      (forall( (|$o_$58_$3| ref) (|$f_$48_$3| Field$BoxType$))(!(=> (and (not (= |$o_$58_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$58_$3| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@13 |$o_$58_$3| |$f_$48_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@12 |$o_$58_$3| |$f_$48_$3|)) (= |$o_$58_$3| t@6)) (and (not (= t@6 null)) (= |$o_$58_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@13 |$o_$58_$3| |$f_$48_$3|))))
      (forall( (|$o_$58_$4| ref) (|$f_$48_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (not (= |$o_$58_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$58_$4| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 |$o_$58_$4| |$f_$48_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 |$o_$58_$4| |$f_$48_$4|)) (= |$o_$58_$4| t@6)) (and (not (= t@6 null)) (= |$o_$58_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 t@6 Node.right)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 |$o_$58_$4| |$f_$48_$4|))))
      (Node.Balanced $Heap@13 call3formal@r@34@0)
      (Node.Balanced@canCall $Heap@13 call3formal@r@34@0)
      (Node.BalanceValid $Heap@13 call3formal@r@34@0)
      (Node.BalanceValid@canCall $Heap@13 call3formal@r@34@0)
      (Node.Valid $Heap@13 call3formal@r@34@0)
      (Node.Valid@canCall $Heap@13 call3formal@r@34@0)
      (or (= call3formal@r@34@0 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@13 call3formal@r@34@0 alloc) (= (dtype call3formal@r@34@0) class.Node)))
      (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Contents))
      (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 call3formal@r@34@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 t@6 Node.Repr))
   )
$join_2
)) :named ax_anon32@36))
(assert (! (=> anon16@33_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.balance) 1)))))
   )
))) :named ax_anon16@33_assertion))
(assert (! (=> anon16@34 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.balance) 1)))))
   )
(or anon16@34_assertion anon16@35)
)) :named ax_anon16@34))
(assert (! (=> $join_2 (and true 
   (and true
   )
$join_$@condition_$6
)) :named ax_$join_2))
(assert (! (=> anon16@34_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.right)))))
   )
))) :named ax_anon16@34_assertion))
(assert (! (=> anon16@35 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.right)))))
   )
(or anon16@35_assertion anon16@36)
)) :named ax_anon16@35))
(assert (! (=> $join_$@condition_$6 (and true 
   (and true
   )
$join_$@condition_$2
)) :named ax_$join_$@condition_$6))
(assert (! (=> anon16@35_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.left)))))
   )
))) :named ax_anon16@35_assertion))
(assert (! (=> anon16@36 (and true 
   (and true
      ($HeapSucc $Heap@20 $Heap@21)
      ($IsGoodHeap $Heap@21)
      (= $Heap@22 $Heap@21)
      (= (+ (Node.Height $Heap@21 call3formal@r@29@0) 1) (Node.Height $Heap@20 t@6))
      (= (= true $@bf_103) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left))))
      (= (= true $@bf_104) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right))))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.balance) 0)
      (= call3formal@r@29@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left))
      (= deltaH@9@2 deltaH@9@1)
      (= r@8@0 call3formal@r@29@0)
      (=> (Node.Balanced@canCall $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (or (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.right) Node.left)))))
      (=> (Node.Balanced@canCall $Heap@21 call3formal@r@29@0) (or (Node.Balanced $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (Node.Balanced $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left)))))
      (=> (Node.Balanced@canCall $Heap@21 call3formal@r@29@0) (or (Node.Balanced $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (Node.Balanced $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right)))))
      (=> (Node.Balanced@canCall $Heap@21 call3formal@r@29@0) (or (Node.Balanced $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.balance) 1)))))
      (=> (Node.BalanceValid@canCall $Heap@21 call3formal@r@29@0) (or (Node.BalanceValid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.balance) (- (Node.Height $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right)) (Node.Height $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left)))))))
      (=> (Node.BalanceValid@canCall $Heap@21 call3formal@r@29@0) (or (Node.BalanceValid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (Node.BalanceValid $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left))))))
      (=> (Node.BalanceValid@canCall $Heap@21 call3formal@r@29@0) (or (Node.BalanceValid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (Node.BalanceValid $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.height) (+ (Math.max $Heap@21 (Node.Height $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left)) (Node.Height $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right))) 1)))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (forall( (|i#16_$23| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$23|)) (< |i#16_$23| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.value)))))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left)))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@29@0)))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (forall( (|i#17_$22| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$22|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.value) |i#17_$22|))))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right)))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@29@0)))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) ($Box$ref$ call3formal@r@29@0)))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (Node.Valid $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left)))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (Node.Valid $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right)))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) ($Box$ref$ null))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
      (=> (Node.Valid@canCall $Heap@21 call3formal@r@29@0) (or (Node.Valid $Heap@21 call3formal@r@29@0) (=> (not (= call3formal@r@29@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@29@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
      (=> (not (= call3formal@r@29@0 null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.balance) (- (Node.Height $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right)) (Node.Height $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (Node.BalanceValid $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (Node.BalanceValid $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right)))))
      (=> (not (= call3formal@r@29@0 null)) (and (and (and (and (and (and (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) ($Box$ref$ call3formal@r@29@0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@29@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@29@0)))) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr))))) (Node.Valid $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left))) (Node.Valid $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Repr)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@29@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Repr) Set@Empty$BoxType$)))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) null)) (forall( (|i#16_$22| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$22|)) (< |i#16_$22| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.value))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) null)) (forall( (|i#17_$21| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$21|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.value) |i#17_$21|)))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.height) (+ (Math.max $Heap@21 (Node.Height $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left)) (Node.Height $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right))) 1))))
      (=> (not (= call3formal@r@29@0 null)) (and (and (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 call3formal@r@29@0 Node.balance) 1)) (Node.Balanced $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.right))) (Node.Balanced $Heap@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 call3formal@r@29@0 Node.left))))
      (forall( (|$o_$54_$0| ref) (|$f_$44_$0| Field$Bool$))(!(=> (and (not (= |$o_$54_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$54_$0| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@21 |$o_$54_$0| |$f_$44_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$54_$0| |$f_$44_$0|)) (= |$o_$54_$0| t@6)) (and (not (= t@6 null)) (= |$o_$54_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@21 |$o_$54_$0| |$f_$44_$0|))))
      (forall( (|$o_$54_$1| ref) (|$f_$44_$1| Field$Int$))(!(=> (and (not (= |$o_$54_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$54_$1| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 |$o_$54_$1| |$f_$44_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 |$o_$54_$1| |$f_$44_$1|)) (= |$o_$54_$1| t@6)) (and (not (= t@6 null)) (= |$o_$54_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@21 |$o_$54_$1| |$f_$44_$1|))))
      (forall( (|$o_$54_$2| ref) (|$f_$44_$2| Field$ref$))(!(=> (and (not (= |$o_$54_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$54_$2| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 |$o_$54_$2| |$f_$44_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 |$o_$54_$2| |$f_$44_$2|)) (= |$o_$54_$2| t@6)) (and (not (= t@6 null)) (= |$o_$54_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@21 |$o_$54_$2| |$f_$44_$2|))))
      (forall( (|$o_$54_$3| ref) (|$f_$44_$3| Field$BoxType$))(!(=> (and (not (= |$o_$54_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$54_$3| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@21 |$o_$54_$3| |$f_$44_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@20 |$o_$54_$3| |$f_$44_$3|)) (= |$o_$54_$3| t@6)) (and (not (= t@6 null)) (= |$o_$54_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@21 |$o_$54_$3| |$f_$44_$3|))))
      (forall( (|$o_$54_$4| ref) (|$f_$44_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (not (= |$o_$54_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@20 |$o_$54_$4| alloc)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 |$o_$54_$4| |$f_$44_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 |$o_$54_$4| |$f_$44_$4|)) (= |$o_$54_$4| t@6)) (and (not (= t@6 null)) (= |$o_$54_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 t@6 Node.left)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 |$o_$54_$4| |$f_$44_$4|))))
      (Node.Balanced $Heap@21 call3formal@r@29@0)
      (Node.Balanced@canCall $Heap@21 call3formal@r@29@0)
      (Node.BalanceValid $Heap@21 call3formal@r@29@0)
      (Node.BalanceValid@canCall $Heap@21 call3formal@r@29@0)
      (Node.Valid $Heap@21 call3formal@r@29@0)
      (Node.Valid@canCall $Heap@21 call3formal@r@29@0)
      (or (= call3formal@r@29@0 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@21 call3formal@r@29@0 alloc) (= (dtype call3formal@r@29@0) class.Node)))
      (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Contents))
      (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@21 call3formal@r@29@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 t@6 Node.Repr))
   )
$join_2@1
)) :named ax_anon16@36))
(assert (! (=> $join_$@condition_$2 (and true 
   (and true
   )
$join_$@condition_$0
)) :named ax_$join_$@condition_$2))
(assert (! (=> $join_2@1 (and true 
   (and true
   )
$join_$@condition_$4
)) :named ax_$join_2@1))
(assert (! (=> $join_$@condition_$4 (and true 
   (and true
   )
$join_$@condition_$0
)) :named ax_$join_$@condition_$4))
(assert (! (=> $join_$@condition_$0 (and true 
   (and true
   )
GeneratedUnifiedExit
)) :named ax_$join_$@condition_$0))
(assert (! (=> GeneratedUnifiedExit (and true 
   (and true
   )
(or GeneratedUnifiedExit@1 GeneratedUnifiedExit_assertion)
)) :named ax_GeneratedUnifiedExit))
(assert (! (=> GeneratedUnifiedExit@1 (and true 
   (and true
      (not (= r@8@0 null))
   )
(or GeneratedUnifiedExit@1_assertion GeneratedUnifiedExit@2)
)) :named ax_GeneratedUnifiedExit@1))
(assert (! (=> GeneratedUnifiedExit_assertion (not (and true
   (and true
      (not (= r@8@0 null))
   )
))) :named ax_GeneratedUnifiedExit_assertion))
(assert (! (=> GeneratedUnifiedExit@1_assertion (not (and true
   (and true
      (or (or (and (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ r@8@0))) (= r@8@0 null)) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap r@8@0 alloc)))
   )
))) :named ax_GeneratedUnifiedExit@1_assertion))
(assert (! (=> GeneratedUnifiedExit@2 (and true 
   (and true
      (or (or (and (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ r@8@0))) (= r@8@0 null)) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap r@8@0 alloc)))
   )
(or GeneratedUnifiedExit@2_assertion GeneratedUnifiedExit@3)
)) :named ax_GeneratedUnifiedExit@2))
(assert (! (=> GeneratedUnifiedExit@2_assertion (not (and true
   (and true
      (=> (not (= t@6 null)) (forall( (|$o_$59| ref))(=> (and (and (not (= |$o_$59| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ |$o_$59|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ |$o_$59|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$59| alloc)))))
   )
))) :named ax_GeneratedUnifiedExit@2_assertion))
(assert (! (=> GeneratedUnifiedExit@3 (and true 
   (and true
      (=> (not (= t@6 null)) (forall( (|$o_$59| ref))(=> (and (and (not (= |$o_$59| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ |$o_$59|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ |$o_$59|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$59| alloc)))))
   )
(or GeneratedUnifiedExit@3_assertion GeneratedUnifiedExit@4)
)) :named ax_GeneratedUnifiedExit@3))
(assert (! (=> GeneratedUnifiedExit@3_assertion (not (and true
   (and true
      (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Contents) (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7)))))
   )
))) :named ax_GeneratedUnifiedExit@3_assertion))
(assert (! (=> GeneratedUnifiedExit@4 (and true 
   (and true
      (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Contents) (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7)))))
   )
(or GeneratedUnifiedExit@4_assertion GeneratedUnifiedExit@5)
)) :named ax_GeneratedUnifiedExit@4))
(assert (! (=> GeneratedUnifiedExit@4_assertion (not (and true
   (and true
      (=> (= t@6 null) (forall( (|$o_$60| ref))(=> (and (not (= |$o_$60| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ |$o_$60|))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$60| alloc)))))
   )
))) :named ax_GeneratedUnifiedExit@4_assertion))
(assert (! (=> GeneratedUnifiedExit@5 (and true 
   (and true
      (=> (= t@6 null) (forall( (|$o_$60| ref))(=> (and (not (= |$o_$60| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ |$o_$60|))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$60| alloc)))))
   )
(or GeneratedUnifiedExit@5_assertion GeneratedUnifiedExit@6)
)) :named ax_GeneratedUnifiedExit@5))
(assert (! (=> GeneratedUnifiedExit@5_assertion (not (and true
   (and true
      (=> (= t@6 null) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
   )
))) :named ax_GeneratedUnifiedExit@5_assertion))
(assert (! (=> GeneratedUnifiedExit@6 (and true 
   (and true
      (=> (= t@6 null) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
   )
(or GeneratedUnifiedExit@6_assertion GeneratedUnifiedExit@7)
)) :named ax_GeneratedUnifiedExit@6))
(assert (! (=> GeneratedUnifiedExit@6_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ r@8@0)))))
   )
))) :named ax_GeneratedUnifiedExit@6_assertion))
(assert (! (=> GeneratedUnifiedExit@7 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ r@8@0)))))
   )
(or GeneratedUnifiedExit@7_assertion GeneratedUnifiedExit@8)
)) :named ax_GeneratedUnifiedExit@7))
(assert (! (=> GeneratedUnifiedExit@7_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ null))))))
   )
))) :named ax_GeneratedUnifiedExit@7_assertion))
(assert (! (=> GeneratedUnifiedExit@8 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ null))))))
   )
(or GeneratedUnifiedExit@8_assertion GeneratedUnifiedExit@9)
)) :named ax_GeneratedUnifiedExit@8))
(assert (! (=> GeneratedUnifiedExit@8_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left)))))))
   )
))) :named ax_GeneratedUnifiedExit@8_assertion))
(assert (! (=> GeneratedUnifiedExit@9 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left)))))))
   )
(or GeneratedUnifiedExit@10 GeneratedUnifiedExit@9_assertion)
)) :named ax_GeneratedUnifiedExit@9))
(assert (! (=> GeneratedUnifiedExit@10 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Repr) ($Box$ref$ r@8@0)))))))
   )
(or GeneratedUnifiedExit@10_assertion GeneratedUnifiedExit@11)
)) :named ax_GeneratedUnifiedExit@10))
(assert (! (=> GeneratedUnifiedExit@9_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Repr) ($Box$ref$ r@8@0)))))))
   )
))) :named ax_GeneratedUnifiedExit@9_assertion))
(assert (! (=> GeneratedUnifiedExit@10_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr))))))
   )
))) :named ax_GeneratedUnifiedExit@10_assertion))
(assert (! (=> GeneratedUnifiedExit@11 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr))))))
   )
(or GeneratedUnifiedExit@11_assertion GeneratedUnifiedExit@12)
)) :named ax_GeneratedUnifiedExit@11))
(assert (! (=> GeneratedUnifiedExit@11_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right)))))))
   )
))) :named ax_GeneratedUnifiedExit@11_assertion))
(assert (! (=> GeneratedUnifiedExit@12 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right)))))))
   )
(or GeneratedUnifiedExit@12_assertion GeneratedUnifiedExit@13)
)) :named ax_GeneratedUnifiedExit@12))
(assert (! (=> GeneratedUnifiedExit@12_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Repr) ($Box$ref$ r@8@0)))))))
   )
))) :named ax_GeneratedUnifiedExit@12_assertion))
(assert (! (=> GeneratedUnifiedExit@13 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Repr) ($Box$ref$ r@8@0)))))))
   )
(or GeneratedUnifiedExit@13_assertion GeneratedUnifiedExit@14)
)) :named ax_GeneratedUnifiedExit@13))
(assert (! (=> GeneratedUnifiedExit@13_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr))))))
   )
))) :named ax_GeneratedUnifiedExit@13_assertion))
(assert (! (=> GeneratedUnifiedExit@14 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr))))))
   )
(or GeneratedUnifiedExit@14_assertion GeneratedUnifiedExit@15)
)) :named ax_GeneratedUnifiedExit@14))
(assert (! (=> GeneratedUnifiedExit@14_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Node.Valid $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left)))))
   )
))) :named ax_GeneratedUnifiedExit@14_assertion))
(assert (! (=> GeneratedUnifiedExit@15 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Node.Valid $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left)))))
   )
(or GeneratedUnifiedExit@15_assertion GeneratedUnifiedExit@16)
)) :named ax_GeneratedUnifiedExit@15))
(assert (! (=> GeneratedUnifiedExit@15_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Node.Valid $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right)))))
   )
))) :named ax_GeneratedUnifiedExit@15_assertion))
(assert (! (=> GeneratedUnifiedExit@16 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Node.Valid $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right)))))
   )
(or GeneratedUnifiedExit@16_assertion GeneratedUnifiedExit@17)
)) :named ax_GeneratedUnifiedExit@16))
(assert (! (=> GeneratedUnifiedExit@16_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Repr))))))
   )
))) :named ax_GeneratedUnifiedExit@16_assertion))
(assert (! (=> GeneratedUnifiedExit@17 (and true 
   (and true
      (= (= true $@bf_23) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left))))
      (= (= true $@bf_24) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right))))
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Repr))))))
   )
(or GeneratedUnifiedExit@17_assertion GeneratedUnifiedExit@18)
)) :named ax_GeneratedUnifiedExit@17))
(assert (! (=> GeneratedUnifiedExit@17_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ r@8@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
))) :named ax_GeneratedUnifiedExit@17_assertion))
(assert (! (=> GeneratedUnifiedExit@18 (and true 
   (and true
      (= (= true $@bf_23) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left))))
      (= (= true $@bf_24) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right))))
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ r@8@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Repr) Set@Empty$BoxType$))))))
   )
(or GeneratedUnifiedExit@18_assertion GeneratedUnifiedExit@19)
)) :named ax_GeneratedUnifiedExit@18))
(assert (! (=> GeneratedUnifiedExit@18_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
))) :named ax_GeneratedUnifiedExit@18_assertion))
(assert (! (=> GeneratedUnifiedExit@19 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 r@8@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Contents) Set@Empty$BoxType$))))))
   )
(or GeneratedUnifiedExit@19_assertion GeneratedUnifiedExit@20)
)) :named ax_GeneratedUnifiedExit@19))
(assert (! (=> GeneratedUnifiedExit@19_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (forall( (|i#16_$30| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$30|)) (< |i#16_$30| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.value)))))))))
   )
))) :named ax_GeneratedUnifiedExit@19_assertion))
(assert (! (=> GeneratedUnifiedExit@20 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (forall( (|i#16_$30| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$30|)) (< |i#16_$30| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.value)))))))))
   )
(or GeneratedUnifiedExit@20_assertion GeneratedUnifiedExit@21)
)) :named ax_GeneratedUnifiedExit@20))
(assert (! (=> GeneratedUnifiedExit@20_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (forall( (|i#17_$29| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$29|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.value) |i#17_$29|))))))))
   )
))) :named ax_GeneratedUnifiedExit@20_assertion))
(assert (! (=> GeneratedUnifiedExit@21 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (forall( (|i#17_$29| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$29|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.value) |i#17_$29|))))))))
   )
(or GeneratedUnifiedExit@21_assertion GeneratedUnifiedExit@22)
)) :named ax_GeneratedUnifiedExit@21))
(assert (! (=> GeneratedUnifiedExit@21_assertion (not (and true
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.height) (+ (Math.max $Heap@22 (Node.Height $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left)) (Node.Height $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right))) 1)))))
   )
))) :named ax_GeneratedUnifiedExit@21_assertion))
(assert (! (=> GeneratedUnifiedExit@22 (and true 
   (and true
      (=> (Node.Valid@canCall $Heap@22 r@8@0) (or (Node.Valid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.height) (+ (Math.max $Heap@22 (Node.Height $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left)) (Node.Height $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right))) 1)))))
   )
(or GeneratedUnifiedExit@22_assertion GeneratedUnifiedExit@23)
)) :named ax_GeneratedUnifiedExit@22))
(assert (! (=> GeneratedUnifiedExit@22_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@22 r@8@0) (or (Node.BalanceValid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.balance) (- (Node.Height $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right)) (Node.Height $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left)))))))
   )
))) :named ax_GeneratedUnifiedExit@22_assertion))
(assert (! (=> GeneratedUnifiedExit@23 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@22 r@8@0) (or (Node.BalanceValid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.balance) (- (Node.Height $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right)) (Node.Height $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left)))))))
   )
(or GeneratedUnifiedExit@23_assertion GeneratedUnifiedExit@24)
)) :named ax_GeneratedUnifiedExit@23))
(assert (! (=> GeneratedUnifiedExit@23_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@22 r@8@0) (or (Node.BalanceValid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (Node.BalanceValid $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left))))))
   )
))) :named ax_GeneratedUnifiedExit@23_assertion))
(assert (! (=> GeneratedUnifiedExit@24 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@22 r@8@0) (or (Node.BalanceValid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left) null)) (Node.BalanceValid $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left))))))
   )
(or GeneratedUnifiedExit@24_assertion GeneratedUnifiedExit@25)
)) :named ax_GeneratedUnifiedExit@24))
(assert (! (=> GeneratedUnifiedExit@24_assertion (not (and true
   (and true
      (=> (Node.BalanceValid@canCall $Heap@22 r@8@0) (or (Node.BalanceValid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (Node.BalanceValid $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right))))))
   )
))) :named ax_GeneratedUnifiedExit@24_assertion))
(assert (! (=> GeneratedUnifiedExit@25 (and true 
   (and true
      (=> (Node.BalanceValid@canCall $Heap@22 r@8@0) (or (Node.BalanceValid $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right) null)) (Node.BalanceValid $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right))))))
   )
(or GeneratedUnifiedExit@25_assertion GeneratedUnifiedExit@26)
)) :named ax_GeneratedUnifiedExit@25))
(assert (! (=> GeneratedUnifiedExit@25_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@22 r@8@0) (or (Node.Balanced $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.balance) 1)))))
   )
))) :named ax_GeneratedUnifiedExit@25_assertion))
(assert (! (=> GeneratedUnifiedExit@26 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@22 r@8@0) (or (Node.Balanced $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.balance) 1)))))
   )
(or GeneratedUnifiedExit@26_assertion GeneratedUnifiedExit@27)
)) :named ax_GeneratedUnifiedExit@26))
(assert (! (=> GeneratedUnifiedExit@26_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@22 r@8@0) (or (Node.Balanced $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Node.Balanced $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right)))))
   )
))) :named ax_GeneratedUnifiedExit@26_assertion))
(assert (! (=> GeneratedUnifiedExit@27 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@22 r@8@0) (or (Node.Balanced $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Node.Balanced $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.right)))))
   )
(or GeneratedUnifiedExit@27_assertion GeneratedUnifiedExit@28)
)) :named ax_GeneratedUnifiedExit@27))
(assert (! (=> GeneratedUnifiedExit@27_assertion (not (and true
   (and true
      (=> (Node.Balanced@canCall $Heap@22 r@8@0) (or (Node.Balanced $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Node.Balanced $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left)))))
   )
))) :named ax_GeneratedUnifiedExit@27_assertion))
(assert (! (=> GeneratedUnifiedExit@28 (and true 
   (and true
      (=> (Node.Balanced@canCall $Heap@22 r@8@0) (or (Node.Balanced $Heap@22 r@8@0) (=> (not (= r@8@0 null)) (Node.Balanced $Heap@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@22 r@8@0 Node.left)))))
   )
(or GeneratedUnifiedExit@28_assertion GeneratedUnifiedExit@29)
)) :named ax_GeneratedUnifiedExit@28))
(assert (! (=> GeneratedUnifiedExit@28_assertion (not (and true
   (and true
      (= (- (Node.Height $Heap@22 r@8@0) (Node.Height $Heap t@6)) deltaH@9@2)
   )
))) :named ax_GeneratedUnifiedExit@28_assertion))
(assert (! (=> GeneratedUnifiedExit@29 (and true 
   (and true
      (= (- (Node.Height $Heap@22 r@8@0) (Node.Height $Heap t@6)) deltaH@9@2)
   )
(or GeneratedUnifiedExit@29_assertion GeneratedUnifiedExit@30)
)) :named ax_GeneratedUnifiedExit@29))
(assert (! (=> GeneratedUnifiedExit@29_assertion (not (and true
   (and true
      (or (= deltaH@9@2 0) (= deltaH@9@2 1))
   )
))) :named ax_GeneratedUnifiedExit@29_assertion))
(assert (! (=> GeneratedUnifiedExit@30 (and true 
   (and true
      (or (= deltaH@9@2 0) (= deltaH@9@2 1))
   )
GeneratedUnifiedExit@30_assertion
)) :named ax_GeneratedUnifiedExit@30))
(assert (! (=> GeneratedUnifiedExit@30_assertion (not (and true
   (and true
      (=> (and (not (= t@6 null)) (= deltaH@9@2 1)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@22 r@8@0 Node.balance) 0)))
   )
))) :named ax_GeneratedUnifiedExit@30_assertion))
(assert (=> false (not (and
   anon12@1_assertion
   anon12@3_assertion
   anon12@4_assertion
   anon12@5_assertion
   anon12@6_assertion
   anon16@10_assertion
   anon16@11_assertion
   anon16@12_assertion
   anon16@13_assertion
   anon16@14_assertion
   anon16@15_assertion
   anon16@16_assertion
   anon16@17_assertion
   anon16@18_assertion
   anon16@19_assertion
   anon16@2_assertion
   anon16@20_assertion
   anon16@21_assertion
   anon16@22_assertion
   anon16@23_assertion
   anon16@24_assertion
   anon16@25_assertion
   anon16@26_assertion
   anon16@27_assertion
   anon16@28_assertion
   anon16@29_assertion
   anon16@3_assertion
   anon16@30_assertion
   anon16@31_assertion
   anon16@32_assertion
   anon16@33_assertion
   anon16@34_assertion
   anon16@35_assertion
   anon16@4_assertion
   anon16@5_assertion
   anon16@6_assertion
   anon16@7_assertion
   anon16@8_assertion
   anon16@9_assertion
   anon16_assertion
   anon22@1_assertion
   anon22@10_assertion
   anon22@11_assertion
   anon22@12_assertion
   anon22@13_assertion
   anon22@14_assertion
   anon22@15_assertion
   anon22@16_assertion
   anon22@17_assertion
   anon22@18_assertion
   anon22@19_assertion
   anon22@20_assertion
   anon22@21_assertion
   anon22@22_assertion
   anon22@23_assertion
   anon22@24_assertion
   anon22@25_assertion
   anon22@4_assertion
   anon22@7_assertion
   anon22@8_assertion
   anon22@9_assertion
   anon28@1_assertion
   anon28@3_assertion
   anon28@4_assertion
   anon28@5_assertion
   anon28@6_assertion
   anon32@10_assertion
   anon32@11_assertion
   anon32@12_assertion
   anon32@13_assertion
   anon32@14_assertion
   anon32@15_assertion
   anon32@16_assertion
   anon32@17_assertion
   anon32@18_assertion
   anon32@19_assertion
   anon32@2_assertion
   anon32@20_assertion
   anon32@21_assertion
   anon32@22_assertion
   anon32@23_assertion
   anon32@24_assertion
   anon32@25_assertion
   anon32@26_assertion
   anon32@27_assertion
   anon32@28_assertion
   anon32@29_assertion
   anon32@3_assertion
   anon32@30_assertion
   anon32@31_assertion
   anon32@32_assertion
   anon32@33_assertion
   anon32@34_assertion
   anon32@35_assertion
   anon32@4_assertion
   anon32@5_assertion
   anon32@6_assertion
   anon32@7_assertion
   anon32@8_assertion
   anon32@9_assertion
   anon32_assertion
   anon35_Then_assertion
   anon36_Then@1_assertion
   anon36_Then@10_assertion
   anon36_Then@11_assertion
   anon36_Then@12_assertion
   anon36_Then@13_assertion
   anon36_Then@14_assertion
   anon36_Then@15_assertion
   anon36_Then@16_assertion
   anon36_Then@2_assertion
   anon36_Then@20_assertion
   anon36_Then@21_assertion
   anon36_Then@22_assertion
   anon36_Then@24_assertion
   anon36_Then@26_assertion
   anon36_Then@27_assertion
   anon36_Then@28_assertion
   anon36_Then@29_assertion
   anon36_Then@3_assertion
   anon36_Then@30_assertion
   anon36_Then@31_assertion
   anon36_Then@32_assertion
   anon36_Then@33_assertion
   anon36_Then@34_assertion
   anon36_Then@35_assertion
   anon36_Then@36_assertion
   anon36_Then@37_assertion
   anon36_Then@38_assertion
   anon36_Then@39_assertion
   anon36_Then@4_assertion
   anon36_Then@40_assertion
   anon36_Then@41_assertion
   anon36_Then@42_assertion
   anon36_Then@43_assertion
   anon36_Then@44_assertion
   anon36_Then@45_assertion
   anon36_Then@46_assertion
   anon36_Then@47_assertion
   anon36_Then@48_assertion
   anon36_Then@49_assertion
   anon36_Then@5_assertion
   anon36_Then@51_assertion
   anon36_Then@53_assertion
   anon36_Then@6_assertion
   anon36_Then@7_assertion
   anon36_Then@8_assertion
   anon36_Then@9_assertion
   anon40_Then@1_assertion
   anon40_Then@2_assertion
   anon40_Then@3_assertion
   anon40_Then@4_assertion
   anon40_Then@6_assertion
   anon41_Then@10_assertion
   anon41_Then@11_assertion
   anon41_Then@12_assertion
   anon41_Then@13_assertion
   anon41_Then@14_assertion
   anon41_Then@15_assertion
   anon41_Then@16_assertion
   anon41_Then@17_assertion
   anon41_Then@18_assertion
   anon41_Then@19_assertion
   anon41_Then@20_assertion
   anon41_Then@21_assertion
   anon41_Then@22_assertion
   anon41_Then@23_assertion
   anon41_Then@24_assertion
   anon41_Then@25_assertion
   anon41_Then@26_assertion
   anon41_Then@27_assertion
   anon41_Then@28_assertion
   anon41_Then@3_assertion
   anon41_Then@4_assertion
   anon41_Then@5_assertion
   anon41_Then@6_assertion
   anon41_Then@7_assertion
   anon41_Then@8_assertion
   anon41_Then@9_assertion
   anon42_Then@1_assertion
   anon42_Then@10_assertion
   anon42_Then@11_assertion
   anon42_Then@12_assertion
   anon42_Then@13_assertion
   anon42_Then@14_assertion
   anon42_Then@15_assertion
   anon42_Then@16_assertion
   anon42_Then@18_assertion
   anon42_Then@2_assertion
   anon42_Then@20_assertion
   anon42_Then@21_assertion
   anon42_Then@22_assertion
   anon42_Then@23_assertion
   anon42_Then@24_assertion
   anon42_Then@25_assertion
   anon42_Then@26_assertion
   anon42_Then@27_assertion
   anon42_Then@28_assertion
   anon42_Then@29_assertion
   anon42_Then@3_assertion
   anon42_Then@30_assertion
   anon42_Then@31_assertion
   anon42_Then@32_assertion
   anon42_Then@33_assertion
   anon42_Then@34_assertion
   anon42_Then@35_assertion
   anon42_Then@36_assertion
   anon42_Then@37_assertion
   anon42_Then@38_assertion
   anon42_Then@39_assertion
   anon42_Then@4_assertion
   anon42_Then@40_assertion
   anon42_Then@41_assertion
   anon42_Then@42_assertion
   anon42_Then@43_assertion
   anon42_Then@45_assertion
   anon42_Then@47_assertion
   anon42_Then@5_assertion
   anon42_Then@6_assertion
   anon42_Then@7_assertion
   anon42_Then@8_assertion
   anon42_Then@9_assertion
   anon46_Then@1_assertion
   anon46_Then@2_assertion
   anon46_Then@3_assertion
   anon46_Then@4_assertion
   anon46_Then@6_assertion
   anon47_Then@10_assertion
   anon47_Then@11_assertion
   anon47_Then@12_assertion
   anon47_Then@13_assertion
   anon47_Then@14_assertion
   anon47_Then@15_assertion
   anon47_Then@16_assertion
   anon47_Then@17_assertion
   anon47_Then@18_assertion
   anon47_Then@19_assertion
   anon47_Then@20_assertion
   anon47_Then@21_assertion
   anon47_Then@22_assertion
   anon47_Then@23_assertion
   anon47_Then@24_assertion
   anon47_Then@25_assertion
   anon47_Then@26_assertion
   anon47_Then@27_assertion
   anon47_Then@28_assertion
   anon47_Then@3_assertion
   anon47_Then@4_assertion
   anon47_Then@5_assertion
   anon47_Then@6_assertion
   anon47_Then@7_assertion
   anon47_Then@8_assertion
   anon47_Then@9_assertion
   anon6@1_assertion
   anon6@10_assertion
   anon6@11_assertion
   anon6@12_assertion
   anon6@13_assertion
   anon6@14_assertion
   anon6@15_assertion
   anon6@16_assertion
   anon6@17_assertion
   anon6@18_assertion
   anon6@19_assertion
   anon6@20_assertion
   anon6@21_assertion
   anon6@22_assertion
   anon6@23_assertion
   anon6@24_assertion
   anon6@25_assertion
   anon6@4_assertion
   anon6@5_assertion
   anon6@6_assertion
   anon6@8_assertion
   GeneratedUnifiedExit@1_assertion
   GeneratedUnifiedExit@10_assertion
   GeneratedUnifiedExit@11_assertion
   GeneratedUnifiedExit@12_assertion
   GeneratedUnifiedExit@13_assertion
   GeneratedUnifiedExit@14_assertion
   GeneratedUnifiedExit@15_assertion
   GeneratedUnifiedExit@16_assertion
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
   GeneratedUnifiedExit@29_assertion
   GeneratedUnifiedExit@3_assertion
   GeneratedUnifiedExit@30_assertion
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
