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
(declare-sort DtCtorId 0)
(declare-sort Field$Bool$ 0)
(declare-sort Field$BoxType$ 0)
(declare-sort ref 0)
(declare-sort Seq$BoxType$ 0)
(declare-sort Seq$ref$ 0)
(declare-sort TickType 0)

;Functions
(declare-fun $@@List.Cons ( ) DtCtorId)
(declare-fun $@@List.Nil ( ) DtCtorId)
(declare-fun $@@Map.Empty ( ) DtCtorId)
(declare-fun $@@Map.Maplet ( ) DtCtorId)
(declare-fun $@@Nat.Suc ( ) DtCtorId)
(declare-fun $@@Nat.Zero ( ) DtCtorId)
(declare-fun $@bf ( ) Bool)
(declare-fun $@bf_1 ( ) Bool)
(declare-fun $@bf_10 ( $@Map@@BoxType@To@Bool@@ BoxType ) Bool)
(declare-fun $@bf_14 ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun $@bf_15 ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun $@bf_16 ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun $@bf_2 ( ) Bool)
(declare-fun $@bf_3 ( ) Bool)
(declare-fun $@bf_30 ( ) Bool)
(declare-fun $@bf_31 ( ) Bool)
(declare-fun $@bf_32 ( BoxType ) Bool)
(declare-fun $@bf_4 ( ) Bool)
(declare-fun $@bf_42 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType Seq$BoxType$ ) Bool)
(declare-fun $@bf_43 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType Seq$BoxType$ ) Bool)
(declare-fun $@bf_44 ( BoxType BoxType ) Bool)
(declare-fun $@bf_45 ( Seq$BoxType$ ) Bool)
(declare-fun $@bf_46 ( Seq$BoxType$ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType ) Bool)
(declare-fun $@bf_47 ( Seq$BoxType$ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType ) Bool)
(declare-fun $@bf_49 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun $@bf_5 ( ) Bool)
(declare-fun $@bf_50 ( Int ) Bool)
(declare-fun $@bf_55 ( DatatypeType ) Bool)
(declare-fun $@bf_57 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType DatatypeType ) Bool)
(declare-fun $@bf_6 ( ) Bool)
(declare-fun $@bf_62 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType $@Map@@BoxType@To@Bool@@ BoxType Seq$BoxType$ DatatypeType ) Bool)
(declare-fun $@bf_9 ( $@Map@@BoxType@To@Bool@@ BoxType BoxType ) Bool)
(declare-fun $@List.Cons ( BoxType DatatypeType ) DatatypeType)
(declare-fun $@List.Nil ( ) DatatypeType)
(declare-fun $@Map.Empty ( ) DatatypeType)
(declare-fun $@Map.Maplet ( $@Map@@BoxType@To@Bool@@ BoxType Seq$BoxType$ DatatypeType ) DatatypeType)
(declare-fun $@Nat.Suc ( DatatypeType ) DatatypeType)
(declare-fun $@Nat.Zero ( ) DatatypeType)
(declare-fun $@sk_22 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@BoxType@To@Bool@@ ref ) BoxType)
(declare-fun $@sk_4 ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) BoxType)
(declare-fun $@sk_5 ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) BoxType)
(declare-fun $@sk_6 ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) BoxType)
(declare-fun $@sk_62 ( ) BoxType)
(declare-fun $@sk_64 ( ) BoxType)
(declare-fun $@sk_65 ( ) BoxType)
(declare-fun $@sk_66 ( ) Seq$BoxType$)
(declare-fun $@sk_67 ( Seq$BoxType$ ) Int)
(declare-fun $@sk_68 ( ) Seq$BoxType$)
(declare-fun $@sk_69 ( Seq$BoxType$ ) Int)
(declare-fun $@sk_70 ( ) BoxType)
(declare-fun $@sk_71 ( ) BoxType)
(declare-fun $@sk_72 ( ) BoxType)
(declare-fun $_Frame@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun $Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) BoxType)
(declare-fun $Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ) BoxType)
(declare-fun $Box$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ ) BoxType)
(declare-fun $Box$Bool$ ( Bool ) BoxType)
(declare-fun $Box$BoxType$ ( BoxType ) BoxType)
(declare-fun $Box$ClassName$ ( ClassName ) BoxType)
(declare-fun $Box$DatatypeType$ ( DatatypeType ) BoxType)
(declare-fun $Box$DtCtorId$ ( DtCtorId ) BoxType)
(declare-fun $Box$Field$Bool$$ ( Field$Bool$ ) BoxType)
(declare-fun $Box$Field$BoxType$$ ( Field$BoxType$ ) BoxType)
(declare-fun $Box$Int$ ( Int ) BoxType)
(declare-fun $Box$ref$ ( ref ) BoxType)
(declare-fun $Box$Seq$BoxType$$ ( Seq$BoxType$ ) BoxType)
(declare-fun $Box$Seq$ref$$ ( Seq$ref$ ) BoxType)
(declare-fun $Box$TickType$ ( TickType ) BoxType)
(declare-fun $decr0$0@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $decr0$init$0@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $FunctionContextHeight ( ) Int)
(declare-fun $Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $ModuleContextHeight ( ) Int)
(declare-fun $rhs@13@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@14@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@15@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@17@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@18@0 ( ) DatatypeType)
(declare-fun $rhs@19@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@20@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@28@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@29@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@30 ( ) DatatypeType)
(declare-fun $rhs@30@0 ( ) DatatypeType)
(declare-fun $rhs@32@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@33@1 ( ) Int)
(declare-fun $rhs@34@1 ( ) DatatypeType)
(declare-fun $Tick@0 ( ) TickType)
(declare-fun $Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun $Unbox$$@Map@@BoxType@To@Bool@@$ ( BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun $Unbox$BoxType$ ( BoxType ) BoxType)
(declare-fun $Unbox$ClassName$ ( BoxType ) ClassName)
(declare-fun $Unbox$DatatypeType$ ( BoxType ) DatatypeType)
(declare-fun $Unbox$DtCtorId$ ( BoxType ) DtCtorId)
(declare-fun $Unbox$Field$Bool$$ ( BoxType ) Field$Bool$)
(declare-fun $Unbox$Field$BoxType$$ ( BoxType ) Field$BoxType$)
(declare-fun $Unbox$Int$ ( BoxType ) Int)
(declare-fun $Unbox$ref$ ( BoxType ) ref)
(declare-fun $Unbox$Seq$BoxType$$ ( BoxType ) Seq$BoxType$)
(declare-fun $Unbox$Seq$ref$$ ( BoxType ) Seq$ref$)
(declare-fun $Unbox$TickType$ ( BoxType ) TickType)
(declare-fun alloc ( ) Field$Bool$)
(declare-fun AllVertices@8 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun array.Length ( ref ) Int)
(declare-fun BreadthFirstSearch.Domain ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref DatatypeType ) $@Map@@BoxType@To@Bool@@)
(declare-fun BreadthFirstSearch.Find ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType DatatypeType ) Seq$BoxType$)
(declare-fun BreadthFirstSearch.Find@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType DatatypeType ) Seq$BoxType$)
(declare-fun BreadthFirstSearch.Find@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType DatatypeType ) Seq$BoxType$)
(declare-fun BreadthFirstSearch.R ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType DatatypeType $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun BreadthFirstSearch.R@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType DatatypeType $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun BreadthFirstSearch.R@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType DatatypeType $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun BreadthFirstSearch.Succ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun BreadthFirstSearch.Successors ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun BreadthFirstSearch.ToNat ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Int ) DatatypeType)
(declare-fun BreadthFirstSearch.ToNat@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Int ) DatatypeType)
(declare-fun BreadthFirstSearch.ToNat@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Int ) DatatypeType)
(declare-fun BreadthFirstSearch.Value ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref DatatypeType ) Int)
(declare-fun BreadthFirstSearch.Value@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref DatatypeType ) Int)
(declare-fun BreadthFirstSearch.Value@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref DatatypeType ) Int)
(declare-fun C@14 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun C@14@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun C@14@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun call8formal@newPaths@78@0 ( ) DatatypeType)
(declare-fun class.BreadthFirstSearch ( ) ClassName)
(declare-fun class.List ( ) ClassName)
(declare-fun class.Map ( ) ClassName)
(declare-fun class.Nat ( ) ClassName)
(declare-fun d@9@0 ( ) Int)
(declare-fun d@9@1 ( ) Int)
(declare-fun d@9@2 ( ) Int)
(declare-fun d@9@3 ( ) Int)
(declare-fun DatatypeCtorId ( DatatypeType ) DtCtorId)
(declare-fun dd@18 ( ) DatatypeType)
(declare-fun dd@18@0 ( ) DatatypeType)
(declare-fun dd@18@1 ( ) DatatypeType)
(declare-fun dd@18@2 ( ) DatatypeType)
(declare-fun dest@7 ( ) BoxType)
(declare-fun DtRank ( DatatypeType ) Int)
(declare-fun DtType ( DatatypeType ) ClassName)
(declare-fun dtype ( ref ) ClassName)
(declare-fun FDim$Bool$ ( Field$Bool$ ) Int)
(declare-fun FDim$BoxType$ ( Field$BoxType$ ) Int)
(declare-fun IndexField ( Int ) Field$BoxType$)
(declare-fun lambda@12 ( $@Map@@BoxType@To@Bool@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@BoxType@To@Bool@@ ref ) $@Map@@BoxType@To@Bool@@)
(declare-fun lambda@3 ( Field$Bool$ ref $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun lambda@4 ( $@Map@@BoxType@To@Bool@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun Map.dom ( DatatypeType ) $@Map@@BoxType@To@Bool@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$BoxType$ ) BoxType)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ Bool ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$BoxType$ BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Math@clip ( Int ) Int)
(declare-fun Math@min ( Int Int ) Int)
(declare-fun mm@148@0 ( ) DatatypeType)
(declare-fun MultiIndexField ( Field$BoxType$ Int ) Field$BoxType$)
(declare-fun MultiIndexField_Inverse0$BoxType$ ( Field$BoxType$ ) Field$BoxType$)
(declare-fun MultiIndexField_Inverse1$BoxType$ ( Field$BoxType$ ) Int)
(declare-fun n@146@0 ( ) Int)
(declare-fun n@149@0 ( ) Int)
(declare-fun N@15 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun N@15@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun N@15@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun Nat.predecessor ( DatatypeType ) DatatypeType)
(declare-fun newlyEncountered@24 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun newlyEncountered@24@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun newlyEncountered@24@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun nn@150@0 ( ) DatatypeType)
(declare-fun nn@26@0 ( ) DatatypeType)
(declare-fun null ( ) ref)
(declare-fun p@23@0 ( ) Seq$BoxType$)
(declare-fun p@27@0 ( ) Seq$BoxType$)
(declare-fun path@10 ( ) Seq$BoxType$)
(declare-fun path@10@0 ( ) Seq$BoxType$)
(declare-fun paths@17 ( ) DatatypeType)
(declare-fun paths@17@0 ( ) DatatypeType)
(declare-fun pathToV@22 ( ) Seq$BoxType$)
(declare-fun pathToV@22@0 ( ) Seq$BoxType$)
(declare-fun pathToV@22@1 ( ) Seq$BoxType$)
(declare-fun Processed@16 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun Processed@16@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun Seq@Append$BoxType$ ( Seq$BoxType$ Seq$BoxType$ ) Seq$BoxType$)
(declare-fun Seq@Append$ref$ ( Seq$ref$ Seq$ref$ ) Seq$ref$)
(declare-fun Seq@Build$BoxType$ ( Seq$BoxType$ BoxType ) Seq$BoxType$)
(declare-fun Seq@Build$ref$ ( Seq$ref$ ref ) Seq$ref$)
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
(declare-fun source@6 ( ) BoxType)
(declare-fun this ( ) ref)
(declare-fun TypeTuple ( ClassName ClassName ) ClassName)
(declare-fun TypeTupleCar ( ClassName ) ClassName)
(declare-fun TypeTupleCdr ( ClassName ) ClassName)
(declare-fun V@13 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun V@13@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun v@21 ( ) BoxType)
(declare-fun v@21@0 ( ) BoxType)
(declare-fun v@21@1 ( ) BoxType)
(declare-fun w@156@1 ( ) BoxType)
(declare-fun x@113@0 ( ) BoxType)
(declare-fun x@117@0 ( ) BoxType)

;Predicates
(declare-fun $$Language$Dafny ( ) Bool)
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $@condition_$1 ( ) Bool)
(declare-fun $@condition_$10 ( ) Bool)
(declare-fun $@condition_$11 ( ) Bool)
(declare-fun $@condition_$12 ( ) Bool)
(declare-fun $@condition_$13 ( ) Bool)
(declare-fun $@condition_$14 ( ) Bool)
(declare-fun $@condition_$16 ( ) Bool)
(declare-fun $@condition_$17 ( ) Bool)
(declare-fun $@condition_$18 ( ) Bool)
(declare-fun $@condition_$19 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$3 ( ) Bool)
(declare-fun $@condition_$5 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)
(declare-fun $@condition_$9 ( ) Bool)
(declare-fun $HeapSucc ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $InMethodContext ( ) Bool)
(declare-fun $IsCanonicalBoolBox ( BoxType ) Bool)
(declare-fun $IsGoodHeap ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $NP@137 ( ) Bool)
(declare-fun $NP@138 ( ) Bool)
(declare-fun $NP@151 ( ) Bool)
(declare-fun $NP@152 ( ) Bool)
(declare-fun $NP@175 ( ) Bool)
(declare-fun $NP@176 ( ) Bool)
(declare-fun $NP@19 ( ) Bool)
(declare-fun $NP@20 ( ) Bool)
(declare-fun $NP@221 ( ) Bool)
(declare-fun $NP@222 ( ) Bool)
(declare-fun $NP@239 ( ) Bool)
(declare-fun $NP@240 ( ) Bool)
(declare-fun $NP@257 ( ) Bool)
(declare-fun $NP@258 ( ) Bool)
(declare-fun $NP@323 ( ) Bool)
(declare-fun $NP@324 ( ) Bool)
(declare-fun $NP@369 ( ) Bool)
(declare-fun $NP@370 ( ) Bool)
(declare-fun $NP@447 ( ) Bool)
(declare-fun $NP@448 ( ) Bool)
(declare-fun $Unbox$Bool$ ( BoxType ) Bool)
(declare-fun $w0@0 ( ) Bool)
(declare-fun BreadthFirstSearch.Domain@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref DatatypeType ) Bool)
(declare-fun BreadthFirstSearch.Find@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType DatatypeType ) Bool)
(declare-fun BreadthFirstSearch.IsClosed ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun BreadthFirstSearch.IsClosed@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun BreadthFirstSearch.IsPath ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType Seq$BoxType$ ) Bool)
(declare-fun BreadthFirstSearch.IsPath@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType Seq$BoxType$ ) Bool)
(declare-fun BreadthFirstSearch.IsPath@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType Seq$BoxType$ ) Bool)
(declare-fun BreadthFirstSearch.IsPath@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType BoxType Seq$BoxType$ ) Bool)
(declare-fun BreadthFirstSearch.R@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType DatatypeType $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun BreadthFirstSearch.Succ@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType ) Bool)
(declare-fun BreadthFirstSearch.Successors@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun BreadthFirstSearch.ToNat@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Int ) Bool)
(declare-fun BreadthFirstSearch.ValidMap ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType DatatypeType ) Bool)
(declare-fun BreadthFirstSearch.ValidMap@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType DatatypeType ) Bool)
(declare-fun BreadthFirstSearch.ValidMap@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType DatatypeType ) Bool)
(declare-fun BreadthFirstSearch.ValidMap@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType DatatypeType ) Bool)
(declare-fun BreadthFirstSearch.Value@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref DatatypeType ) Bool)
(declare-fun DtAlloc ( DatatypeType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun GenericAlloc ( BoxType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun List.Cons? ( DatatypeType ) Bool)
(declare-fun List.Nil? ( DatatypeType ) Bool)
(declare-fun Map.Empty? ( DatatypeType ) Bool)
(declare-fun Map.Maplet? ( DatatypeType ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$BoxType$ ) Bool)
(declare-fun MapRead$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ BoxType ) Bool)
(declare-fun Nat.Suc? ( DatatypeType ) Bool)
(declare-fun Nat.Zero? ( DatatypeType ) Bool)
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
   (assert (! (= $_Frame@0 (lambda@3 alloc null $Heap)) :named ax_5))
   (assert (! (= $decr0$init$0@0 (Set@Difference$BoxType$ AllVertices@8 $rhs@17@0)) :named ax_6))
   (assert (! (= $rhs@13@0 (Set@UnionOne$BoxType$ Set@Empty$BoxType$ source@6)) :named ax_7))
   (assert (! (= $rhs@14@0 (Set@UnionOne$BoxType$ Set@Empty$BoxType$ source@6)) :named ax_8))
   (assert (! (= $rhs@15@0 Set@Empty$BoxType$) :named ax_9))
   (assert (! (= $rhs@17@0 Set@Empty$BoxType$) :named ax_10))
   (assert (! (= $rhs@18@0 ($@Map.Maplet (Set@UnionOne$BoxType$ Set@Empty$BoxType$ source@6) source@6 Seq@Empty$BoxType$ $@Map.Empty)) :named ax_11))
   (assert (! (= (= true $@bf_30) ($Unbox$Bool$ ($Box$Bool$ true))) :named ax_12))
   (assert (! (= (= true $@bf_31) ($Unbox$Bool$ ($Box$Bool$ false))) :named ax_13))
   (assert (! (= (DatatypeCtorId $@List.Nil) $@@List.Nil) :named ax_14))
   (assert (! (= (DatatypeCtorId $@Map.Empty) $@@Map.Empty) :named ax_15))
   (assert (! (= (DatatypeCtorId $@Nat.Zero) $@@Nat.Zero) :named ax_16))
   (assert (! (= (DtType $@List.Nil) class.List) :named ax_17))
   (assert (! (= (DtType $@Map.Empty) class.Map) :named ax_18))
   (assert (! (= (DtType $@Nat.Zero) class.Nat) :named ax_19))
   (assert (! (= (DtType $rhs@30) class.Map) :named ax_20))
   (assert (! (= (DtType dd@18) class.Nat) :named ax_21))
   (assert (! (= (DtType paths@17) class.Map) :named ax_22))
   (assert (! (= (dtype this) class.BreadthFirstSearch) :named ax_23))
   (assert (! (= (FDim$Bool$ alloc) 0) :named ax_24))
   (assert (! (= (Seq@Length$BoxType$ Seq@Empty$BoxType$) 0) :named ax_25))
   (assert (! (= (Seq@Length$ref$ Seq@Empty$ref$) 0) :named ax_26))
   (assert (! (= 0 $ModuleContextHeight) :named ax_27))
   (assert (! (= dd@18@0 $@Nat.Zero) :named ax_28))
   (assert (! (=> (BreadthFirstSearch.IsClosed@canCall $Heap this AllVertices@8) (or (BreadthFirstSearch.IsClosed $Heap this AllVertices@8) (forall( (|v#5_$2| BoxType))(=> (GenericAlloc |v#5_$2| $Heap) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 |v#5_$2|) (Set@Subset$BoxType$ (BreadthFirstSearch.Succ $Heap this |v#5_$2|) AllVertices@8)))))) :named ax_29))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 0 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$0| ref) (|x#0| BoxType))(!(=> (or (BreadthFirstSearch.Succ@canCall |$Heap_$0| |this_$0| |x#0|) (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 0 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$0|)) (not (= |this_$0| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$0| |this_$0| alloc)) (= (dtype |this_$0|) class.BreadthFirstSearch)) (GenericAlloc |x#0| |$Heap_$0|))) (forall( (|$t#0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ |$Heap_$0| |this_$0| |x#0|) |$t#0|) (GenericAlloc |$t#0| |$Heap_$0|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ |$Heap_$0| |this_$0| |x#0|) |$t#0|)))))  :pattern ( (BreadthFirstSearch.Succ |$Heap_$0| |this_$0| |x#0|))))) :named ax_30))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 1 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$4| ref) (|source#1_$1| BoxType) (|dest#2_$1| BoxType) (|p#3_$1| Seq$BoxType$))(!(=> (or (BreadthFirstSearch.IsPath@canCall |$Heap_$3| |this_$4| |source#1_$1| |dest#2_$1| |p#3_$1|) (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 1 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$3|)) (not (= |this_$4| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$3| |this_$4| alloc)) (= (dtype |this_$4|) class.BreadthFirstSearch)) (GenericAlloc |source#1_$1| |$Heap_$3|)) (GenericAlloc |dest#2_$1| |$Heap_$3|)) (forall( (|$i#1| Int))(!(=> (and (<= 0 |$i#1|) (< |$i#1| (Seq@Length$BoxType$ |p#3_$1|))) (GenericAlloc (Seq@Index$BoxType$ |p#3_$1| |$i#1|) |$Heap_$3|))  :pattern ( (Seq@Index$BoxType$ |p#3_$1| |$i#1|)))))) (and (and (=> (= |source#1_$1| |dest#2_$1|) true) (=> (not (= |source#1_$1| |dest#2_$1|)) (and (=> (not (Seq@Equal$BoxType$ |p#3_$1| Seq@Empty$BoxType$)) (BreadthFirstSearch.Succ@canCall |$Heap_$3| |this_$4| (Seq@Index$BoxType$ |p#3_$1| (- (Seq@Length$BoxType$ |p#3_$1|) 1)))) (=> (and (not (Seq@Equal$BoxType$ |p#3_$1| Seq@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ |$Heap_$3| |this_$4| (Seq@Index$BoxType$ |p#3_$1| (- (Seq@Length$BoxType$ |p#3_$1|) 1))) |dest#2_$1|)) (BreadthFirstSearch.IsPath@canCall |$Heap_$3| |this_$4| |source#1_$1| (Seq@Index$BoxType$ |p#3_$1| (- (Seq@Length$BoxType$ |p#3_$1|) 1)) (Seq@Take$BoxType$ |p#3_$1| (- (Seq@Length$BoxType$ |p#3_$1|) 1))))))) (= (BreadthFirstSearch.IsPath |$Heap_$3| |this_$4| |source#1_$1| |dest#2_$1| |p#3_$1|) (ite (= |source#1_$1| |dest#2_$1|) (Seq@Equal$BoxType$ |p#3_$1| Seq@Empty$BoxType$) (and (and (not (Seq@Equal$BoxType$ |p#3_$1| Seq@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ |$Heap_$3| |this_$4| (Seq@Index$BoxType$ |p#3_$1| (- (Seq@Length$BoxType$ |p#3_$1|) 1))) |dest#2_$1|)) (BreadthFirstSearch.IsPath@limited |$Heap_$3| |this_$4| |source#1_$1| (Seq@Index$BoxType$ |p#3_$1| (- (Seq@Length$BoxType$ |p#3_$1|) 1)) (Seq@Take$BoxType$ |p#3_$1| (- (Seq@Length$BoxType$ |p#3_$1|) 1))))))))  :pattern ( (BreadthFirstSearch.IsPath |$Heap_$3| |this_$4| |source#1_$1| |dest#2_$1| |p#3_$1|))))) :named ax_31))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 1 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$5| ref) (|source#1_$2| BoxType) (|dest#2_$2| BoxType) (|p#3_$2| Seq$BoxType$))(!(=> (or (BreadthFirstSearch.IsPath@canCall |$Heap_$4| |this_$5| |source#1_$2| |dest#2_$2| |p#3_$2|) (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 1 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$4|)) (not (= |this_$5| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$4| |this_$5| alloc)) (= (dtype |this_$5|) class.BreadthFirstSearch)) (GenericAlloc |source#1_$2| |$Heap_$4|)) (GenericAlloc |dest#2_$2| |$Heap_$4|)) (forall( (|$i#2| Int))(!(=> (and (<= 0 |$i#2|) (< |$i#2| (Seq@Length$BoxType$ |p#3_$2|))) (GenericAlloc (Seq@Index$BoxType$ |p#3_$2| |$i#2|) |$Heap_$4|))  :pattern ( (Seq@Index$BoxType$ |p#3_$2| |$i#2|)))))) (= (BreadthFirstSearch.IsPath@2 |$Heap_$4| |this_$5| |source#1_$2| |dest#2_$2| |p#3_$2|) (ite (= |source#1_$2| |dest#2_$2|) (Seq@Equal$BoxType$ |p#3_$2| Seq@Empty$BoxType$) (and (and (not (Seq@Equal$BoxType$ |p#3_$2| Seq@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ |$Heap_$4| |this_$5| (Seq@Index$BoxType$ |p#3_$2| (- (Seq@Length$BoxType$ |p#3_$2|) 1))) |dest#2_$2|)) (BreadthFirstSearch.IsPath |$Heap_$4| |this_$5| |source#1_$2| (Seq@Index$BoxType$ |p#3_$2| (- (Seq@Length$BoxType$ |p#3_$2|) 1)) (Seq@Take$BoxType$ |p#3_$2| (- (Seq@Length$BoxType$ |p#3_$2|) 1)))))))  :pattern ( (BreadthFirstSearch.IsPath@2 |$Heap_$4| |this_$5| |source#1_$2| |dest#2_$2| |p#3_$2|))))) :named ax_32))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 10 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$16| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$22| ref) (|n#36_$1| Int))(!(=> (or (BreadthFirstSearch.ToNat@canCall |$Heap_$16| |this_$22| |n#36_$1|) (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 10 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$16|)) (not (= |this_$22| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$16| |this_$22| alloc)) (= (dtype |this_$22|) class.BreadthFirstSearch)) (<= 0 |n#36_$1|))) (and (and (and (and (=> (= |n#36_$1| 0) true) (=> (not (= |n#36_$1| 0)) (BreadthFirstSearch.ToNat@canCall |$Heap_$16| |this_$22| (- |n#36_$1| 1)))) (= (BreadthFirstSearch.ToNat |$Heap_$16| |this_$22| |n#36_$1|) (ite (= |n#36_$1| 0) $@Nat.Zero ($@Nat.Suc (BreadthFirstSearch.ToNat@limited |$Heap_$16| |this_$22| (- |n#36_$1| 1)))))) (DtAlloc (BreadthFirstSearch.ToNat |$Heap_$16| |this_$22| |n#36_$1|) |$Heap_$16|)) (= (DtType (BreadthFirstSearch.ToNat |$Heap_$16| |this_$22| |n#36_$1|)) class.Nat)))  :pattern ( (BreadthFirstSearch.ToNat |$Heap_$16| |this_$22| |n#36_$1|))))) :named ax_33))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 10 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$23| ref) (|n#36_$2| Int))(!(=> (or (BreadthFirstSearch.ToNat@canCall |$Heap_$17| |this_$23| |n#36_$2|) (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 10 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$17|)) (not (= |this_$23| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$17| |this_$23| alloc)) (= (dtype |this_$23|) class.BreadthFirstSearch)) (<= 0 |n#36_$2|))) (= (BreadthFirstSearch.ToNat@2 |$Heap_$17| |this_$23| |n#36_$2|) (ite (= |n#36_$2| 0) $@Nat.Zero ($@Nat.Suc (BreadthFirstSearch.ToNat |$Heap_$17| |this_$23| (- |n#36_$2| 1))))))  :pattern ( (BreadthFirstSearch.ToNat@2 |$Heap_$17| |this_$23| |n#36_$2|))))) :named ax_34))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 11 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$14| ref) (|nn#34_$1| DatatypeType))(!(=> (or (BreadthFirstSearch.Value@canCall |$Heap_$10| |this_$14| |nn#34_$1|) (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 11 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$10|)) (not (= |this_$14| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$10| |this_$14| alloc)) (= (dtype |this_$14|) class.BreadthFirstSearch)) (DtAlloc |nn#34_$1| |$Heap_$10|)) (= (DtType |nn#34_$1|) class.Nat))) (and (= (BreadthFirstSearch.ToNat |$Heap_$10| |this_$14| (BreadthFirstSearch.Value@limited |$Heap_$10| |this_$14| |nn#34_$1|)) |nn#34_$1|) (<= 0 (BreadthFirstSearch.Value |$Heap_$10| |this_$14| |nn#34_$1|))))  :pattern ( (BreadthFirstSearch.Value |$Heap_$10| |this_$14| |nn#34_$1|))))) :named ax_35))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 11 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$15| ref))(!(=> (or (BreadthFirstSearch.Value@canCall |$Heap_$11| |this_$15| $@Nat.Zero) (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 11 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$11|)) (not (= |this_$15| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$11| |this_$15| alloc)) (= (dtype |this_$15|) class.BreadthFirstSearch))) (= (BreadthFirstSearch.Value@2 |$Heap_$11| |this_$15| $@Nat.Zero) 0))  :pattern ( (BreadthFirstSearch.Value@2 |$Heap_$11| |this_$15| $@Nat.Zero))))) :named ax_36))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 11 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$16| ref) (|mm#35_$0| DatatypeType))(!(=> (or (BreadthFirstSearch.Value@canCall |$Heap_$12| |this_$16| ($@Nat.Suc |mm#35_$0|)) (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 11 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$12|)) (not (= |this_$16| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$12| |this_$16| alloc)) (= (dtype |this_$16|) class.BreadthFirstSearch)) (DtAlloc |mm#35_$0| |$Heap_$12|)) (= (DtType |mm#35_$0|) class.Nat))) (= (BreadthFirstSearch.Value@2 |$Heap_$12| |this_$16| ($@Nat.Suc |mm#35_$0|)) (+ (BreadthFirstSearch.Value |$Heap_$12| |this_$16| |mm#35_$0|) 1)))  :pattern ( (BreadthFirstSearch.Value@2 |$Heap_$12| |this_$16| ($@Nat.Suc |mm#35_$0|)))))) :named ax_37))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 11 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$13| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$17| ref) (|nn#34_$2| DatatypeType))(!(=> (or (BreadthFirstSearch.Value@canCall |$Heap_$13| |this_$17| |nn#34_$2|) (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 11 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$13|)) (not (= |this_$17| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$13| |this_$17| alloc)) (= (dtype |this_$17|) class.BreadthFirstSearch)) (DtAlloc |nn#34_$2| |$Heap_$13|)) (= (DtType |nn#34_$2|) class.Nat))) true)  :pattern ( (BreadthFirstSearch.Value@2 |$Heap_$13| |this_$17| |nn#34_$2|))))) :named ax_38))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 11 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$12| ref))(!(=> (or (BreadthFirstSearch.Value@canCall |$Heap_$8| |this_$12| $@Nat.Zero) (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 11 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$8|)) (not (= |this_$12| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$8| |this_$12| alloc)) (= (dtype |this_$12|) class.BreadthFirstSearch))) (and (= (BreadthFirstSearch.Value |$Heap_$8| |this_$12| $@Nat.Zero) 0) (<= 0 (BreadthFirstSearch.Value |$Heap_$8| |this_$12| $@Nat.Zero))))  :pattern ( (BreadthFirstSearch.Value |$Heap_$8| |this_$12| $@Nat.Zero))))) :named ax_39))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 11 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$13| ref) (|mm#35| DatatypeType))(!(=> (or (BreadthFirstSearch.Value@canCall |$Heap_$9| |this_$13| ($@Nat.Suc |mm#35|)) (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 11 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$9|)) (not (= |this_$13| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9| |this_$13| alloc)) (= (dtype |this_$13|) class.BreadthFirstSearch)) (DtAlloc |mm#35| |$Heap_$9|)) (= (DtType |mm#35|) class.Nat))) (and (and (BreadthFirstSearch.Value@canCall |$Heap_$9| |this_$13| |mm#35|) (= (BreadthFirstSearch.Value |$Heap_$9| |this_$13| ($@Nat.Suc |mm#35|)) (+ (BreadthFirstSearch.Value@limited |$Heap_$9| |this_$13| |mm#35|) 1))) (<= 0 (BreadthFirstSearch.Value |$Heap_$9| |this_$13| ($@Nat.Suc |mm#35|)))))  :pattern ( (BreadthFirstSearch.Value |$Heap_$9| |this_$13| ($@Nat.Suc |mm#35|)))))) :named ax_40))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 12 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$26| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$36| ref) (|S#42| $@Map@@BoxType@To@Bool@@) (|AllVertices#43| $@Map@@BoxType@To@Bool@@))(!(=> (or (BreadthFirstSearch.Successors@canCall |$Heap_$26| |this_$36| |S#42| |AllVertices#43|) (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 12 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$26|)) (not (= |this_$36| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$26| |this_$36| alloc)) (= (dtype |this_$36|) class.BreadthFirstSearch)) (forall( (|$t#12| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#42| |$t#12|) (GenericAlloc |$t#12| |$Heap_$26|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#42| |$t#12|))))) (forall( (|$t#13| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#43| |$t#13|) (GenericAlloc |$t#13| |$Heap_$26|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#43| |$t#13|)))))) (and (and (forall( (|w#44| BoxType))(=> (GenericAlloc |w#44| |$Heap_$26|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#43| |w#44|) (forall( (|x#45| BoxType))(=> (GenericAlloc |x#45| |$Heap_$26|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#42| |x#45|) (BreadthFirstSearch.Succ@canCall |$Heap_$26| |this_$36| |x#45|))))))) (= (BreadthFirstSearch.Successors |$Heap_$26| |this_$36| |S#42| |AllVertices#43|) (lambda@12 |S#42| |$Heap_$26| |AllVertices#43| |this_$36|))) (forall( (|$t#15| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Successors |$Heap_$26| |this_$36| |S#42| |AllVertices#43|) |$t#15|) (GenericAlloc |$t#15| |$Heap_$26|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Successors |$Heap_$26| |this_$36| |S#42| |AllVertices#43|) |$t#15|))))))  :pattern ( (BreadthFirstSearch.Successors |$Heap_$26| |this_$36| |S#42| |AllVertices#43|))))) :named ax_41))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 13 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$28| ref) (|source#38_$1| BoxType) (|AllVertices#40_$1| $@Map@@BoxType@To@Bool@@))(!(=> (or (BreadthFirstSearch.R@canCall |$Heap_$20| |this_$28| |source#38_$1| $@Nat.Zero |AllVertices#40_$1|) (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 13 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$20|)) (not (= |this_$28| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$20| |this_$28| alloc)) (= (dtype |this_$28|) class.BreadthFirstSearch)) (GenericAlloc |source#38_$1| |$Heap_$20|)) (forall( (|$t#0_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$1| |$t#0_$0|) (GenericAlloc |$t#0_$0| |$Heap_$20|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$1| |$t#0_$0|)))))) (and (= (BreadthFirstSearch.R |$Heap_$20| |this_$28| |source#38_$1| $@Nat.Zero |AllVertices#40_$1|) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ |source#38_$1|)) (forall( (|$t#1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R |$Heap_$20| |this_$28| |source#38_$1| $@Nat.Zero |AllVertices#40_$1|) |$t#1|) (GenericAlloc |$t#1| |$Heap_$20|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R |$Heap_$20| |this_$28| |source#38_$1| $@Nat.Zero |AllVertices#40_$1|) |$t#1|))))))  :pattern ( (BreadthFirstSearch.R |$Heap_$20| |this_$28| |source#38_$1| $@Nat.Zero |AllVertices#40_$1|))))) :named ax_42))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 13 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$21| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$29| ref) (|mm#41| DatatypeType) (|source#38_$2| BoxType) (|AllVertices#40_$2| $@Map@@BoxType@To@Bool@@))(!(=> (or (BreadthFirstSearch.R@canCall |$Heap_$21| |this_$29| |source#38_$2| ($@Nat.Suc |mm#41|) |AllVertices#40_$2|) (and (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 13 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$21|)) (not (= |this_$29| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$21| |this_$29| alloc)) (= (dtype |this_$29|) class.BreadthFirstSearch)) (DtAlloc |mm#41| |$Heap_$21|)) (= (DtType |mm#41|) class.Nat)) (GenericAlloc |source#38_$2| |$Heap_$21|)) (forall( (|$t#2| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$2| |$t#2|) (GenericAlloc |$t#2| |$Heap_$21|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$2| |$t#2|)))))) (and (and (and (and (BreadthFirstSearch.R@canCall |$Heap_$21| |this_$29| |source#38_$2| |mm#41| |AllVertices#40_$2|) (BreadthFirstSearch.R@canCall |$Heap_$21| |this_$29| |source#38_$2| |mm#41| |AllVertices#40_$2|)) (BreadthFirstSearch.Successors@canCall |$Heap_$21| |this_$29| (BreadthFirstSearch.R |$Heap_$21| |this_$29| |source#38_$2| |mm#41| |AllVertices#40_$2|) |AllVertices#40_$2|)) (= (BreadthFirstSearch.R |$Heap_$21| |this_$29| |source#38_$2| ($@Nat.Suc |mm#41|) |AllVertices#40_$2|) (Set@Union$BoxType$ (BreadthFirstSearch.R@limited |$Heap_$21| |this_$29| |source#38_$2| |mm#41| |AllVertices#40_$2|) (BreadthFirstSearch.Successors |$Heap_$21| |this_$29| (BreadthFirstSearch.R@limited |$Heap_$21| |this_$29| |source#38_$2| |mm#41| |AllVertices#40_$2|) |AllVertices#40_$2|)))) (forall( (|$t#3| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R |$Heap_$21| |this_$29| |source#38_$2| ($@Nat.Suc |mm#41|) |AllVertices#40_$2|) |$t#3|) (GenericAlloc |$t#3| |$Heap_$21|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R |$Heap_$21| |this_$29| |source#38_$2| ($@Nat.Suc |mm#41|) |AllVertices#40_$2|) |$t#3|))))))  :pattern ( (BreadthFirstSearch.R |$Heap_$21| |this_$29| |source#38_$2| ($@Nat.Suc |mm#41|) |AllVertices#40_$2|))))) :named ax_43))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 13 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$22| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$30| ref) (|source#38_$3| BoxType) (|nn#39_$1| DatatypeType) (|AllVertices#40_$3| $@Map@@BoxType@To@Bool@@))(!(=> (or (BreadthFirstSearch.R@canCall |$Heap_$22| |this_$30| |source#38_$3| |nn#39_$1| |AllVertices#40_$3|) (and (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 13 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$22|)) (not (= |this_$30| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$22| |this_$30| alloc)) (= (dtype |this_$30|) class.BreadthFirstSearch)) (GenericAlloc |source#38_$3| |$Heap_$22|)) (DtAlloc |nn#39_$1| |$Heap_$22|)) (= (DtType |nn#39_$1|) class.Nat)) (forall( (|$t#4| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$3| |$t#4|) (GenericAlloc |$t#4| |$Heap_$22|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$3| |$t#4|)))))) (forall( (|$t#5| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R |$Heap_$22| |this_$30| |source#38_$3| |nn#39_$1| |AllVertices#40_$3|) |$t#5|) (GenericAlloc |$t#5| |$Heap_$22|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R |$Heap_$22| |this_$30| |source#38_$3| |nn#39_$1| |AllVertices#40_$3|) |$t#5|)))))  :pattern ( (BreadthFirstSearch.R |$Heap_$22| |this_$30| |source#38_$3| |nn#39_$1| |AllVertices#40_$3|))))) :named ax_44))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 13 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$23| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$31| ref) (|source#38_$4| BoxType) (|AllVertices#40_$4| $@Map@@BoxType@To@Bool@@))(!(=> (or (BreadthFirstSearch.R@canCall |$Heap_$23| |this_$31| |source#38_$4| $@Nat.Zero |AllVertices#40_$4|) (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 13 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$23|)) (not (= |this_$31| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$23| |this_$31| alloc)) (= (dtype |this_$31|) class.BreadthFirstSearch)) (GenericAlloc |source#38_$4| |$Heap_$23|)) (forall( (|$t#6_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$4| |$t#6_$0|) (GenericAlloc |$t#6_$0| |$Heap_$23|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$4| |$t#6_$0|)))))) (= (BreadthFirstSearch.R@2 |$Heap_$23| |this_$31| |source#38_$4| $@Nat.Zero |AllVertices#40_$4|) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ |source#38_$4|)))  :pattern ( (BreadthFirstSearch.R@2 |$Heap_$23| |this_$31| |source#38_$4| $@Nat.Zero |AllVertices#40_$4|))))) :named ax_45))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 13 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$24| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$32| ref) (|mm#41_$0| DatatypeType) (|source#38_$5| BoxType) (|AllVertices#40_$5| $@Map@@BoxType@To@Bool@@))(!(=> (or (BreadthFirstSearch.R@canCall |$Heap_$24| |this_$32| |source#38_$5| ($@Nat.Suc |mm#41_$0|) |AllVertices#40_$5|) (and (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 13 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$24|)) (not (= |this_$32| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$24| |this_$32| alloc)) (= (dtype |this_$32|) class.BreadthFirstSearch)) (DtAlloc |mm#41_$0| |$Heap_$24|)) (= (DtType |mm#41_$0|) class.Nat)) (GenericAlloc |source#38_$5| |$Heap_$24|)) (forall( (|$t#7_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$5| |$t#7_$0|) (GenericAlloc |$t#7_$0| |$Heap_$24|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$5| |$t#7_$0|)))))) (= (BreadthFirstSearch.R@2 |$Heap_$24| |this_$32| |source#38_$5| ($@Nat.Suc |mm#41_$0|) |AllVertices#40_$5|) (Set@Union$BoxType$ (BreadthFirstSearch.R |$Heap_$24| |this_$32| |source#38_$5| |mm#41_$0| |AllVertices#40_$5|) (BreadthFirstSearch.Successors |$Heap_$24| |this_$32| (BreadthFirstSearch.R |$Heap_$24| |this_$32| |source#38_$5| |mm#41_$0| |AllVertices#40_$5|) |AllVertices#40_$5|))))  :pattern ( (BreadthFirstSearch.R@2 |$Heap_$24| |this_$32| |source#38_$5| ($@Nat.Suc |mm#41_$0|) |AllVertices#40_$5|))))) :named ax_46))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 13 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$25| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$33| ref) (|source#38_$6| BoxType) (|nn#39_$2| DatatypeType) (|AllVertices#40_$6| $@Map@@BoxType@To@Bool@@))(!(=> (or (BreadthFirstSearch.R@canCall |$Heap_$25| |this_$33| |source#38_$6| |nn#39_$2| |AllVertices#40_$6|) (and (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 13 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$25|)) (not (= |this_$33| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$25| |this_$33| alloc)) (= (dtype |this_$33|) class.BreadthFirstSearch)) (GenericAlloc |source#38_$6| |$Heap_$25|)) (DtAlloc |nn#39_$2| |$Heap_$25|)) (= (DtType |nn#39_$2|) class.Nat)) (forall( (|$t#8_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$6| |$t#8_$0|) (GenericAlloc |$t#8_$0| |$Heap_$25|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$6| |$t#8_$0|)))))) true)  :pattern ( (BreadthFirstSearch.R@2 |$Heap_$25| |this_$33| |source#38_$6| |nn#39_$2| |AllVertices#40_$6|))))) :named ax_47))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 14 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$27| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$38| ref) (|m#59| DatatypeType))(!(=> (or (BreadthFirstSearch.Domain@canCall |$Heap_$27| |this_$38| |m#59|) (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 14 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$27|)) (not (= |this_$38| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$27| |this_$38| alloc)) (= (dtype |this_$38|) class.BreadthFirstSearch)) (DtAlloc |m#59| |$Heap_$27|)) (= (DtType |m#59|) class.Map))) (and (and (and (=> (= |m#59| $@Map.Empty) true) (=> (not (= |m#59| $@Map.Empty)) true)) (= (BreadthFirstSearch.Domain |$Heap_$27| |this_$38| |m#59|) (ite (= |m#59| $@Map.Empty) Set@Empty$BoxType$ (Map.dom |m#59|)))) (forall( (|$t#0_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain |$Heap_$27| |this_$38| |m#59|) |$t#0_$1|) (GenericAlloc |$t#0_$1| |$Heap_$27|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain |$Heap_$27| |this_$38| |m#59|) |$t#0_$1|))))))  :pattern ( (BreadthFirstSearch.Domain |$Heap_$27| |this_$38| |m#59|))))) :named ax_48))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 15 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$30| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$42| ref) (|source#60_$1| BoxType))(!(=> (or (BreadthFirstSearch.ValidMap@canCall |$Heap_$30| |this_$42| |source#60_$1| $@Map.Empty) (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 15 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$30|)) (not (= |this_$42| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$30| |this_$42| alloc)) (= (dtype |this_$42|) class.BreadthFirstSearch)) (GenericAlloc |source#60_$1| |$Heap_$30|))) (= (BreadthFirstSearch.ValidMap |$Heap_$30| |this_$42| |source#60_$1| $@Map.Empty) true))  :pattern ( (BreadthFirstSearch.ValidMap |$Heap_$30| |this_$42| |source#60_$1| $@Map.Empty))))) :named ax_49))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 15 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$31| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$43| ref) (|dom#62| $@Map@@BoxType@To@Bool@@) (|v#63| BoxType) (|path#64| Seq$BoxType$) (|next#65| DatatypeType) (|source#60_$2| BoxType))(!(=> (or (BreadthFirstSearch.ValidMap@canCall |$Heap_$31| |this_$43| |source#60_$2| ($@Map.Maplet |dom#62| |v#63| |path#64| |next#65|)) (and (and (and (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 15 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$31|)) (not (= |this_$43| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$31| |this_$43| alloc)) (= (dtype |this_$43|) class.BreadthFirstSearch)) (forall( (|$t#1_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#62| |$t#1_$0|) (GenericAlloc |$t#1_$0| |$Heap_$31|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#62| |$t#1_$0|))))) (GenericAlloc |v#63| |$Heap_$31|)) (forall( (|$i#2_$0| Int))(!(=> (and (<= 0 |$i#2_$0|) (< |$i#2_$0| (Seq@Length$BoxType$ |path#64|))) (GenericAlloc (Seq@Index$BoxType$ |path#64| |$i#2_$0|) |$Heap_$31|))  :pattern ( (Seq@Index$BoxType$ |path#64| |$i#2_$0|))))) (DtAlloc |next#65| |$Heap_$31|)) (= (DtType |next#65|) class.Map)) (GenericAlloc |source#60_$2| |$Heap_$31|))) (and (and (and (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#62| |v#63|) (BreadthFirstSearch.Domain@canCall |$Heap_$31| |this_$43| |next#65|)) (=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#62| |v#63|) (Set@Equal$BoxType$ |dom#62| (Set@Union$BoxType$ (BreadthFirstSearch.Domain |$Heap_$31| |this_$43| |next#65|) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ |v#63|)))) (BreadthFirstSearch.IsPath@canCall |$Heap_$31| |this_$43| |source#60_$2| |v#63| |path#64|))) (=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#62| |v#63|) (Set@Equal$BoxType$ |dom#62| (Set@Union$BoxType$ (BreadthFirstSearch.Domain |$Heap_$31| |this_$43| |next#65|) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ |v#63|)))) (BreadthFirstSearch.IsPath |$Heap_$31| |this_$43| |source#60_$2| |v#63| |path#64|)) (BreadthFirstSearch.ValidMap@canCall |$Heap_$31| |this_$43| |source#60_$2| |next#65|))) (= (BreadthFirstSearch.ValidMap |$Heap_$31| |this_$43| |source#60_$2| ($@Map.Maplet |dom#62| |v#63| |path#64| |next#65|)) (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#62| |v#63|) (Set@Equal$BoxType$ |dom#62| (Set@Union$BoxType$ (BreadthFirstSearch.Domain |$Heap_$31| |this_$43| |next#65|) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ |v#63|)))) (BreadthFirstSearch.IsPath |$Heap_$31| |this_$43| |source#60_$2| |v#63| |path#64|)) (BreadthFirstSearch.ValidMap@limited |$Heap_$31| |this_$43| |source#60_$2| |next#65|)))))  :pattern ( (BreadthFirstSearch.ValidMap |$Heap_$31| |this_$43| |source#60_$2| ($@Map.Maplet |dom#62| |v#63| |path#64| |next#65|)))))) :named ax_50))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 15 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$32| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$44| ref) (|source#60_$3| BoxType) (|m#61_$1| DatatypeType))(!(=> (or (BreadthFirstSearch.ValidMap@canCall |$Heap_$32| |this_$44| |source#60_$3| |m#61_$1|) (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 15 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$32|)) (not (= |this_$44| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$32| |this_$44| alloc)) (= (dtype |this_$44|) class.BreadthFirstSearch)) (GenericAlloc |source#60_$3| |$Heap_$32|)) (DtAlloc |m#61_$1| |$Heap_$32|)) (= (DtType |m#61_$1|) class.Map))) true)  :pattern ( (BreadthFirstSearch.ValidMap |$Heap_$32| |this_$44| |source#60_$3| |m#61_$1|))))) :named ax_51))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 15 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$33| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$45| ref) (|source#60_$4| BoxType))(!(=> (or (BreadthFirstSearch.ValidMap@canCall |$Heap_$33| |this_$45| |source#60_$4| $@Map.Empty) (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 15 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$33|)) (not (= |this_$45| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$33| |this_$45| alloc)) (= (dtype |this_$45|) class.BreadthFirstSearch)) (GenericAlloc |source#60_$4| |$Heap_$33|))) (= (BreadthFirstSearch.ValidMap@2 |$Heap_$33| |this_$45| |source#60_$4| $@Map.Empty) true))  :pattern ( (BreadthFirstSearch.ValidMap@2 |$Heap_$33| |this_$45| |source#60_$4| $@Map.Empty))))) :named ax_52))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 15 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$34| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$46| ref) (|dom#62_$0| $@Map@@BoxType@To@Bool@@) (|v#63_$0| BoxType) (|path#64_$0| Seq$BoxType$) (|next#65_$0| DatatypeType) (|source#60_$5| BoxType))(!(=> (or (BreadthFirstSearch.ValidMap@canCall |$Heap_$34| |this_$46| |source#60_$5| ($@Map.Maplet |dom#62_$0| |v#63_$0| |path#64_$0| |next#65_$0|)) (and (and (and (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 15 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$34|)) (not (= |this_$46| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$34| |this_$46| alloc)) (= (dtype |this_$46|) class.BreadthFirstSearch)) (forall( (|$t#3_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#62_$0| |$t#3_$0|) (GenericAlloc |$t#3_$0| |$Heap_$34|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#62_$0| |$t#3_$0|))))) (GenericAlloc |v#63_$0| |$Heap_$34|)) (forall( (|$i#4_$1| Int))(!(=> (and (<= 0 |$i#4_$1|) (< |$i#4_$1| (Seq@Length$BoxType$ |path#64_$0|))) (GenericAlloc (Seq@Index$BoxType$ |path#64_$0| |$i#4_$1|) |$Heap_$34|))  :pattern ( (Seq@Index$BoxType$ |path#64_$0| |$i#4_$1|))))) (DtAlloc |next#65_$0| |$Heap_$34|)) (= (DtType |next#65_$0|) class.Map)) (GenericAlloc |source#60_$5| |$Heap_$34|))) (= (BreadthFirstSearch.ValidMap@2 |$Heap_$34| |this_$46| |source#60_$5| ($@Map.Maplet |dom#62_$0| |v#63_$0| |path#64_$0| |next#65_$0|)) (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#62_$0| |v#63_$0|) (Set@Equal$BoxType$ |dom#62_$0| (Set@Union$BoxType$ (BreadthFirstSearch.Domain |$Heap_$34| |this_$46| |next#65_$0|) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ |v#63_$0|)))) (BreadthFirstSearch.IsPath |$Heap_$34| |this_$46| |source#60_$5| |v#63_$0| |path#64_$0|)) (BreadthFirstSearch.ValidMap |$Heap_$34| |this_$46| |source#60_$5| |next#65_$0|))))  :pattern ( (BreadthFirstSearch.ValidMap@2 |$Heap_$34| |this_$46| |source#60_$5| ($@Map.Maplet |dom#62_$0| |v#63_$0| |path#64_$0| |next#65_$0|)))))) :named ax_53))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 15 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$35| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$47| ref) (|source#60_$6| BoxType) (|m#61_$2| DatatypeType))(!(=> (or (BreadthFirstSearch.ValidMap@canCall |$Heap_$35| |this_$47| |source#60_$6| |m#61_$2|) (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 15 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$35|)) (not (= |this_$47| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$35| |this_$47| alloc)) (= (dtype |this_$47|) class.BreadthFirstSearch)) (GenericAlloc |source#60_$6| |$Heap_$35|)) (DtAlloc |m#61_$2| |$Heap_$35|)) (= (DtType |m#61_$2|) class.Map))) true)  :pattern ( (BreadthFirstSearch.ValidMap@2 |$Heap_$35| |this_$47| |source#60_$6| |m#61_$2|))))) :named ax_54))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 16 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$38| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$52| ref) (|dom#69| $@Map@@BoxType@To@Bool@@) (|v#70| BoxType) (|path#71| Seq$BoxType$) (|next#72| DatatypeType) (|source#66_$1| BoxType) (|x#67_$1| BoxType))(!(=> (or (BreadthFirstSearch.Find@canCall |$Heap_$38| |this_$52| |source#66_$1| |x#67_$1| ($@Map.Maplet |dom#69| |v#70| |path#71| |next#72|)) (and (and (and (and (and (and (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 16 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$38|)) (not (= |this_$52| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$38| |this_$52| alloc)) (= (dtype |this_$52|) class.BreadthFirstSearch)) (forall( (|$t#7_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#69| |$t#7_$1|) (GenericAlloc |$t#7_$1| |$Heap_$38|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#69| |$t#7_$1|))))) (GenericAlloc |v#70| |$Heap_$38|)) (forall( (|$i#8| Int))(!(=> (and (<= 0 |$i#8|) (< |$i#8| (Seq@Length$BoxType$ |path#71|))) (GenericAlloc (Seq@Index$BoxType$ |path#71| |$i#8|) |$Heap_$38|))  :pattern ( (Seq@Index$BoxType$ |path#71| |$i#8|))))) (DtAlloc |next#72| |$Heap_$38|)) (= (DtType |next#72|) class.Map)) (GenericAlloc |source#66_$1| |$Heap_$38|)) (GenericAlloc |x#67_$1| |$Heap_$38|)) (BreadthFirstSearch.ValidMap |$Heap_$38| |this_$52| |source#66_$1| ($@Map.Maplet |dom#69| |v#70| |path#71| |next#72|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain |$Heap_$38| |this_$52| ($@Map.Maplet |dom#69| |v#70| |path#71| |next#72|)) |x#67_$1|))) (and (and (and (=> (= |x#67_$1| |v#70|) true) (=> (not (= |x#67_$1| |v#70|)) (BreadthFirstSearch.Find@canCall |$Heap_$38| |this_$52| |source#66_$1| |x#67_$1| |next#72|))) (= (BreadthFirstSearch.Find |$Heap_$38| |this_$52| |source#66_$1| |x#67_$1| ($@Map.Maplet |dom#69| |v#70| |path#71| |next#72|)) (ite (= |x#67_$1| |v#70|) |path#71| (BreadthFirstSearch.Find@limited |$Heap_$38| |this_$52| |source#66_$1| |x#67_$1| |next#72|)))) (forall( (|$i#9| Int))(!(=> (and (<= 0 |$i#9|) (< |$i#9| (Seq@Length$BoxType$ (BreadthFirstSearch.Find |$Heap_$38| |this_$52| |source#66_$1| |x#67_$1| ($@Map.Maplet |dom#69| |v#70| |path#71| |next#72|))))) (GenericAlloc (Seq@Index$BoxType$ (BreadthFirstSearch.Find |$Heap_$38| |this_$52| |source#66_$1| |x#67_$1| ($@Map.Maplet |dom#69| |v#70| |path#71| |next#72|)) |$i#9|) |$Heap_$38|))  :pattern ( (Seq@Index$BoxType$ (BreadthFirstSearch.Find |$Heap_$38| |this_$52| |source#66_$1| |x#67_$1| ($@Map.Maplet |dom#69| |v#70| |path#71| |next#72|)) |$i#9|))))))  :pattern ( (BreadthFirstSearch.Find |$Heap_$38| |this_$52| |source#66_$1| |x#67_$1| ($@Map.Maplet |dom#69| |v#70| |path#71| |next#72|)))))) :named ax_55))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 16 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$39| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$53| ref) (|source#66_$2| BoxType) (|x#67_$2| BoxType) (|m#68_$1| DatatypeType))(!(=> (or (BreadthFirstSearch.Find@canCall |$Heap_$39| |this_$53| |source#66_$2| |x#67_$2| |m#68_$1|) (and (and (and (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 16 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$39|)) (not (= |this_$53| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$39| |this_$53| alloc)) (= (dtype |this_$53|) class.BreadthFirstSearch)) (GenericAlloc |source#66_$2| |$Heap_$39|)) (GenericAlloc |x#67_$2| |$Heap_$39|)) (DtAlloc |m#68_$1| |$Heap_$39|)) (= (DtType |m#68_$1|) class.Map)) (BreadthFirstSearch.ValidMap |$Heap_$39| |this_$53| |source#66_$2| |m#68_$1|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain |$Heap_$39| |this_$53| |m#68_$1|) |x#67_$2|))) (and (BreadthFirstSearch.IsPath |$Heap_$39| |this_$53| |source#66_$2| |x#67_$2| (BreadthFirstSearch.Find@limited |$Heap_$39| |this_$53| |source#66_$2| |x#67_$2| |m#68_$1|)) (forall( (|$i#10| Int))(!(=> (and (<= 0 |$i#10|) (< |$i#10| (Seq@Length$BoxType$ (BreadthFirstSearch.Find |$Heap_$39| |this_$53| |source#66_$2| |x#67_$2| |m#68_$1|)))) (GenericAlloc (Seq@Index$BoxType$ (BreadthFirstSearch.Find |$Heap_$39| |this_$53| |source#66_$2| |x#67_$2| |m#68_$1|) |$i#10|) |$Heap_$39|))  :pattern ( (Seq@Index$BoxType$ (BreadthFirstSearch.Find |$Heap_$39| |this_$53| |source#66_$2| |x#67_$2| |m#68_$1|) |$i#10|))))))  :pattern ( (BreadthFirstSearch.Find |$Heap_$39| |this_$53| |source#66_$2| |x#67_$2| |m#68_$1|))))) :named ax_56))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 16 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$40| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$54| ref) (|dom#69_$0| $@Map@@BoxType@To@Bool@@) (|v#70_$0| BoxType) (|path#71_$0| Seq$BoxType$) (|next#72_$0| DatatypeType) (|source#66_$3| BoxType) (|x#67_$3| BoxType))(!(=> (or (BreadthFirstSearch.Find@canCall |$Heap_$40| |this_$54| |source#66_$3| |x#67_$3| ($@Map.Maplet |dom#69_$0| |v#70_$0| |path#71_$0| |next#72_$0|)) (and (and (and (and (and (and (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 16 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$40|)) (not (= |this_$54| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$40| |this_$54| alloc)) (= (dtype |this_$54|) class.BreadthFirstSearch)) (forall( (|$t#11| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#69_$0| |$t#11|) (GenericAlloc |$t#11| |$Heap_$40|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |dom#69_$0| |$t#11|))))) (GenericAlloc |v#70_$0| |$Heap_$40|)) (forall( (|$i#12| Int))(!(=> (and (<= 0 |$i#12|) (< |$i#12| (Seq@Length$BoxType$ |path#71_$0|))) (GenericAlloc (Seq@Index$BoxType$ |path#71_$0| |$i#12|) |$Heap_$40|))  :pattern ( (Seq@Index$BoxType$ |path#71_$0| |$i#12|))))) (DtAlloc |next#72_$0| |$Heap_$40|)) (= (DtType |next#72_$0|) class.Map)) (GenericAlloc |source#66_$3| |$Heap_$40|)) (GenericAlloc |x#67_$3| |$Heap_$40|)) (BreadthFirstSearch.ValidMap |$Heap_$40| |this_$54| |source#66_$3| ($@Map.Maplet |dom#69_$0| |v#70_$0| |path#71_$0| |next#72_$0|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain |$Heap_$40| |this_$54| ($@Map.Maplet |dom#69_$0| |v#70_$0| |path#71_$0| |next#72_$0|)) |x#67_$3|))) (= (BreadthFirstSearch.Find@2 |$Heap_$40| |this_$54| |source#66_$3| |x#67_$3| ($@Map.Maplet |dom#69_$0| |v#70_$0| |path#71_$0| |next#72_$0|)) (ite (= |x#67_$3| |v#70_$0|) |path#71_$0| (BreadthFirstSearch.Find |$Heap_$40| |this_$54| |source#66_$3| |x#67_$3| |next#72_$0|))))  :pattern ( (BreadthFirstSearch.Find@2 |$Heap_$40| |this_$54| |source#66_$3| |x#67_$3| ($@Map.Maplet |dom#69_$0| |v#70_$0| |path#71_$0| |next#72_$0|)))))) :named ax_57))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 16 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$41| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$55| ref) (|source#66_$4| BoxType) (|x#67_$4| BoxType) (|m#68_$2| DatatypeType))(!(=> (or (BreadthFirstSearch.Find@canCall |$Heap_$41| |this_$55| |source#66_$4| |x#67_$4| |m#68_$2|) (and (and (and (and (and (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 16 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$41|)) (not (= |this_$55| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$41| |this_$55| alloc)) (= (dtype |this_$55|) class.BreadthFirstSearch)) (GenericAlloc |source#66_$4| |$Heap_$41|)) (GenericAlloc |x#67_$4| |$Heap_$41|)) (DtAlloc |m#68_$2| |$Heap_$41|)) (= (DtType |m#68_$2|) class.Map)) (BreadthFirstSearch.ValidMap |$Heap_$41| |this_$55| |source#66_$4| |m#68_$2|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain |$Heap_$41| |this_$55| |m#68_$2|) |x#67_$4|))) true)  :pattern ( (BreadthFirstSearch.Find@2 |$Heap_$41| |this_$55| |source#66_$4| |x#67_$4| |m#68_$2|))))) :named ax_58))
   (assert (! (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 2 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$8| ref) (|S#4| $@Map@@BoxType@To@Bool@@))(!(=> (or (BreadthFirstSearch.IsClosed@canCall |$Heap_$5| |this_$8| |S#4|) (and (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 2 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$5|)) (not (= |this_$8| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$5| |this_$8| alloc)) (= (dtype |this_$8|) class.BreadthFirstSearch)) (forall( (|$t#6| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#4| |$t#6|) (GenericAlloc |$t#6| |$Heap_$5|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#4| |$t#6|)))))) (and (forall( (|v#5| BoxType))(=> (GenericAlloc |v#5| |$Heap_$5|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#4| |v#5|) (BreadthFirstSearch.Succ@canCall |$Heap_$5| |this_$8| |v#5|)))) (= (BreadthFirstSearch.IsClosed |$Heap_$5| |this_$8| |S#4|) (forall( (|v#5_$0| BoxType))(=> (GenericAlloc |v#5_$0| |$Heap_$5|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#4| |v#5_$0|) (Set@Subset$BoxType$ (BreadthFirstSearch.Succ |$Heap_$5| |this_$8| |v#5_$0|) |S#4|)))))))  :pattern ( (BreadthFirstSearch.IsClosed |$Heap_$5| |this_$8| |S#4|))))) :named ax_59))
   (assert (! (BreadthFirstSearch.IsClosed $Heap this AllVertices@8) :named ax_60))
   (assert (! (BreadthFirstSearch.IsClosed@canCall $Heap this AllVertices@8) :named ax_61))
   (assert (! (DtAlloc $rhs@30 $Heap) :named ax_62))
   (assert (! (DtAlloc dd@18 $Heap) :named ax_63))
   (assert (! (DtAlloc paths@17 $Heap) :named ax_64))
   (assert (! (forall ((|i_1| Field$Bool$)(|i| ref)(|m| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v| Bool))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_65))
   (assert (! (forall ((|i_7| Field$BoxType$)(|i_6| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_3| BoxType))(!(= v_3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_3 i_6 i_7 v_3) i_6 i_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_3 i_6 i_7 v_3) i_6 i_7)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_66))
   (assert (! (forall ((|v_1| Bool)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_3| Field$Bool$)(|j_1| Field$Bool$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_67))
   (assert (! (forall ((|v_2| Bool)(|i_5| Field$Bool$)(|i_4| ref)(|j_3| Field$BoxType$)(|j_2| ref)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_2 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__Bool :weight 0 )) :named ax_68))
   (assert (! (forall ((|v_4| BoxType)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_9| Field$BoxType$)(|j_5| Field$BoxType$)(|i_8| ref)(|j_4| ref))(!(=> (or (not (= j_5 i_9)) (not (= j_4 i_8))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_4 i_8 i_9 v_4) j_4 j_5))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_4 i_8 i_9 v_4) j_4 j_5)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_69))
   (assert (! (forall ((|v_5| BoxType)(|i_11| Field$BoxType$)(|i_10| ref)(|j_7| Field$Bool$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_5 i_10 i_11 v_5) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_5 i_10 i_11 v_5) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__BoxType :weight 0 )) :named ax_70))
   (assert (! (forall( (|$h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($IsGoodHeap |$h_$1|) (= (DtAlloc $@List.Nil |$h_$1|) true))  :pattern ( (DtAlloc $@List.Nil |$h_$1|)))) :named ax_71))
   (assert (! (forall( (|$h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($IsGoodHeap |$h_$3|) (= (DtAlloc $@Nat.Zero |$h_$3|) true))  :pattern ( (DtAlloc $@Nat.Zero |$h_$3|)))) :named ax_72))
   (assert (! (forall( (|$h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($IsGoodHeap |$h|) (= (DtAlloc $@Map.Empty |$h|) true))  :pattern ( (DtAlloc $@Map.Empty |$h|)))) :named ax_73))
   (assert (! (forall( (|$h0_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$6| ref) (|source#1_$3| BoxType) (|dest#2_$3| BoxType) (|p#3_$3| Seq$BoxType$))(!(=> (and (and (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$0|) ($IsGoodHeap |$h1_$0|)) (not (= |this_$6| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |this_$6| alloc)) (= (dtype |this_$6|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |this_$6| alloc)) (= (dtype |this_$6|) class.BreadthFirstSearch)) (GenericAlloc |source#1_$3| |$h0_$0|)) (GenericAlloc |source#1_$3| |$h1_$0|)) (GenericAlloc |dest#2_$3| |$h0_$0|)) (GenericAlloc |dest#2_$3| |$h1_$0|)) (forall( (|$i#3| Int))(!(=> (and (<= 0 |$i#3|) (< |$i#3| (Seq@Length$BoxType$ |p#3_$3|))) (GenericAlloc (Seq@Index$BoxType$ |p#3_$3| |$i#3|) |$h0_$0|))  :pattern ( (Seq@Index$BoxType$ |p#3_$3| |$i#3|))))) (forall( (|$i#4| Int))(!(=> (and (<= 0 |$i#4|) (< |$i#4| (Seq@Length$BoxType$ |p#3_$3|))) (GenericAlloc (Seq@Index$BoxType$ |p#3_$3| |$i#4|) |$h1_$0|))  :pattern ( (Seq@Index$BoxType$ |p#3_$3| |$i#4|))))) ($HeapSucc |$h0_$0| |$h1_$0|)) (=> (and (forall( (|$o_$0_$0| ref) (|$f_$0_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$0_$0| |$f_$0_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$0_$0| |$f_$0_$0|)))) (forall( (|$o_$0_$1| ref) (|$f_$0_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$0| |$o_$0_$1| |$f_$0_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$0| |$o_$0_$1| |$f_$0_$1|))))) (= (BreadthFirstSearch.IsPath |$h0_$0| |this_$6| |source#1_$3| |dest#2_$3| |p#3_$3|) (BreadthFirstSearch.IsPath |$h1_$0| |this_$6| |source#1_$3| |dest#2_$3| |p#3_$3|))))  :pattern ( ($HeapSucc |$h0_$0| |$h1_$0|) (BreadthFirstSearch.IsPath |$h1_$0| |this_$6| |source#1_$3| |dest#2_$3| |p#3_$3|)))) :named ax_74))
   (assert (! (forall( (|$h0_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$7| ref) (|source#1_$4| BoxType) (|dest#2_$4| BoxType) (|p#3_$4| Seq$BoxType$))(!(=> (and (and (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$1|) ($IsGoodHeap |$h1_$1|)) (not (= |this_$7| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |this_$7| alloc)) (= (dtype |this_$7|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |this_$7| alloc)) (= (dtype |this_$7|) class.BreadthFirstSearch)) (GenericAlloc |source#1_$4| |$h0_$1|)) (GenericAlloc |source#1_$4| |$h1_$1|)) (GenericAlloc |dest#2_$4| |$h0_$1|)) (GenericAlloc |dest#2_$4| |$h1_$1|)) (forall( (|$i#3_$0| Int))(!(=> (and (<= 0 |$i#3_$0|) (< |$i#3_$0| (Seq@Length$BoxType$ |p#3_$4|))) (GenericAlloc (Seq@Index$BoxType$ |p#3_$4| |$i#3_$0|) |$h0_$1|))  :pattern ( (Seq@Index$BoxType$ |p#3_$4| |$i#3_$0|))))) (forall( (|$i#4_$0| Int))(!(=> (and (<= 0 |$i#4_$0|) (< |$i#4_$0| (Seq@Length$BoxType$ |p#3_$4|))) (GenericAlloc (Seq@Index$BoxType$ |p#3_$4| |$i#4_$0|) |$h1_$1|))  :pattern ( (Seq@Index$BoxType$ |p#3_$4| |$i#4_$0|))))) ($HeapSucc |$h0_$1| |$h1_$1|)) (=> (and (forall( (|$o_$1_$0| ref) (|$f_$1_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$1_$0| |$f_$1_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$1_$0| |$f_$1_$0|)))) (forall( (|$o_$1_$1| ref) (|$f_$1_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$1| |$o_$1_$1| |$f_$1_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$1| |$o_$1_$1| |$f_$1_$1|))))) (= (BreadthFirstSearch.IsPath@limited |$h0_$1| |this_$7| |source#1_$4| |dest#2_$4| |p#3_$4|) (BreadthFirstSearch.IsPath@limited |$h1_$1| |this_$7| |source#1_$4| |dest#2_$4| |p#3_$4|))))  :pattern ( ($HeapSucc |$h0_$1| |$h1_$1|) (BreadthFirstSearch.IsPath@limited |$h1_$1| |this_$7| |source#1_$4| |dest#2_$4| |p#3_$4|)))) :named ax_75))
   (assert (! (forall( (|$h0_$10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$39| ref) (|m#59_$0| DatatypeType))(!(=> (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$10|) ($IsGoodHeap |$h1_$10|)) (not (= |this_$39| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$10| |this_$39| alloc)) (= (dtype |this_$39|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$10| |this_$39| alloc)) (= (dtype |this_$39|) class.BreadthFirstSearch)) (DtAlloc |m#59_$0| |$h0_$10|)) (= (DtType |m#59_$0|) class.Map)) (DtAlloc |m#59_$0| |$h1_$10|)) (= (DtType |m#59_$0|) class.Map)) ($HeapSucc |$h0_$10| |$h1_$10|)) (=> (and (forall( (|$o_$10_$0| ref) (|$f_$10_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$10| |$o_$10_$0| |$f_$10_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$10| |$o_$10_$0| |$f_$10_$0|)))) (forall( (|$o_$10_$1| ref) (|$f_$10_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$10| |$o_$10_$1| |$f_$10_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$10| |$o_$10_$1| |$f_$10_$1|))))) (= (BreadthFirstSearch.Domain |$h0_$10| |this_$39| |m#59_$0|) (BreadthFirstSearch.Domain |$h1_$10| |this_$39| |m#59_$0|))))  :pattern ( ($HeapSucc |$h0_$10| |$h1_$10|) (BreadthFirstSearch.Domain |$h1_$10| |this_$39| |m#59_$0|)))) :named ax_76))
   (assert (! (forall( (|$h0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$48| ref) (|source#60_$7| BoxType) (|m#61_$3| DatatypeType))(!(=> (and (and (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$11|) ($IsGoodHeap |$h1_$11|)) (not (= |this_$48| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$11| |this_$48| alloc)) (= (dtype |this_$48|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$11| |this_$48| alloc)) (= (dtype |this_$48|) class.BreadthFirstSearch)) (GenericAlloc |source#60_$7| |$h0_$11|)) (GenericAlloc |source#60_$7| |$h1_$11|)) (DtAlloc |m#61_$3| |$h0_$11|)) (= (DtType |m#61_$3|) class.Map)) (DtAlloc |m#61_$3| |$h1_$11|)) (= (DtType |m#61_$3|) class.Map)) ($HeapSucc |$h0_$11| |$h1_$11|)) (=> (and (forall( (|$o_$11_$0| ref) (|$f_$11_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$11| |$o_$11_$0| |$f_$11_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$11| |$o_$11_$0| |$f_$11_$0|)))) (forall( (|$o_$11_$1| ref) (|$f_$11_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$11| |$o_$11_$1| |$f_$11_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$11| |$o_$11_$1| |$f_$11_$1|))))) (= (BreadthFirstSearch.ValidMap |$h0_$11| |this_$48| |source#60_$7| |m#61_$3|) (BreadthFirstSearch.ValidMap |$h1_$11| |this_$48| |source#60_$7| |m#61_$3|))))  :pattern ( ($HeapSucc |$h0_$11| |$h1_$11|) (BreadthFirstSearch.ValidMap |$h1_$11| |this_$48| |source#60_$7| |m#61_$3|)))) :named ax_77))
   (assert (! (forall( (|$h0_$12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$49| ref) (|source#60_$8| BoxType) (|m#61_$4| DatatypeType))(!(=> (and (and (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$12|) ($IsGoodHeap |$h1_$12|)) (not (= |this_$49| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$12| |this_$49| alloc)) (= (dtype |this_$49|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$12| |this_$49| alloc)) (= (dtype |this_$49|) class.BreadthFirstSearch)) (GenericAlloc |source#60_$8| |$h0_$12|)) (GenericAlloc |source#60_$8| |$h1_$12|)) (DtAlloc |m#61_$4| |$h0_$12|)) (= (DtType |m#61_$4|) class.Map)) (DtAlloc |m#61_$4| |$h1_$12|)) (= (DtType |m#61_$4|) class.Map)) ($HeapSucc |$h0_$12| |$h1_$12|)) (=> (and (forall( (|$o_$12_$0| ref) (|$f_$12_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$12| |$o_$12_$0| |$f_$12_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$12| |$o_$12_$0| |$f_$12_$0|)))) (forall( (|$o_$12_$1| ref) (|$f_$12_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$12| |$o_$12_$1| |$f_$12_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$12| |$o_$12_$1| |$f_$12_$1|))))) (= (BreadthFirstSearch.ValidMap@limited |$h0_$12| |this_$49| |source#60_$8| |m#61_$4|) (BreadthFirstSearch.ValidMap@limited |$h1_$12| |this_$49| |source#60_$8| |m#61_$4|))))  :pattern ( ($HeapSucc |$h0_$12| |$h1_$12|) (BreadthFirstSearch.ValidMap@limited |$h1_$12| |this_$49| |source#60_$8| |m#61_$4|)))) :named ax_78))
   (assert (! (forall( (|$h0_$13| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$13| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$56| ref) (|source#66_$5| BoxType) (|x#67_$5| BoxType) (|m#68_$3| DatatypeType))(!(=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$13|) ($IsGoodHeap |$h1_$13|)) (not (= |this_$56| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$13| |this_$56| alloc)) (= (dtype |this_$56|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$13| |this_$56| alloc)) (= (dtype |this_$56|) class.BreadthFirstSearch)) (GenericAlloc |source#66_$5| |$h0_$13|)) (GenericAlloc |source#66_$5| |$h1_$13|)) (GenericAlloc |x#67_$5| |$h0_$13|)) (GenericAlloc |x#67_$5| |$h1_$13|)) (DtAlloc |m#68_$3| |$h0_$13|)) (= (DtType |m#68_$3|) class.Map)) (DtAlloc |m#68_$3| |$h1_$13|)) (= (DtType |m#68_$3|) class.Map)) ($HeapSucc |$h0_$13| |$h1_$13|)) (=> (and (forall( (|$o_$13_$0| ref) (|$f_$13_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$13| |$o_$13_$0| |$f_$13_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$13| |$o_$13_$0| |$f_$13_$0|)))) (forall( (|$o_$13_$1| ref) (|$f_$13_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$13| |$o_$13_$1| |$f_$13_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$13| |$o_$13_$1| |$f_$13_$1|))))) (= (BreadthFirstSearch.Find |$h0_$13| |this_$56| |source#66_$5| |x#67_$5| |m#68_$3|) (BreadthFirstSearch.Find |$h1_$13| |this_$56| |source#66_$5| |x#67_$5| |m#68_$3|))))  :pattern ( ($HeapSucc |$h0_$13| |$h1_$13|) (BreadthFirstSearch.Find |$h1_$13| |this_$56| |source#66_$5| |x#67_$5| |m#68_$3|)))) :named ax_79))
   (assert (! (forall( (|$h0_$14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$57| ref) (|source#66_$6| BoxType) (|x#67_$6| BoxType) (|m#68_$4| DatatypeType))(!(=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$14|) ($IsGoodHeap |$h1_$14|)) (not (= |this_$57| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$14| |this_$57| alloc)) (= (dtype |this_$57|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$14| |this_$57| alloc)) (= (dtype |this_$57|) class.BreadthFirstSearch)) (GenericAlloc |source#66_$6| |$h0_$14|)) (GenericAlloc |source#66_$6| |$h1_$14|)) (GenericAlloc |x#67_$6| |$h0_$14|)) (GenericAlloc |x#67_$6| |$h1_$14|)) (DtAlloc |m#68_$4| |$h0_$14|)) (= (DtType |m#68_$4|) class.Map)) (DtAlloc |m#68_$4| |$h1_$14|)) (= (DtType |m#68_$4|) class.Map)) ($HeapSucc |$h0_$14| |$h1_$14|)) (=> (and (forall( (|$o_$14_$0| ref) (|$f_$14_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$14| |$o_$14_$0| |$f_$14_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$14| |$o_$14_$0| |$f_$14_$0|)))) (forall( (|$o_$14_$1| ref) (|$f_$14_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$14| |$o_$14_$1| |$f_$14_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$14| |$o_$14_$1| |$f_$14_$1|))))) (= (BreadthFirstSearch.Find@limited |$h0_$14| |this_$57| |source#66_$6| |x#67_$6| |m#68_$4|) (BreadthFirstSearch.Find@limited |$h1_$14| |this_$57| |source#66_$6| |x#67_$6| |m#68_$4|))))  :pattern ( ($HeapSucc |$h0_$14| |$h1_$14|) (BreadthFirstSearch.Find@limited |$h1_$14| |this_$57| |source#66_$6| |x#67_$6| |m#68_$4|)))) :named ax_80))
   (assert (! (forall( (|$h0_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$9| ref) (|S#4_$0| $@Map@@BoxType@To@Bool@@))(!(=> (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$2|) ($IsGoodHeap |$h1_$2|)) (not (= |this_$9| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |this_$9| alloc)) (= (dtype |this_$9|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |this_$9| alloc)) (= (dtype |this_$9|) class.BreadthFirstSearch)) (forall( (|$t#7| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#4_$0| |$t#7|) (GenericAlloc |$t#7| |$h0_$2|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#4_$0| |$t#7|))))) (forall( (|$t#8| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#4_$0| |$t#8|) (GenericAlloc |$t#8| |$h1_$2|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#4_$0| |$t#8|))))) ($HeapSucc |$h0_$2| |$h1_$2|)) (=> (and (forall( (|$o_$2_$0| ref) (|$f_$2_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$2_$0| |$f_$2_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$2_$0| |$f_$2_$0|)))) (forall( (|$o_$2_$1| ref) (|$f_$2_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$2| |$o_$2_$1| |$f_$2_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$2| |$o_$2_$1| |$f_$2_$1|))))) (= (BreadthFirstSearch.IsClosed |$h0_$2| |this_$9| |S#4_$0|) (BreadthFirstSearch.IsClosed |$h1_$2| |this_$9| |S#4_$0|))))  :pattern ( ($HeapSucc |$h0_$2| |$h1_$2|) (BreadthFirstSearch.IsClosed |$h1_$2| |this_$9| |S#4_$0|)))) :named ax_81))
   (assert (! (forall( (|$h0_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$18| ref) (|nn#34_$3| DatatypeType))(!(=> (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$3|) ($IsGoodHeap |$h1_$3|)) (not (= |this_$18| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |this_$18| alloc)) (= (dtype |this_$18|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |this_$18| alloc)) (= (dtype |this_$18|) class.BreadthFirstSearch)) (DtAlloc |nn#34_$3| |$h0_$3|)) (= (DtType |nn#34_$3|) class.Nat)) (DtAlloc |nn#34_$3| |$h1_$3|)) (= (DtType |nn#34_$3|) class.Nat)) ($HeapSucc |$h0_$3| |$h1_$3|)) (=> (and (forall( (|$o_$3_$0| ref) (|$f_$3_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$3_$0| |$f_$3_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$3_$0| |$f_$3_$0|)))) (forall( (|$o_$3_$1| ref) (|$f_$3_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$3| |$o_$3_$1| |$f_$3_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$3| |$o_$3_$1| |$f_$3_$1|))))) (= (BreadthFirstSearch.Value |$h0_$3| |this_$18| |nn#34_$3|) (BreadthFirstSearch.Value |$h1_$3| |this_$18| |nn#34_$3|))))  :pattern ( ($HeapSucc |$h0_$3| |$h1_$3|) (BreadthFirstSearch.Value |$h1_$3| |this_$18| |nn#34_$3|)))) :named ax_82))
   (assert (! (forall( (|$h0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$19| ref) (|nn#34_$4| DatatypeType))(!(=> (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$4|) ($IsGoodHeap |$h1_$4|)) (not (= |this_$19| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |this_$19| alloc)) (= (dtype |this_$19|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |this_$19| alloc)) (= (dtype |this_$19|) class.BreadthFirstSearch)) (DtAlloc |nn#34_$4| |$h0_$4|)) (= (DtType |nn#34_$4|) class.Nat)) (DtAlloc |nn#34_$4| |$h1_$4|)) (= (DtType |nn#34_$4|) class.Nat)) ($HeapSucc |$h0_$4| |$h1_$4|)) (=> (and (forall( (|$o_$4_$0| ref) (|$f_$4_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$4_$0| |$f_$4_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$4_$0| |$f_$4_$0|)))) (forall( (|$o_$4_$1| ref) (|$f_$4_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$4| |$o_$4_$1| |$f_$4_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$4| |$o_$4_$1| |$f_$4_$1|))))) (= (BreadthFirstSearch.Value@limited |$h0_$4| |this_$19| |nn#34_$4|) (BreadthFirstSearch.Value@limited |$h1_$4| |this_$19| |nn#34_$4|))))  :pattern ( ($HeapSucc |$h0_$4| |$h1_$4|) (BreadthFirstSearch.Value@limited |$h1_$4| |this_$19| |nn#34_$4|)))) :named ax_83))
   (assert (! (forall( (|$h0_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$24| ref) (|n#36_$3| Int))(!(=> (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$5|) ($IsGoodHeap |$h1_$5|)) (not (= |this_$24| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |this_$24| alloc)) (= (dtype |this_$24|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |this_$24| alloc)) (= (dtype |this_$24|) class.BreadthFirstSearch)) (<= 0 |n#36_$3|)) (<= 0 |n#36_$3|)) ($HeapSucc |$h0_$5| |$h1_$5|)) (=> (and (forall( (|$o_$5_$0| ref) (|$f_$5_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$5_$0| |$f_$5_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$5_$0| |$f_$5_$0|)))) (forall( (|$o_$5_$1| ref) (|$f_$5_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$5| |$o_$5_$1| |$f_$5_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$5| |$o_$5_$1| |$f_$5_$1|))))) (= (BreadthFirstSearch.ToNat |$h0_$5| |this_$24| |n#36_$3|) (BreadthFirstSearch.ToNat |$h1_$5| |this_$24| |n#36_$3|))))  :pattern ( ($HeapSucc |$h0_$5| |$h1_$5|) (BreadthFirstSearch.ToNat |$h1_$5| |this_$24| |n#36_$3|)))) :named ax_84))
   (assert (! (forall( (|$h0_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$25| ref) (|n#36_$4| Int))(!(=> (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$6|) ($IsGoodHeap |$h1_$6|)) (not (= |this_$25| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |this_$25| alloc)) (= (dtype |this_$25|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |this_$25| alloc)) (= (dtype |this_$25|) class.BreadthFirstSearch)) (<= 0 |n#36_$4|)) (<= 0 |n#36_$4|)) ($HeapSucc |$h0_$6| |$h1_$6|)) (=> (and (forall( (|$o_$6_$0| ref) (|$f_$6_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$6_$0| |$f_$6_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$6_$0| |$f_$6_$0|)))) (forall( (|$o_$6_$1| ref) (|$f_$6_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$6| |$o_$6_$1| |$f_$6_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$6| |$o_$6_$1| |$f_$6_$1|))))) (= (BreadthFirstSearch.ToNat@limited |$h0_$6| |this_$25| |n#36_$4|) (BreadthFirstSearch.ToNat@limited |$h1_$6| |this_$25| |n#36_$4|))))  :pattern ( ($HeapSucc |$h0_$6| |$h1_$6|) (BreadthFirstSearch.ToNat@limited |$h1_$6| |this_$25| |n#36_$4|)))) :named ax_85))
   (assert (! (forall( (|$h0_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$34| ref) (|source#38_$7| BoxType) (|nn#39_$3| DatatypeType) (|AllVertices#40_$7| $@Map@@BoxType@To@Bool@@))(!(=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$7|) ($IsGoodHeap |$h1_$7|)) (not (= |this_$34| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$7| |this_$34| alloc)) (= (dtype |this_$34|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$7| |this_$34| alloc)) (= (dtype |this_$34|) class.BreadthFirstSearch)) (GenericAlloc |source#38_$7| |$h0_$7|)) (GenericAlloc |source#38_$7| |$h1_$7|)) (DtAlloc |nn#39_$3| |$h0_$7|)) (= (DtType |nn#39_$3|) class.Nat)) (DtAlloc |nn#39_$3| |$h1_$7|)) (= (DtType |nn#39_$3|) class.Nat)) (forall( (|$t#9| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$7| |$t#9|) (GenericAlloc |$t#9| |$h0_$7|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$7| |$t#9|))))) (forall( (|$t#10| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$7| |$t#10|) (GenericAlloc |$t#10| |$h1_$7|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$7| |$t#10|))))) ($HeapSucc |$h0_$7| |$h1_$7|)) (=> (and (forall( (|$o_$7_$0| ref) (|$f_$7_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$7| |$o_$7_$0| |$f_$7_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$7| |$o_$7_$0| |$f_$7_$0|)))) (forall( (|$o_$7_$1| ref) (|$f_$7_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$7| |$o_$7_$1| |$f_$7_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$7| |$o_$7_$1| |$f_$7_$1|))))) (= (BreadthFirstSearch.R |$h0_$7| |this_$34| |source#38_$7| |nn#39_$3| |AllVertices#40_$7|) (BreadthFirstSearch.R |$h1_$7| |this_$34| |source#38_$7| |nn#39_$3| |AllVertices#40_$7|))))  :pattern ( ($HeapSucc |$h0_$7| |$h1_$7|) (BreadthFirstSearch.R |$h1_$7| |this_$34| |source#38_$7| |nn#39_$3| |AllVertices#40_$7|)))) :named ax_86))
   (assert (! (forall( (|$h0_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$35| ref) (|source#38_$8| BoxType) (|nn#39_$4| DatatypeType) (|AllVertices#40_$8| $@Map@@BoxType@To@Bool@@))(!(=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$8|) ($IsGoodHeap |$h1_$8|)) (not (= |this_$35| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$8| |this_$35| alloc)) (= (dtype |this_$35|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$8| |this_$35| alloc)) (= (dtype |this_$35|) class.BreadthFirstSearch)) (GenericAlloc |source#38_$8| |$h0_$8|)) (GenericAlloc |source#38_$8| |$h1_$8|)) (DtAlloc |nn#39_$4| |$h0_$8|)) (= (DtType |nn#39_$4|) class.Nat)) (DtAlloc |nn#39_$4| |$h1_$8|)) (= (DtType |nn#39_$4|) class.Nat)) (forall( (|$t#9_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$8| |$t#9_$0|) (GenericAlloc |$t#9_$0| |$h0_$8|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$8| |$t#9_$0|))))) (forall( (|$t#10_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$8| |$t#10_$0|) (GenericAlloc |$t#10_$0| |$h1_$8|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#40_$8| |$t#10_$0|))))) ($HeapSucc |$h0_$8| |$h1_$8|)) (=> (and (forall( (|$o_$8_$0| ref) (|$f_$8_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$8| |$o_$8_$0| |$f_$8_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$8| |$o_$8_$0| |$f_$8_$0|)))) (forall( (|$o_$8_$1| ref) (|$f_$8_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$8| |$o_$8_$1| |$f_$8_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$8| |$o_$8_$1| |$f_$8_$1|))))) (= (BreadthFirstSearch.R@limited |$h0_$8| |this_$35| |source#38_$8| |nn#39_$4| |AllVertices#40_$8|) (BreadthFirstSearch.R@limited |$h1_$8| |this_$35| |source#38_$8| |nn#39_$4| |AllVertices#40_$8|))))  :pattern ( ($HeapSucc |$h0_$8| |$h1_$8|) (BreadthFirstSearch.R@limited |$h1_$8| |this_$35| |source#38_$8| |nn#39_$4| |AllVertices#40_$8|)))) :named ax_87))
   (assert (! (forall( (|$h0_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$37| ref) (|S#42_$0| $@Map@@BoxType@To@Bool@@) (|AllVertices#43_$0| $@Map@@BoxType@To@Bool@@))(!(=> (and (and (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0_$9|) ($IsGoodHeap |$h1_$9|)) (not (= |this_$37| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$9| |this_$37| alloc)) (= (dtype |this_$37|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$9| |this_$37| alloc)) (= (dtype |this_$37|) class.BreadthFirstSearch)) (forall( (|$t#16| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#42_$0| |$t#16|) (GenericAlloc |$t#16| |$h0_$9|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#42_$0| |$t#16|))))) (forall( (|$t#17| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#42_$0| |$t#17|) (GenericAlloc |$t#17| |$h1_$9|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#42_$0| |$t#17|))))) (forall( (|$t#18| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#43_$0| |$t#18|) (GenericAlloc |$t#18| |$h0_$9|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#43_$0| |$t#18|))))) (forall( (|$t#19| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#43_$0| |$t#19|) (GenericAlloc |$t#19| |$h1_$9|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#43_$0| |$t#19|))))) ($HeapSucc |$h0_$9| |$h1_$9|)) (=> (and (forall( (|$o_$9_$0| ref) (|$f_$9_$0| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$9| |$o_$9_$0| |$f_$9_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$9| |$o_$9_$0| |$f_$9_$0|)))) (forall( (|$o_$9_$1| ref) (|$f_$9_$1| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$9| |$o_$9_$1| |$f_$9_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$9| |$o_$9_$1| |$f_$9_$1|))))) (= (BreadthFirstSearch.Successors |$h0_$9| |this_$37| |S#42_$0| |AllVertices#43_$0|) (BreadthFirstSearch.Successors |$h1_$9| |this_$37| |S#42_$0| |AllVertices#43_$0|))))  :pattern ( ($HeapSucc |$h0_$9| |$h1_$9|) (BreadthFirstSearch.Successors |$h1_$9| |this_$37| |S#42_$0| |AllVertices#43_$0|)))) :named ax_88))
   (assert (! (forall( (|$h0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$1| ref) (|x#0_$0| BoxType))(!(=> (and (and (and (and (and (and (and (and (and ($IsGoodHeap |$h0|) ($IsGoodHeap |$h1|)) (not (= |this_$1| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |this_$1| alloc)) (= (dtype |this_$1|) class.BreadthFirstSearch)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |this_$1| alloc)) (= (dtype |this_$1|) class.BreadthFirstSearch)) (GenericAlloc |x#0_$0| |$h0|)) (GenericAlloc |x#0_$0| |$h1|)) ($HeapSucc |$h0| |$h1|)) (=> (and (forall( (|$o_$54| ref) (|$f_$54| Field$Bool$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$54| |$f_$54|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$54| |$f_$54|)))) (forall( (|$o_$55| ref) (|$f_$55| Field$BoxType$))(=> false (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0| |$o_$55| |$f_$55|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1| |$o_$55| |$f_$55|))))) (= (BreadthFirstSearch.Succ |$h0| |this_$1| |x#0_$0|) (BreadthFirstSearch.Succ |$h1| |this_$1| |x#0_$0|))))  :pattern ( ($HeapSucc |$h0| |$h1|) (BreadthFirstSearch.Succ |$h1| |this_$1| |x#0_$0|)))) :named ax_89))
   (assert (! (forall( (|$Heap_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$2| ref) (|source#1| BoxType) (|dest#2| BoxType) (|p#3| Seq$BoxType$))(!(= (BreadthFirstSearch.IsPath@2 |$Heap_$1| |this_$2| |source#1| |dest#2| |p#3|) (BreadthFirstSearch.IsPath |$Heap_$1| |this_$2| |source#1| |dest#2| |p#3|))  :pattern ( (BreadthFirstSearch.IsPath@2 |$Heap_$1| |this_$2| |source#1| |dest#2| |p#3|)))) :named ax_90))
   (assert (! (forall( (|$Heap_$14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$20| ref) (|n#36| Int))(!(= (BreadthFirstSearch.ToNat@2 |$Heap_$14| |this_$20| |n#36|) (BreadthFirstSearch.ToNat |$Heap_$14| |this_$20| |n#36|))  :pattern ( (BreadthFirstSearch.ToNat@2 |$Heap_$14| |this_$20| |n#36|)))) :named ax_91))
   (assert (! (forall( (|$Heap_$15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$21| ref) (|n#36_$0| Int))(!(= (BreadthFirstSearch.ToNat |$Heap_$15| |this_$21| |n#36_$0|) (BreadthFirstSearch.ToNat@limited |$Heap_$15| |this_$21| |n#36_$0|))  :pattern ( (BreadthFirstSearch.ToNat |$Heap_$15| |this_$21| |n#36_$0|)))) :named ax_92))
   (assert (! (forall( (|$Heap_$18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$26| ref) (|source#38| BoxType) (|nn#39| DatatypeType) (|AllVertices#40| $@Map@@BoxType@To@Bool@@))(!(= (BreadthFirstSearch.R@2 |$Heap_$18| |this_$26| |source#38| |nn#39| |AllVertices#40|) (BreadthFirstSearch.R |$Heap_$18| |this_$26| |source#38| |nn#39| |AllVertices#40|))  :pattern ( (BreadthFirstSearch.R@2 |$Heap_$18| |this_$26| |source#38| |nn#39| |AllVertices#40|)))) :named ax_93))
   (assert (! (forall( (|$Heap_$19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$27| ref) (|source#38_$0| BoxType) (|nn#39_$0| DatatypeType) (|AllVertices#40_$0| $@Map@@BoxType@To@Bool@@))(!(= (BreadthFirstSearch.R |$Heap_$19| |this_$27| |source#38_$0| |nn#39_$0| |AllVertices#40_$0|) (BreadthFirstSearch.R@limited |$Heap_$19| |this_$27| |source#38_$0| |nn#39_$0| |AllVertices#40_$0|))  :pattern ( (BreadthFirstSearch.R |$Heap_$19| |this_$27| |source#38_$0| |nn#39_$0| |AllVertices#40_$0|)))) :named ax_94))
   (assert (! (forall( (|$Heap_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$3| ref) (|source#1_$0| BoxType) (|dest#2_$0| BoxType) (|p#3_$0| Seq$BoxType$))(!(= (BreadthFirstSearch.IsPath |$Heap_$2| |this_$3| |source#1_$0| |dest#2_$0| |p#3_$0|) (BreadthFirstSearch.IsPath@limited |$Heap_$2| |this_$3| |source#1_$0| |dest#2_$0| |p#3_$0|))  :pattern ( (BreadthFirstSearch.IsPath |$Heap_$2| |this_$3| |source#1_$0| |dest#2_$0| |p#3_$0|)))) :named ax_95))
   (assert (! (forall( (|$Heap_$28| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$40| ref) (|source#60| BoxType) (|m#61| DatatypeType))(!(= (BreadthFirstSearch.ValidMap@2 |$Heap_$28| |this_$40| |source#60| |m#61|) (BreadthFirstSearch.ValidMap |$Heap_$28| |this_$40| |source#60| |m#61|))  :pattern ( (BreadthFirstSearch.ValidMap@2 |$Heap_$28| |this_$40| |source#60| |m#61|)))) :named ax_96))
   (assert (! (forall( (|$Heap_$29| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$41| ref) (|source#60_$0| BoxType) (|m#61_$0| DatatypeType))(!(= (BreadthFirstSearch.ValidMap |$Heap_$29| |this_$41| |source#60_$0| |m#61_$0|) (BreadthFirstSearch.ValidMap@limited |$Heap_$29| |this_$41| |source#60_$0| |m#61_$0|))  :pattern ( (BreadthFirstSearch.ValidMap |$Heap_$29| |this_$41| |source#60_$0| |m#61_$0|)))) :named ax_97))
   (assert (! (forall( (|$Heap_$36| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$50| ref) (|source#66| BoxType) (|x#67| BoxType) (|m#68| DatatypeType))(!(= (BreadthFirstSearch.Find@2 |$Heap_$36| |this_$50| |source#66| |x#67| |m#68|) (BreadthFirstSearch.Find |$Heap_$36| |this_$50| |source#66| |x#67| |m#68|))  :pattern ( (BreadthFirstSearch.Find@2 |$Heap_$36| |this_$50| |source#66| |x#67| |m#68|)))) :named ax_98))
   (assert (! (forall( (|$Heap_$37| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$51| ref) (|source#66_$0| BoxType) (|x#67_$0| BoxType) (|m#68_$0| DatatypeType))(!(= (BreadthFirstSearch.Find |$Heap_$37| |this_$51| |source#66_$0| |x#67_$0| |m#68_$0|) (BreadthFirstSearch.Find@limited |$Heap_$37| |this_$51| |source#66_$0| |x#67_$0| |m#68_$0|))  :pattern ( (BreadthFirstSearch.Find |$Heap_$37| |this_$51| |source#66_$0| |x#67_$0| |m#68_$0|)))) :named ax_99))
   (assert (! (forall( (|$Heap_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$10| ref) (|nn#34| DatatypeType))(!(= (BreadthFirstSearch.Value@2 |$Heap_$6| |this_$10| |nn#34|) (BreadthFirstSearch.Value |$Heap_$6| |this_$10| |nn#34|))  :pattern ( (BreadthFirstSearch.Value@2 |$Heap_$6| |this_$10| |nn#34|)))) :named ax_100))
   (assert (! (forall( (|$Heap_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$11| ref) (|nn#34_$0| DatatypeType))(!(= (BreadthFirstSearch.Value |$Heap_$7| |this_$11| |nn#34_$0|) (BreadthFirstSearch.Value@limited |$Heap_$7| |this_$11| |nn#34_$0|))  :pattern ( (BreadthFirstSearch.Value |$Heap_$7| |this_$11| |nn#34_$0|)))) :named ax_101))
   (assert (! (forall( (|$i#1_$0| Int))(!(=> (and (<= 0 |$i#1_$0|) (< |$i#1_$0| (Seq@Length$BoxType$ path@10))) (GenericAlloc (Seq@Index$BoxType$ path@10 |$i#1_$0|) $Heap))  :pattern ( (Seq@Index$BoxType$ path@10 |$i#1_$0|)))) :named ax_102))
   (assert (! (forall( (|$i#21| Int))(!(=> (and (<= 0 |$i#21|) (< |$i#21| (Seq@Length$BoxType$ pathToV@22))) (GenericAlloc (Seq@Index$BoxType$ pathToV@22 |$i#21|) $Heap))  :pattern ( (Seq@Index$BoxType$ pathToV@22 |$i#21|)))) :named ax_103))
   (assert (! (forall( (|$o_$18_$0| ref) (|$f_$18_$0| Field$Bool$) (|alloc_$3_$0| Field$Bool$) (|null_$3_$0| ref) (|$Heap_$45_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@3 |alloc_$3_$0| |null_$3_$0| |$Heap_$45_$0|) |$o_$18_$0| |$f_$18_$0|) (=> (and (not (= |$o_$18_$0| |null_$3_$0|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$45_$0| |$o_$18_$0| |alloc_$3_$0|)) false))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@3 |alloc_$3_$0| |null_$3_$0| |$Heap_$45_$0|) |$o_$18_$0| |$f_$18_$0|)))) :named ax_104))
   (assert (! (forall( (|$o_$18_$1| ref) (|$f_$18_$1| Field$BoxType$) (|alloc_$3_$1| Field$Bool$) (|null_$3_$1| ref) (|$Heap_$45_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@3 |alloc_$3_$1| |null_$3_$1| |$Heap_$45_$1|) |$o_$18_$1| |$f_$18_$1|) (=> (and (not (= |$o_$18_$1| |null_$3_$1|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$45_$1| |$o_$18_$1| |alloc_$3_$1|)) false))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@3 |alloc_$3_$1| |null_$3_$1| |$Heap_$45_$1|) |$o_$18_$1| |$f_$18_$1|)))) :named ax_105))
   (assert (! (forall( (|$t#0_$2| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 |$t#0_$2|) (GenericAlloc |$t#0_$2| $Heap))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 |$t#0_$2|)))) :named ax_106))
   (assert (! (forall( (|$t#10_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ V@13 |$t#10_$1|) (GenericAlloc |$t#10_$1| $Heap))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ V@13 |$t#10_$1|)))) :named ax_107))
   (assert (! (forall( (|$t#11_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ C@14 |$t#11_$0|) (GenericAlloc |$t#11_$0| $Heap))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ C@14 |$t#11_$0|)))) :named ax_108))
   (assert (! (forall( (|$t#12_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ N@15 |$t#12_$0|) (GenericAlloc |$t#12_$0| $Heap))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ N@15 |$t#12_$0|)))) :named ax_109))
   (assert (! (forall( (|$t#16_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ Processed@16 |$t#16_$1|) (GenericAlloc |$t#16_$1| $Heap))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ Processed@16 |$t#16_$1|)))) :named ax_110))
   (assert (! (forall( (|$t#26| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ newlyEncountered@24 |$t#26|) (GenericAlloc |$t#26| $Heap))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ newlyEncountered@24 |$t#26|)))) :named ax_111))
   (assert (! (forall( (|$y#14| BoxType) (|S#42_$1| $@Map@@BoxType@To@Bool@@) (|$Heap_$54| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|AllVertices#43_$1| $@Map@@BoxType@To@Bool@@) (|this_$65| ref))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (lambda@12 |S#42_$1| |$Heap_$54| |AllVertices#43_$1| |this_$65|) |$y#14|) (exists( (|w#44_$0| BoxType))(and (and (and (GenericAlloc |w#44_$0| |$Heap_$54|) (MapRead$$@Map@@BoxType@To@Bool@@$ |AllVertices#43_$1| |w#44_$0|)) (exists( (|x#45_$0| BoxType))(and (and (GenericAlloc |x#45_$0| |$Heap_$54|) (MapRead$$@Map@@BoxType@To@Bool@@$ |S#42_$1| |x#45_$0|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ |$Heap_$54| |this_$65| |x#45_$0|) |w#44_$0|)))) (= |$y#14| |w#44_$0|))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (lambda@12 |S#42_$1| |$Heap_$54| |AllVertices#43_$1| |this_$65|) |$y#14|)))) :named ax_112))
   (assert (! (forall( (|$y#27| BoxType) (|V#13_$0| $@Map@@BoxType@To@Bool@@) (|$Heap_$46| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$64| ref) (|v#21_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (lambda@4 |V#13_$0| |$Heap_$46| |this_$64| |v#21_$0|) |$y#27|) (exists( (|w#25| BoxType))(and (and (and (GenericAlloc |w#25| |$Heap_$46|) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ |$Heap_$46| |this_$64| |v#21_$0|) |w#25|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |V#13_$0| |w#25|))) (= |$y#27| |w#25|))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (lambda@4 |V#13_$0| |$Heap_$46| |this_$64| |v#21_$0|) |$y#27|)))) :named ax_113))
   (assert (! (forall( (|a_$0_$0| $@Map@@BoxType@To@Bool@@) (|x_$0_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$0_$0| |x_$0_$0|) |x_$0_$0|)  :pattern ( (Set@UnionOne$BoxType$ |a_$0_$0| |x_$0_$0|)))) :named ax_114))
   (assert (! (forall( (|a_$1_$0| $@Map@@BoxType@To@Bool@@) (|x_$1_$0| BoxType) (|y_$11| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$11|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$1_$0| |x_$1_$0|) |y_$11|))  :pattern ( (Set@UnionOne$BoxType$ |a_$1_$0| |x_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$11|)))) :named ax_115))
   (assert (! (forall( (|a_$10_$0| $@Map@@BoxType@To@Bool@@) (|b_$7_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ |a_$10_$0| (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|)) (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|))  :pattern ( (Set@Intersection$BoxType$ |a_$10_$0| (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|))))) :named ax_116))
   (assert (! (forall( (|a_$11_$0| $@Map@@BoxType@To@Bool@@) (|b_$8_$0| $@Map@@BoxType@To@Bool@@) (|o_$4_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$11_$0| |b_$8_$0|) |o_$4_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$11_$0| |o_$4_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$8_$0| |o_$4_$0|))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$11_$0| |b_$8_$0|) |o_$4_$0|)))) :named ax_117))
   (assert (! (forall( (|a_$12_$0| $@Map@@BoxType@To@Bool@@) (|b_$9_$0| $@Map@@BoxType@To@Bool@@) (|y_$2_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |y_$2_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$12_$0| |b_$9_$0|) |y_$2_$0|)))  :pattern ( (Set@Difference$BoxType$ |a_$12_$0| |b_$9_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |y_$2_$0|)))) :named ax_118))
   (assert (! (forall( (|a_$13_$0| $@Map@@BoxType@To@Bool@@) (|b_$10_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Subset$BoxType$ |a_$13_$0| |b_$10_$0|) (forall( (|o_$5_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$13_$0| |o_$5_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$10_$0| |o_$5_$1|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$13_$0| |o_$5_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$10_$0| |o_$5_$1|)))))  :pattern ( (Set@Subset$BoxType$ |a_$13_$0| |b_$10_$0|)))) :named ax_119))
   (assert (! (forall( (|a_$14_$0| $@Map@@BoxType@To@Bool@@) (|b_$11_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Equal$BoxType$ |a_$14_$0| |b_$11_$0|) (forall( (|o_$6_$1| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$6_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$11_$0| |o_$6_$1|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$6_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$11_$0| |o_$6_$1|)))))  :pattern ( (Set@Equal$BoxType$ |a_$14_$0| |b_$11_$0|)))) :named ax_120))
   (assert (! (forall( (|a_$15_$0| $@Map@@BoxType@To@Bool@@) (|b_$12_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Equal$BoxType$ |a_$15_$0| |b_$12_$0|) (= |a_$15_$0| |b_$12_$0|))  :pattern ( (Set@Equal$BoxType$ |a_$15_$0| |b_$12_$0|)))) :named ax_121))
   (assert (! (forall( (|a_$16_$0| $@Map@@BoxType@To@Bool@@) (|b_$13_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Disjoint$BoxType$ |a_$16_$0| |b_$13_$0|) (forall( (|o_$7_$1| BoxType))(!(or (not (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$16_$0| |o_$7_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$7_$1|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$16_$0| |o_$7_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$7_$1|)))))  :pattern ( (Set@Disjoint$BoxType$ |a_$16_$0| |b_$13_$0|)))) :named ax_122))
   (assert (! (forall( (|a_$17_$0| $@Map@@BoxType@To@Bool@@) (|tick_$0| TickType))(!(=> (not (= |a_$17_$0| Set@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$17_$0| (Set@Choose$BoxType$ |a_$17_$0| |tick_$0|)))  :pattern ( (Set@Choose$BoxType$ |a_$17_$0| |tick_$0|)))) :named ax_123))
   (assert (! (forall( (|a_$18| Int) (|b_$14| Int))(!(= (<= |a_$18| |b_$14|) (= (Math@min |a_$18| |b_$14|) |a_$18|))  :pattern ( (Math@min |a_$18| |b_$14|)))) :named ax_124))
   (assert (! (forall( (|a_$19| Int) (|b_$15| Int))(!(= (<= |b_$15| |a_$19|) (= (Math@min |a_$19| |b_$15|) |b_$15|))  :pattern ( (Math@min |a_$19| |b_$15|)))) :named ax_125))
   (assert (! (forall( (|a_$2_$0| $@Map@@BoxType@To@Bool@@) (|b_$45| $@Map@@BoxType@To@Bool@@) (|o_$2_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$2_$0| |b_$45|) |o_$2_$0|) (or (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$2_$0| |o_$2_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$45| |o_$2_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$2_$0| |b_$45|) |o_$2_$0|)))) :named ax_126))
   (assert (! (forall( (|a_$20| Int) (|b_$16| Int))(!(or (= (Math@min |a_$20| |b_$16|) |a_$20|) (= (Math@min |a_$20| |b_$16|) |b_$16|))  :pattern ( (Math@min |a_$20| |b_$16|)))) :named ax_127))
   (assert (! (forall( (|a_$21| Int))(!(=> (<= 0 |a_$21|) (= (Math@clip |a_$21|) |a_$21|))  :pattern ( (Math@clip |a_$21|)))) :named ax_128))
   (assert (! (forall( (|a_$22| Int))(!(=> (< |a_$22| 0) (= (Math@clip |a_$22|) 0))  :pattern ( (Math@clip |a_$22|)))) :named ax_129))
   (assert (! (forall( (|a_$3_$0| $@Map@@BoxType@To@Bool@@) (|b_$0_$0| $@Map@@BoxType@To@Bool@@) (|y_$0_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |y_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$3_$0| |b_$0_$0|) |y_$0_$0|))  :pattern ( (Set@Union$BoxType$ |a_$3_$0| |b_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |y_$0_$0|)))) :named ax_130))
   (assert (! (forall( (|a_$4_$0| $@Map@@BoxType@To@Bool@@) (|b_$1_$0| $@Map@@BoxType@To@Bool@@) (|y_$1_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$4_$0| |b_$1_$0|) |y_$1_$0|))  :pattern ( (Set@Union$BoxType$ |a_$4_$0| |b_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|)))) :named ax_131))
   (assert (! (forall( (|a_$42_$0| Seq$ref$) (|b_$31_$0| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$42_$0| |b_$31_$0|) (= |a_$42_$0| |b_$31_$0|))  :pattern ( (Seq@Equal$ref$ |a_$42_$0| |b_$31_$0|)))) :named ax_132))
   (assert (! (forall( (|a_$42_$1| Seq$BoxType$) (|b_$31_$1| Seq$BoxType$))(!(=> (Seq@Equal$BoxType$ |a_$42_$1| |b_$31_$1|) (= |a_$42_$1| |b_$31_$1|))  :pattern ( (Seq@Equal$BoxType$ |a_$42_$1| |b_$31_$1|)))) :named ax_133))
   (assert (! (forall( (|a_$48| ClassName) (|b_$38| ClassName))(!(and (= (TypeTupleCar (TypeTuple |a_$48| |b_$38|)) |a_$48|) (= (TypeTupleCdr (TypeTuple |a_$48| |b_$38|)) |b_$38|))  :pattern ( (TypeTuple |a_$48| |b_$38|)))) :named ax_134))
   (assert (! (forall( (|a_$49| Int) (|b_$44| Int) (|d_$1| Int))(!(=> (and (and (<= 2 |d_$1|) (= (mod |a_$49| |d_$1|) (mod |b_$44| |d_$1|))) (< |a_$49| |b_$44|)) (<= (+ |a_$49| |d_$1|) |b_$44|))  :pattern ( (mod |a_$49| |d_$1|) (mod |b_$44| |d_$1|)))) :named ax_135))
   (assert (! (forall( (|a_$5_$0| $@Map@@BoxType@To@Bool@@) (|b_$2_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Disjoint$BoxType$ |a_$5_$0| |b_$2_$0|) (and (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|) |a_$5_$0|) |b_$2_$0|) (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|) |b_$2_$0|) |a_$5_$0|)))  :pattern ( (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|)))) :named ax_136))
   (assert (! (forall( (|a_$50| $@Map@@BoxType@To@Bool@@) (|x_$20| BoxType) (|o_$1_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$50| |x_$20|) |o_$1_$0|) (or (= |o_$1_$0| |x_$20|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$50| |o_$1_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$50| |x_$20|) |o_$1_$0|)))) :named ax_137))
   (assert (! (forall( (|a_$6_$0| $@Map@@BoxType@To@Bool@@) (|b_$3_$0| $@Map@@BoxType@To@Bool@@) (|o_$3_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$6_$0| |b_$3_$0|) |o_$3_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$6_$0| |o_$3_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$3_$0| |o_$3_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$6_$0| |b_$3_$0|) |o_$3_$0|)))) :named ax_138))
   (assert (! (forall( (|a_$7_$0| $@Map@@BoxType@To@Bool@@) (|b_$4_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|) |b_$4_$0|) (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|))  :pattern ( (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|) |b_$4_$0|)))) :named ax_139))
   (assert (! (forall( (|a_$8_$0| $@Map@@BoxType@To@Bool@@) (|b_$5_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ |a_$8_$0| (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|)) (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|))  :pattern ( (Set@Union$BoxType$ |a_$8_$0| (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|))))) :named ax_140))
   (assert (! (forall( (|a_$9_$0| $@Map@@BoxType@To@Bool@@) (|b_$6_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|) |b_$6_$0|) (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|))  :pattern ( (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|) |b_$6_$0|)))) :named ax_141))
   (assert (! (forall( (|a0#0| $@Map@@BoxType@To@Bool@@) (|a1#1| BoxType) (|a2#2| Seq$BoxType$) (|a3#3| DatatypeType))(= (DtType ($@Map.Maplet |a0#0| |a1#1| |a2#2| |a3#3|)) class.Map)) :named ax_142))
   (assert (! (forall( (|a0#12| $@Map@@BoxType@To@Bool@@) (|a1#13| BoxType) (|a2#14| Seq$BoxType$) (|a3#15| DatatypeType) (|$h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($IsGoodHeap |$h_$0|) (= (DtAlloc ($@Map.Maplet |a0#12| |a1#13| |a2#14| |a3#15|) |$h_$0|) (and (and (and (and (forall( (|$t#16_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a0#12| |$t#16_$0|) (GenericAlloc |$t#16_$0| |$h_$0|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a0#12| |$t#16_$0|)))) (GenericAlloc |a1#13| |$h_$0|)) (forall( (|$i#17| Int))(!(=> (and (<= 0 |$i#17|) (< |$i#17| (Seq@Length$BoxType$ |a2#14|))) (GenericAlloc (Seq@Index$BoxType$ |a2#14| |$i#17|) |$h_$0|))  :pattern ( (Seq@Index$BoxType$ |a2#14| |$i#17|))))) (DtAlloc |a3#15| |$h_$0|)) (= (DtType |a3#15|) class.Map))))  :pattern ( (DtAlloc ($@Map.Maplet |a0#12| |a1#13| |a2#14| |a3#15|) |$h_$0|)))) :named ax_143))
   (assert (! (forall( (|a0#18| $@Map@@BoxType@To@Bool@@) (|a1#19| BoxType) (|a2#20| Seq$BoxType$) (|a3#21| DatatypeType))(= (Map.dom ($@Map.Maplet |a0#18| |a1#19| |a2#20| |a3#21|)) |a0#18|)) :named ax_144))
   (assert (! (forall( (|a0#22| $@Map@@BoxType@To@Bool@@) (|a1#23| BoxType) (|a2#24| Seq$BoxType$) (|a3#25| DatatypeType) (|d_$4| DatatypeType))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a0#22| ($Box$DatatypeType$ |d_$4|)) (< (DtRank |d_$4|) (DtRank ($@Map.Maplet |a0#22| |a1#23| |a2#24| |a3#25|))))) :named ax_145))
   (assert (! (forall( (|a0#30| $@Map@@BoxType@To@Bool@@) (|a1#31| BoxType) (|a2#32| Seq$BoxType$) (|a3#33| DatatypeType))(< (DtRank ($Unbox$DatatypeType$ |a1#31|)) (DtRank ($@Map.Maplet |a0#30| |a1#31| |a2#32| |a3#33|)))) :named ax_146))
   (assert (! (forall( (|a0#38| $@Map@@BoxType@To@Bool@@) (|a1#39| BoxType) (|a2#40| Seq$BoxType$) (|a3#41| DatatypeType) (|i_$18| Int))(=> (and (<= 0 |i_$18|) (< |i_$18| (Seq@Length$BoxType$ |a2#40|))) (< (DtRank ($Unbox$DatatypeType$ (Seq@Index$BoxType$ |a2#40| |i_$18|))) (DtRank ($@Map.Maplet |a0#38| |a1#39| |a2#40| |a3#41|))))) :named ax_147))
   (assert (! (forall( (|a0#4| $@Map@@BoxType@To@Bool@@) (|a1#5| BoxType) (|a2#6| Seq$BoxType$) (|a3#7| DatatypeType))(= (DatatypeCtorId ($@Map.Maplet |a0#4| |a1#5| |a2#6| |a3#7|)) $@@Map.Maplet)) :named ax_148))
   (assert (! (forall( (|a0#46| $@Map@@BoxType@To@Bool@@) (|a1#47| BoxType) (|a2#48| Seq$BoxType$) (|a3#49| DatatypeType))(< (DtRank |a3#49|) (DtRank ($@Map.Maplet |a0#46| |a1#47| |a2#48| |a3#49|)))) :named ax_149))
   (assert (! (forall( (|a0#50| BoxType) (|a1#51| DatatypeType))(= (DtType ($@List.Cons |a0#50| |a1#51|)) class.List)) :named ax_150))
   (assert (! (forall( (|a0#52| BoxType) (|a1#53| DatatypeType))(= (DatatypeCtorId ($@List.Cons |a0#52| |a1#53|)) $@@List.Cons)) :named ax_151))
   (assert (! (forall( (|a0#56| BoxType) (|a1#57| DatatypeType) (|$h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($IsGoodHeap |$h_$2|) (= (DtAlloc ($@List.Cons |a0#56| |a1#57|) |$h_$2|) (and (and (GenericAlloc |a0#56| |$h_$2|) (DtAlloc |a1#57| |$h_$2|)) (= (DtType |a1#57|) class.List))))  :pattern ( (DtAlloc ($@List.Cons |a0#56| |a1#57|) |$h_$2|)))) :named ax_152))
   (assert (! (forall( (|a0#60| BoxType) (|a1#61| DatatypeType))(< (DtRank ($Unbox$DatatypeType$ |a0#60|)) (DtRank ($@List.Cons |a0#60| |a1#61|)))) :named ax_153))
   (assert (! (forall( (|a0#64| BoxType) (|a1#65| DatatypeType))(< (DtRank |a1#65|) (DtRank ($@List.Cons |a0#64| |a1#65|)))) :named ax_154))
   (assert (! (forall( (|a0#66| DatatypeType))(= (DtType ($@Nat.Suc |a0#66|)) class.Nat)) :named ax_155))
   (assert (! (forall( (|a0#67| DatatypeType))(= (DatatypeCtorId ($@Nat.Suc |a0#67|)) $@@Nat.Suc)) :named ax_156))
   (assert (! (forall( (|a0#69| DatatypeType) (|$h_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($IsGoodHeap |$h_$4|) (= (DtAlloc ($@Nat.Suc |a0#69|) |$h_$4|) (and (DtAlloc |a0#69| |$h_$4|) (= (DtType |a0#69|) class.Nat))))  :pattern ( (DtAlloc ($@Nat.Suc |a0#69|) |$h_$4|)))) :named ax_157))
   (assert (! (forall( (|a0#70| DatatypeType))(= (Nat.predecessor ($@Nat.Suc |a0#70|)) |a0#70|)) :named ax_158))
   (assert (! (forall( (|a0#71| DatatypeType))(< (DtRank |a0#71|) (DtRank ($@Nat.Suc |a0#71|)))) :named ax_159))
   (assert (! (forall( (|b_$32| BoxType))(!(= ($Box$Int$ ($Unbox$Int$ |b_$32|)) |b_$32|)  :pattern ( ($Unbox$Int$ |b_$32|)))) :named ax_160))
   (assert (! (forall( (|b_$33| BoxType))(!(= ($Box$ref$ ($Unbox$ref$ |b_$33|)) |b_$33|)  :pattern ( ($Unbox$ref$ |b_$33|)))) :named ax_161))
   (assert (! (forall( (|b_$34| BoxType))(!(= ($Box$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$34|)) |b_$34|)  :pattern ( ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$34|)))) :named ax_162))
   (assert (! (forall( (|b_$35| BoxType))(!(= ($Box$Seq$BoxType$$ ($Unbox$Seq$BoxType$$ |b_$35|)) |b_$35|)  :pattern ( ($Unbox$Seq$BoxType$$ |b_$35|)))) :named ax_163))
   (assert (! (forall( (|b_$36| BoxType))(!(= ($Box$DatatypeType$ ($Unbox$DatatypeType$ |b_$36|)) |b_$36|)  :pattern ( ($Unbox$DatatypeType$ |b_$36|)))) :named ax_164))
   (assert (! (forall( (|b_$37| BoxType))(!(=> ($IsCanonicalBoolBox |b_$37|) (= ($Box$Bool$ ($Unbox$Bool$ |b_$37|)) |b_$37|))  :pattern ( ($Unbox$Bool$ |b_$37|)))) :named ax_165))
   (assert (! (forall( (|b_$39| BoxType) (|h_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$39| |h_$6|) (or (= ($Unbox$ref$ |b_$39|) null) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$6| ($Unbox$ref$ |b_$39|) alloc)))  :pattern ( (GenericAlloc |b_$39| |h_$6|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$6| ($Unbox$ref$ |b_$39|) alloc)))) :named ax_166))
   (assert (! (forall( (|b_$40| BoxType) (|h_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|i_$17| Int))(!(=> (and (and (GenericAlloc |b_$40| |h_$7|) (<= 0 |i_$17|)) (< |i_$17| (Seq@Length$BoxType$ ($Unbox$Seq$BoxType$$ |b_$40|)))) (GenericAlloc (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$40|) |i_$17|) |h_$7|))  :pattern ( (GenericAlloc |b_$40| |h_$7|) (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$40|) |i_$17|)))) :named ax_167))
   (assert (! (forall( (|b_$41| BoxType) (|h_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|t_$2| BoxType))(!(=> (and (GenericAlloc |b_$41| |h_$8|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$41|) |t_$2|)) (GenericAlloc |t_$2| |h_$8|))  :pattern ( (GenericAlloc |b_$41| |h_$8|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$41|) |t_$2|)))) :named ax_168))
   (assert (! (forall( (|b_$42| BoxType) (|h_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$42| |h_$9|) (DtAlloc ($Unbox$DatatypeType$ |b_$42|) |h_$9|))  :pattern ( (GenericAlloc |b_$42| |h_$9|) (DtType ($Unbox$DatatypeType$ |b_$42|))))) :named ax_169))
   (assert (! (forall( (|b_$43| Bool) (|h_$10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$10|) (GenericAlloc ($Box$Bool$ |b_$43|) |h_$10|))) :named ax_170))
   (assert (! (forall( (|d_$2| DatatypeType))(=> (Map.Empty? |d_$2|) (= |d_$2| $@Map.Empty))) :named ax_171))
   (assert (! (forall( (|d_$3| DatatypeType))(=> (Map.Maplet? |d_$3|) (exists( (|a0#8| $@Map@@BoxType@To@Bool@@) (|a1#9| BoxType) (|a2#10| Seq$BoxType$) (|a3#11| DatatypeType))(= |d_$3| ($@Map.Maplet |a0#8| |a1#9| |a2#10| |a3#11|))))) :named ax_172))
   (assert (! (forall( (|d_$5| DatatypeType))(=> (List.Nil? |d_$5|) (= |d_$5| $@List.Nil))) :named ax_173))
   (assert (! (forall( (|d_$6| DatatypeType))(=> (List.Cons? |d_$6|) (exists( (|a0#54| BoxType) (|a1#55| DatatypeType))(= |d_$6| ($@List.Cons |a0#54| |a1#55|))))) :named ax_174))
   (assert (! (forall( (|d_$7| DatatypeType))(=> (Nat.Zero? |d_$7|) (= |d_$7| $@Nat.Zero))) :named ax_175))
   (assert (! (forall( (|d_$8| DatatypeType))(=> (Nat.Suc? |d_$8|) (exists( (|a0#68| DatatypeType))(= |d_$8| ($@Nat.Suc |a0#68|))))) :named ax_176))
   (assert (! (forall( (|f_$2| Field$BoxType$) (|i_$15| Int))(!(= (FDim$BoxType$ (MultiIndexField |f_$2| |i_$15|)) (+ (FDim$BoxType$ |f_$2|) 1))  :pattern ( (MultiIndexField |f_$2| |i_$15|)))) :named ax_177))
   (assert (! (forall( (|f_$3| Field$BoxType$) (|i_$16| Int))(!(and (= (MultiIndexField_Inverse0$BoxType$ (MultiIndexField |f_$3| |i_$16|)) |f_$3|) (= (MultiIndexField_Inverse1$BoxType$ (MultiIndexField |f_$3| |i_$16|)) |i_$16|))  :pattern ( (MultiIndexField |f_$3| |i_$16|)))) :named ax_178))
   (assert (! (forall( (|f_$5| Field$Bool$) (|r_$7| ref) (|H_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$7| |f_$5|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$7| |f_$5|))) :named ax_179))
   (assert (! (forall( (|f_$6| Field$BoxType$) (|r_$8| ref) (|H_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$2| |r_$8| |f_$6|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$2| |r_$8| |f_$6|))) :named ax_180))
   (assert (! (forall( (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a_$44| ref) (|i_$7| Int))(=> (and (<= 0 |i_$7|) (< |i_$7| (Seq@Length$BoxType$ (Seq@FromArray |h_$0| |a_$44|)))) (= (Seq@Index$BoxType$ (Seq@FromArray |h_$0| |a_$44|) |i_$7|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$0| |a_$44| (IndexField |i_$7|))))) :named ax_181))
   (assert (! (forall( (|h_$1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|o_$18_$0| ref) (|f_$1_$0| Field$Bool$) (|v_$7_$0| Bool) (|a_$45_$0| ref))(!(=> (not (= |o_$18_$0| |a_$45_$0|)) (= (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1_$0| |o_$18_$0| |f_$1_$0| |v_$7_$0|) |a_$45_$0|) (Seq@FromArray |h_$1_$0| |a_$45_$0|)))  :pattern ( (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1_$0| |o_$18_$0| |f_$1_$0| |v_$7_$0|) |a_$45_$0|)))) :named ax_182))
   (assert (! (forall( (|h_$1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|o_$18_$1| ref) (|f_$1_$1| Field$BoxType$) (|v_$7_$1| BoxType) (|a_$45_$1| ref))(!(=> (not (= |o_$18_$1| |a_$45_$1|)) (= (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$1_$1| |o_$18_$1| |f_$1_$1| |v_$7_$1|) |a_$45_$1|) (Seq@FromArray |h_$1_$1| |a_$45_$1|)))  :pattern ( (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$1_$1| |o_$18_$1| |f_$1_$1| |v_$7_$1|) |a_$45_$1|)))) :named ax_183))
   (assert (! (forall( (|h_$13_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$0| ref) (|f_$4_$0| Field$Bool$) (|x_$16_$0| Bool))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$13_$0| |r_$6_$0| |f_$4_$0| |x_$16_$0|)) ($HeapSucc |h_$13_$0| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$13_$0| |r_$6_$0| |f_$4_$0| |x_$16_$0|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$13_$0| |r_$6_$0| |f_$4_$0| |x_$16_$0|)))) :named ax_184))
   (assert (! (forall( (|h_$13_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$1| ref) (|f_$4_$1| Field$BoxType$) (|x_$16_$1| BoxType))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$13_$1| |r_$6_$1| |f_$4_$1| |x_$16_$1|)) ($HeapSucc |h_$13_$1| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$13_$1| |r_$6_$1| |f_$4_$1| |x_$16_$1|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$13_$1| |r_$6_$1| |f_$4_$1| |x_$16_$1|)))) :named ax_185))
   (assert (! (forall( (|h_$14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($HeapSucc |h_$14| |k_$1|) (forall( (|o_$20| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$14| |o_$20| alloc) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$20| alloc))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$20| alloc)))))  :pattern ( ($HeapSucc |h_$14| |k_$1|)))) :named ax_186))
   (assert (! (forall( (|h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|i_$8| Int) (|v_$8| BoxType) (|a_$46| ref))(!(=> (and (<= 0 |i_$8|) (< |i_$8| (array.Length |a_$46|))) (= (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$2| |a_$46| (IndexField |i_$8|) |v_$8|) |a_$46|) (Seq@Update$BoxType$ (Seq@FromArray |h_$2| |a_$46|) |i_$8| |v_$8|)))  :pattern ( (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$2| |a_$46| (IndexField |i_$8|) |v_$8|) |a_$46|)))) :named ax_187))
   (assert (! (forall( (|h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a_$47| ref) (|n0| Int) (|n1| Int))(!(=> (and (and (= (+ |n0| 1) |n1|) (<= 0 |n0|)) (<= |n1| (array.Length |a_$47|))) (= (Seq@Take$BoxType$ (Seq@FromArray |h_$3| |a_$47|) |n1|) (Seq@Build$BoxType$ (Seq@Take$BoxType$ (Seq@FromArray |h_$3| |a_$47|) |n0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$3| |a_$47| (IndexField |n0|)))))  :pattern ( (Seq@Take$BoxType$ (Seq@FromArray |h_$3| |a_$47|) |n0|) (Seq@Take$BoxType$ (Seq@FromArray |h_$3| |a_$47|) |n1|)))) :named ax_188))
   (assert (! (forall( (|h_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d| DatatypeType))(!(=> ($HeapSucc |h_$4| |k|) (=> (DtAlloc |d| |h_$4|) (DtAlloc |d| |k|)))  :pattern ( ($HeapSucc |h_$4| |k|) (DtAlloc |d| |h_$4|)) :pattern ( ($HeapSucc |h_$4| |k|) (DtAlloc |d| |k|)))) :named ax_189))
   (assert (! (forall( (|h_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d_$0| BoxType))(!(=> ($HeapSucc |h_$5| |k_$0|) (=> (GenericAlloc |d_$0| |h_$5|) (GenericAlloc |d_$0| |k_$0|)))  :pattern ( ($HeapSucc |h_$5| |k_$0|) (GenericAlloc |d_$0| |h_$5|)) :pattern ( ($HeapSucc |h_$5| |k_$0|) (GenericAlloc |d_$0| |k_$0|)))) :named ax_190))
   (assert (! (forall( (|h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a_$43| ref))(!(= (Seq@Length$BoxType$ (Seq@FromArray |h| |a_$43|)) (array.Length |a_$43|))  :pattern ( (Seq@Length$BoxType$ (Seq@FromArray |h| |a_$43|))))) :named ax_191))
   (assert (! (forall( (|i_$13| Int))(!(= (FDim$BoxType$ (IndexField |i_$13|)) 1)  :pattern ( (IndexField |i_$13|)))) :named ax_192))
   (assert (! (forall( (|o_$19| ref))(<= 0 (array.Length |o_$19|))) :named ax_193))
   (assert (! (forall( (|o_$21| BoxType))(!(not (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$21|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$21|)))) :named ax_194))
   (assert (! (forall( (|r_$1_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$1_$0|) |r_$1_$0|)  :pattern ( (Set@Singleton$BoxType$ |r_$1_$0|)))) :named ax_195))
   (assert (! (forall( (|r_$2_$0| BoxType) (|o_$0_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|) (= |r_$2_$0| |o_$0_$0|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|)))) :named ax_196))
   (assert (! (forall( (|r_$5| ref) (|h_$12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (and ($IsGoodHeap |h_$12|) (or (= |r_$5| null) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$12| |r_$5| alloc))) (GenericAlloc ($Box$ref$ |r_$5|) |h_$12|))  :pattern ( (GenericAlloc ($Box$ref$ |r_$5|) |h_$12|)))) :named ax_197))
   (assert (! (forall( (|s_$10_$0| Seq$ref$) (|x_$8_$0| ref))(!(= (Seq@Contains$ref$ |s_$10_$0| |x_$8_$0|) (exists( (|i_$4_$1| Int))(!(and (and (<= 0 |i_$4_$1|) (< |i_$4_$1| (Seq@Length$ref$ |s_$10_$0|))) (= (Seq@Index$ref$ |s_$10_$0| |i_$4_$1|) |x_$8_$0|))  :pattern ( (Seq@Index$ref$ |s_$10_$0| |i_$4_$1|)))))  :pattern ( (Seq@Contains$ref$ |s_$10_$0| |x_$8_$0|)))) :named ax_198))
   (assert (! (forall( (|s_$10_$1| Seq$BoxType$) (|x_$8_$1| BoxType))(!(= (Seq@Contains$BoxType$ |s_$10_$1| |x_$8_$1|) (exists( (|i_$4_$3| Int))(!(and (and (<= 0 |i_$4_$3|) (< |i_$4_$3| (Seq@Length$BoxType$ |s_$10_$1|))) (= (Seq@Index$BoxType$ |s_$10_$1| |i_$4_$3|) |x_$8_$1|))  :pattern ( (Seq@Index$BoxType$ |s_$10_$1| |i_$4_$3|)))))  :pattern ( (Seq@Contains$BoxType$ |s_$10_$1| |x_$8_$1|)))) :named ax_199))
   (assert (! (forall( (|s_$11_$0| Seq$ref$) (|v_$6_$0| ref) (|x_$11_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Build$ref$ |s_$11_$0| |v_$6_$0|) |x_$11_$0|) (or (= |v_$6_$0| |x_$11_$0|) (Seq@Contains$ref$ |s_$11_$0| |x_$11_$0|)))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ |s_$11_$0| |v_$6_$0|) |x_$11_$0|)))) :named ax_200))
   (assert (! (forall( (|s_$11_$1| Seq$BoxType$) (|v_$6_$1| BoxType) (|x_$11_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Build$BoxType$ |s_$11_$1| |v_$6_$1|) |x_$11_$1|) (or (= |v_$6_$1| |x_$11_$1|) (Seq@Contains$BoxType$ |s_$11_$1| |x_$11_$1|)))  :pattern ( (Seq@Contains$BoxType$ (Seq@Build$BoxType$ |s_$11_$1| |v_$6_$1|) |x_$11_$1|)))) :named ax_201))
   (assert (! (forall( (|s_$12_$0| Seq$ref$) (|n_$1_$0| Int) (|x_$12_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$12_$0| |n_$1_$0|) |x_$12_$0|) (exists( (|i_$5_$1| Int))(!(and (and (and (<= 0 |i_$5_$1|) (< |i_$5_$1| |n_$1_$0|)) (< |i_$5_$1| (Seq@Length$ref$ |s_$12_$0|))) (= (Seq@Index$ref$ |s_$12_$0| |i_$5_$1|) |x_$12_$0|))  :pattern ( (Seq@Index$ref$ |s_$12_$0| |i_$5_$1|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$12_$0| |n_$1_$0|) |x_$12_$0|)))) :named ax_202))
   (assert (! (forall( (|s_$12_$1| Seq$BoxType$) (|n_$1_$1| Int) (|x_$12_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$12_$1| |n_$1_$1|) |x_$12_$1|) (exists( (|i_$5_$3| Int))(!(and (and (and (<= 0 |i_$5_$3|) (< |i_$5_$3| |n_$1_$1|)) (< |i_$5_$3| (Seq@Length$BoxType$ |s_$12_$1|))) (= (Seq@Index$BoxType$ |s_$12_$1| |i_$5_$3|) |x_$12_$1|))  :pattern ( (Seq@Index$BoxType$ |s_$12_$1| |i_$5_$3|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$12_$1| |n_$1_$1|) |x_$12_$1|)))) :named ax_203))
   (assert (! (forall( (|s_$13_$0| Seq$ref$) (|n_$2_$0| Int) (|x_$13_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$13_$0| |n_$2_$0|) |x_$13_$0|) (exists( (|i_$6_$1| Int))(!(and (and (and (<= 0 |n_$2_$0|) (<= |n_$2_$0| |i_$6_$1|)) (< |i_$6_$1| (Seq@Length$ref$ |s_$13_$0|))) (= (Seq@Index$ref$ |s_$13_$0| |i_$6_$1|) |x_$13_$0|))  :pattern ( (Seq@Index$ref$ |s_$13_$0| |i_$6_$1|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$13_$0| |n_$2_$0|) |x_$13_$0|)))) :named ax_204))
   (assert (! (forall( (|s_$13_$1| Seq$BoxType$) (|n_$2_$1| Int) (|x_$13_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$13_$1| |n_$2_$1|) |x_$13_$1|) (exists( (|i_$6_$3| Int))(!(and (and (and (<= 0 |n_$2_$1|) (<= |n_$2_$1| |i_$6_$3|)) (< |i_$6_$3| (Seq@Length$BoxType$ |s_$13_$1|))) (= (Seq@Index$BoxType$ |s_$13_$1| |i_$6_$3|) |x_$13_$1|))  :pattern ( (Seq@Index$BoxType$ |s_$13_$1| |i_$6_$3|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$13_$1| |n_$2_$1|) |x_$13_$1|)))) :named ax_205))
   (assert (! (forall( (|s_$14_$0| Seq$ref$) (|n_$4_$0| Int))(!(=> (<= 0 |n_$4_$0|) (and (=> (<= |n_$4_$0| (Seq@Length$ref$ |s_$14_$0|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$14_$0| |n_$4_$0|)) |n_$4_$0|)) (=> (< (Seq@Length$ref$ |s_$14_$0|) |n_$4_$0|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$14_$0| |n_$4_$0|)) (Seq@Length$ref$ |s_$14_$0|)))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$14_$0| |n_$4_$0|))))) :named ax_206))
   (assert (! (forall( (|s_$14_$1| Seq$BoxType$) (|n_$4_$1| Int))(!(=> (<= 0 |n_$4_$1|) (and (=> (<= |n_$4_$1| (Seq@Length$BoxType$ |s_$14_$1|)) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$14_$1| |n_$4_$1|)) |n_$4_$1|)) (=> (< (Seq@Length$BoxType$ |s_$14_$1|) |n_$4_$1|) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$14_$1| |n_$4_$1|)) (Seq@Length$BoxType$ |s_$14_$1|)))))  :pattern ( (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$14_$1| |n_$4_$1|))))) :named ax_207))
   (assert (! (forall( (|s_$15_$0| Seq$ref$) (|n_$5_$0| Int) (|j_$1_$0| Int))(!(=> (and (and (<= 0 |j_$1_$0|) (< |j_$1_$0| |n_$5_$0|)) (< |j_$1_$0| (Seq@Length$ref$ |s_$15_$0|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$15_$0| |n_$5_$0|) |j_$1_$0|) (Seq@Index$ref$ |s_$15_$0| |j_$1_$0|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$15_$0| |n_$5_$0|) |j_$1_$0|)))) :named ax_208))
   (assert (! (forall( (|s_$15_$1| Seq$BoxType$) (|n_$5_$1| Int) (|j_$1_$1| Int))(!(=> (and (and (<= 0 |j_$1_$1|) (< |j_$1_$1| |n_$5_$1|)) (< |j_$1_$1| (Seq@Length$BoxType$ |s_$15_$1|))) (= (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$15_$1| |n_$5_$1|) |j_$1_$1|) (Seq@Index$BoxType$ |s_$15_$1| |j_$1_$1|)))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$15_$1| |n_$5_$1|) |j_$1_$1|)))) :named ax_209))
   (assert (! (forall( (|s_$16_$0| Seq$ref$) (|n_$6_$0| Int))(!(=> (<= 0 |n_$6_$0|) (and (=> (<= |n_$6_$0| (Seq@Length$ref$ |s_$16_$0|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$16_$0| |n_$6_$0|)) (- (Seq@Length$ref$ |s_$16_$0|) |n_$6_$0|))) (=> (< (Seq@Length$ref$ |s_$16_$0|) |n_$6_$0|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$16_$0| |n_$6_$0|)) 0))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$16_$0| |n_$6_$0|))))) :named ax_210))
   (assert (! (forall( (|s_$16_$1| Seq$BoxType$) (|n_$6_$1| Int))(!(=> (<= 0 |n_$6_$1|) (and (=> (<= |n_$6_$1| (Seq@Length$BoxType$ |s_$16_$1|)) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$16_$1| |n_$6_$1|)) (- (Seq@Length$BoxType$ |s_$16_$1|) |n_$6_$1|))) (=> (< (Seq@Length$BoxType$ |s_$16_$1|) |n_$6_$1|) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$16_$1| |n_$6_$1|)) 0))))  :pattern ( (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$16_$1| |n_$6_$1|))))) :named ax_211))
   (assert (! (forall( (|s_$17_$0| Seq$ref$) (|n_$7_$0| Int) (|j_$2_$0| Int))(!(=> (and (and (<= 0 |n_$7_$0|) (<= 0 |j_$2_$0|)) (< |j_$2_$0| (- (Seq@Length$ref$ |s_$17_$0|) |n_$7_$0|))) (= (Seq@Index$ref$ (Seq@Drop$ref$ |s_$17_$0| |n_$7_$0|) |j_$2_$0|) (Seq@Index$ref$ |s_$17_$0| (+ |j_$2_$0| |n_$7_$0|))))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Drop$ref$ |s_$17_$0| |n_$7_$0|) |j_$2_$0|)))) :named ax_212))
   (assert (! (forall( (|s_$17_$1| Seq$BoxType$) (|n_$7_$1| Int) (|j_$2_$1| Int))(!(=> (and (and (<= 0 |n_$7_$1|) (<= 0 |j_$2_$1|)) (< |j_$2_$1| (- (Seq@Length$BoxType$ |s_$17_$1|) |n_$7_$1|))) (= (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$17_$1| |n_$7_$1|) |j_$2_$1|) (Seq@Index$BoxType$ |s_$17_$1| (+ |j_$2_$1| |n_$7_$1|))))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$17_$1| |n_$7_$1|) |j_$2_$1|)))) :named ax_213))
   (assert (! (forall( (|s_$18_$0| Seq$ref$) (|t_$1_$0| Seq$ref$))(!(and (= (Seq@Take$ref$ (Seq@Append$ref$ |s_$18_$0| |t_$1_$0|) (Seq@Length$ref$ |s_$18_$0|)) |s_$18_$0|) (= (Seq@Drop$ref$ (Seq@Append$ref$ |s_$18_$0| |t_$1_$0|) (Seq@Length$ref$ |s_$18_$0|)) |t_$1_$0|))  :pattern ( (Seq@Append$ref$ |s_$18_$0| |t_$1_$0|)))) :named ax_214))
   (assert (! (forall( (|s_$18_$1| Seq$BoxType$) (|t_$1_$1| Seq$BoxType$))(!(and (= (Seq@Take$BoxType$ (Seq@Append$BoxType$ |s_$18_$1| |t_$1_$1|) (Seq@Length$BoxType$ |s_$18_$1|)) |s_$18_$1|) (= (Seq@Drop$BoxType$ (Seq@Append$BoxType$ |s_$18_$1| |t_$1_$1|) (Seq@Length$BoxType$ |s_$18_$1|)) |t_$1_$1|))  :pattern ( (Seq@Append$BoxType$ |s_$18_$1| |t_$1_$1|)))) :named ax_215))
   (assert (! (forall( (|s_$19_$0| Seq$ref$) (|i_$9_$0| Int) (|v_$9_$0| ref) (|n_$8_$0| Int))(!(=> (and (and (<= 0 |i_$9_$0|) (< |i_$9_$0| |n_$8_$0|)) (<= |n_$8_$0| (Seq@Length$ref$ |s_$19_$0|))) (= (Seq@Take$ref$ (Seq@Update$ref$ |s_$19_$0| |i_$9_$0| |v_$9_$0|) |n_$8_$0|) (Seq@Update$ref$ (Seq@Take$ref$ |s_$19_$0| |n_$8_$0|) |i_$9_$0| |v_$9_$0|)))  :pattern ( (Seq@Take$ref$ (Seq@Update$ref$ |s_$19_$0| |i_$9_$0| |v_$9_$0|) |n_$8_$0|)))) :named ax_216))
   (assert (! (forall( (|s_$19_$1| Seq$BoxType$) (|i_$9_$1| Int) (|v_$9_$1| BoxType) (|n_$8_$1| Int))(!(=> (and (and (<= 0 |i_$9_$1|) (< |i_$9_$1| |n_$8_$1|)) (<= |n_$8_$1| (Seq@Length$BoxType$ |s_$19_$1|))) (= (Seq@Take$BoxType$ (Seq@Update$BoxType$ |s_$19_$1| |i_$9_$1| |v_$9_$1|) |n_$8_$1|) (Seq@Update$BoxType$ (Seq@Take$BoxType$ |s_$19_$1| |n_$8_$1|) |i_$9_$1| |v_$9_$1|)))  :pattern ( (Seq@Take$BoxType$ (Seq@Update$BoxType$ |s_$19_$1| |i_$9_$1| |v_$9_$1|) |n_$8_$1|)))) :named ax_217))
   (assert (! (forall( (|s_$20_$0| Seq$ref$) (|i_$10_$0| Int) (|v_$10_$0| ref) (|n_$9_$0| Int))(!(=> (and (<= |n_$9_$0| |i_$10_$0|) (< |i_$10_$0| (Seq@Length$ref$ |s_$20_$0|))) (= (Seq@Take$ref$ (Seq@Update$ref$ |s_$20_$0| |i_$10_$0| |v_$10_$0|) |n_$9_$0|) (Seq@Take$ref$ |s_$20_$0| |n_$9_$0|)))  :pattern ( (Seq@Take$ref$ (Seq@Update$ref$ |s_$20_$0| |i_$10_$0| |v_$10_$0|) |n_$9_$0|)))) :named ax_218))
   (assert (! (forall( (|s_$20_$1| Seq$BoxType$) (|i_$10_$1| Int) (|v_$10_$1| BoxType) (|n_$9_$1| Int))(!(=> (and (<= |n_$9_$1| |i_$10_$1|) (< |i_$10_$1| (Seq@Length$BoxType$ |s_$20_$1|))) (= (Seq@Take$BoxType$ (Seq@Update$BoxType$ |s_$20_$1| |i_$10_$1| |v_$10_$1|) |n_$9_$1|) (Seq@Take$BoxType$ |s_$20_$1| |n_$9_$1|)))  :pattern ( (Seq@Take$BoxType$ (Seq@Update$BoxType$ |s_$20_$1| |i_$10_$1| |v_$10_$1|) |n_$9_$1|)))) :named ax_219))
   (assert (! (forall( (|s_$21_$0| Seq$ref$) (|i_$11_$0| Int) (|v_$11_$0| ref) (|n_$10_$0| Int))(!(=> (and (and (<= 0 |n_$10_$0|) (<= |n_$10_$0| |i_$11_$0|)) (< |i_$11_$0| (Seq@Length$ref$ |s_$21_$0|))) (= (Seq@Drop$ref$ (Seq@Update$ref$ |s_$21_$0| |i_$11_$0| |v_$11_$0|) |n_$10_$0|) (Seq@Update$ref$ (Seq@Drop$ref$ |s_$21_$0| |n_$10_$0|) (- |i_$11_$0| |n_$10_$0|) |v_$11_$0|)))  :pattern ( (Seq@Drop$ref$ (Seq@Update$ref$ |s_$21_$0| |i_$11_$0| |v_$11_$0|) |n_$10_$0|)))) :named ax_220))
   (assert (! (forall( (|s_$21_$1| Seq$BoxType$) (|i_$11_$1| Int) (|v_$11_$1| BoxType) (|n_$10_$1| Int))(!(=> (and (and (<= 0 |n_$10_$1|) (<= |n_$10_$1| |i_$11_$1|)) (< |i_$11_$1| (Seq@Length$BoxType$ |s_$21_$1|))) (= (Seq@Drop$BoxType$ (Seq@Update$BoxType$ |s_$21_$1| |i_$11_$1| |v_$11_$1|) |n_$10_$1|) (Seq@Update$BoxType$ (Seq@Drop$BoxType$ |s_$21_$1| |n_$10_$1|) (- |i_$11_$1| |n_$10_$1|) |v_$11_$1|)))  :pattern ( (Seq@Drop$BoxType$ (Seq@Update$BoxType$ |s_$21_$1| |i_$11_$1| |v_$11_$1|) |n_$10_$1|)))) :named ax_221))
   (assert (! (forall( (|s_$22_$0| Seq$ref$) (|i_$12_$0| Int) (|v_$12_$0| ref) (|n_$11_$0| Int))(!(=> (and (and (<= 0 |i_$12_$0|) (< |i_$12_$0| |n_$11_$0|)) (< |n_$11_$0| (Seq@Length$ref$ |s_$22_$0|))) (= (Seq@Drop$ref$ (Seq@Update$ref$ |s_$22_$0| |i_$12_$0| |v_$12_$0|) |n_$11_$0|) (Seq@Drop$ref$ |s_$22_$0| |n_$11_$0|)))  :pattern ( (Seq@Drop$ref$ (Seq@Update$ref$ |s_$22_$0| |i_$12_$0| |v_$12_$0|) |n_$11_$0|)))) :named ax_222))
   (assert (! (forall( (|s_$22_$1| Seq$BoxType$) (|i_$12_$1| Int) (|v_$12_$1| BoxType) (|n_$11_$1| Int))(!(=> (and (and (<= 0 |i_$12_$1|) (< |i_$12_$1| |n_$11_$1|)) (< |n_$11_$1| (Seq@Length$BoxType$ |s_$22_$1|))) (= (Seq@Drop$BoxType$ (Seq@Update$BoxType$ |s_$22_$1| |i_$12_$1| |v_$12_$1|) |n_$11_$1|) (Seq@Drop$BoxType$ |s_$22_$1| |n_$11_$1|)))  :pattern ( (Seq@Drop$BoxType$ (Seq@Update$BoxType$ |s_$22_$1| |i_$12_$1| |v_$12_$1|) |n_$11_$1|)))) :named ax_223))
   (assert (! (forall( (|s_$23_$0| Seq$ref$) (|v_$13_$0| ref) (|n_$12_$0| Int))(!(=> (and (<= 0 |n_$12_$0|) (<= |n_$12_$0| (Seq@Length$ref$ |s_$23_$0|))) (= (Seq@Drop$ref$ (Seq@Build$ref$ |s_$23_$0| |v_$13_$0|) |n_$12_$0|) (Seq@Build$ref$ (Seq@Drop$ref$ |s_$23_$0| |n_$12_$0|) |v_$13_$0|)))  :pattern ( (Seq@Drop$ref$ (Seq@Build$ref$ |s_$23_$0| |v_$13_$0|) |n_$12_$0|)))) :named ax_224))
   (assert (! (forall( (|s_$23_$1| Seq$BoxType$) (|v_$13_$1| BoxType) (|n_$12_$1| Int))(!(=> (and (<= 0 |n_$12_$1|) (<= |n_$12_$1| (Seq@Length$BoxType$ |s_$23_$1|))) (= (Seq@Drop$BoxType$ (Seq@Build$BoxType$ |s_$23_$1| |v_$13_$1|) |n_$12_$1|) (Seq@Build$BoxType$ (Seq@Drop$BoxType$ |s_$23_$1| |n_$12_$1|) |v_$13_$1|)))  :pattern ( (Seq@Drop$BoxType$ (Seq@Build$BoxType$ |s_$23_$1| |v_$13_$1|) |n_$12_$1|)))) :named ax_225))
   (assert (! (forall( (|s_$4_$0| Seq$ref$))(!(<= 0 (Seq@Length$ref$ |s_$4_$0|))  :pattern ( (Seq@Length$ref$ |s_$4_$0|)))) :named ax_226))
   (assert (! (forall( (|s_$4_$1| Seq$BoxType$))(!(<= 0 (Seq@Length$BoxType$ |s_$4_$1|))  :pattern ( (Seq@Length$BoxType$ |s_$4_$1|)))) :named ax_227))
   (assert (! (forall( (|s_$5_$0| Seq$ref$))(!(=> (= (Seq@Length$ref$ |s_$5_$0|) 0) (= |s_$5_$0| Seq@Empty$ref$))  :pattern ( (Seq@Length$ref$ |s_$5_$0|)))) :named ax_228))
   (assert (! (forall( (|s_$5_$1| Seq$BoxType$))(!(=> (= (Seq@Length$BoxType$ |s_$5_$1|) 0) (= |s_$5_$1| Seq@Empty$BoxType$))  :pattern ( (Seq@Length$BoxType$ |s_$5_$1|)))) :named ax_229))
   (assert (! (forall( (|s_$6_$0| Seq$ref$) (|v_$2_$0| ref))(!(= (Seq@Length$ref$ (Seq@Build$ref$ |s_$6_$0| |v_$2_$0|)) (+ 1 (Seq@Length$ref$ |s_$6_$0|)))  :pattern ( (Seq@Length$ref$ (Seq@Build$ref$ |s_$6_$0| |v_$2_$0|))))) :named ax_230))
   (assert (! (forall( (|s_$6_$1| Seq$BoxType$) (|v_$2_$1| BoxType))(!(= (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$6_$1| |v_$2_$1|)) (+ 1 (Seq@Length$BoxType$ |s_$6_$1|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$6_$1| |v_$2_$1|))))) :named ax_231))
   (assert (! (forall( (|s_$7_$0| Seq$ref$) (|i_$1_$0| Int) (|v_$3_$0| ref))(!(and (=> (= |i_$1_$0| (Seq@Length$ref$ |s_$7_$0|)) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$7_$0| |v_$3_$0|) |i_$1_$0|) |v_$3_$0|)) (=> (not (= |i_$1_$0| (Seq@Length$ref$ |s_$7_$0|))) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$7_$0| |v_$3_$0|) |i_$1_$0|) (Seq@Index$ref$ |s_$7_$0| |i_$1_$0|))))  :pattern ( (Seq@Index$ref$ (Seq@Build$ref$ |s_$7_$0| |v_$3_$0|) |i_$1_$0|)))) :named ax_232))
   (assert (! (forall( (|s_$7_$1| Seq$BoxType$) (|i_$1_$1| Int) (|v_$3_$1| BoxType))(!(and (=> (= |i_$1_$1| (Seq@Length$BoxType$ |s_$7_$1|)) (= (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$7_$1| |v_$3_$1|) |i_$1_$1|) |v_$3_$1|)) (=> (not (= |i_$1_$1| (Seq@Length$BoxType$ |s_$7_$1|))) (= (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$7_$1| |v_$3_$1|) |i_$1_$1|) (Seq@Index$BoxType$ |s_$7_$1| |i_$1_$1|))))  :pattern ( (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$7_$1| |v_$3_$1|) |i_$1_$1|)))) :named ax_233))
   (assert (! (forall( (|s_$8_$0| Seq$ref$) (|i_$2_$0| Int) (|v_$4_$0| ref))(!(=> (and (<= 0 |i_$2_$0|) (< |i_$2_$0| (Seq@Length$ref$ |s_$8_$0|))) (= (Seq@Length$ref$ (Seq@Update$ref$ |s_$8_$0| |i_$2_$0| |v_$4_$0|)) (Seq@Length$ref$ |s_$8_$0|)))  :pattern ( (Seq@Length$ref$ (Seq@Update$ref$ |s_$8_$0| |i_$2_$0| |v_$4_$0|))))) :named ax_234))
   (assert (! (forall( (|s_$8_$1| Seq$BoxType$) (|i_$2_$1| Int) (|v_$4_$1| BoxType))(!(=> (and (<= 0 |i_$2_$1|) (< |i_$2_$1| (Seq@Length$BoxType$ |s_$8_$1|))) (= (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$8_$1| |i_$2_$1| |v_$4_$1|)) (Seq@Length$BoxType$ |s_$8_$1|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$8_$1| |i_$2_$1| |v_$4_$1|))))) :named ax_235))
   (assert (! (forall( (|s_$9_$0| Seq$ref$) (|i_$3_$0| Int) (|v_$5_$0| ref) (|n_$0_$0| Int))(!(=> (and (<= 0 |n_$0_$0|) (< |n_$0_$0| (Seq@Length$ref$ |s_$9_$0|))) (and (=> (= |i_$3_$0| |n_$0_$0|) (= (Seq@Index$ref$ (Seq@Update$ref$ |s_$9_$0| |i_$3_$0| |v_$5_$0|) |n_$0_$0|) |v_$5_$0|)) (=> (not (= |i_$3_$0| |n_$0_$0|)) (= (Seq@Index$ref$ (Seq@Update$ref$ |s_$9_$0| |i_$3_$0| |v_$5_$0|) |n_$0_$0|) (Seq@Index$ref$ |s_$9_$0| |n_$0_$0|)))))  :pattern ( (Seq@Index$ref$ (Seq@Update$ref$ |s_$9_$0| |i_$3_$0| |v_$5_$0|) |n_$0_$0|)))) :named ax_236))
   (assert (! (forall( (|s_$9_$1| Seq$BoxType$) (|i_$3_$1| Int) (|v_$5_$1| BoxType) (|n_$0_$1| Int))(!(=> (and (<= 0 |n_$0_$1|) (< |n_$0_$1| (Seq@Length$BoxType$ |s_$9_$1|))) (and (=> (= |i_$3_$1| |n_$0_$1|) (= (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$9_$1| |i_$3_$1| |v_$5_$1|) |n_$0_$1|) |v_$5_$1|)) (=> (not (= |i_$3_$1| |n_$0_$1|)) (= (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$9_$1| |i_$3_$1| |v_$5_$1|) |n_$0_$1|) (Seq@Index$BoxType$ |s_$9_$1| |n_$0_$1|)))))  :pattern ( (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$9_$1| |i_$3_$1| |v_$5_$1|) |n_$0_$1|)))) :named ax_237))
   (assert (! (forall( (|s0_$0_$0| Seq$ref$) (|s1_$0_$0| Seq$ref$) (|n_$13| Int))(!(and (=> (< |n_$13| (Seq@Length$ref$ |s0_$0_$0|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$13|) (Seq@Index$ref$ |s0_$0_$0| |n_$13|))) (=> (<= (Seq@Length$ref$ |s0_$0_$0|) |n_$13|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$13|) (Seq@Index$ref$ |s1_$0_$0| (- |n_$13| (Seq@Length$ref$ |s0_$0_$0|))))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$13|)))) :named ax_238))
   (assert (! (forall( (|s0_$0_$1| Seq$BoxType$) (|s1_$0_$1| Seq$BoxType$) (|n_$14| Int))(!(and (=> (< |n_$14| (Seq@Length$BoxType$ |s0_$0_$1|)) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$14|) (Seq@Index$BoxType$ |s0_$0_$1| |n_$14|))) (=> (<= (Seq@Length$BoxType$ |s0_$0_$1|) |n_$14|) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$14|) (Seq@Index$BoxType$ |s1_$0_$1| (- |n_$14| (Seq@Length$BoxType$ |s0_$0_$1|))))))  :pattern ( (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$14|)))) :named ax_239))
   (assert (! (forall( (|s0_$1_$0| Seq$ref$) (|s1_$1_$0| Seq$ref$) (|x_$10_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$0| |s1_$1_$0|) |x_$10_$0|) (or (Seq@Contains$ref$ |s0_$1_$0| |x_$10_$0|) (Seq@Contains$ref$ |s1_$1_$0| |x_$10_$0|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$0| |s1_$1_$0|) |x_$10_$0|)))) :named ax_240))
   (assert (! (forall( (|s0_$1_$1| Seq$BoxType$) (|s1_$1_$1| Seq$BoxType$) (|x_$10_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$1| |s1_$1_$1|) |x_$10_$1|) (or (Seq@Contains$BoxType$ |s0_$1_$1| |x_$10_$1|) (Seq@Contains$BoxType$ |s1_$1_$1| |x_$10_$1|)))  :pattern ( (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$1| |s1_$1_$1|) |x_$10_$1|)))) :named ax_241))
   (assert (! (forall( (|s0_$2_$0| Seq$ref$) (|s1_$2_$0| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$ref$ |s0_$2_$0|) (Seq@Length$ref$ |s1_$2_$0|)) (forall( (|j_$4| Int))(!(=> (and (<= 0 |j_$4|) (< |j_$4| (Seq@Length$ref$ |s0_$2_$0|))) (= (Seq@Index$ref$ |s0_$2_$0| |j_$4|) (Seq@Index$ref$ |s1_$2_$0| |j_$4|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$0| |j_$4|)) :pattern ( (Seq@Index$ref$ |s1_$2_$0| |j_$4|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$0| |s1_$2_$0|)))) :named ax_242))
   (assert (! (forall( (|s0_$2_$1| Seq$BoxType$) (|s1_$2_$1| Seq$BoxType$))(!(= (Seq@Equal$BoxType$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$BoxType$ |s0_$2_$1|) (Seq@Length$BoxType$ |s1_$2_$1|)) (forall( (|j_$6| Int))(!(=> (and (<= 0 |j_$6|) (< |j_$6| (Seq@Length$BoxType$ |s0_$2_$1|))) (= (Seq@Index$BoxType$ |s0_$2_$1| |j_$6|) (Seq@Index$BoxType$ |s1_$2_$1| |j_$6|)))  :pattern ( (Seq@Index$BoxType$ |s0_$2_$1| |j_$6|)) :pattern ( (Seq@Index$BoxType$ |s1_$2_$1| |j_$6|))))))  :pattern ( (Seq@Equal$BoxType$ |s0_$2_$1| |s1_$2_$1|)))) :named ax_243))
   (assert (! (forall( (|s0_$4| Seq$ref$) (|s1_$4| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$4| |s1_$4|)) (+ (Seq@Length$ref$ |s0_$4|) (Seq@Length$ref$ |s1_$4|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$4| |s1_$4|))))) :named ax_244))
   (assert (! (forall( (|s0_$5| Seq$BoxType$) (|s1_$5| Seq$BoxType$))(!(= (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$5| |s1_$5|)) (+ (Seq@Length$BoxType$ |s0_$5|) (Seq@Length$BoxType$ |s1_$5|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$5| |s1_$5|))))) :named ax_245))
   (assert (! (forall( (|t_$0_$0| ref))(!(= (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$0|) 0) |t_$0_$0|)  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$0|) 0)))) :named ax_246))
   (assert (! (forall( (|t_$0_$1| BoxType))(!(= (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$1|) 0) |t_$0_$1|)  :pattern ( (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$1|) 0)))) :named ax_247))
   (assert (! (forall( (|t_$3| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|))))) :named ax_248))
   (assert (! (forall( (|t_$4| BoxType))(!(= (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|)) 1)  :pattern ( (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|))))) :named ax_249))
   (assert (! (forall( (|this_$58| DatatypeType))(!(= (Map.Empty? |this_$58|) (= (DatatypeCtorId |this_$58|) $@@Map.Empty))  :pattern ( (Map.Empty? |this_$58|)))) :named ax_250))
   (assert (! (forall( (|this_$59| DatatypeType))(!(= (Map.Maplet? |this_$59|) (= (DatatypeCtorId |this_$59|) $@@Map.Maplet))  :pattern ( (Map.Maplet? |this_$59|)))) :named ax_251))
   (assert (! (forall( (|this_$60| DatatypeType))(!(= (List.Nil? |this_$60|) (= (DatatypeCtorId |this_$60|) $@@List.Nil))  :pattern ( (List.Nil? |this_$60|)))) :named ax_252))
   (assert (! (forall( (|this_$61| DatatypeType))(!(= (List.Cons? |this_$61|) (= (DatatypeCtorId |this_$61|) $@@List.Cons))  :pattern ( (List.Cons? |this_$61|)))) :named ax_253))
   (assert (! (forall( (|this_$62| DatatypeType))(!(= (Nat.Zero? |this_$62|) (= (DatatypeCtorId |this_$62|) $@@Nat.Zero))  :pattern ( (Nat.Zero? |this_$62|)))) :named ax_254))
   (assert (! (forall( (|this_$63| DatatypeType))(!(= (Nat.Suc? |this_$63|) (= (DatatypeCtorId |this_$63|) $@@Nat.Suc))  :pattern ( (Nat.Suc? |this_$63|)))) :named ax_255))
   (assert (! (forall( (|v#5_$1| BoxType))(=> (GenericAlloc |v#5_$1| $Heap) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 |v#5_$1|) (Set@Subset$BoxType$ (BreadthFirstSearch.Succ $Heap this |v#5_$1|) AllVertices@8)))) :named ax_256))
   (assert (! (forall( (|v_$14| Bool) (|f_$0_$0| Field$Bool$) (|r_$0_$0| ref) (|H_$0_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$14|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$14|))) :named ax_257))
   (assert (! (forall( (|v_$15| BoxType) (|f_$0_$1| Field$BoxType$) (|r_$0_$1| ref) (|H_$0_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$15|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$15|))) :named ax_258))
   (assert (! (forall( (|x_$14_$0| Bool))(!(= ($Unbox$Bool$ ($Box$Bool$ |x_$14_$0|)) |x_$14_$0|)  :pattern ( ($Box$Bool$ |x_$14_$0|)))) :named ax_259))
   (assert (! (forall( (|x_$14_$1| TickType))(!(= ($Unbox$TickType$ ($Box$TickType$ |x_$14_$1|)) |x_$14_$1|)  :pattern ( ($Box$TickType$ |x_$14_$1|)))) :named ax_260))
   (assert (! (forall( (|x_$14_$10| DatatypeType))(!(= ($Unbox$DatatypeType$ ($Box$DatatypeType$ |x_$14_$10|)) |x_$14_$10|)  :pattern ( ($Box$DatatypeType$ |x_$14_$10|)))) :named ax_261))
   (assert (! (forall( (|x_$14_$11| ClassName))(!(= ($Unbox$ClassName$ ($Box$ClassName$ |x_$14_$11|)) |x_$14_$11|)  :pattern ( ($Box$ClassName$ |x_$14_$11|)))) :named ax_262))
   (assert (! (forall( (|x_$14_$12| Field$Bool$))(!(= ($Unbox$Field$Bool$$ ($Box$Field$Bool$$ |x_$14_$12|)) |x_$14_$12|)  :pattern ( ($Box$Field$Bool$$ |x_$14_$12|)))) :named ax_263))
   (assert (! (forall( (|x_$14_$13| DtCtorId))(!(= ($Unbox$DtCtorId$ ($Box$DtCtorId$ |x_$14_$13|)) |x_$14_$13|)  :pattern ( ($Box$DtCtorId$ |x_$14_$13|)))) :named ax_264))
   (assert (! (forall( (|x_$14_$14| $@Map@@$T0@@ref@Field$$T0$@To@Bool@@))(!(= ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$14_$14|)) |x_$14_$14|)  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$14_$14|)))) :named ax_265))
   (assert (! (forall( (|x_$14_$2| Int))(!(= ($Unbox$Int$ ($Box$Int$ |x_$14_$2|)) |x_$14_$2|)  :pattern ( ($Box$Int$ |x_$14_$2|)))) :named ax_266))
   (assert (! (forall( (|x_$14_$3| Seq$ref$))(!(= ($Unbox$Seq$ref$$ ($Box$Seq$ref$$ |x_$14_$3|)) |x_$14_$3|)  :pattern ( ($Box$Seq$ref$$ |x_$14_$3|)))) :named ax_267))
   (assert (! (forall( (|x_$14_$4| ref))(!(= ($Unbox$ref$ ($Box$ref$ |x_$14_$4|)) |x_$14_$4|)  :pattern ( ($Box$ref$ |x_$14_$4|)))) :named ax_268))
   (assert (! (forall( (|x_$14_$5| Seq$BoxType$))(!(= ($Unbox$Seq$BoxType$$ ($Box$Seq$BoxType$$ |x_$14_$5|)) |x_$14_$5|)  :pattern ( ($Box$Seq$BoxType$$ |x_$14_$5|)))) :named ax_269))
   (assert (! (forall( (|x_$14_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$14_$6|)) |x_$14_$6|)  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$14_$6|)))) :named ax_270))
   (assert (! (forall( (|x_$14_$7| BoxType))(!(= ($Unbox$BoxType$ ($Box$BoxType$ |x_$14_$7|)) |x_$14_$7|)  :pattern ( ($Box$BoxType$ |x_$14_$7|)))) :named ax_271))
   (assert (! (forall( (|x_$14_$8| Field$BoxType$))(!(= ($Unbox$Field$BoxType$$ ($Box$Field$BoxType$$ |x_$14_$8|)) |x_$14_$8|)  :pattern ( ($Box$Field$BoxType$$ |x_$14_$8|)))) :named ax_272))
   (assert (! (forall( (|x_$14_$9| $@Map@@BoxType@To@Bool@@))(!(= ($Unbox$$@Map@@BoxType@To@Bool@@$ ($Box$$@Map@@BoxType@To@Bool@@$ |x_$14_$9|)) |x_$14_$9|)  :pattern ( ($Box$$@Map@@BoxType@To@Bool@@$ |x_$14_$9|)))) :named ax_273))
   (assert (! (forall( (|x_$15| Int) (|h_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$11|) (GenericAlloc ($Box$Int$ |x_$15|) |h_$11|))) :named ax_274))
   (assert (! (forall( (|x_$17| Int) (|y_$8| Int))(!(= (mod |x_$17| |y_$8|) (- |x_$17| (* (div |x_$17| |y_$8|) |y_$8|)))  :pattern ( (mod |x_$17| |y_$8|)) :pattern ( (div |x_$17| |y_$8|)))) :named ax_275))
   (assert (! (forall( (|x_$18| Int) (|y_$9| Int))(!(=> (< 0 |y_$9|) (and (<= 0 (mod |x_$18| |y_$9|)) (< (mod |x_$18| |y_$9|) |y_$9|)))  :pattern ( (mod |x_$18| |y_$9|)))) :named ax_276))
   (assert (! (forall( (|x_$19| Int) (|y_$10| Int))(!(=> (< |y_$10| 0) (and (<= 0 (mod |x_$19| |y_$10|)) (< (mod |x_$19| |y_$10|) (- 0 |y_$10|))))  :pattern ( (mod |x_$19| |y_$10|)))) :named ax_277))
   (assert (! (forall( (|x_$9| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$9|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$9|)))) :named ax_278))
   (assert (! (GenericAlloc dest@7 $Heap) :named ax_279))
   (assert (! (GenericAlloc source@6 $Heap) :named ax_280))
   (assert (! (GenericAlloc v@21 $Heap) :named ax_281))
   (assert (! (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap this alloc) :named ax_282))
   (assert (! (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 dest@7) :named ax_283))
   (assert (! (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 source@6) :named ax_284))
   (assert (! (not (= $@@List.Cons $@@Nat.Suc)) :named ax_285))
   (assert (! (not (= $@@List.Cons $@@Nat.Zero)) :named ax_286))
   (assert (! (not (= $@@List.Nil $@@List.Cons)) :named ax_287))
   (assert (! (not (= $@@List.Nil $@@List.Cons)) :named ax_288))
   (assert (! (not (= $@@List.Nil $@@Nat.Suc)) :named ax_289))
   (assert (! (not (= $@@List.Nil $@@Nat.Zero)) :named ax_290))
   (assert (! (not (= $@@Map.Empty $@@List.Cons)) :named ax_291))
   (assert (! (not (= $@@Map.Empty $@@List.Cons)) :named ax_292))
   (assert (! (not (= $@@Map.Empty $@@List.Nil)) :named ax_293))
   (assert (! (not (= $@@Map.Empty $@@List.Nil)) :named ax_294))
   (assert (! (not (= $@@Map.Empty $@@Map.Maplet)) :named ax_295))
   (assert (! (not (= $@@Map.Empty $@@Nat.Suc)) :named ax_296))
   (assert (! (not (= $@@Map.Empty $@@Nat.Zero)) :named ax_297))
   (assert (! (not (= $@@Map.Maplet $@@List.Cons)) :named ax_298))
   (assert (! (not (= $@@Map.Maplet $@@List.Cons)) :named ax_299))
   (assert (! (not (= $@@Map.Maplet $@@List.Nil)) :named ax_300))
   (assert (! (not (= $@@Map.Maplet $@@List.Nil)) :named ax_301))
   (assert (! (not (= $@@Map.Maplet $@@Map.Empty)) :named ax_302))
   (assert (! (not (= $@@Map.Maplet $@@Nat.Suc)) :named ax_303))
   (assert (! (not (= $@@Map.Maplet $@@Nat.Zero)) :named ax_304))
   (assert (! (not (= $@@Nat.Suc $@@List.Cons)) :named ax_305))
   (assert (! (not (= $@@Nat.Suc $@@List.Nil)) :named ax_306))
   (assert (! (not (= $@@Nat.Suc $@@Map.Empty)) :named ax_307))
   (assert (! (not (= $@@Nat.Suc $@@Map.Maplet)) :named ax_308))
   (assert (! (not (= $@@Nat.Zero $@@List.Cons)) :named ax_309))
   (assert (! (not (= $@@Nat.Zero $@@List.Nil)) :named ax_310))
   (assert (! (not (= $@@Nat.Zero $@@Map.Empty)) :named ax_311))
   (assert (! (not (= $@@Nat.Zero $@@Map.Maplet)) :named ax_312))
   (assert (! (not (= $@@Nat.Zero $@@Nat.Suc)) :named ax_313))
   (assert (! (not (= $@@Nat.Zero $@@Nat.Suc)) :named ax_314))
   (assert (! (not (= class.BreadthFirstSearch class.List)) :named ax_315))
   (assert (! (not (= class.BreadthFirstSearch class.Map)) :named ax_316))
   (assert (! (not (= class.BreadthFirstSearch class.Nat)) :named ax_317))
   (assert (! (not (= class.List class.BreadthFirstSearch)) :named ax_318))
   (assert (! (not (= class.List class.Nat)) :named ax_319))
   (assert (! (not (= class.Map class.BreadthFirstSearch)) :named ax_320))
   (assert (! (not (= class.Map class.List)) :named ax_321))
   (assert (! (not (= class.Map class.List)) :named ax_322))
   (assert (! (not (= class.Map class.Nat)) :named ax_323))
   (assert (! (not (= class.Nat class.BreadthFirstSearch)) :named ax_324))
   (assert (! (not (= class.Nat class.List)) :named ax_325))
   (assert (! (not (= class.Nat class.Map)) :named ax_326))
   (assert (! (not (= this null)) :named ax_327))
   (assert (! true :named ax_328))
   (assert (! true :named ax_329))
   (assert (! true :named ax_330))
   (assert (! true :named ax_331))
   (assert (! true :named ax_332))
   (assert (! true :named ax_333))
   (assert (! true :named ax_334))
   (assert (! true :named ax_335))
   (assert (! true :named ax_336))
   (assert (! true :named ax_337))
   (assert (! true :named ax_338))
   (assert (! true :named ax_339))
   (assert (! true :named ax_340))
   (assert (! true :named ax_341))
   (assert (! true :named ax_342))
   (assert (! true :named ax_343))
   (assert (! true :named ax_344))
   (assert (! true :named ax_345))
   (assert (! true :named ax_346))
   (assert (! true :named ax_347))
   (assert (! true :named ax_348))
   (assert (! true :named ax_349))
   (assert (! true :named ax_350))
   (assert (! true :named ax_351))
   (assert (! true :named ax_352))
   (assert (! true :named ax_353))
   (assert (! true :named ax_354))
   (assert (! true :named ax_355))
   (assert (! true :named ax_356))
   (assert (! true :named ax_357))
   (assert (! true :named ax_358))
   (assert (! true :named ax_359))
   (assert (! true :named ax_360))
   (assert (! true :named ax_361))
   (assert (! true :named ax_362))
   (assert (! true :named ax_363))
   (assert (! true :named ax_364))
   (assert (! true :named ax_365))
   (assert (! true :named ax_366))
   (assert (! true :named ax_367))
   (assert (! true :named ax_368))
   (assert (! true :named ax_369))
   (assert (! true :named ax_370))
   (assert (! true :named ax_371))

;Program
(assert (not
(let ((GeneratedUnifiedExit@2_assertion (and
    (=> (<= 0 d@9@3) (forall( (|p#11| Seq$BoxType$))(=> (and (and (forall( (|$i#4_$2| Int))(!(=> (and (<= 0 |$i#4_$2|) (< |$i#4_$2| (Seq@Length$BoxType$ |p#11|))) (GenericAlloc (Seq@Index$BoxType$ |p#11| |$i#4_$2|) $Heap@9))  :pattern ( (Seq@Index$BoxType$ |p#11| |$i#4_$2|)))) (forall( (|p$ih#2#108| Seq$BoxType$))(=> (forall( (|$i#3_$1| Int))(!(=> (and (<= 0 |$i#3_$1|) (< |$i#3_$1| (Seq@Length$BoxType$ |p$ih#2#108|))) (GenericAlloc (Seq@Index$BoxType$ |p$ih#2#108| |$i#3_$1|) $Heap@9))  :pattern ( (Seq@Index$BoxType$ |p$ih#2#108| |$i#3_$1|)))) (=> (< (Seq@Length$BoxType$ |p$ih#2#108|) (Seq@Length$BoxType$ |p#11|)) (=> (BreadthFirstSearch.IsPath $Heap@9 this source@6 dest@7 |p$ih#2#108|) (<= (Seq@Length$BoxType$ path@10@0) (Seq@Length$BoxType$ |p$ih#2#108|))))))) true) (=> (BreadthFirstSearch.IsPath@2 $Heap@9 this source@6 dest@7 |p#11|) (<= (Seq@Length$BoxType$ path@10@0) (Seq@Length$BoxType$ |p#11|))))))
)))
(let ((GeneratedUnifiedExit@3_assertion (and
    (=> (< d@9@3 0) (not (exists( (|p#12| Seq$BoxType$))(and (and (and (forall( (|$i#8_$0| Int))(!(=> (and (<= 0 |$i#8_$0|) (< |$i#8_$0| (Seq@Length$BoxType$ |p#12|))) (GenericAlloc (Seq@Index$BoxType$ |p#12| |$i#8_$0|) $Heap@9))  :pattern ( (Seq@Index$BoxType$ |p#12| |$i#8_$0|)))) (forall( (|p$ih#6#109| Seq$BoxType$))(=> (forall( (|$i#7| Int))(!(=> (and (<= 0 |$i#7|) (< |$i#7| (Seq@Length$BoxType$ |p$ih#6#109|))) (GenericAlloc (Seq@Index$BoxType$ |p$ih#6#109| |$i#7|) $Heap@9))  :pattern ( (Seq@Index$BoxType$ |p$ih#6#109| |$i#7|)))) (=> (< (Seq@Length$BoxType$ |p$ih#6#109|) (Seq@Length$BoxType$ |p#12|)) (not (BreadthFirstSearch.IsPath $Heap@9 this source@6 dest@7 |p$ih#6#109|)))))) true) (BreadthFirstSearch.IsPath@2 $Heap@9 this source@6 dest@7 |p#12|)))))
)))
(let ((GeneratedUnifiedExit@1_assertion (and
    (=> (<= 0 d@9@3) (= (Seq@Length$BoxType$ path@10@0) d@9@3))
)))
(let ((GeneratedUnifiedExit_assertion (and
    (=> (<= 0 d@9@3) (=> (BreadthFirstSearch.IsPath@canCall $Heap@9 this source@6 dest@7 path@10@0) (or (BreadthFirstSearch.IsPath $Heap@9 this source@6 dest@7 path@10@0) (ite (= source@6 dest@7) (Seq@Equal$BoxType$ path@10@0 Seq@Empty$BoxType$) (and (and (not (Seq@Equal$BoxType$ path@10@0 Seq@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@9 this (Seq@Index$BoxType$ path@10@0 (- (Seq@Length$BoxType$ path@10@0) 1))) dest@7)) (BreadthFirstSearch.IsPath $Heap@9 this source@6 (Seq@Index$BoxType$ path@10@0 (- (Seq@Length$BoxType$ path@10@0) 1)) (Seq@Take$BoxType$ path@10@0 (- (Seq@Length$BoxType$ path@10@0) 1))))))))
)))
(let ((anon0@10_assertion (and
    (=> $w0@0 (forall( (|x#19| BoxType))(=> (GenericAlloc |x#19| $Heap) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@14@0 |x#19|) (= (Seq@Length$BoxType$ (BreadthFirstSearch.Find@2 $Heap this source@6 |x#19| $rhs@18@0)) 0)))))
)))
(let ((anon0@14_assertion (and
    (=> $w0@0 (Set@Equal$BoxType$ (Set@Union$BoxType$ $rhs@17@0 $rhs@14@0) (BreadthFirstSearch.R@2 $Heap this source@6 dd@18@0 AllVertices@8)))
)))
(let ((anon0@15_assertion (and
    (=> $w0@0 (Set@Equal$BoxType$ $rhs@15@0 (Set@Difference$BoxType$ (BreadthFirstSearch.Successors $Heap this $rhs@17@0 AllVertices@8) (BreadthFirstSearch.R@2 $Heap this source@6 dd@18@0 AllVertices@8))))
)))
(let ((anon0@17_assertion (and
    (=> $w0@0 (= (BreadthFirstSearch.Value@2 $Heap this dd@18@0) 0))
)))
(let ((anon0@2_assertion (and
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@14@0 AllVertices@8))
)))
(let ((anon0@5_assertion (and
    (=> $w0@0 (Set@Equal$BoxType$ $rhs@13@0 (Set@Union$BoxType$ (Set@Union$BoxType$ $rhs@17@0 $rhs@14@0) $rhs@15@0)))
)))
(let ((anon0@8_assertion (and
    (=> $w0@0 (BreadthFirstSearch.ValidMap@2 $Heap this source@6 $rhs@18@0))
)))
(let ((anon0@9_assertion (and
    (=> $w0@0 (Set@Equal$BoxType$ $rhs@13@0 (BreadthFirstSearch.Domain $Heap this $rhs@18@0)))
)))
(let ((anon0_assertion (and
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@13@0 AllVertices@8))
)))
(let ((anon36@2_assertion (and
    (Set@Disjoint$BoxType$ newlyEncountered@24@1 (BreadthFirstSearch.Domain $Heap@0 this paths@17@0))
)))
(let ((anon36@3_assertion (and
    (forall( (|succ#79| BoxType))(=> (GenericAlloc |succ#79| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ newlyEncountered@24@1 |succ#79|) (BreadthFirstSearch.IsPath@2 $Heap@0 this source@6 |succ#79| (Seq@Append$BoxType$ pathToV@22@1 (Seq@Build$BoxType$ Seq@Empty$BoxType$ v@21@1))))))
)))
(let ((anon39@1_assertion (and
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@28@1 AllVertices@8))
)))
(let ((anon39@10_assertion (and
    (=> $w0@0 (Set@Equal$BoxType$ $rhs@28@1 (BreadthFirstSearch.Domain $Heap@1 this call8formal@newPaths@78@0)))
)))
(let ((anon39@11_assertion (and
    (=> $w0@0 (forall( (|x#19_$3| BoxType))(=> (GenericAlloc |x#19_$3| $Heap@1) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@1 |x#19_$3|) (= (Seq@Length$BoxType$ (BreadthFirstSearch.Find@2 $Heap@1 this source@6 |x#19_$3| call8formal@newPaths@78@0)) d@9@1)))))
)))
(let ((anon39@12_assertion (and
    (=> $w0@0 (forall( (|x#20_$3| BoxType))(=> (GenericAlloc |x#20_$3| $Heap@1) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ N@15@1 |x#20_$3|) (= (Seq@Length$BoxType$ (BreadthFirstSearch.Find@2 $Heap@1 this source@6 |x#20_$3| call8formal@newPaths@78@0)) (+ d@9@1 1))))))
)))
(let ((anon39@13_assertion (and
    (=> $w0@0 (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R $Heap@1 this source@6 dd@18@2 AllVertices@8) dest@7) (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@1 dest@7)))
)))
(let ((anon39@14_assertion (and
    (=> $w0@0 (=> (not (= d@9@1 0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R@2 $Heap@1 this source@6 (Nat.predecessor dd@18@2) AllVertices@8) dest@7))))
)))
(let ((anon39@15_assertion (and
    (=> $w0@0 (Set@Equal$BoxType$ (Set@Union$BoxType$ $rhs@20@1 C@14@1) (BreadthFirstSearch.R@2 $Heap@1 this source@6 dd@18@2 AllVertices@8)))
)))
(let ((anon39@16_assertion (and
    (=> $w0@0 (Set@Equal$BoxType$ N@15@1 (Set@Difference$BoxType$ (BreadthFirstSearch.Successors $Heap@1 this $rhs@20@1 AllVertices@8) (BreadthFirstSearch.R@2 $Heap@1 this source@6 dd@18@2 AllVertices@8))))
)))
(let ((anon39@17_assertion (and
    (=> $w0@0 (=> (Set@Equal$BoxType$ C@14@1 Set@Empty$BoxType$) (Set@Equal$BoxType$ N@15@1 Set@Empty$BoxType$)))
)))
(let ((anon39@18_assertion (and
    (=> $w0@0 (= (BreadthFirstSearch.Value@2 $Heap@1 this dd@18@2) d@9@1))
)))
(let ((anon39@2_assertion (and
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@20@1 AllVertices@8))
)))
(let ((anon39@3_assertion (and
    (=> $w0@0 (Set@Subset$BoxType$ C@14@1 AllVertices@8))
)))
(let ((anon39@4_assertion (and
    (=> $w0@0 (Set@Subset$BoxType$ N@15@1 AllVertices@8))
)))
(let ((anon39@6_assertion (and
    (=> $w0@0 (Set@Equal$BoxType$ $rhs@28@1 (Set@Union$BoxType$ (Set@Union$BoxType$ $rhs@20@1 C@14@1) N@15@1)))
)))
(let ((anon39@7_assertion (and
    (=> $w0@0 (Set@Disjoint$BoxType$ $rhs@20@1 C@14@1))
)))
(let ((anon39@8_assertion (and
    (=> $w0@0 (Set@Disjoint$BoxType$ (Set@Union$BoxType$ $rhs@20@1 C@14@1) N@15@1))
)))
(let ((anon56_Then_assertion (and
    (BreadthFirstSearch.ValidMap $Heap@0 this source@6 paths@17@0)
    (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain $Heap@0 this paths@17@0) x@113@0)
)))
(let ((anon57_Then_assertion (and
    (BreadthFirstSearch.ValidMap $Heap@0 this source@6 paths@17@0)
    (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain $Heap@0 this paths@17@0) x@117@0)
)))
(let ((anon61_Else@1_assertion (and
    (BreadthFirstSearch.ValidMap $Heap@0 this source@6 paths@17@0)
    (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain $Heap@0 this paths@17@0) v@21@1)
)))
(let ((anon63_Then@3_assertion (and
    (=> (BreadthFirstSearch.IsClosed@canCall $Heap@0 this AllVertices@8) (or (BreadthFirstSearch.IsClosed $Heap@0 this AllVertices@8) (forall( (|v#5_$3| BoxType))(=> (GenericAlloc |v#5_$3| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 |v#5_$3|) (Set@Subset$BoxType$ (BreadthFirstSearch.Succ $Heap@0 this |v#5_$3|) AllVertices@8))))))
)))
(let ((anon69_Else@1_assertion (and
    (Set@Equal$BoxType$ (BreadthFirstSearch.R@2 $Heap@0 this source@6 dd@18@1 AllVertices@8) (BreadthFirstSearch.R@2 $Heap@0 this source@6 ($@Nat.Suc dd@18@1) AllVertices@8))
)))
(let ((anon70_Then@3_assertion (and
    (=> (BreadthFirstSearch.IsClosed@canCall $Heap@0 this AllVertices@8) (or (BreadthFirstSearch.IsClosed $Heap@0 this AllVertices@8) (forall( (|v#5_$4| BoxType))(=> (GenericAlloc |v#5_$4| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 |v#5_$4|) (Set@Subset$BoxType$ (BreadthFirstSearch.Succ $Heap@0 this |v#5_$4|) AllVertices@8))))))
)))
(let ((anon0@12_assertion (and
    (=> $w0@0 (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R $Heap this source@6 dd@18@0 AllVertices@8) dest@7) (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@14@0 dest@7)))
)))
(let ((anon39@5_assertion (and
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@28@1 source@6))
)))
(let ((anon69_Then@1_assertion (and
    (<= (BreadthFirstSearch.Value@2 $Heap@0 this nn@26@0) (BreadthFirstSearch.Value@2 $Heap@0 this dd@18@1))
)))
(let ((anon64_Then@4_assertion (and
    (<= (BreadthFirstSearch.Value@2 $Heap@3 this mm@148@0) (BreadthFirstSearch.Value@2 $Heap@3 this nn@150@0))
)))
(let ((anon64_Then_assertion (and
    (<= 0 (Seq@Length$BoxType$ p@23@0))
)))
(let ((anon28_assertion (and
    (<= (Seq@Length$BoxType$ pathToV@22@1) (Seq@Length$BoxType$ p@23@0))
)))
(let ((anon39_assertion (and
    (not (Set@Subset$BoxType$ $decr0$0@1 (Set@Difference$BoxType$ AllVertices@8 $rhs@20@1)))
    (Set@Subset$BoxType$ (Set@Difference$BoxType$ AllVertices@8 $rhs@20@1) $decr0$0@1)
)))
(let ((anon44_assertion (and
    (not (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R@2 $Heap@8 this source@6 nn@26@0 AllVertices@8) dest@7))
)))
(let ((anon61_Else_assertion (and
    (not (= C@14@0 Set@Empty$BoxType$))
)))
(let ((GeneratedUnifiedExit@3 (=> (and true
    (=> (<= 0 d@9@3) (forall( (|p#11| Seq$BoxType$))(=> (and (and (forall( (|$i#4_$2| Int))(!(=> (and (<= 0 |$i#4_$2|) (< |$i#4_$2| (Seq@Length$BoxType$ |p#11|))) (GenericAlloc (Seq@Index$BoxType$ |p#11| |$i#4_$2|) $Heap@9))  :pattern ( (Seq@Index$BoxType$ |p#11| |$i#4_$2|)))) (forall( (|p$ih#2#108| Seq$BoxType$))(=> (forall( (|$i#3_$1| Int))(!(=> (and (<= 0 |$i#3_$1|) (< |$i#3_$1| (Seq@Length$BoxType$ |p$ih#2#108|))) (GenericAlloc (Seq@Index$BoxType$ |p$ih#2#108| |$i#3_$1|) $Heap@9))  :pattern ( (Seq@Index$BoxType$ |p$ih#2#108| |$i#3_$1|)))) (=> (< (Seq@Length$BoxType$ |p$ih#2#108|) (Seq@Length$BoxType$ |p#11|)) (=> (BreadthFirstSearch.IsPath $Heap@9 this source@6 dest@7 |p$ih#2#108|) (<= (Seq@Length$BoxType$ path@10@0) (Seq@Length$BoxType$ |p$ih#2#108|))))))) true) (=> (BreadthFirstSearch.IsPath@2 $Heap@9 this source@6 dest@7 |p#11|) (<= (Seq@Length$BoxType$ path@10@0) (Seq@Length$BoxType$ |p#11|))))))
  )
    GeneratedUnifiedExit@3_assertion
)))
(let ((anon39@18 (=> (and true
    (=> $w0@0 (=> (Set@Equal$BoxType$ C@14@1 Set@Empty$BoxType$) (Set@Equal$BoxType$ N@15@1 Set@Empty$BoxType$)))
  )
    anon39@18_assertion
)))
(let ((anon12 (=> (and true
    $@condition_$19
    (= $@condition_$19 (MapRead$$@Map@@BoxType@To@Bool@@$ N@15@0 x@117@0))
    (forall( (|x#19_$4| BoxType))(=> (GenericAlloc |x#19_$4| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 |x#19_$4|) (BreadthFirstSearch.Find@canCall $Heap@0 this source@6 |x#19_$4| paths@17@0))))
    (forall( (|x#19_$5| BoxType))(=> (GenericAlloc |x#19_$5| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 |x#19_$5|) (= (Seq@Length$BoxType$ (BreadthFirstSearch.Find $Heap@0 this source@6 |x#19_$5| paths@17@0)) d@9@0))))
    (GenericAlloc x@117@0 $Heap@0)
    (MapRead$$@Map@@BoxType@To@Bool@@$ N@15@0 x@117@0)
  )
    anon57_Then_assertion
)))
(let ((anon70_Then (=> (and true
    $@condition_$12
    (= (= true $@bf) (= source@6 dest@7))
    (= (= true $@bf) (= source@6 dest@7))
    (= (= true $@bf_3) (Seq@Equal$BoxType$ p@27@0 Seq@Empty$BoxType$))
    (= (= true $@bf_3) (Seq@Equal$BoxType$ p@27@0 Seq@Empty$BoxType$))
    (= (= true $@bf_4) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this (Seq@Index$BoxType$ p@27@0 (+ (Seq@Length$BoxType$ p@27@0) (* (- 1) 1)))) dest@7) (not (Seq@Equal$BoxType$ p@27@0 Seq@Empty$BoxType$))) (BreadthFirstSearch.IsPath $Heap@0 this source@6 (Seq@Index$BoxType$ p@27@0 (+ (Seq@Length$BoxType$ p@27@0) (* (- 1) 1))) (Seq@Take$BoxType$ p@27@0 (+ (Seq@Length$BoxType$ p@27@0) (* (- 1) 1))))))
    (= (= true $@bf_4) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this (Seq@Index$BoxType$ p@27@0 (+ (Seq@Length$BoxType$ p@27@0) (* (- 1) 1)))) dest@7) (not (Seq@Equal$BoxType$ p@27@0 Seq@Empty$BoxType$))) (BreadthFirstSearch.IsPath $Heap@0 this source@6 (Seq@Index$BoxType$ p@27@0 (+ (Seq@Length$BoxType$ p@27@0) (* (- 1) 1))) (Seq@Take$BoxType$ p@27@0 (+ (Seq@Length$BoxType$ p@27@0) (* (- 1) 1))))))
    (=> (BreadthFirstSearch.IsPath@canCall $Heap@0 this source@6 dest@7 p@27@0) (or (BreadthFirstSearch.IsPath $Heap@0 this source@6 dest@7 p@27@0) (ite (= source@6 dest@7) (Seq@Equal$BoxType$ p@27@0 Seq@Empty$BoxType$) (and (and (not (Seq@Equal$BoxType$ p@27@0 Seq@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this (Seq@Index$BoxType$ p@27@0 (- (Seq@Length$BoxType$ p@27@0) 1))) dest@7)) (BreadthFirstSearch.IsPath $Heap@0 this source@6 (Seq@Index$BoxType$ p@27@0 (- (Seq@Length$BoxType$ p@27@0) 1)) (Seq@Take$BoxType$ p@27@0 (- (Seq@Length$BoxType$ p@27@0) 1)))))))
    (BreadthFirstSearch.IsPath $Heap@0 this source@6 dest@7 p@27@0)
    (BreadthFirstSearch.IsPath@canCall $Heap@0 this source@6 dest@7 p@27@0)
    (BreadthFirstSearch.IsPath@canCall $Heap@0 this source@6 dest@7 p@27@0)
    (forall( (|$i#35| Int))(!(=> (and (<= 0 |$i#35|) (< |$i#35| (Seq@Length$BoxType$ p@27@0))) (GenericAlloc (Seq@Index$BoxType$ p@27@0 |$i#35|) $Heap@0))  :pattern ( (Seq@Index$BoxType$ p@27@0 |$i#35|))))
    (forall( (|$o_$46_$0| ref) (|$f_$46_$0| Field$Bool$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$46_$0| |$f_$46_$0|)))
    (forall( (|$o_$46_$1| ref) (|$f_$46_$1| Field$BoxType$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$46_$1| |$f_$46_$1|)))
    (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 source@6)
    true
    true
    true
    true
  )
    anon70_Then@3_assertion
)))
(let ((anon28 (=> (and true
    true
  )
    anon28_assertion
)))
(let ((anon44 (=> (and true
    (BreadthFirstSearch.R@canCall $Heap@8 this source@6 nn@26@0 AllVertices@8)
    (BreadthFirstSearch.R@canCall $Heap@8 this source@6 nn@26@0 AllVertices@8)
  )
    anon44_assertion
)))
(let ((GeneratedUnifiedExit@2 (=> (and true
    (=> (<= 0 d@9@3) (= (Seq@Length$BoxType$ path@10@0) d@9@3))
  )(and 
    GeneratedUnifiedExit@2_assertion
    GeneratedUnifiedExit@3
))))
(let ((anon39@17 (=> (and true
    (=> $w0@0 (Set@Equal$BoxType$ N@15@1 (Set@Difference$BoxType$ (BreadthFirstSearch.Successors $Heap@1 this $rhs@20@1 AllVertices@8) (BreadthFirstSearch.R@2 $Heap@1 this source@6 dd@18@2 AllVertices@8))))
  )(and 
    anon39@17_assertion
    anon39@18
))))
(let ((anon56_Else (=> (and true
    (= $@condition_$18 (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 x@113@0))
    (not $@condition_$18)
    (not (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 x@113@0))
  )
    anon12
)))
(let ((anon56_Then@1 (=> (and true
    (BreadthFirstSearch.Find@canCall $Heap@0 this source@6 x@113@0 paths@17@0)
    (BreadthFirstSearch.ValidMap $Heap@0 this source@6 paths@17@0)
    (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain $Heap@0 this paths@17@0) x@113@0)
  )
    anon12
)))
(let ((anon64_Else (=> (and true
    (<= (Seq@Length$BoxType$ pathToV@22@1) (Seq@Length$BoxType$ p@23@0))
    (not $@condition_$13)
  )
    anon28
)))
(let ((anon64_Then@5 (=> (and true
    ($HeapSucc $Heap@3 $Heap@4)
    ($IsGoodHeap $Heap@4)
    (<= (BreadthFirstSearch.Value@2 $Heap@3 this mm@148@0) (BreadthFirstSearch.Value@2 $Heap@3 this nn@150@0))
    (forall( (|$o_$51_$0| ref) (|$f_$51_$0| Field$Bool$))(!(=> (and (not (= |$o_$51_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@3 |$o_$51_$0| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@4 |$o_$51_$0| |$f_$51_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@3 |$o_$51_$0| |$f_$51_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@4 |$o_$51_$0| |$f_$51_$0|))))
    (forall( (|$o_$51_$1| ref) (|$f_$51_$1| Field$BoxType$))(!(=> (and (not (= |$o_$51_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@3 |$o_$51_$1| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@4 |$o_$51_$1| |$f_$51_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@3 |$o_$51_$1| |$f_$51_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@4 |$o_$51_$1| |$f_$51_$1|))))
    (Set@Subset$BoxType$ (BreadthFirstSearch.R@2 $Heap@4 this source@6 mm@148@0 AllVertices@8) (BreadthFirstSearch.R@2 $Heap@4 this source@6 nn@150@0 AllVertices@8))
    true
  )
    anon28
)))
(let ((anon69_Else@3 (=> (and true
    ($HeapSucc $Heap@0 $Heap@7)
    ($IsGoodHeap $Heap@7)
    (<= (BreadthFirstSearch.Value@2 $Heap@0 this dd@18@1) (BreadthFirstSearch.Value@2 $Heap@0 this nn@26@0))
    (= $Heap@8 $Heap@7)
    (forall( (|$o_$45_$0| ref) (|$f_$45_$0| Field$Bool$))(!(=> (and (not (= |$o_$45_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$45_$0| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@7 |$o_$45_$0| |$f_$45_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$45_$0| |$f_$45_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@7 |$o_$45_$0| |$f_$45_$0|))))
    (forall( (|$o_$45_$1| ref) (|$f_$45_$1| Field$BoxType$))(!(=> (and (not (= |$o_$45_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$45_$1| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@7 |$o_$45_$1| |$f_$45_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$45_$1| |$f_$45_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@7 |$o_$45_$1| |$f_$45_$1|))))
    (Set@Equal$BoxType$ (BreadthFirstSearch.R@2 $Heap@7 this source@6 dd@18@1 AllVertices@8) (BreadthFirstSearch.R@2 $Heap@7 this source@6 nn@26@0 AllVertices@8))
    true
  )
    anon44
)))
(let ((anon69_Then@2 (=> (and true
    ($HeapSucc $Heap@0 $Heap@6)
    ($IsGoodHeap $Heap@6)
    (<= (BreadthFirstSearch.Value@2 $Heap@0 this nn@26@0) (BreadthFirstSearch.Value@2 $Heap@0 this dd@18@1))
    (= $Heap@8 $Heap@6)
    (forall( (|$o_$43_$0| ref) (|$f_$43_$0| Field$Bool$))(!(=> (and (not (= |$o_$43_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$43_$0| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@6 |$o_$43_$0| |$f_$43_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$43_$0| |$f_$43_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@6 |$o_$43_$0| |$f_$43_$0|))))
    (forall( (|$o_$43_$1| ref) (|$f_$43_$1| Field$BoxType$))(!(=> (and (not (= |$o_$43_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$43_$1| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 |$o_$43_$1| |$f_$43_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$43_$1| |$f_$43_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 |$o_$43_$1| |$f_$43_$1|))))
    (Set@Subset$BoxType$ (BreadthFirstSearch.R@2 $Heap@6 this source@6 nn@26@0 AllVertices@8) (BreadthFirstSearch.R@2 $Heap@6 this source@6 dd@18@1 AllVertices@8))
    true
  )
    anon44
)))
(let ((GeneratedUnifiedExit@1 (=> (and true
    (=> (<= 0 d@9@3) (=> (BreadthFirstSearch.IsPath@canCall $Heap@9 this source@6 dest@7 path@10@0) (or (BreadthFirstSearch.IsPath $Heap@9 this source@6 dest@7 path@10@0) (ite (= source@6 dest@7) (Seq@Equal$BoxType$ path@10@0 Seq@Empty$BoxType$) (and (and (not (Seq@Equal$BoxType$ path@10@0 Seq@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@9 this (Seq@Index$BoxType$ path@10@0 (- (Seq@Length$BoxType$ path@10@0) 1))) dest@7)) (BreadthFirstSearch.IsPath $Heap@9 this source@6 (Seq@Index$BoxType$ path@10@0 (- (Seq@Length$BoxType$ path@10@0) 1)) (Seq@Take$BoxType$ path@10@0 (- (Seq@Length$BoxType$ path@10@0) 1))))))))
  )(and 
    GeneratedUnifiedExit@1_assertion
    GeneratedUnifiedExit@2
))))
(let ((anon39@16 (=> (and true
    (=> $w0@0 (Set@Equal$BoxType$ (Set@Union$BoxType$ $rhs@20@1 C@14@1) (BreadthFirstSearch.R@2 $Heap@1 this source@6 dd@18@2 AllVertices@8)))
  )(and 
    anon39@16_assertion
    anon39@17
))))
(let ((anon56_Then (=> (and true
    $@condition_$18
    (= $@condition_$18 (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 x@113@0))
    (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 x@113@0)
  )(and 
    anon56_Then_assertion
    anon56_Then@1
))))
(let ((anon64_Then@1 (=> (and true
    ($HeapSucc $Heap@2 $Heap@3)
    ($IsGoodHeap $Heap@3)
    (<= 0 (Seq@Length$BoxType$ p@23@0))
    (<= 0 (Seq@Length$BoxType$ p@23@0))
    (= (BreadthFirstSearch.Value@2 $Heap@3 this (BreadthFirstSearch.ToNat@2 $Heap@3 this n@146@0)) n@146@0)
    (= mm@148@0 (BreadthFirstSearch.ToNat $Heap@3 this (Seq@Length$BoxType$ p@23@0)))
    (= n@146@0 (Seq@Length$BoxType$ p@23@0))
    (= n@149@0 (Seq@Length$BoxType$ p@23@0))
    (= nn@150@0 (Nat.predecessor dd@18@1))
    (BreadthFirstSearch.ToNat@canCall $Heap@3 this (Seq@Length$BoxType$ p@23@0))
    (BreadthFirstSearch.ToNat@canCall $Heap@3 this (Seq@Length$BoxType$ p@23@0))
    (forall( (|$o_$48_$0| ref) (|$f_$48_$0| Field$Bool$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$48_$0| |$f_$48_$0|)))
    (forall( (|$o_$48_$1| ref) (|$f_$48_$1| Field$BoxType$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$48_$1| |$f_$48_$1|)))
    (forall( (|$o_$49_$0| ref) (|$f_$49_$0| Field$Bool$))(!(=> (and (not (= |$o_$49_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 |$o_$49_$0| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@3 |$o_$49_$0| |$f_$49_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 |$o_$49_$0| |$f_$49_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@3 |$o_$49_$0| |$f_$49_$0|))))
    (forall( (|$o_$49_$1| ref) (|$f_$49_$1| Field$BoxType$))(!(=> (and (not (= |$o_$49_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 |$o_$49_$1| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@3 |$o_$49_$1| |$f_$49_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@2 |$o_$49_$1| |$f_$49_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@3 |$o_$49_$1| |$f_$49_$1|))))
    (forall( (|$o_$50_$0| ref) (|$f_$50_$0| Field$Bool$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$50_$0| |$f_$50_$0|)))
    (forall( (|$o_$50_$1| ref) (|$f_$50_$1| Field$BoxType$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$50_$1| |$f_$50_$1|)))
    true
    true
    true
    true
  )(and 
    anon64_Then@4_assertion
    anon64_Then@5
))))
(let ((anon69_Else@2 (=> (and true
    (Set@Equal$BoxType$ (BreadthFirstSearch.R@2 $Heap@0 this source@6 dd@18@1 AllVertices@8) (BreadthFirstSearch.R@2 $Heap@0 this source@6 ($@Nat.Suc dd@18@1) AllVertices@8))
  )
    anon69_Else@3
)))
(let ((anon69_Then (=> (and true
    $@condition_$11
    (< (BreadthFirstSearch.Value $Heap@0 this nn@26@0) (BreadthFirstSearch.Value $Heap@0 this dd@18@1))
    (forall( (|$o_$42_$0| ref) (|$f_$42_$0| Field$Bool$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$42_$0| |$f_$42_$0|)))
    (forall( (|$o_$42_$1| ref) (|$f_$42_$1| Field$BoxType$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$42_$1| |$f_$42_$1|)))
    true
    true
    true
    true
  )(and 
    anon69_Then@1_assertion
    anon69_Then@2
))))
(let ((GeneratedUnifiedExit (=> (and true
    (= (= true $@bf) (= source@6 dest@7))
    (= (= true $@bf) (= source@6 dest@7))
    (= (= true $@bf_5) (Seq@Equal$BoxType$ path@10@0 Seq@Empty$BoxType$))
    (= (= true $@bf_5) (Seq@Equal$BoxType$ path@10@0 Seq@Empty$BoxType$))
    (= (= true $@bf_6) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@9 this (Seq@Index$BoxType$ path@10@0 (+ (Seq@Length$BoxType$ path@10@0) (* (- 1) 1)))) dest@7) (not (Seq@Equal$BoxType$ path@10@0 Seq@Empty$BoxType$))) (BreadthFirstSearch.IsPath $Heap@9 this source@6 (Seq@Index$BoxType$ path@10@0 (+ (Seq@Length$BoxType$ path@10@0) (* (- 1) 1))) (Seq@Take$BoxType$ path@10@0 (+ (Seq@Length$BoxType$ path@10@0) (* (- 1) 1))))))
    (= (= true $@bf_6) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@9 this (Seq@Index$BoxType$ path@10@0 (+ (Seq@Length$BoxType$ path@10@0) (* (- 1) 1)))) dest@7) (not (Seq@Equal$BoxType$ path@10@0 Seq@Empty$BoxType$))) (BreadthFirstSearch.IsPath $Heap@9 this source@6 (Seq@Index$BoxType$ path@10@0 (+ (Seq@Length$BoxType$ path@10@0) (* (- 1) 1))) (Seq@Take$BoxType$ path@10@0 (+ (Seq@Length$BoxType$ path@10@0) (* (- 1) 1))))))
  )(and 
    GeneratedUnifiedExit_assertion
    GeneratedUnifiedExit@1
))))
(let ((anon39@15 (=> (and true
    (=> $w0@0 (=> (not (= d@9@1 0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R@2 $Heap@1 this source@6 (Nat.predecessor dd@18@2) AllVertices@8) dest@7))))
  )(and 
    anon39@15_assertion
    anon39@16
))))
(let ((anon10 (=> (and true
    (=> (Set@Disjoint$BoxType$ Processed@16@0 C@14@0) true)
    (BreadthFirstSearch.Domain@canCall $Heap@0 this paths@17@0)
    (BreadthFirstSearch.Domain@canCall $Heap@0 this paths@17@0)
    (BreadthFirstSearch.ValidMap $Heap@0 this source@6 paths@17@0)
    (BreadthFirstSearch.ValidMap@canCall $Heap@0 this source@6 paths@17@0)
    (BreadthFirstSearch.ValidMap@canCall $Heap@0 this source@6 paths@17@0)
    (GenericAlloc x@113@0 $Heap@0)
    (Set@Disjoint$BoxType$ (Set@Union$BoxType$ Processed@16@0 C@14@0) N@15@0)
    (Set@Disjoint$BoxType$ Processed@16@0 C@14@0)
    (Set@Equal$BoxType$ V@13@0 (BreadthFirstSearch.Domain $Heap@0 this paths@17@0))
  )
    (and anon56_Else anon56_Then)
)))
(let ((anon64_Then (=> (and true
    $@condition_$13
    (< (Seq@Length$BoxType$ p@23@0) (Seq@Length$BoxType$ pathToV@22@1))
    true
  )(and 
    anon64_Then_assertion
    anon64_Then@1
))))
(let ((anon69_Else (=> (and true
    (<= (BreadthFirstSearch.Value $Heap@0 this dd@18@1) (BreadthFirstSearch.Value $Heap@0 this nn@26@0))
    (forall( (|$o_$44_$0| ref) (|$f_$44_$0| Field$Bool$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$44_$0| |$f_$44_$0|)))
    (forall( (|$o_$44_$1| ref) (|$f_$44_$1| Field$BoxType$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$44_$1| |$f_$44_$1|)))
    (not $@condition_$11)
    true
    true
    true
    true
  )(and 
    anon69_Else@1_assertion
    anon69_Else@2
))))
(let ((anon63_Else (=> (and true
    (= $Heap@9 $Heap@0)
    (= d@9@3 d@9@0)
    (= path@10@0 pathToV@22@1)
    (forall( (|p#152| Seq$BoxType$))(=> (and (forall( (|$i#23| Int))(!(=> (and (<= 0 |$i#23|) (< |$i#23| (Seq@Length$BoxType$ |p#152|))) (GenericAlloc (Seq@Index$BoxType$ |p#152| |$i#23|) $Heap@0))  :pattern ( (Seq@Index$BoxType$ |p#152| |$i#23|)))) (BreadthFirstSearch.IsPath $Heap@0 this source@6 dest@7 |p#152|)) (<= (Seq@Length$BoxType$ pathToV@22@1) (Seq@Length$BoxType$ |p#152|))))
    (not $@condition_$9)
    true
    true
    true
    true
    true
    true
  )
    GeneratedUnifiedExit
)))
(let ((anon70_Else (=> (and true
    (= $Heap@9 $Heap@0)
    (= d@9@2 (- 0 1))
    (= d@9@3 d@9@2)
    (= path@10@0 path@10)
    (forall( (|p#184| Seq$BoxType$))(=> (and (forall( (|$i#36| Int))(!(=> (and (<= 0 |$i#36|) (< |$i#36| (Seq@Length$BoxType$ |p#184|))) (GenericAlloc (Seq@Index$BoxType$ |p#184| |$i#36|) $Heap@0))  :pattern ( (Seq@Index$BoxType$ |p#184| |$i#36|)))) (BreadthFirstSearch.IsPath $Heap@0 this source@6 dest@7 |p#184|)) false))
    (not $@condition_$12)
    true
    true
    true
    true
  )
    GeneratedUnifiedExit
)))
(let ((anon39@14 (=> (and true
    (=> $w0@0 (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R $Heap@1 this source@6 dd@18@2 AllVertices@8) dest@7) (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@1 dest@7)))
  )(and 
    anon39@14_assertion
    anon39@15
))))
(let ((anon55_Else (=> (and true
    (= $@condition_$16 (Set@Disjoint$BoxType$ Processed@16@0 C@14@0))
    (not $@condition_$16)
    (not (Set@Disjoint$BoxType$ Processed@16@0 C@14@0))
  )
    anon10
)))
(let ((anon55_Then (=> (and true
    $@condition_$16
    (= $@condition_$16 (Set@Disjoint$BoxType$ Processed@16@0 C@14@0))
    (Set@Disjoint$BoxType$ Processed@16@0 C@14@0)
  )
    anon10
)))
(let ((anon63_Then@4 (=> (and true
    ($HeapSucc $Heap@0 $Heap@2)
    ($IsGoodHeap $Heap@2)
    (=> (BreadthFirstSearch.IsClosed@canCall $Heap@0 this AllVertices@8) (or (BreadthFirstSearch.IsClosed $Heap@0 this AllVertices@8) (forall( (|v#5_$3| BoxType))(=> (GenericAlloc |v#5_$3| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 |v#5_$3|) (Set@Subset$BoxType$ (BreadthFirstSearch.Succ $Heap@0 this |v#5_$3|) AllVertices@8))))))
    (forall( (|$o_$41_$0| ref) (|$f_$41_$0| Field$Bool$))(!(=> (and (not (= |$o_$41_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$0| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 |$o_$41_$0| |$f_$41_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$0| |$f_$41_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 |$o_$41_$0| |$f_$41_$0|))))
    (forall( (|$o_$41_$1| ref) (|$f_$41_$1| Field$BoxType$))(!(=> (and (not (= |$o_$41_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$1| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@2 |$o_$41_$1| |$f_$41_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$41_$1| |$f_$41_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@2 |$o_$41_$1| |$f_$41_$1|))))
    (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R@2 $Heap@2 this source@6 (BreadthFirstSearch.ToNat@2 $Heap@2 this (Seq@Length$BoxType$ p@23@0)) AllVertices@8) dest@7)
    true
    true
  )
    (and anon64_Else anon64_Then)
)))
(let ((anon68_Then (=> (and true
    $@condition_$8
    (= (DtType nn@26@0) class.Nat)
    (BreadthFirstSearch.Value@canCall $Heap@0 this dd@18@1)
    (BreadthFirstSearch.Value@canCall $Heap@0 this dd@18@1)
    (BreadthFirstSearch.Value@canCall $Heap@0 this nn@26@0)
    (BreadthFirstSearch.Value@canCall $Heap@0 this nn@26@0)
    (DtAlloc nn@26@0 $Heap@0)
    true
    true
  )
    (and anon69_Else anon69_Then)
)))
(let ((anon68_Else (=> (and true
    (forall( (|nn#176| DatatypeType))(=> (and (and (DtAlloc |nn#176| $Heap@0) (= (DtType |nn#176|) class.Nat)) true) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R $Heap@0 this source@6 |nn#176| AllVertices@8) dest@7))))
    (not $@condition_$8)
    true
  )
    (and anon70_Else anon70_Then)
)))
(let ((anon39@13 (=> (and true
    (=> $w0@0 (forall( (|x#20_$3| BoxType))(=> (GenericAlloc |x#20_$3| $Heap@1) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ N@15@1 |x#20_$3|) (= (Seq@Length$BoxType$ (BreadthFirstSearch.Find@2 $Heap@1 this source@6 |x#20_$3| call8formal@newPaths@78@0)) (+ d@9@1 1))))))
  )(and 
    anon39@13_assertion
    anon39@14
))))
(let ((anon8 (=> (and true
    (=> (and (and (Set@Subset$BoxType$ V@13@0 AllVertices@8) (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)) (Set@Subset$BoxType$ C@14@0 AllVertices@8)) true)
    (=> (and (Set@Subset$BoxType$ V@13@0 AllVertices@8) (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)) true)
    (=> (Set@Subset$BoxType$ V@13@0 AllVertices@8) true)
    (MapRead$$@Map@@BoxType@To@Bool@@$ V@13@0 source@6)
    (Set@Equal$BoxType$ V@13@0 (Set@Union$BoxType$ (Set@Union$BoxType$ Processed@16@0 C@14@0) N@15@0))
    (Set@Subset$BoxType$ C@14@0 AllVertices@8)
    (Set@Subset$BoxType$ N@15@0 AllVertices@8)
    (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)
    (Set@Subset$BoxType$ V@13@0 AllVertices@8)
    true
    true
  )
    (and anon55_Else anon55_Then)
)))
(let ((anon63_Then (=> (and true
    $@condition_$9
    (= (= true $@bf) (= source@6 dest@7))
    (= (= true $@bf) (= source@6 dest@7))
    (= (= true $@bf_1) (Seq@Equal$BoxType$ p@23@0 Seq@Empty$BoxType$))
    (= (= true $@bf_1) (Seq@Equal$BoxType$ p@23@0 Seq@Empty$BoxType$))
    (= (= true $@bf_2) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this (Seq@Index$BoxType$ p@23@0 (+ (Seq@Length$BoxType$ p@23@0) (* (- 1) 1)))) dest@7) (not (Seq@Equal$BoxType$ p@23@0 Seq@Empty$BoxType$))) (BreadthFirstSearch.IsPath $Heap@0 this source@6 (Seq@Index$BoxType$ p@23@0 (+ (Seq@Length$BoxType$ p@23@0) (* (- 1) 1))) (Seq@Take$BoxType$ p@23@0 (+ (Seq@Length$BoxType$ p@23@0) (* (- 1) 1))))))
    (= (= true $@bf_2) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this (Seq@Index$BoxType$ p@23@0 (+ (Seq@Length$BoxType$ p@23@0) (* (- 1) 1)))) dest@7) (not (Seq@Equal$BoxType$ p@23@0 Seq@Empty$BoxType$))) (BreadthFirstSearch.IsPath $Heap@0 this source@6 (Seq@Index$BoxType$ p@23@0 (+ (Seq@Length$BoxType$ p@23@0) (* (- 1) 1))) (Seq@Take$BoxType$ p@23@0 (+ (Seq@Length$BoxType$ p@23@0) (* (- 1) 1))))))
    (=> (BreadthFirstSearch.IsPath@canCall $Heap@0 this source@6 dest@7 p@23@0) (or (BreadthFirstSearch.IsPath $Heap@0 this source@6 dest@7 p@23@0) (ite (= source@6 dest@7) (Seq@Equal$BoxType$ p@23@0 Seq@Empty$BoxType$) (and (and (not (Seq@Equal$BoxType$ p@23@0 Seq@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this (Seq@Index$BoxType$ p@23@0 (- (Seq@Length$BoxType$ p@23@0) 1))) dest@7)) (BreadthFirstSearch.IsPath $Heap@0 this source@6 (Seq@Index$BoxType$ p@23@0 (- (Seq@Length$BoxType$ p@23@0) 1)) (Seq@Take$BoxType$ p@23@0 (- (Seq@Length$BoxType$ p@23@0) 1)))))))
    (BreadthFirstSearch.IsPath $Heap@0 this source@6 dest@7 p@23@0)
    (BreadthFirstSearch.IsPath@canCall $Heap@0 this source@6 dest@7 p@23@0)
    (BreadthFirstSearch.IsPath@canCall $Heap@0 this source@6 dest@7 p@23@0)
    (forall( (|$i#22| Int))(!(=> (and (<= 0 |$i#22|) (< |$i#22| (Seq@Length$BoxType$ p@23@0))) (GenericAlloc (Seq@Index$BoxType$ p@23@0 |$i#22|) $Heap@0))  :pattern ( (Seq@Index$BoxType$ p@23@0 |$i#22|))))
    (forall( (|$o_$40_$0| ref) (|$f_$40_$0| Field$Bool$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$40_$0| |$f_$40_$0|)))
    (forall( (|$o_$40_$1| ref) (|$f_$40_$1| Field$BoxType$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$40_$1| |$f_$40_$1|)))
    (MapRead$$@Map@@BoxType@To@Bool@@$ AllVertices@8 source@6)
    true
    true
    true
    true
  )(and 
    anon63_Then@3_assertion
    anon63_Then@4
))))
(let ((anon61_Then (=> (and true
    $@condition_$2
    (= $@condition_$2 (Set@Equal$BoxType$ C@14@0 Set@Empty$BoxType$))
    (Set@Equal$BoxType$ C@14@0 Set@Empty$BoxType$)
    true
  )
    (and anon68_Else anon68_Then)
)))
(let ((anon39@12 (=> (and true
    (=> $w0@0 (forall( (|x#19_$3| BoxType))(=> (GenericAlloc |x#19_$3| $Heap@1) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@1 |x#19_$3|) (= (Seq@Length$BoxType$ (BreadthFirstSearch.Find@2 $Heap@1 this source@6 |x#19_$3| call8formal@newPaths@78@0)) d@9@1)))))
  )(and 
    anon39@12_assertion
    anon39@13
))))
(let ((anon54_Else (=> (and true
    (= $@condition_$6 (and (and (Set@Subset$BoxType$ V@13@0 AllVertices@8) (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)) (Set@Subset$BoxType$ C@14@0 AllVertices@8)))
    (not $@condition_$6)
    (not (and (and (Set@Subset$BoxType$ V@13@0 AllVertices@8) (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)) (Set@Subset$BoxType$ C@14@0 AllVertices@8)))
  )
    anon8
)))
(let ((anon54_Then (=> (and true
    $@condition_$6
    (= $@condition_$6 (and (and (Set@Subset$BoxType$ V@13@0 AllVertices@8) (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)) (Set@Subset$BoxType$ C@14@0 AllVertices@8)))
    (Set@Subset$BoxType$ C@14@0 AllVertices@8)
    (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)
    (Set@Subset$BoxType$ V@13@0 AllVertices@8)
  )
    anon8
)))
(let ((anon62_Then (=> (and true
    $@condition_$5
    (= $@condition_$5 (= v@21@1 dest@7))
    (= v@21@1 dest@7)
  )
    (and anon63_Else anon63_Then)
)))
(let ((anon39@11 (=> (and true
    (=> $w0@0 (Set@Equal$BoxType$ $rhs@28@1 (BreadthFirstSearch.Domain $Heap@1 this call8formal@newPaths@78@0)))
  )(and 
    anon39@11_assertion
    anon39@12
))))
(let (($branchMerge_1 (=> (and true
  )
    (and anon54_Else anon54_Then)
)))
(let ((anon39@9 (=> (and true
    (=> $w0@0 (BreadthFirstSearch.ValidMap@2 $Heap@1 this source@6 call8formal@newPaths@78@0))
    (=> $w0@0 (Set@Disjoint$BoxType$ (Set@Union$BoxType$ $rhs@20@1 C@14@1) N@15@1))
  )(and 
    anon39@10_assertion
    anon39@11
))))
(let ((anon53_Else (=> (and true
    (= $@condition_$3 (and (Set@Subset$BoxType$ V@13@0 AllVertices@8) (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)))
    (not $@condition_$3)
    (not (and (Set@Subset$BoxType$ V@13@0 AllVertices@8) (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)))
  )
    $branchMerge_1
)))
(let ((anon53_Then (=> (and true
    $@condition_$3
    (= $@condition_$3 (and (Set@Subset$BoxType$ V@13@0 AllVertices@8) (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)))
    (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)
    (Set@Subset$BoxType$ V@13@0 AllVertices@8)
  )
    $branchMerge_1
)))
(let ((anon39@8 (=> (and true
    (=> $w0@0 (Set@Disjoint$BoxType$ $rhs@20@1 C@14@1))
  )(and 
    anon39@8_assertion
    anon39@9
))))
(let (($branchMerge_0 (=> (and true
  )
    (and anon53_Else anon53_Then)
)))
(let ((anon39@7 (=> (and true
    (=> $w0@0 (Set@Equal$BoxType$ $rhs@28@1 (Set@Union$BoxType$ (Set@Union$BoxType$ $rhs@20@1 C@14@1) N@15@1)))
  )(and 
    anon39@7_assertion
    anon39@8
))))
(let ((anon52_Else (=> (and true
    (= $@condition_$1 (Set@Subset$BoxType$ V@13@0 AllVertices@8))
    (not $@condition_$1)
    (not (Set@Subset$BoxType$ V@13@0 AllVertices@8))
  )
    $branchMerge_0
)))
(let ((anon52_Then (=> (and true
    $@condition_$1
    (= $@condition_$1 (Set@Subset$BoxType$ V@13@0 AllVertices@8))
    (Set@Subset$BoxType$ V@13@0 AllVertices@8)
  )
    $branchMerge_0
)))
(let ((anon39@6 (=> (and true
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@28@1 source@6))
  )(and 
    anon39@6_assertion
    anon39@7
))))
(let ((anon51_Then (=> (and true
    $@condition_$0
    (= $@condition_$0 (not $w0@0))
    (not $w0@0)
  )
    (and anon52_Else anon52_Then)
)))
(let ((anon39@5 (=> (and true
    (=> $w0@0 (Set@Subset$BoxType$ N@15@1 AllVertices@8))
  )(and 
    anon39@5_assertion
    anon39@6
))))
(let ((anon39@4 (=> (and true
    (=> $w0@0 (Set@Subset$BoxType$ C@14@1 AllVertices@8))
  )(and 
    anon39@4_assertion
    anon39@5
))))
(let ((anon39@3 (=> (and true
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@20@1 AllVertices@8))
  )(and 
    anon39@3_assertion
    anon39@4
))))
(let ((anon39@2 (=> (and true
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@28@1 AllVertices@8))
  )(and 
    anon39@2_assertion
    anon39@3
))))
(let ((anon39@1 (=> (and true
    (=> (and (and (Set@Subset$BoxType$ $rhs@28@1 AllVertices@8) (Set@Subset$BoxType$ $rhs@20@1 AllVertices@8)) (Set@Subset$BoxType$ C@14@1 AllVertices@8)) true)
    (=> (and (Set@Subset$BoxType$ $rhs@28@1 AllVertices@8) (Set@Subset$BoxType$ $rhs@20@1 AllVertices@8)) true)
    (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R $Heap@1 this source@6 dd@18@2 AllVertices@8) dest@7) true)
    (=> (not (= d@9@1 0)) (BreadthFirstSearch.R@canCall $Heap@1 this source@6 (Nat.predecessor dd@18@2) AllVertices@8))
    (=> (Set@Disjoint$BoxType$ $rhs@20@1 C@14@1) true)
    (=> (Set@Equal$BoxType$ C@14@1 Set@Empty$BoxType$) true)
    (=> (Set@Subset$BoxType$ $rhs@28@1 AllVertices@8) true)
    (BreadthFirstSearch.Domain@canCall $Heap@1 this call8formal@newPaths@78@0)
    (BreadthFirstSearch.R@canCall $Heap@1 this source@6 dd@18@2 AllVertices@8)
    (BreadthFirstSearch.R@canCall $Heap@1 this source@6 dd@18@2 AllVertices@8)
    (BreadthFirstSearch.R@canCall $Heap@1 this source@6 dd@18@2 AllVertices@8)
    (BreadthFirstSearch.Successors@canCall $Heap@1 this $rhs@20@1 AllVertices@8)
    (BreadthFirstSearch.ValidMap@canCall $Heap@1 this source@6 call8formal@newPaths@78@0)
    (BreadthFirstSearch.Value@canCall $Heap@1 this dd@18@2)
    (forall( (|x#19_$2| BoxType))(=> (GenericAlloc |x#19_$2| $Heap@1) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@1 |x#19_$2|) (BreadthFirstSearch.Find@canCall $Heap@1 this source@6 |x#19_$2| call8formal@newPaths@78@0))))
    (forall( (|x#20_$2| BoxType))(=> (GenericAlloc |x#20_$2| $Heap@1) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ N@15@1 |x#20_$2|) (BreadthFirstSearch.Find@canCall $Heap@1 this source@6 |x#20_$2| call8formal@newPaths@78@0))))
    (not (Set@Subset$BoxType$ $decr0$0@1 (Set@Difference$BoxType$ AllVertices@8 $rhs@20@1)))
    (Set@Subset$BoxType$ (Set@Difference$BoxType$ AllVertices@8 $rhs@20@1) $decr0$0@1)
    true
    true
  )(and 
    anon39@1_assertion
    anon39@2
))))
(let ((anon39 (=> (and true
  )(and 
    anon39_assertion
    anon39@1
))))
(let ((anon67_Else (=> (and true
    (= $@condition_$17 (Set@Equal$BoxType$ $rhs@19@1 Set@Empty$BoxType$))
    (= C@14@1 $rhs@19@1)
    (= d@9@1 d@9@0)
    (= dd@18@2 dd@18@1)
    (= N@15@1 $rhs@29@1)
    (not $@condition_$17)
    (not (Set@Equal$BoxType$ $rhs@19@1 Set@Empty$BoxType$))
  )
    anon39
)))
(let ((anon67_Then (=> (and true
    $@condition_$17
    (= $@condition_$17 (Set@Equal$BoxType$ $rhs@19@1 Set@Empty$BoxType$))
    (= $rhs@32@1 Set@Empty$BoxType$)
    (= $rhs@33@1 (+ d@9@0 1))
    (= $rhs@34@1 ($@Nat.Suc dd@18@1))
    (= C@14@1 $rhs@29@1)
    (= d@9@1 $rhs@33@1)
    (= dd@18@2 $rhs@34@1)
    (= N@15@1 $rhs@32@1)
    (Set@Equal$BoxType$ $rhs@19@1 Set@Empty$BoxType$)
    true
    true
    true
    true
    true
    true
    true
    true
    true
  )
    anon39
)))
(let ((anon36@4 (=> (and true
    ($HeapSucc $Heap@0 $Heap@1)
    ($IsGoodHeap $Heap@1)
    (= (DtType call8formal@newPaths@78@0) class.Map)
    (BreadthFirstSearch.ValidMap@2 $Heap@1 this source@6 call8formal@newPaths@78@0)
    (DtAlloc call8formal@newPaths@78@0 $Heap@1)
    (forall( (|$o_$53_$0| ref) (|$f_$53_$0| Field$Bool$))(!(=> (and (not (= |$o_$53_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$53_$0| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@1 |$o_$53_$0| |$f_$53_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$53_$0| |$f_$53_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@1 |$o_$53_$0| |$f_$53_$0|))))
    (forall( (|$o_$53_$1| ref) (|$f_$53_$1| Field$BoxType$))(!(=> (and (not (= |$o_$53_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$53_$1| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@1 |$o_$53_$1| |$f_$53_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$53_$1| |$f_$53_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@1 |$o_$53_$1| |$f_$53_$1|))))
    (forall( (|succ#79| BoxType))(=> (GenericAlloc |succ#79| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ newlyEncountered@24@1 |succ#79|) (BreadthFirstSearch.IsPath@2 $Heap@0 this source@6 |succ#79| (Seq@Append$BoxType$ pathToV@22@1 (Seq@Build$BoxType$ Seq@Empty$BoxType$ v@21@1))))))
    (forall( (|x#80| BoxType))(=> (GenericAlloc |x#80| $Heap@1) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain $Heap@1 this paths@17@0) |x#80|) (Seq@Equal$BoxType$ (BreadthFirstSearch.Find@2 $Heap@1 this source@6 |x#80| paths@17@0) (BreadthFirstSearch.Find@2 $Heap@1 this source@6 |x#80| call8formal@newPaths@78@0)))))
    (forall( (|x#81| BoxType))(=> (GenericAlloc |x#81| $Heap@1) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ newlyEncountered@24@1 |x#81|) (Seq@Equal$BoxType$ (BreadthFirstSearch.Find@2 $Heap@1 this source@6 |x#81| call8formal@newPaths@78@0) (Seq@Append$BoxType$ pathToV@22@1 (Seq@Build$BoxType$ Seq@Empty$BoxType$ v@21@1))))))
    (Set@Equal$BoxType$ (BreadthFirstSearch.Domain $Heap@1 this call8formal@newPaths@78@0) (Set@Union$BoxType$ (BreadthFirstSearch.Domain $Heap@1 this paths@17@0) newlyEncountered@24@1))
    true
    true
  )
    (and anon67_Else anon67_Then)
)))
(let ((anon36@3 (=> (and true
    (Set@Disjoint$BoxType$ newlyEncountered@24@1 (BreadthFirstSearch.Domain $Heap@0 this paths@17@0))
  )(and 
    anon36@3_assertion
    anon36@4
))))
(let ((anon36 (=> (and true
    (= $rhs@28@1 (Set@Union$BoxType$ V@13@0 newlyEncountered@24@1))
    (= $rhs@29@1 (Set@Union$BoxType$ N@15@0 newlyEncountered@24@1))
    (= (DtType call8formal@newPaths@78@0) class.Map)
    (= newlyEncountered@24@1 (lambda@4 V@13@0 $Heap@0 this v@21@1))
    (BreadthFirstSearch.ValidMap@2 $Heap@0 this source@6 paths@17@0)
    (DtAlloc call8formal@newPaths@78@0 $Heap)
    (forall( (|$o_$52_$0| ref) (|$f_$52_$0| Field$Bool$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$52_$0| |$f_$52_$0|)))
    (forall( (|$o_$52_$1| ref) (|$f_$52_$1| Field$BoxType$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$52_$1| |$f_$52_$1|)))
    (forall( (|w#25_$0| BoxType))(=> (GenericAlloc |w#25_$0| $Heap@0) (and (BreadthFirstSearch.Succ@canCall $Heap@0 this v@21@1) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this v@21@1) |w#25_$0|) true))))
    true
    true
    true
    true
    true
    true
    true
    true
    true
    true
    true
    true
  )(and 
    anon36@2_assertion
    anon36@3
))))
(let ((anon66_Else (=> (and true
    (= $@condition_$14 (and (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this v@21@1) w@156@1) (not (MapRead$$@Map@@BoxType@To@Bool@@$ V@13@0 w@156@1))))
    (not $@condition_$14)
    (not (and (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this v@21@1) w@156@1) (not (MapRead$$@Map@@BoxType@To@Bool@@$ V@13@0 w@156@1))))
  )
    anon36
)))
(let ((anon66_Then (=> (and true
    $@condition_$14
    (= $@condition_$14 (and (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this v@21@1) w@156@1) (not (MapRead$$@Map@@BoxType@To@Bool@@$ V@13@0 w@156@1))))
    (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this v@21@1) w@156@1)
    (not (MapRead$$@Map@@BoxType@To@Bool@@$ V@13@0 w@156@1))
  )
    anon36
)))
(let (($branchMerge_2 (=> (and true
  )
    (and anon66_Else anon66_Then)
)))
(let ((anon65_Else (=> (and true
    (= $@condition_$10 (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this v@21@1) w@156@1))
    (not $@condition_$10)
    (not (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this v@21@1) w@156@1))
  )
    $branchMerge_2
)))
(let ((anon65_Then (=> (and true
    $@condition_$10
    (= $@condition_$10 (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this v@21@1) w@156@1))
    (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Succ $Heap@0 this v@21@1) w@156@1)
  )
    $branchMerge_2
)))
(let ((anon62_Else (=> (and true
    (= $@condition_$5 (= v@21@1 dest@7))
    (BreadthFirstSearch.Succ@canCall $Heap@0 this v@21@1)
    (GenericAlloc w@156@1 $Heap@0)
    (not $@condition_$5)
    (not (= v@21@1 dest@7))
    true
  )
    (and anon65_Else anon65_Then)
)))
(let ((anon61_Else@2 (=> (and true
    (= pathToV@22@1 (BreadthFirstSearch.Find $Heap@0 this source@6 v@21@1 paths@17@0))
    (BreadthFirstSearch.Find@canCall $Heap@0 this source@6 v@21@1 paths@17@0)
    (BreadthFirstSearch.Find@canCall $Heap@0 this source@6 v@21@1 paths@17@0)
    (BreadthFirstSearch.ValidMap $Heap@0 this source@6 paths@17@0)
    (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.Domain $Heap@0 this paths@17@0) v@21@1)
    true
    true
  )
    (and anon62_Else anon62_Then)
)))
(let ((anon61_Else@1 (=> (and true
    (= $rhs@19@1 (Set@Difference$BoxType$ C@14@0 (Set@UnionOne$BoxType$ Set@Empty$BoxType$ v@21@1)))
    (= $rhs@20@1 (Set@Union$BoxType$ Processed@16@0 (Set@UnionOne$BoxType$ Set@Empty$BoxType$ v@21@1)))
    (= v@21@1 (Set@Choose$BoxType$ C@14@0 $Tick@0))
    (not (= C@14@0 Set@Empty$BoxType$))
    true
    true
    true
    true
    true
    true
    true
    true
  )(and 
    anon61_Else@1_assertion
    anon61_Else@2
))))
(let ((anon61_Else (=> (and true
    (= $@condition_$2 (Set@Equal$BoxType$ C@14@0 Set@Empty$BoxType$))
    (= $decr0$0@1 (Set@Difference$BoxType$ AllVertices@8 Processed@16@0))
    (not $@condition_$2)
    (not (Set@Equal$BoxType$ C@14@0 Set@Empty$BoxType$))
    true
    true
  )(and 
    anon61_Else_assertion
    anon61_Else@1
))))
(let ((anon51_Else (=> (and true
    $w0@0
    (= $@condition_$0 (not $w0@0))
    (not $@condition_$0)
    true
  )
    (and anon61_Else anon61_Then)
)))
(let ((anon0@18 (=> (and true
    ($HeapSucc $Heap $Heap@0)
    ($IsGoodHeap $Heap@0)
    (<= 0 d@9@0)
    (= $@condition (not true))
    (= (DtType $rhs@30@0) class.Map)
    (= (DtType dd@18@1) class.Nat)
    (= (DtType paths@17@0) class.Map)
    (=> $w0@0 (= (BreadthFirstSearch.Value@2 $Heap this dd@18@0) 0))
    (=> $w0@0 (= (BreadthFirstSearch.Value@2 $Heap@0 this dd@18@1) d@9@0))
    (=> $w0@0 (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R $Heap@0 this source@6 dd@18@1 AllVertices@8) dest@7) (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 dest@7)))
    (=> $w0@0 (=> (not (= d@9@0 0)) (BreadthFirstSearch.R@canCall $Heap@0 this source@6 (Nat.predecessor dd@18@1) AllVertices@8)))
    (=> $w0@0 (=> (not (= d@9@0 0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R@2 $Heap@0 this source@6 (Nat.predecessor dd@18@1) AllVertices@8) dest@7))))
    (=> $w0@0 (=> (Set@Disjoint$BoxType$ Processed@16@0 C@14@0) true))
    (=> $w0@0 (=> (Set@Equal$BoxType$ C@14@0 Set@Empty$BoxType$) (Set@Equal$BoxType$ N@15@0 Set@Empty$BoxType$)))
    (=> $w0@0 (=> (Set@Equal$BoxType$ C@14@0 Set@Empty$BoxType$) true))
    (=> $w0@0 (and (and (=> (Set@Subset$BoxType$ V@13@0 AllVertices@8) true) (=> (and (Set@Subset$BoxType$ V@13@0 AllVertices@8) (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)) true)) (=> (and (and (Set@Subset$BoxType$ V@13@0 AllVertices@8) (Set@Subset$BoxType$ Processed@16@0 AllVertices@8)) (Set@Subset$BoxType$ C@14@0 AllVertices@8)) true)))
    (=> $w0@0 (and (BreadthFirstSearch.R@canCall $Heap@0 this source@6 dd@18@1 AllVertices@8) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R $Heap@0 this source@6 dd@18@1 AllVertices@8) dest@7) true)))
    (=> $w0@0 (and (BreadthFirstSearch.Successors@canCall $Heap@0 this Processed@16@0 AllVertices@8) (BreadthFirstSearch.R@canCall $Heap@0 this source@6 dd@18@1 AllVertices@8)))
    (=> $w0@0 (BreadthFirstSearch.Domain@canCall $Heap@0 this paths@17@0))
    (=> $w0@0 (BreadthFirstSearch.R@canCall $Heap@0 this source@6 dd@18@1 AllVertices@8))
    (=> $w0@0 (BreadthFirstSearch.ValidMap@2 $Heap@0 this source@6 paths@17@0))
    (=> $w0@0 (BreadthFirstSearch.ValidMap@canCall $Heap@0 this source@6 paths@17@0))
    (=> $w0@0 (BreadthFirstSearch.Value@canCall $Heap@0 this dd@18@1))
    (=> $w0@0 (forall( (|x#19_$0| BoxType))(=> (GenericAlloc |x#19_$0| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 |x#19_$0|) (BreadthFirstSearch.Find@canCall $Heap@0 this source@6 |x#19_$0| paths@17@0)))))
    (=> $w0@0 (forall( (|x#19_$1| BoxType))(=> (GenericAlloc |x#19_$1| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 |x#19_$1|) (= (Seq@Length$BoxType$ (BreadthFirstSearch.Find@2 $Heap@0 this source@6 |x#19_$1| paths@17@0)) d@9@0)))))
    (=> $w0@0 (forall( (|x#20_$0| BoxType))(=> (GenericAlloc |x#20_$0| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ N@15@0 |x#20_$0|) (BreadthFirstSearch.Find@canCall $Heap@0 this source@6 |x#20_$0| paths@17@0)))))
    (=> $w0@0 (forall( (|x#20_$1| BoxType))(=> (GenericAlloc |x#20_$1| $Heap@0) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ N@15@0 |x#20_$1|) (= (Seq@Length$BoxType$ (BreadthFirstSearch.Find@2 $Heap@0 this source@6 |x#20_$1| paths@17@0)) (+ d@9@0 1))))))
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ V@13@0 source@6))
    (=> $w0@0 (Set@Disjoint$BoxType$ (Set@Union$BoxType$ Processed@16@0 C@14@0) N@15@0))
    (=> $w0@0 (Set@Disjoint$BoxType$ Processed@16@0 C@14@0))
    (=> $w0@0 (Set@Equal$BoxType$ (Set@Union$BoxType$ Processed@16@0 C@14@0) (BreadthFirstSearch.R@2 $Heap@0 this source@6 dd@18@1 AllVertices@8)))
    (=> $w0@0 (Set@Equal$BoxType$ N@15@0 (Set@Difference$BoxType$ (BreadthFirstSearch.Successors $Heap@0 this Processed@16@0 AllVertices@8) (BreadthFirstSearch.R@2 $Heap@0 this source@6 dd@18@1 AllVertices@8))))
    (=> $w0@0 (Set@Equal$BoxType$ V@13@0 (BreadthFirstSearch.Domain $Heap@0 this paths@17@0)))
    (=> $w0@0 (Set@Equal$BoxType$ V@13@0 (Set@Union$BoxType$ (Set@Union$BoxType$ Processed@16@0 C@14@0) N@15@0)))
    (=> $w0@0 (Set@Subset$BoxType$ C@14@0 AllVertices@8))
    (=> $w0@0 (Set@Subset$BoxType$ N@15@0 AllVertices@8))
    (=> $w0@0 (Set@Subset$BoxType$ Processed@16@0 AllVertices@8))
    (=> $w0@0 (Set@Subset$BoxType$ V@13@0 AllVertices@8))
    (=> $w0@0 true)
    (=> $w0@0 true)
    (=> (Set@Equal$BoxType$ (Set@Difference$BoxType$ AllVertices@8 Processed@16@0) $decr0$init$0@0) true)
    (DtAlloc $rhs@30@0 $Heap@0)
    (DtAlloc dd@18@1 $Heap@0)
    (DtAlloc paths@17@0 $Heap@0)
    (forall( (|$i#21_$0| Int))(!(=> (and (<= 0 |$i#21_$0|) (< |$i#21_$0| (Seq@Length$BoxType$ pathToV@22@0))) (GenericAlloc (Seq@Index$BoxType$ pathToV@22@0 |$i#21_$0|) $Heap@0))  :pattern ( (Seq@Index$BoxType$ pathToV@22@0 |$i#21_$0|))))
    (forall( (|$o_$38_$0| ref) (|$f_$38_$0| Field$Bool$))(!(=> (and (not (= |$o_$38_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$38_$0| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$38_$0| |$f_$38_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$38_$0| |$f_$38_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$38_$0| |$f_$38_$0|))))
    (forall( (|$o_$38_$1| ref) (|$f_$38_$1| Field$BoxType$))(!(=> (and (not (= |$o_$38_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$38_$1| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$38_$1| |$f_$38_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$38_$1| |$f_$38_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$38_$1| |$f_$38_$1|))))
    (forall( (|$o_$39_$0| ref) (|$f_$39_$0| Field$Bool$))(!(=> (and (not (= |$o_$39_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$39_$0| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$39_$0| |$f_$39_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$39_$0| |$f_$39_$0|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$39_$0| |$f_$39_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$39_$0| |$f_$39_$0|))))
    (forall( (|$o_$39_$1| ref) (|$f_$39_$1| Field$BoxType$))(!(=> (and (not (= |$o_$39_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$39_$1| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$39_$1| |$f_$39_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$39_$1| |$f_$39_$1|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$39_$1| |$f_$39_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$39_$1| |$f_$39_$1|))))
    (forall( (|$t#10_$2| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ V@13@0 |$t#10_$2|) (GenericAlloc |$t#10_$2| $Heap@0))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ V@13@0 |$t#10_$2|))))
    (forall( (|$t#11_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 |$t#11_$1|) (GenericAlloc |$t#11_$1| $Heap@0))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ C@14@0 |$t#11_$1|))))
    (forall( (|$t#12_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ N@15@0 |$t#12_$1|) (GenericAlloc |$t#12_$1| $Heap@0))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ N@15@0 |$t#12_$1|))))
    (forall( (|$t#16_$2| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ Processed@16@0 |$t#16_$2|) (GenericAlloc |$t#16_$2| $Heap@0))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ Processed@16@0 |$t#16_$2|))))
    (forall( (|$t#26_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ newlyEncountered@24@0 |$t#26_$0|) (GenericAlloc |$t#26_$0| $Heap@0))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ newlyEncountered@24@0 |$t#26_$0|))))
    (GenericAlloc v@21@0 $Heap@0)
    (not $@condition)
    (Set@Subset$BoxType$ (Set@Difference$BoxType$ AllVertices@8 Processed@16@0) $decr0$init$0@0)
    true
  )
    (and anon51_Else anon51_Then)
)))
(let ((anon0@16 (=> (and true
    (=> $w0@0 (=> (Set@Equal$BoxType$ $rhs@14@0 Set@Empty$BoxType$) (Set@Equal$BoxType$ $rhs@15@0 Set@Empty$BoxType$)))
    (=> $w0@0 (Set@Equal$BoxType$ $rhs@15@0 (Set@Difference$BoxType$ (BreadthFirstSearch.Successors $Heap this $rhs@17@0 AllVertices@8) (BreadthFirstSearch.R@2 $Heap this source@6 dd@18@0 AllVertices@8))))
  )(and 
    anon0@17_assertion
    anon0@18
))))
(let ((anon0@15 (=> (and true
    (=> $w0@0 (Set@Equal$BoxType$ (Set@Union$BoxType$ $rhs@17@0 $rhs@14@0) (BreadthFirstSearch.R@2 $Heap this source@6 dd@18@0 AllVertices@8)))
  )(and 
    anon0@15_assertion
    anon0@16
))))
(let ((anon0@13 (=> (and true
    (=> $w0@0 (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R $Heap this source@6 dd@18@0 AllVertices@8) dest@7) (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@14@0 dest@7)))
    (=> $w0@0 (=> (not (= 0 0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (BreadthFirstSearch.R@2 $Heap this source@6 (Nat.predecessor dd@18@0) AllVertices@8) dest@7))))
  )(and 
    anon0@14_assertion
    anon0@15
))))
(let ((anon0@11 (=> (and true
    (=> $w0@0 (forall( (|x#19| BoxType))(=> (GenericAlloc |x#19| $Heap) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@14@0 |x#19|) (= (Seq@Length$BoxType$ (BreadthFirstSearch.Find@2 $Heap this source@6 |x#19| $rhs@18@0)) 0)))))
    (=> $w0@0 (forall( (|x#20| BoxType))(=> (GenericAlloc |x#20| $Heap) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@15@0 |x#20|) (= (Seq@Length$BoxType$ (BreadthFirstSearch.Find@2 $Heap this source@6 |x#20| $rhs@18@0)) (+ 0 1))))))
  )(and 
    anon0@12_assertion
    anon0@13
))))
(let ((anon0@10 (=> (and true
    (=> $w0@0 (Set@Equal$BoxType$ $rhs@13@0 (BreadthFirstSearch.Domain $Heap this $rhs@18@0)))
  )(and 
    anon0@10_assertion
    anon0@11
))))
(let ((anon0@9 (=> (and true
    (=> $w0@0 (BreadthFirstSearch.ValidMap@2 $Heap this source@6 $rhs@18@0))
  )(and 
    anon0@9_assertion
    anon0@10
))))
(let ((anon0@6 (=> (and true
    (=> $w0@0 (Set@Disjoint$BoxType$ $rhs@17@0 $rhs@14@0))
    (=> $w0@0 (Set@Disjoint$BoxType$ (Set@Union$BoxType$ $rhs@17@0 $rhs@14@0) $rhs@15@0))
    (=> $w0@0 (Set@Equal$BoxType$ $rhs@13@0 (Set@Union$BoxType$ (Set@Union$BoxType$ $rhs@17@0 $rhs@14@0) $rhs@15@0)))
  )(and 
    anon0@8_assertion
    anon0@9
))))
(let ((anon0@3 (=> (and true
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@13@0 source@6))
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@14@0 AllVertices@8))
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@15@0 AllVertices@8))
  )(and 
    anon0@5_assertion
    anon0@6
))))
(let ((anon0@1 (=> (and true
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@13@0 AllVertices@8))
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@17@0 AllVertices@8))
  )(and 
    anon0@2_assertion
    anon0@3
))))
(let (($root (=> (and true
  )(and 
    anon0_assertion
    anon0@1
))))
   $root
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
