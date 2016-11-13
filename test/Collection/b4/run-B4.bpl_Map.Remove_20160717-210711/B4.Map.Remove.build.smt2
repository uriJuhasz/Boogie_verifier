;Analysis time until now:     3s
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
(declare-sort Field$ref$ 0)
(declare-sort Field$Seq$BoxType$$ 0)
(declare-sort ref 0)
(declare-sort Seq$BoxType$ 0)
(declare-sort Seq$ref$ 0)
(declare-sort TickType 0)

;Functions
(declare-fun $@bf_10 ( Seq$BoxType$ BoxType ) Bool)
(declare-fun $@bf_21 ( Seq$BoxType$ Seq$BoxType$ ) Bool)
(declare-fun $@bf_22 ( ) Bool)
(declare-fun $@bf_23 ( ) Bool)
(declare-fun $@bf_24 ( BoxType ) Bool)
(declare-fun $@bf_3 ( $@Map@@BoxType@To@Bool@@ BoxType ) Bool)
(declare-fun $@bf_33 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref BoxType ) Bool)
(declare-fun $@bf_34 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun $@bf_36 ( Field$$@Map@@BoxType@To@Bool@@$ ref $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Field$Bool$ ref ref Field$ref$ ) Bool)
(declare-fun $@sk_11 ( Seq$BoxType$ Seq$BoxType$ ) Int)
(declare-fun $@sk_25 ( ) Int)
(declare-fun $@sk_26 ( ) ref)
(declare-fun $@sk_27 ( ) BoxType)
(declare-fun $@sk_28 ( ) BoxType)
(declare-fun $@sk_3 ( BoxType Seq$BoxType$ ) Int)
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
(declare-fun $Box$Field$ref$$ ( Field$ref$ ) BoxType)
(declare-fun $Box$Field$Seq$BoxType$$$ ( Field$Seq$BoxType$$ ) BoxType)
(declare-fun $Box$Int$ ( Int ) BoxType)
(declare-fun $Box$ref$ ( ref ) BoxType)
(declare-fun $Box$Seq$BoxType$$ ( Seq$BoxType$ ) BoxType)
(declare-fun $Box$Seq$ref$$ ( Seq$ref$ ) BoxType)
(declare-fun $Box$TickType$ ( TickType ) BoxType)
(declare-fun $FunctionContextHeight ( ) Int)
(declare-fun $Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $ModuleContextHeight ( ) Int)
(declare-fun $rhs@0 ( ) ref)
(declare-fun $rhs@2 ( ) ref)
(declare-fun $rhs@3@0 ( ) Seq$BoxType$)
(declare-fun $rhs@4@0 ( ) Seq$BoxType$)
(declare-fun $rhs@5@0 ( ) Seq$BoxType$)
(declare-fun $rhs@6@0 ( ) ref)
(declare-fun $rhs@7@0 ( ) ref)
(declare-fun $Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun $Unbox$$@Map@@BoxType@To@Bool@@$ ( BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun $Unbox$BoxType$ ( BoxType ) BoxType)
(declare-fun $Unbox$ClassName$ ( BoxType ) ClassName)
(declare-fun $Unbox$DatatypeType$ ( BoxType ) DatatypeType)
(declare-fun $Unbox$Field$$@Map@@BoxType@To@Bool@@$$ ( BoxType ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun $Unbox$Field$Bool$$ ( BoxType ) Field$Bool$)
(declare-fun $Unbox$Field$BoxType$$ ( BoxType ) Field$BoxType$)
(declare-fun $Unbox$Field$ref$$ ( BoxType ) Field$ref$)
(declare-fun $Unbox$Field$Seq$BoxType$$$ ( BoxType ) Field$Seq$BoxType$$)
(declare-fun $Unbox$Int$ ( BoxType ) Int)
(declare-fun $Unbox$ref$ ( BoxType ) ref)
(declare-fun $Unbox$Seq$BoxType$$ ( BoxType ) Seq$BoxType$)
(declare-fun $Unbox$Seq$ref$$ ( BoxType ) Seq$ref$)
(declare-fun $Unbox$TickType$ ( BoxType ) TickType)
(declare-fun alloc ( ) Field$Bool$)
(declare-fun array.Length ( ref ) Int)
(declare-fun call4formal@p@24@0 ( ) ref)
(declare-fun call5formal@n@25@0 ( ) Int)
(declare-fun call6formal@prev@26@0 ( ) ref)
(declare-fun class.Map ( ) ClassName)
(declare-fun class.Node ( ) ClassName)
(declare-fun DeclType$$@Map@@BoxType@To@Bool@@$ ( Field$$@Map@@BoxType@To@Bool@@$ ) ClassName)
(declare-fun DeclType$BoxType$ ( Field$BoxType$ ) ClassName)
(declare-fun DeclType$ref$ ( Field$ref$ ) ClassName)
(declare-fun DeclType$Seq$BoxType$$ ( Field$Seq$BoxType$$ ) ClassName)
(declare-fun DtType ( DatatypeType ) ClassName)
(declare-fun dtype ( ref ) ClassName)
(declare-fun FDim$$@Map@@BoxType@To@Bool@@$ ( Field$$@Map@@BoxType@To@Bool@@$ ) Int)
(declare-fun FDim$Bool$ ( Field$Bool$ ) Int)
(declare-fun FDim$BoxType$ ( Field$BoxType$ ) Int)
(declare-fun FDim$ref$ ( Field$ref$ ) Int)
(declare-fun FDim$Seq$BoxType$$ ( Field$Seq$BoxType$$ ) Int)
(declare-fun IndexField ( Int ) Field$BoxType$)
(declare-fun key@16 ( ) BoxType)
(declare-fun lambda@8 ( Field$$@Map@@BoxType@To@Bool@@$ ref $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Field$Bool$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun Map.head ( ) Field$ref$)
(declare-fun Map.Keys ( ) Field$Seq$BoxType$$)
(declare-fun Map.nodes ( ) Field$Seq$BoxType$$)
(declare-fun Map.Repr ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun Map.Values ( ) Field$Seq$BoxType$$)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$$@Map@@BoxType@To@Bool@@$ ) $@Map@@BoxType@To@Bool@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$BoxType$ ) BoxType)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ) ref)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Seq$BoxType$$ ) Seq$BoxType$)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$$@Map@@BoxType@To@Bool@@$ $@Map@@BoxType@To@Bool@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ Bool ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$BoxType$ BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Seq$BoxType$$ Seq$BoxType$ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MultiIndexField ( Field$BoxType$ Int ) Field$BoxType$)
(declare-fun MultiIndexField_Inverse0$BoxType$ ( Field$BoxType$ ) Field$BoxType$)
(declare-fun MultiIndexField_Inverse1$BoxType$ ( Field$BoxType$ ) Int)
(declare-fun Node.key ( ) Field$BoxType$)
(declare-fun Node.next ( ) Field$ref$)
(declare-fun Node.val ( ) Field$BoxType$)
(declare-fun null ( ) ref)
(declare-fun p@20 ( ) ref)
(declare-fun prev@22 ( ) ref)
(declare-fun Seq@Append$BoxType$ ( Seq$BoxType$ Seq$BoxType$ ) Seq$BoxType$)
(declare-fun Seq@Append$ref$ ( Seq$ref$ Seq$ref$ ) Seq$ref$)
(declare-fun Seq@Build$BoxType$ ( Seq$BoxType$ Int BoxType Int ) Seq$BoxType$)
(declare-fun Seq@Build$ref$ ( Seq$ref$ Int ref Int ) Seq$ref$)
(declare-fun Seq@Drop$BoxType$ ( Seq$BoxType$ Int ) Seq$BoxType$)
(declare-fun Seq@Drop$ref$ ( Seq$ref$ Int ) Seq$ref$)
(declare-fun Seq@Empty$BoxType$ ( ) Seq$BoxType$)
(declare-fun Seq@Empty$ref$ ( ) Seq$ref$)
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
(declare-fun this ( ) ref)
(declare-fun TypeTuple ( ClassName ClassName ) ClassName)
(declare-fun TypeTupleCar ( ClassName ) ClassName)
(declare-fun TypeTupleCdr ( ClassName ) ClassName)

;Predicates
(declare-fun $$Language$Dafny ( ) Bool)
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $HeapSucc ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $InMethodContext ( ) Bool)
(declare-fun $IsCanonicalBoolBox ( BoxType ) Bool)
(declare-fun $IsGoodHeap ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $Unbox$Bool$ ( BoxType ) Bool)
(declare-fun DtAlloc ( DatatypeType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun GenericAlloc ( BoxType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun Map.Valid ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Map.Valid@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$$@Map@@BoxType@To@Bool@@$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$BoxType$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$ref$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$Seq$BoxType$$ ) Bool)
(declare-fun MapRead$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ BoxType ) Bool)
(declare-fun Seq@Contains$BoxType$ ( Seq$BoxType$ BoxType ) Bool)
(declare-fun Seq@Contains$ref$ ( Seq$ref$ ref ) Bool)
(declare-fun Seq@Equal$BoxType$ ( Seq$BoxType$ Seq$BoxType$ ) Bool)
(declare-fun Seq@Equal$ref$ ( Seq$ref$ Seq$ref$ ) Bool)
(declare-fun Set@Disjoint$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun Set@Equal$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)

;Axioms
   (assert (! $$Language$Dafny :named ax_0))
   (assert (! $InMethodContext :named ax_1))
   (assert (! ($HeapSucc $Heap $Heap@0) :named ax_2))
   (assert (! ($IsCanonicalBoolBox ($Box$Bool$ false)) :named ax_3))
   (assert (! ($IsCanonicalBoolBox ($Box$Bool$ true)) :named ax_4))
   (assert (! ($IsGoodHeap $Heap) :named ax_5))
   (assert (! ($IsGoodHeap $Heap@0) :named ax_6))
   (assert (! (= $_Frame@0 (lambda@8 Map.Repr null $Heap alloc this)) :named ax_7))
   (assert (! (= (- 1) (* (- 1) 1)) :named ax_8))
   (assert (! (= ($Box$Bool$ false) ($Box$Bool$ ($@bf_24 ($Box$Bool$ false)))) :named ax_9))
   (assert (! (= ($Box$Bool$ true) ($Box$Bool$ ($@bf_24 ($Box$Bool$ true)))) :named ax_10))
   (assert (! (= (= true $@bf_22) ($Unbox$Bool$ ($Box$Bool$ true))) :named ax_11))
   (assert (! (= (= true $@bf_23) ($Unbox$Bool$ ($Box$Bool$ false))) :named ax_12))
   (assert (! (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap this Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) 0))) :named ax_13))
   (assert (! (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values))) :named ax_14))
   (assert (! (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) 1)) :named ax_15))
   (assert (! (= 0 $ModuleContextHeight) :named ax_16))
   (assert (! (= 0 (FDim$$@Map@@BoxType@To@Bool@@$ Map.Repr)) :named ax_17))
   (assert (! (= 0 (FDim$Bool$ alloc)) :named ax_18))
   (assert (! (= 0 (FDim$BoxType$ Node.key)) :named ax_19))
   (assert (! (= 0 (FDim$BoxType$ Node.val)) :named ax_20))
   (assert (! (= 0 (FDim$ref$ Map.head)) :named ax_21))
   (assert (! (= 0 (FDim$ref$ Node.next)) :named ax_22))
   (assert (! (= 0 (FDim$Seq$BoxType$$ Map.Keys)) :named ax_23))
   (assert (! (= 0 (FDim$Seq$BoxType$$ Map.nodes)) :named ax_24))
   (assert (! (= 0 (FDim$Seq$BoxType$$ Map.Values)) :named ax_25))
   (assert (! (= 0 (Seq@Length$BoxType$ Seq@Empty$BoxType$)) :named ax_26))
   (assert (! (= 0 (Seq@Length$ref$ Seq@Empty$ref$)) :named ax_27))
   (assert (! (= class.Map (DeclType$$@Map@@BoxType@To@Bool@@$ Map.Repr)) :named ax_28))
   (assert (! (= class.Map (DeclType$ref$ Map.head)) :named ax_29))
   (assert (! (= class.Map (DeclType$Seq$BoxType$$ Map.Keys)) :named ax_30))
   (assert (! (= class.Map (DeclType$Seq$BoxType$$ Map.nodes)) :named ax_31))
   (assert (! (= class.Map (DeclType$Seq$BoxType$$ Map.Values)) :named ax_32))
   (assert (! (= class.Map (dtype this)) :named ax_33))
   (assert (! (= class.Node (DeclType$BoxType$ Node.key)) :named ax_34))
   (assert (! (= class.Node (DeclType$BoxType$ Node.val)) :named ax_35))
   (assert (! (= class.Node (DeclType$ref$ Node.next)) :named ax_36))
   (assert (! (= false $@bf_23) :named ax_37))
   (assert (! (= null ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes)) (- 1))))) :named ax_38))
   (assert (! (= true $@bf_22) :named ax_39))
   (assert (! (=> (= call4formal@p@24@0 null) (not (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) key@16))) :named ax_40))
   (assert (! (=> (not (= call4formal@p@24@0 null)) (< call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys)))) :named ax_41))
   (assert (! (=> (not (= call4formal@p@24@0 null)) (<= 0 call5formal@n@25@0)) :named ax_42))
   (assert (! (=> (not (= call4formal@p@24@0 null)) (= (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) call5formal@n@25@0) key@16)) :named ax_43))
   (assert (! (=> (not (= call4formal@p@24@0 null)) (= call4formal@p@24@0 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.nodes) call5formal@n@25@0)))) :named ax_44))
   (assert (! (=> (not (= call4formal@p@24@0 null)) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) (+ 1 call5formal@n@25@0)) key@16))) :named ax_45))
   (assert (! (=> (not (= call4formal@p@24@0 null)) (not (Seq@Contains$BoxType$ (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) call5formal@n@25@0) key@16))) :named ax_46))
   (assert (! (=> (not (= call4formal@p@24@0 null)) (or (and (= call6formal@prev@26@0 null) (= call5formal@n@25@0 0)) (and (= call6formal@prev@26@0 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.nodes) (+ call5formal@n@25@0 (- 1))))) (< 0 call5formal@n@25@0)))) :named ax_47))
   (assert (! (forall ((|i_1| Field$Bool$)(|i| ref)(|m| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v| Bool))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_48))
   (assert (! (forall ((|i_13| Field$ref$)(|i_12| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_6| ref))(!(= v_6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_6 i_12 i_13 v_6) i_12 i_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_6 i_12 i_13 v_6) i_12 i_13)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_49))
   (assert (! (forall ((|i_25| Field$BoxType$)(|i_24| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_12| BoxType))(!(= v_12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_12 i_24 i_25 v_12) i_24 i_25)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_12 i_24 i_25 v_12) i_24 i_25)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_50))
   (assert (! (forall ((|i_37| Field$$@Map@@BoxType@To@Bool@@$)(|i_36| ref)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_18| $@Map@@BoxType@To@Bool@@))(!(= v_18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_18 i_36 i_37 v_18) i_36 i_37)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_18 i_36 i_37 v_18) i_36 i_37)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_51))
   (assert (! (forall ((|i_49| Field$Seq$BoxType$$)(|i_48| ref)(|m_24| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_24| Seq$BoxType$))(!(= v_24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_24 i_48 i_49 v_24) i_48 i_49)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_24 i_48 i_49 v_24) i_48 i_49)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_52))
   (assert (! (forall ((|v_1| Bool)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_3| Field$Bool$)(|j_1| Field$Bool$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_53))
   (assert (! (forall ((|v_10| ref)(|i_21| Field$ref$)(|i_20| ref)(|j_17| Field$$@Map@@BoxType@To@Bool@@$)(|j_16| ref)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_10 j_16 j_17) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_10 i_20 i_21 v_10) j_16 j_17)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_10 i_20 i_21 v_10) j_16 j_17)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__ref :weight 0 )) :named ax_54))
   (assert (! (forall ((|v_11| ref)(|i_23| Field$ref$)(|i_22| ref)(|j_19| Field$Seq$BoxType$$)(|j_18| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_11 j_18 j_19) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_11 i_22 i_23 v_11) j_18 j_19)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_11 i_22 i_23 v_11) j_18 j_19)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$BoxType$__ref :weight 0 )) :named ax_55))
   (assert (! (forall ((|v_13| BoxType)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_27| Field$BoxType$)(|j_21| Field$BoxType$)(|i_26| ref)(|j_20| ref))(!(=> (or (not (= j_21 i_27)) (not (= j_20 i_26))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_13 j_20 j_21) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_13 i_26 i_27 v_13) j_20 j_21))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_13 i_26 i_27 v_13) j_20 j_21)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_56))
   (assert (! (forall ((|v_14| BoxType)(|i_29| Field$BoxType$)(|i_28| ref)(|j_23| Field$Bool$)(|j_22| ref)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_14 j_22 j_23) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_14 i_28 i_29 v_14) j_22 j_23)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_14 i_28 i_29 v_14) j_22 j_23)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__BoxType :weight 0 )) :named ax_57))
   (assert (! (forall ((|v_15| BoxType)(|i_31| Field$BoxType$)(|i_30| ref)(|j_25| Field$ref$)(|j_24| ref)(|m_15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_15 j_24 j_25) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_15 i_30 i_31 v_15) j_24 j_25)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_15 i_30 i_31 v_15) j_24 j_25)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__BoxType :weight 0 )) :named ax_58))
   (assert (! (forall ((|v_16| BoxType)(|i_33| Field$BoxType$)(|i_32| ref)(|j_27| Field$$@Map@@BoxType@To@Bool@@$)(|j_26| ref)(|m_16| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_16 j_26 j_27) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_16 i_32 i_33 v_16) j_26 j_27)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_16 i_32 i_33 v_16) j_26 j_27)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__BoxType :weight 0 )) :named ax_59))
   (assert (! (forall ((|v_17| BoxType)(|i_35| Field$BoxType$)(|i_34| ref)(|j_29| Field$Seq$BoxType$$)(|j_28| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_17 j_28 j_29) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_17 i_34 i_35 v_17) j_28 j_29)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_17 i_34 i_35 v_17) j_28 j_29)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$BoxType$__BoxType :weight 0 )) :named ax_60))
   (assert (! (forall ((|v_19| $@Map@@BoxType@To@Bool@@)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_39| Field$$@Map@@BoxType@To@Bool@@$)(|j_31| Field$$@Map@@BoxType@To@Bool@@$)(|i_38| ref)(|j_30| ref))(!(=> (or (not (= j_31 i_39)) (not (= j_30 i_38))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_19 j_30 j_31) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_19 i_38 i_39 v_19) j_30 j_31))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_19 i_38 i_39 v_19) j_30 j_31)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_61))
   (assert (! (forall ((|v_2| Bool)(|i_5| Field$Bool$)(|i_4| ref)(|j_3| Field$ref$)(|j_2| ref)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_2 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Bool :weight 0 )) :named ax_62))
   (assert (! (forall ((|v_20| $@Map@@BoxType@To@Bool@@)(|i_41| Field$$@Map@@BoxType@To@Bool@@$)(|i_40| ref)(|j_33| Field$Bool$)(|j_32| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_20 j_32 j_33) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_20 i_40 i_41 v_20) j_32 j_33)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_20 i_40 i_41 v_20) j_32 j_33)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_63))
   (assert (! (forall ((|v_21| $@Map@@BoxType@To@Bool@@)(|i_43| Field$$@Map@@BoxType@To@Bool@@$)(|i_42| ref)(|j_35| Field$ref$)(|j_34| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_21 j_34 j_35) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_21 i_42 i_43 v_21) j_34 j_35)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_21 i_42 i_43 v_21) j_34 j_35)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_64))
   (assert (! (forall ((|v_22| $@Map@@BoxType@To@Bool@@)(|i_45| Field$$@Map@@BoxType@To@Bool@@$)(|i_44| ref)(|j_37| Field$BoxType$)(|j_36| ref)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_22 j_36 j_37) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_22 i_44 i_45 v_22) j_36 j_37)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_22 i_44 i_45 v_22) j_36 j_37)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_65))
   (assert (! (forall ((|v_23| $@Map@@BoxType@To@Bool@@)(|i_47| Field$$@Map@@BoxType@To@Bool@@$)(|i_46| ref)(|j_39| Field$Seq$BoxType$$)(|j_38| ref)(|m_23| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_23 j_38 j_39) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_23 i_46 i_47 v_23) j_38 j_39)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_23 i_46 i_47 v_23) j_38 j_39)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$BoxType$__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_66))
   (assert (! (forall ((|v_25| Seq$BoxType$)(|m_25| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_51| Field$Seq$BoxType$$)(|j_41| Field$Seq$BoxType$$)(|i_50| ref)(|j_40| ref))(!(=> (or (not (= j_41 i_51)) (not (= j_40 i_50))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_25 j_40 j_41) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_25 i_50 i_51 v_25) j_40 j_41))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_25 i_50 i_51 v_25) j_40 j_41)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_67))
   (assert (! (forall ((|v_26| Seq$BoxType$)(|i_53| Field$Seq$BoxType$$)(|i_52| ref)(|j_43| Field$Bool$)(|j_42| ref)(|m_26| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_26 j_42 j_43) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_26 i_52 i_53 v_26) j_42 j_43)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_26 i_52 i_53 v_26) j_42 j_43)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Seq$BoxType$ :weight 0 )) :named ax_68))
   (assert (! (forall ((|v_27| Seq$BoxType$)(|i_55| Field$Seq$BoxType$$)(|i_54| ref)(|j_45| Field$ref$)(|j_44| ref)(|m_27| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_27 j_44 j_45) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_27 i_54 i_55 v_27) j_44 j_45)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_27 i_54 i_55 v_27) j_44 j_45)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Seq$BoxType$ :weight 0 )) :named ax_69))
   (assert (! (forall ((|v_28| Seq$BoxType$)(|i_57| Field$Seq$BoxType$$)(|i_56| ref)(|j_47| Field$BoxType$)(|j_46| ref)(|m_28| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_28 j_46 j_47) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_28 i_56 i_57 v_28) j_46 j_47)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_28 i_56 i_57 v_28) j_46 j_47)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__Seq$BoxType$ :weight 0 )) :named ax_70))
   (assert (! (forall ((|v_29| Seq$BoxType$)(|i_59| Field$Seq$BoxType$$)(|i_58| ref)(|j_49| Field$$@Map@@BoxType@To@Bool@@$)(|j_48| ref)(|m_29| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_29 j_48 j_49) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_29 i_58 i_59 v_29) j_48 j_49)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_29 i_58 i_59 v_29) j_48 j_49)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__Seq$BoxType$ :weight 0 )) :named ax_71))
   (assert (! (forall ((|v_3| Bool)(|i_7| Field$Bool$)(|i_6| ref)(|j_5| Field$BoxType$)(|j_4| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_3 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__Bool :weight 0 )) :named ax_72))
   (assert (! (forall ((|v_4| Bool)(|i_9| Field$Bool$)(|i_8| ref)(|j_7| Field$$@Map@@BoxType@To@Bool@@$)(|j_6| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_4 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_4 i_8 i_9 v_4) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_4 i_8 i_9 v_4) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__Bool :weight 0 )) :named ax_73))
   (assert (! (forall ((|v_5| Bool)(|i_11| Field$Bool$)(|i_10| ref)(|j_9| Field$Seq$BoxType$$)(|j_8| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_5 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_5 i_10 i_11 v_5) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_5 i_10 i_11 v_5) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$BoxType$__Bool :weight 0 )) :named ax_74))
   (assert (! (forall ((|v_7| ref)(|m_7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_15| Field$ref$)(|j_11| Field$ref$)(|i_14| ref)(|j_10| ref))(!(=> (or (not (= j_11 i_15)) (not (= j_10 i_14))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_7 j_10 j_11) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_7 i_14 i_15 v_7) j_10 j_11))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_7 i_14 i_15 v_7) j_10 j_11)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_75))
   (assert (! (forall ((|v_8| ref)(|i_17| Field$ref$)(|i_16| ref)(|j_13| Field$Bool$)(|j_12| ref)(|m_8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_8 j_12 j_13) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_8 i_16 i_17 v_8) j_12 j_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_8 i_16 i_17 v_8) j_12 j_13)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_76))
   (assert (! (forall ((|v_9| ref)(|i_19| Field$ref$)(|i_18| ref)(|j_15| Field$BoxType$)(|j_14| ref)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_9 j_14 j_15) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_9 i_18 i_19 v_9) j_14 j_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_9 i_18 i_19 v_9) j_14 j_15)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__ref :weight 0 )) :named ax_77))
   (assert (! (forall( (|$h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$0| ref))(!(=> (and (and ($IsGoodHeap |$h_$0|) (not (= null |$o_$0|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$0| |$o_$0| alloc)) (forall( (|$i#1| Int))(!(=> (and (<= 0 |$i#1|) (< |$i#1| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$0| |$o_$0| Map.Values)))) (GenericAlloc (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$0| |$o_$0| Map.Values) |$i#1|) |$h_$0|))  :pattern ( (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$0| |$o_$0| Map.Values) |$i#1|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$0| |$o_$0| Map.Values)))) :named ax_78))
   (assert (! (forall( (|$h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$1| ref))(!(=> (and (and ($IsGoodHeap |$h_$1|) (not (= null |$o_$1|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$1| |$o_$1| alloc)) (forall( (|$t#2| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$1| |$o_$1| Map.Repr) |$t#2|) (or (= null ($Unbox$ref$ |$t#2|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$1| ($Unbox$ref$ |$t#2|) alloc)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$1| |$o_$1| Map.Repr) |$t#2|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$1| |$o_$1| Map.Repr)))) :named ax_79))
   (assert (! (forall( (|$h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$2| ref))(!(=> (and (and ($IsGoodHeap |$h_$2|) (not (= null |$o_$2|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$2| |$o_$2| alloc)) (or (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$2| Map.head)) (and (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$2| Map.head)) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$2| Map.head) alloc))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$2| Map.head)))) :named ax_80))
   (assert (! (forall( (|$h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$3| ref))(!(=> (and (and ($IsGoodHeap |$h_$3|) (not (= null |$o_$3|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$3| |$o_$3| alloc)) (forall( (|$i#3| Int))(!(=> (and (<= 0 |$i#3|) (< |$i#3| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes)))) (or (= null ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes) |$i#3|))) (and (= (dtype ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes) |$i#3|))) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$3| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes) |$i#3|)) alloc))))  :pattern ( (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes) |$i#3|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes)))) :named ax_81))
   (assert (! (forall( (|$h_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$5| ref))(!(=> (and (and ($IsGoodHeap |$h_$4|) (not (= null |$o_$5|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$4| |$o_$5| alloc)) (GenericAlloc (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h_$4| |$o_$5| Node.key) |$h_$4|))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h_$4| |$o_$5| Node.key)))) :named ax_82))
   (assert (! (forall( (|$h_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$6| ref))(!(=> (and (and ($IsGoodHeap |$h_$5|) (not (= null |$o_$6|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$5| |$o_$6| alloc)) (GenericAlloc (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h_$5| |$o_$6| Node.val) |$h_$5|))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h_$5| |$o_$6| Node.val)))) :named ax_83))
   (assert (! (forall( (|$h_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$7| ref))(!(=> (and (and ($IsGoodHeap |$h_$6|) (not (= null |$o_$7|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$6| |$o_$7| alloc)) (or (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$6| |$o_$7| Node.next)) (and (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$6| |$o_$7| Node.next)) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$6| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$6| |$o_$7| Node.next) alloc))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$6| |$o_$7| Node.next)))) :named ax_84))
   (assert (! (forall( (|$h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o| ref))(!(=> (and (and ($IsGoodHeap |$h|) (not (= null |$o|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h| |$o| alloc)) (forall( (|$i#0| Int))(!(=> (and (<= 0 |$i#0|) (< |$i#0| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h| |$o| Map.Keys)))) (GenericAlloc (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h| |$o| Map.Keys) |$i#0|) |$h|))  :pattern ( (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h| |$o| Map.Keys) |$i#0|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h| |$o| Map.Keys)))) :named ax_85))
   (assert (! (forall( (|$h0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$1| ref))(!(=> (and (and (= (dtype |this_$1|) class.Map) (and (and (= (dtype |this_$1|) class.Map) (and (and (and ($IsGoodHeap |$h1|) ($IsGoodHeap |$h0|)) (not (= |this_$1| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |this_$1| alloc))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |this_$1| alloc))) ($HeapSucc |$h0| |$h1|)) (=> (and (forall( (|$o_$4_$4| ref) (|$f_$17| Field$Seq$BoxType$$))(=> (and (or (= |this_$1| |$o_$4_$4|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| Map.Repr) ($Box$ref$ |$o_$4_$4|))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$4| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$4| alloc) (not (= null |$o_$4_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h1| |$o_$4_$4| |$f_$17|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h0| |$o_$4_$4| |$f_$17|)))) (and (forall( (|$o_$4_$3| ref) (|$f_$16| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= |this_$1| |$o_$4_$3|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| Map.Repr) ($Box$ref$ |$o_$4_$3|))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$3| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$3| alloc) (not (= null |$o_$4_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1| |$o_$4_$3| |$f_$16|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |$o_$4_$3| |$f_$16|)))) (and (forall( (|$o_$4_$2| ref) (|$f_$15| Field$BoxType$))(=> (and (or (= |this_$1| |$o_$4_$2|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| Map.Repr) ($Box$ref$ |$o_$4_$2|))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$2| alloc) (not (= null |$o_$4_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1| |$o_$4_$2| |$f_$15|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0| |$o_$4_$2| |$f_$15|)))) (and (forall( (|$o_$4_$1| ref) (|$f_$14| Field$ref$))(=> (and (or (= |this_$1| |$o_$4_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| Map.Repr) ($Box$ref$ |$o_$4_$1|))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$1| alloc) (not (= null |$o_$4_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1| |$o_$4_$1| |$f_$14|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0| |$o_$4_$1| |$f_$14|)))) (forall( (|$o_$4_$0| ref) (|$f_$13| Field$Bool$))(=> (and (or (= |this_$1| |$o_$4_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| Map.Repr) ($Box$ref$ |$o_$4_$0|))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$0| alloc) (not (= null |$o_$4_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$0| |$f_$13|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$0| |$f_$13|)))))))) (= (Map.Valid |$h1| |this_$1|) (Map.Valid |$h0| |this_$1|))))  :pattern ( ($HeapSucc |$h0| |$h1|) (Map.Valid |$h1| |this_$1|)))) :named ax_86))
   (assert (! (forall( (|$Heap_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$0| ref))(!(=> (or (Map.Valid@canCall |$Heap_$0| |this_$0|) (and (= (dtype |this_$0|) class.Map) (and (and ($IsGoodHeap |$Heap_$0|) (not (= |this_$0| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$0| |this_$0| alloc)))) (= (Map.Valid |$Heap_$0| |this_$0|) (and (= null ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) (- (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes)) 1)))) (and (forall( (|i#0_$1| Int))(=> (and (< |i#0_$1| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys))) (<= 0 |i#0_$1|)) (and (and (= (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Values) |i#0_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)) Node.val)) (and (and (= (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) |i#0_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)) Node.key)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)))) (not (= null ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)))))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) (+ |i#0_$1| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)) Node.key))))) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) (+ |i#0_$1| 1))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)) Node.next))))) (and (and (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)) 1)) (and (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Values)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ |this_$0|)))) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) 0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| Map.head)))))))  :pattern ( (Map.Valid |$Heap_$0| |this_$0|)))) :named ax_87))
   (assert (! (forall( (|$o_$16_$0| ref) (|$f_$8_$0| Field$Bool$) (|Map.Repr_$4_$0| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$0| ref) (|$Heap_$9_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$0| Field$Bool$) (|this_$8_$0| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@8 |Map.Repr_$4_$0| |null_$8_$0| |$Heap_$9_$0| |alloc_$8_$0| |this_$8_$0|) |$o_$16_$0| |$f_$8_$0|) (=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9_$0| |$o_$16_$0| |alloc_$8_$0|) (not (= |null_$8_$0| |$o_$16_$0|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$9_$0| |this_$8_$0| |Map.Repr_$4_$0|) ($Box$ref$ |$o_$16_$0|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@8 |Map.Repr_$4_$0| |null_$8_$0| |$Heap_$9_$0| |alloc_$8_$0| |this_$8_$0|) |$o_$16_$0| |$f_$8_$0|)))) :named ax_88))
   (assert (! (forall( (|$o_$16_$1| ref) (|$f_$8_$1| Field$ref$) (|Map.Repr_$4_$1| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$1| ref) (|$Heap_$9_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$1| Field$Bool$) (|this_$8_$1| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ (lambda@8 |Map.Repr_$4_$1| |null_$8_$1| |$Heap_$9_$1| |alloc_$8_$1| |this_$8_$1|) |$o_$16_$1| |$f_$8_$1|) (=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9_$1| |$o_$16_$1| |alloc_$8_$1|) (not (= |null_$8_$1| |$o_$16_$1|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$9_$1| |this_$8_$1| |Map.Repr_$4_$1|) ($Box$ref$ |$o_$16_$1|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ (lambda@8 |Map.Repr_$4_$1| |null_$8_$1| |$Heap_$9_$1| |alloc_$8_$1| |this_$8_$1|) |$o_$16_$1| |$f_$8_$1|)))) :named ax_89))
   (assert (! (forall( (|$o_$16_$2| ref) (|$f_$8_$2| Field$BoxType$) (|Map.Repr_$4_$2| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$2| ref) (|$Heap_$9_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$2| Field$Bool$) (|this_$8_$2| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@8 |Map.Repr_$4_$2| |null_$8_$2| |$Heap_$9_$2| |alloc_$8_$2| |this_$8_$2|) |$o_$16_$2| |$f_$8_$2|) (=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9_$2| |$o_$16_$2| |alloc_$8_$2|) (not (= |null_$8_$2| |$o_$16_$2|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$9_$2| |this_$8_$2| |Map.Repr_$4_$2|) ($Box$ref$ |$o_$16_$2|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@8 |Map.Repr_$4_$2| |null_$8_$2| |$Heap_$9_$2| |alloc_$8_$2| |this_$8_$2|) |$o_$16_$2| |$f_$8_$2|)))) :named ax_90))
   (assert (! (forall( (|$o_$16_$3| ref) (|$f_$8_$3| Field$$@Map@@BoxType@To@Bool@@$) (|Map.Repr_$4_$3| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$3| ref) (|$Heap_$9_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$3| Field$Bool$) (|this_$8_$3| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ (lambda@8 |Map.Repr_$4_$3| |null_$8_$3| |$Heap_$9_$3| |alloc_$8_$3| |this_$8_$3|) |$o_$16_$3| |$f_$8_$3|) (=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9_$3| |$o_$16_$3| |alloc_$8_$3|) (not (= |null_$8_$3| |$o_$16_$3|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$9_$3| |this_$8_$3| |Map.Repr_$4_$3|) ($Box$ref$ |$o_$16_$3|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ (lambda@8 |Map.Repr_$4_$3| |null_$8_$3| |$Heap_$9_$3| |alloc_$8_$3| |this_$8_$3|) |$o_$16_$3| |$f_$8_$3|)))) :named ax_91))
   (assert (! (forall( (|$o_$16_$4| ref) (|$f_$8_$4| Field$Seq$BoxType$$) (|Map.Repr_$4_$4| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$4| ref) (|$Heap_$9_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$4| Field$Bool$) (|this_$8_$4| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ (lambda@8 |Map.Repr_$4_$4| |null_$8_$4| |$Heap_$9_$4| |alloc_$8_$4| |this_$8_$4|) |$o_$16_$4| |$f_$8_$4|) (=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9_$4| |$o_$16_$4| |alloc_$8_$4|) (not (= |null_$8_$4| |$o_$16_$4|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$9_$4| |this_$8_$4| |Map.Repr_$4_$4|) ($Box$ref$ |$o_$16_$4|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ (lambda@8 |Map.Repr_$4_$4| |null_$8_$4| |$Heap_$9_$4| |alloc_$8_$4| |this_$8_$4|) |$o_$16_$4| |$f_$8_$4|)))) :named ax_92))
   (assert (! (forall( (|$o_$20_$0| ref) (|$f_$12_$0| Field$Bool$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$0| alloc) (not (= null |$o_$20_$0|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$0| |$f_$12_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$20_$0| |$f_$12_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$20_$0| |$f_$12_$0|)))) :named ax_93))
   (assert (! (forall( (|$o_$20_$1| ref) (|$f_$12_$1| Field$ref$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$1| alloc) (not (= null |$o_$20_$1|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$20_$1| |$f_$12_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@0 |$o_$20_$1| |$f_$12_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@0 |$o_$20_$1| |$f_$12_$1|)))) :named ax_94))
   (assert (! (forall( (|$o_$20_$2| ref) (|$f_$12_$2| Field$BoxType$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$2| alloc) (not (= null |$o_$20_$2|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$20_$2| |$f_$12_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$20_$2| |$f_$12_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$20_$2| |$f_$12_$2|)))) :named ax_95))
   (assert (! (forall( (|$o_$20_$3| ref) (|$f_$12_$3| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$3| alloc) (not (= null |$o_$20_$3|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap |$o_$20_$3| |$f_$12_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@0 |$o_$20_$3| |$f_$12_$3|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@0 |$o_$20_$3| |$f_$12_$3|)))) :named ax_96))
   (assert (! (forall( (|$o_$20_$4| ref) (|$f_$12_$4| Field$Seq$BoxType$$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$4| alloc) (not (= null |$o_$20_$4|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap |$o_$20_$4| |$f_$12_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 |$o_$20_$4| |$f_$12_$4|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 |$o_$20_$4| |$f_$12_$4|)))) :named ax_97))
   (assert (! (forall( (|a_$0_$0| $@Map@@BoxType@To@Bool@@) (|x_$0_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$0_$0| |x_$0_$0|) |x_$0_$0|)  :pattern ( (Set@UnionOne$BoxType$ |a_$0_$0| |x_$0_$0|)))) :named ax_98))
   (assert (! (forall( (|a_$1_$0| $@Map@@BoxType@To@Bool@@) (|x_$1_$0| BoxType) (|y_$6| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$6|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$1_$0| |x_$1_$0|) |y_$6|))  :pattern ( (Set@UnionOne$BoxType$ |a_$1_$0| |x_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$6|)))) :named ax_99))
   (assert (! (forall( (|a_$10_$0| $@Map@@BoxType@To@Bool@@) (|b_$7_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ |a_$10_$0| (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|)) (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|))  :pattern ( (Set@Intersection$BoxType$ |a_$10_$0| (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|))))) :named ax_100))
   (assert (! (forall( (|a_$11_$0| $@Map@@BoxType@To@Bool@@) (|b_$8_$0| $@Map@@BoxType@To@Bool@@) (|o_$4_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$11_$0| |b_$8_$0|) |o_$4_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$11_$0| |o_$4_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$8_$0| |o_$4_$0|))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$11_$0| |b_$8_$0|) |o_$4_$0|)))) :named ax_101))
   (assert (! (forall( (|a_$12_$0| $@Map@@BoxType@To@Bool@@) (|b_$9_$0| $@Map@@BoxType@To@Bool@@) (|y_$2_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |y_$2_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$12_$0| |b_$9_$0|) |y_$2_$0|)))  :pattern ( (Set@Difference$BoxType$ |a_$12_$0| |b_$9_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |y_$2_$0|)))) :named ax_102))
   (assert (! (forall( (|a_$14_$0| $@Map@@BoxType@To@Bool@@) (|b_$11_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Equal$BoxType$ |a_$14_$0| |b_$11_$0|) (forall( (|o_$6_$1| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$11_$0| |o_$6_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$6_$1|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$6_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$11_$0| |o_$6_$1|)))))  :pattern ( (Set@Equal$BoxType$ |a_$14_$0| |b_$11_$0|)))) :named ax_103))
   (assert (! (forall( (|a_$15_$0| $@Map@@BoxType@To@Bool@@) (|b_$12_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Equal$BoxType$ |a_$15_$0| |b_$12_$0|) (= |b_$12_$0| |a_$15_$0|))  :pattern ( (Set@Equal$BoxType$ |a_$15_$0| |b_$12_$0|)))) :named ax_104))
   (assert (! (forall( (|a_$16_$0| $@Map@@BoxType@To@Bool@@) (|b_$13_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Disjoint$BoxType$ |a_$16_$0| |b_$13_$0|) (forall( (|o_$7_$1| BoxType))(!(or (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$7_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$16_$0| |o_$7_$1|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$16_$0| |o_$7_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$7_$1|)))))  :pattern ( (Set@Disjoint$BoxType$ |a_$16_$0| |b_$13_$0|)))) :named ax_105))
   (assert (! (forall( (|a_$17_$0| $@Map@@BoxType@To@Bool@@) (|tick_$0| TickType))(!(=> (not (= |a_$17_$0| Set@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$17_$0| (Set@Choose$BoxType$ |a_$17_$0| |tick_$0|)))  :pattern ( (Set@Choose$BoxType$ |a_$17_$0| |tick_$0|)))) :named ax_106))
   (assert (! (forall( (|a_$18_$0| Seq$ref$) (|b_$14_$0| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$18_$0| |b_$14_$0|) (= |b_$14_$0| |a_$18_$0|))  :pattern ( (Seq@Equal$ref$ |a_$18_$0| |b_$14_$0|)))) :named ax_107))
   (assert (! (forall( (|a_$18_$1| Seq$BoxType$) (|b_$14_$1| Seq$BoxType$))(!(=> (Seq@Equal$BoxType$ |a_$18_$1| |b_$14_$1|) (= |b_$14_$1| |a_$18_$1|))  :pattern ( (Seq@Equal$BoxType$ |a_$18_$1| |b_$14_$1|)))) :named ax_108))
   (assert (! (forall( (|a_$19| ClassName) (|b_$21| ClassName))(!(and (= (TypeTupleCdr (TypeTuple |a_$19| |b_$21|)) |b_$21|) (= (TypeTupleCar (TypeTuple |a_$19| |b_$21|)) |a_$19|))  :pattern ( (TypeTuple |a_$19| |b_$21|)))) :named ax_109))
   (assert (! (forall( (|a_$2_$0| $@Map@@BoxType@To@Bool@@) (|b_$29| $@Map@@BoxType@To@Bool@@) (|o_$2_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$2_$0| |b_$29|) |o_$2_$0|) (or (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$29| |o_$2_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$2_$0| |o_$2_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$2_$0| |b_$29|) |o_$2_$0|)))) :named ax_110))
   (assert (! (forall( (|a_$20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$27| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|c| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (and ($HeapSucc |b_$27| |c|) ($HeapSucc |a_$20| |b_$27|)) ($HeapSucc |a_$20| |c|))  :pattern ( ($HeapSucc |a_$20| |b_$27|) ($HeapSucc |b_$27| |c|)))) :named ax_111))
   (assert (! (forall( (|a_$21| Int) (|b_$28| Int) (|d_$1| Int))(!(=> (and (< |a_$21| |b_$28|) (and (<= 2 |d_$1|) (= (mod |b_$28| |d_$1|) (mod |a_$21| |d_$1|)))) (<= (+ |a_$21| |d_$1|) |b_$28|))  :pattern ( (mod |a_$21| |d_$1|) (mod |b_$28| |d_$1|)))) :named ax_112))
   (assert (! (forall( (|a_$22| $@Map@@BoxType@To@Bool@@) (|x_$14| BoxType) (|o_$1_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$22| |x_$14|) |o_$1_$0|) (or (= |x_$14| |o_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$22| |o_$1_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$22| |x_$14|) |o_$1_$0|)))) :named ax_113))
   (assert (! (forall( (|a_$3_$0| $@Map@@BoxType@To@Bool@@) (|b_$0_$0| $@Map@@BoxType@To@Bool@@) (|y_$0_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |y_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$3_$0| |b_$0_$0|) |y_$0_$0|))  :pattern ( (Set@Union$BoxType$ |a_$3_$0| |b_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |y_$0_$0|)))) :named ax_114))
   (assert (! (forall( (|a_$4_$0| $@Map@@BoxType@To@Bool@@) (|b_$1_$0| $@Map@@BoxType@To@Bool@@) (|y_$1_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$4_$0| |b_$1_$0|) |y_$1_$0|))  :pattern ( (Set@Union$BoxType$ |a_$4_$0| |b_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|)))) :named ax_115))
   (assert (! (forall( (|a_$5_$0| $@Map@@BoxType@To@Bool@@) (|b_$2_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Disjoint$BoxType$ |a_$5_$0| |b_$2_$0|) (and (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|) |b_$2_$0|) |a_$5_$0|) (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|) |a_$5_$0|) |b_$2_$0|)))  :pattern ( (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|)))) :named ax_116))
   (assert (! (forall( (|a_$6_$0| $@Map@@BoxType@To@Bool@@) (|b_$3_$0| $@Map@@BoxType@To@Bool@@) (|o_$3_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$6_$0| |b_$3_$0|) |o_$3_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$3_$0| |o_$3_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$6_$0| |o_$3_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$6_$0| |b_$3_$0|) |o_$3_$0|)))) :named ax_117))
   (assert (! (forall( (|a_$7_$0| $@Map@@BoxType@To@Bool@@) (|b_$4_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|) |b_$4_$0|) (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|))  :pattern ( (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|) |b_$4_$0|)))) :named ax_118))
   (assert (! (forall( (|a_$8_$0| $@Map@@BoxType@To@Bool@@) (|b_$5_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ |a_$8_$0| (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|)) (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|))  :pattern ( (Set@Union$BoxType$ |a_$8_$0| (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|))))) :named ax_119))
   (assert (! (forall( (|a_$9_$0| $@Map@@BoxType@To@Bool@@) (|b_$6_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|) |b_$6_$0|) (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|))  :pattern ( (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|) |b_$6_$0|)))) :named ax_120))
   (assert (! (forall( (|b_$15| BoxType))(!(= |b_$15| ($Box$Int$ ($Unbox$Int$ |b_$15|)))  :pattern ( ($Unbox$Int$ |b_$15|)))) :named ax_121))
   (assert (! (forall( (|b_$16| BoxType))(!(= |b_$16| ($Box$ref$ ($Unbox$ref$ |b_$16|)))  :pattern ( ($Unbox$ref$ |b_$16|)))) :named ax_122))
   (assert (! (forall( (|b_$17| BoxType))(!(= |b_$17| ($Box$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$17|)))  :pattern ( ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$17|)))) :named ax_123))
   (assert (! (forall( (|b_$18| BoxType))(!(= |b_$18| ($Box$Seq$BoxType$$ ($Unbox$Seq$BoxType$$ |b_$18|)))  :pattern ( ($Unbox$Seq$BoxType$$ |b_$18|)))) :named ax_124))
   (assert (! (forall( (|b_$19| BoxType))(!(= |b_$19| ($Box$DatatypeType$ ($Unbox$DatatypeType$ |b_$19|)))  :pattern ( ($Unbox$DatatypeType$ |b_$19|)))) :named ax_125))
   (assert (! (forall( (|b_$20| BoxType))(!(=> ($IsCanonicalBoolBox |b_$20|) (= |b_$20| ($Box$Bool$ ($Unbox$Bool$ |b_$20|))))  :pattern ( ($Unbox$Bool$ |b_$20|)))) :named ax_126))
   (assert (! (forall( (|b_$22| BoxType) (|h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$22| |h_$1|) (or (= null ($Unbox$ref$ |b_$22|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| ($Unbox$ref$ |b_$22|) alloc)))  :pattern ( (GenericAlloc |b_$22| |h_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| ($Unbox$ref$ |b_$22|) alloc)))) :named ax_127))
   (assert (! (forall( (|b_$23| BoxType) (|h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|i_$11| Int))(!(=> (and (< |i_$11| (Seq@Length$BoxType$ ($Unbox$Seq$BoxType$$ |b_$23|))) (and (GenericAlloc |b_$23| |h_$2|) (<= 0 |i_$11|))) (GenericAlloc (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$23|) |i_$11|) |h_$2|))  :pattern ( (GenericAlloc |b_$23| |h_$2|) (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$23|) |i_$11|)))) :named ax_128))
   (assert (! (forall( (|b_$24| BoxType) (|h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|t_$2| BoxType))(!(=> (and (GenericAlloc |b_$24| |h_$3|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$24|) |t_$2|)) (GenericAlloc |t_$2| |h_$3|))  :pattern ( (GenericAlloc |b_$24| |h_$3|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$24|) |t_$2|)))) :named ax_129))
   (assert (! (forall( (|b_$25| BoxType) (|h_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$25| |h_$4|) (DtAlloc ($Unbox$DatatypeType$ |b_$25|) |h_$4|))  :pattern ( (GenericAlloc |b_$25| |h_$4|) (DtType ($Unbox$DatatypeType$ |b_$25|))))) :named ax_130))
   (assert (! (forall( (|b_$26| Bool) (|h_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$5|) (GenericAlloc ($Box$Bool$ |b_$26|) |h_$5|))) :named ax_131))
   (assert (! (forall( (|f_$1| Field$BoxType$) (|i_$9| Int))(!(= (FDim$BoxType$ (MultiIndexField |f_$1| |i_$9|)) (+ (FDim$BoxType$ |f_$1|) 1))  :pattern ( (MultiIndexField |f_$1| |i_$9|)))) :named ax_132))
   (assert (! (forall( (|f_$2| Field$BoxType$) (|i_$10| Int))(!(and (= (MultiIndexField_Inverse1$BoxType$ (MultiIndexField |f_$2| |i_$10|)) |i_$10|) (= (MultiIndexField_Inverse0$BoxType$ (MultiIndexField |f_$2| |i_$10|)) |f_$2|))  :pattern ( (MultiIndexField |f_$2| |i_$10|)))) :named ax_133))
   (assert (! (forall( (|f_$4| Field$Bool$) (|r_$5| ref) (|H_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$5| |f_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$5| |f_$4|))) :named ax_134))
   (assert (! (forall( (|f_$5| Field$ref$) (|r_$6| ref) (|H_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$2| |r_$6| |f_$5|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$2| |r_$6| |f_$5|))) :named ax_135))
   (assert (! (forall( (|f_$6| Field$BoxType$) (|r_$7| ref) (|H_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$3| |r_$7| |f_$6|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$3| |r_$7| |f_$6|))) :named ax_136))
   (assert (! (forall( (|f_$7| Field$$@Map@@BoxType@To@Bool@@$) (|r_$8| ref) (|H_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$4| |r_$8| |f_$7|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$4| |r_$8| |f_$7|))) :named ax_137))
   (assert (! (forall( (|f_$8| Field$Seq$BoxType$$) (|r_$9| ref) (|H_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |H_$5| |r_$9| |f_$8|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |H_$5| |r_$9| |f_$8|))) :named ax_138))
   (assert (! (forall( (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d_$0| BoxType))(!(=> ($HeapSucc |h_$0| |k_$0|) (=> (GenericAlloc |d_$0| |h_$0|) (GenericAlloc |d_$0| |k_$0|)))  :pattern ( ($HeapSucc |h_$0| |k_$0|) (GenericAlloc |d_$0| |h_$0|)) :pattern ( ($HeapSucc |h_$0| |k_$0|) (GenericAlloc |d_$0| |k_$0|)))) :named ax_139))
   (assert (! (forall( (|h_$8_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$4_$0| ref) (|f_$3_$0| Field$Bool$) (|x_$10_$0| Bool))(!($HeapSucc |h_$8_$0| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$8_$0| |r_$4_$0| |f_$3_$0| |x_$10_$0|))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$8_$0| |r_$4_$0| |f_$3_$0| |x_$10_$0|)))) :named ax_140))
   (assert (! (forall( (|h_$8_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$4_$1| ref) (|f_$3_$1| Field$ref$) (|x_$10_$1| ref))(!($HeapSucc |h_$8_$1| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$8_$1| |r_$4_$1| |f_$3_$1| |x_$10_$1|))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$8_$1| |r_$4_$1| |f_$3_$1| |x_$10_$1|)))) :named ax_141))
   (assert (! (forall( (|h_$8_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$4_$2| ref) (|f_$3_$2| Field$BoxType$) (|x_$10_$2| BoxType))(!($HeapSucc |h_$8_$2| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$8_$2| |r_$4_$2| |f_$3_$2| |x_$10_$2|))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$8_$2| |r_$4_$2| |f_$3_$2| |x_$10_$2|)))) :named ax_142))
   (assert (! (forall( (|h_$8_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$4_$3| ref) (|f_$3_$3| Field$$@Map@@BoxType@To@Bool@@$) (|x_$10_$3| $@Map@@BoxType@To@Bool@@))(!($HeapSucc |h_$8_$3| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |h_$8_$3| |r_$4_$3| |f_$3_$3| |x_$10_$3|))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |h_$8_$3| |r_$4_$3| |f_$3_$3| |x_$10_$3|)))) :named ax_143))
   (assert (! (forall( (|h_$8_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$4_$4| ref) (|f_$3_$4| Field$Seq$BoxType$$) (|x_$10_$4| Seq$BoxType$))(!($HeapSucc |h_$8_$4| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |h_$8_$4| |r_$4_$4| |f_$3_$4| |x_$10_$4|))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |h_$8_$4| |r_$4_$4| |f_$3_$4| |x_$10_$4|)))) :named ax_144))
   (assert (! (forall( (|h_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($HeapSucc |h_$9| |k_$1|) (forall( (|o_$8| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$9| |o_$8| alloc) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$8| alloc))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$8| alloc)))))  :pattern ( ($HeapSucc |h_$9| |k_$1|)))) :named ax_145))
   (assert (! (forall( (|h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d| DatatypeType))(!(=> ($HeapSucc |h| |k|) (=> (DtAlloc |d| |h|) (DtAlloc |d| |k|)))  :pattern ( ($HeapSucc |h| |k|) (DtAlloc |d| |h|)) :pattern ( ($HeapSucc |h| |k|) (DtAlloc |d| |k|)))) :named ax_146))
   (assert (! (forall( (|i#0_$2| Int))(=> (and (< |i#0_$2| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys))) (<= 0 |i#0_$2|)) (and (and (= (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values) |i#0_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)) Node.val)) (and (and (= (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |i#0_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)) Node.key)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)))) (not (= null ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)))))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) (+ |i#0_$2| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)) Node.key))))) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) (+ |i#0_$2| 1))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)) Node.next))))) :named ax_147))
   (assert (! (forall( (|i_$7| Int))(!(= (FDim$BoxType$ (IndexField |i_$7|)) 1)  :pattern ( (IndexField |i_$7|)))) :named ax_148))
   (assert (! (forall( (|o_$10| BoxType))(!(not (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$10|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$10|)))) :named ax_149))
   (assert (! (forall( (|o_$9| ref))(<= 0 (array.Length |o_$9|))) :named ax_150))
   (assert (! (forall( (|r_$1_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$1_$0|) |r_$1_$0|)  :pattern ( (Set@Singleton$BoxType$ |r_$1_$0|)))) :named ax_151))
   (assert (! (forall( (|r_$2_$0| BoxType) (|o_$0_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|) (= |r_$2_$0| |o_$0_$0|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|)))) :named ax_152))
   (assert (! (forall( (|r_$3| ref) (|h_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (and (or (= |r_$3| null) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$7| |r_$3| alloc)) ($IsGoodHeap |h_$7|)) (GenericAlloc ($Box$ref$ |r_$3|) |h_$7|))  :pattern ( (GenericAlloc ($Box$ref$ |r_$3|) |h_$7|)))) :named ax_153))
   (assert (! (forall( (|s_$0_$0| Seq$ref$))(!(=> (= (Seq@Length$ref$ |s_$0_$0|) 0) (= |s_$0_$0| Seq@Empty$ref$))  :pattern ( (Seq@Length$ref$ |s_$0_$0|)))) :named ax_154))
   (assert (! (forall( (|s_$0_$1| Seq$BoxType$))(!(=> (= (Seq@Length$BoxType$ |s_$0_$1|) 0) (= |s_$0_$1| Seq@Empty$BoxType$))  :pattern ( (Seq@Length$BoxType$ |s_$0_$1|)))) :named ax_155))
   (assert (! (forall( (|s_$1_$0| Seq$ref$) (|i_$12| Int) (|v_$0_$0| ref) (|len_$2| Int))(!(=> (<= 0 |len_$2|) (= (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$0| |i_$12| |v_$0_$0| |len_$2|)) |len_$2|))  :pattern ( (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$0| |i_$12| |v_$0_$0| |len_$2|))))) :named ax_156))
   (assert (! (forall( (|s_$1_$1| Seq$BoxType$) (|i_$13| Int) (|v_$0_$1| BoxType) (|len_$3| Int))(!(=> (<= 0 |len_$3|) (= (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$1_$1| |i_$13| |v_$0_$1| |len_$3|)) |len_$3|))  :pattern ( (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$1_$1| |i_$13| |v_$0_$1| |len_$3|))))) :named ax_157))
   (assert (! (forall( (|s_$10_$0| Seq$ref$) (|n_$6_$0| Int) (|j_$2_$0| Int))(!(=> (and (< |j_$2_$0| (Seq@Length$ref$ |s_$10_$0|)) (and (< |j_$2_$0| |n_$6_$0|) (<= 0 |j_$2_$0|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$10_$0| |n_$6_$0|) |j_$2_$0|) (Seq@Index$ref$ |s_$10_$0| |j_$2_$0|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$10_$0| |n_$6_$0|) |j_$2_$0|)))) :named ax_158))
   (assert (! (forall( (|s_$10_$1| Seq$BoxType$) (|n_$6_$1| Int) (|j_$2_$1| Int))(!(=> (and (< |j_$2_$1| (Seq@Length$BoxType$ |s_$10_$1|)) (and (< |j_$2_$1| |n_$6_$1|) (<= 0 |j_$2_$1|))) (= (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$10_$1| |n_$6_$1|) |j_$2_$1|) (Seq@Index$BoxType$ |s_$10_$1| |j_$2_$1|)))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$10_$1| |n_$6_$1|) |j_$2_$1|)))) :named ax_159))
   (assert (! (forall( (|s_$11_$0| Seq$ref$) (|n_$7_$0| Int))(!(=> (<= 0 |n_$7_$0|) (and (=> (< (Seq@Length$ref$ |s_$11_$0|) |n_$7_$0|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$11_$0| |n_$7_$0|)) 0)) (=> (<= |n_$7_$0| (Seq@Length$ref$ |s_$11_$0|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$11_$0| |n_$7_$0|)) (- (Seq@Length$ref$ |s_$11_$0|) |n_$7_$0|)))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$11_$0| |n_$7_$0|))))) :named ax_160))
   (assert (! (forall( (|s_$11_$1| Seq$BoxType$) (|n_$7_$1| Int))(!(=> (<= 0 |n_$7_$1|) (and (=> (< (Seq@Length$BoxType$ |s_$11_$1|) |n_$7_$1|) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$11_$1| |n_$7_$1|)) 0)) (=> (<= |n_$7_$1| (Seq@Length$BoxType$ |s_$11_$1|)) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$11_$1| |n_$7_$1|)) (- (Seq@Length$BoxType$ |s_$11_$1|) |n_$7_$1|)))))  :pattern ( (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$11_$1| |n_$7_$1|))))) :named ax_161))
   (assert (! (forall( (|s_$12_$0| Seq$ref$) (|n_$8_$0| Int) (|j_$3_$0| Int))(!(=> (and (< |j_$3_$0| (- (Seq@Length$ref$ |s_$12_$0|) |n_$8_$0|)) (and (<= 0 |n_$8_$0|) (<= 0 |j_$3_$0|))) (= (Seq@Index$ref$ (Seq@Drop$ref$ |s_$12_$0| |n_$8_$0|) |j_$3_$0|) (Seq@Index$ref$ |s_$12_$0| (+ |j_$3_$0| |n_$8_$0|))))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Drop$ref$ |s_$12_$0| |n_$8_$0|) |j_$3_$0|)))) :named ax_162))
   (assert (! (forall( (|s_$12_$1| Seq$BoxType$) (|n_$8_$1| Int) (|j_$3_$1| Int))(!(=> (and (< |j_$3_$1| (- (Seq@Length$BoxType$ |s_$12_$1|) |n_$8_$1|)) (and (<= 0 |n_$8_$1|) (<= 0 |j_$3_$1|))) (= (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$12_$1| |n_$8_$1|) |j_$3_$1|) (Seq@Index$BoxType$ |s_$12_$1| (+ |j_$3_$1| |n_$8_$1|))))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$12_$1| |n_$8_$1|) |j_$3_$1|)))) :named ax_163))
   (assert (! (forall( (|s_$13_$0| Seq$ref$) (|t_$1_$0| Seq$ref$))(!(and (= |t_$1_$0| (Seq@Drop$ref$ (Seq@Append$ref$ |s_$13_$0| |t_$1_$0|) (Seq@Length$ref$ |s_$13_$0|))) (= (Seq@Take$ref$ (Seq@Append$ref$ |s_$13_$0| |t_$1_$0|) (Seq@Length$ref$ |s_$13_$0|)) |s_$13_$0|))  :pattern ( (Seq@Append$ref$ |s_$13_$0| |t_$1_$0|)))) :named ax_164))
   (assert (! (forall( (|s_$13_$1| Seq$BoxType$) (|t_$1_$1| Seq$BoxType$))(!(and (= |t_$1_$1| (Seq@Drop$BoxType$ (Seq@Append$BoxType$ |s_$13_$1| |t_$1_$1|) (Seq@Length$BoxType$ |s_$13_$1|))) (= (Seq@Take$BoxType$ (Seq@Append$BoxType$ |s_$13_$1| |t_$1_$1|) (Seq@Length$BoxType$ |s_$13_$1|)) |s_$13_$1|))  :pattern ( (Seq@Append$BoxType$ |s_$13_$1| |t_$1_$1|)))) :named ax_165))
   (assert (! (forall( (|s_$14| Seq$ref$))(!(<= 0 (Seq@Length$ref$ |s_$14|))  :pattern ( (Seq@Length$ref$ |s_$14|)))) :named ax_166))
   (assert (! (forall( (|s_$15| Seq$BoxType$))(!(<= 0 (Seq@Length$BoxType$ |s_$15|))  :pattern ( (Seq@Length$BoxType$ |s_$15|)))) :named ax_167))
   (assert (! (forall( (|s_$2_$0| Seq$ref$) (|i_$0_$0| Int) (|v_$1_$0| ref) (|len_$0_$0| Int) (|n_$0_$0| Int))(!(=> (and (< |n_$0_$0| |len_$0_$0|) (<= 0 |n_$0_$0|)) (and (=> (= |n_$0_$0| |i_$0_$0|) (= |v_$1_$0| (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|))) (=> (not (= |n_$0_$0| |i_$0_$0|)) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|) (Seq@Index$ref$ |s_$2_$0| |n_$0_$0|)))))  :pattern ( (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|)))) :named ax_168))
   (assert (! (forall( (|s_$2_$1| Seq$BoxType$) (|i_$0_$1| Int) (|v_$1_$1| BoxType) (|len_$0_$1| Int) (|n_$0_$1| Int))(!(=> (and (< |n_$0_$1| |len_$0_$1|) (<= 0 |n_$0_$1|)) (and (=> (= |n_$0_$1| |i_$0_$1|) (= |v_$1_$1| (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$2_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|))) (=> (not (= |n_$0_$1| |i_$0_$1|)) (= (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$2_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|) (Seq@Index$BoxType$ |s_$2_$1| |n_$0_$1|)))))  :pattern ( (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$2_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|)))) :named ax_169))
   (assert (! (forall( (|s_$3_$0| Seq$ref$) (|i_$1_$0| Int) (|v_$2_$0| ref))(!(=> (and (< |i_$1_$0| (Seq@Length$ref$ |s_$3_$0|)) (<= 0 |i_$1_$0|)) (= (Seq@Length$ref$ (Seq@Update$ref$ |s_$3_$0| |i_$1_$0| |v_$2_$0|)) (Seq@Length$ref$ |s_$3_$0|)))  :pattern ( (Seq@Length$ref$ (Seq@Update$ref$ |s_$3_$0| |i_$1_$0| |v_$2_$0|))))) :named ax_170))
   (assert (! (forall( (|s_$3_$1| Seq$BoxType$) (|i_$1_$1| Int) (|v_$2_$1| BoxType))(!(=> (and (< |i_$1_$1| (Seq@Length$BoxType$ |s_$3_$1|)) (<= 0 |i_$1_$1|)) (= (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$3_$1| |i_$1_$1| |v_$2_$1|)) (Seq@Length$BoxType$ |s_$3_$1|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$3_$1| |i_$1_$1| |v_$2_$1|))))) :named ax_171))
   (assert (! (forall( (|s_$4_$0| Seq$ref$) (|i_$2_$0| Int) (|v_$3_$0| ref) (|n_$1_$0| Int))(!(=> (and (< |n_$1_$0| (Seq@Length$ref$ |s_$4_$0|)) (<= 0 |n_$1_$0|)) (and (=> (= |n_$1_$0| |i_$2_$0|) (= |v_$3_$0| (Seq@Index$ref$ (Seq@Update$ref$ |s_$4_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|))) (=> (not (= |n_$1_$0| |i_$2_$0|)) (= (Seq@Index$ref$ (Seq@Update$ref$ |s_$4_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|) (Seq@Index$ref$ |s_$4_$0| |n_$1_$0|)))))  :pattern ( (Seq@Index$ref$ (Seq@Update$ref$ |s_$4_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|)))) :named ax_172))
   (assert (! (forall( (|s_$4_$1| Seq$BoxType$) (|i_$2_$1| Int) (|v_$3_$1| BoxType) (|n_$1_$1| Int))(!(=> (and (< |n_$1_$1| (Seq@Length$BoxType$ |s_$4_$1|)) (<= 0 |n_$1_$1|)) (and (=> (= |n_$1_$1| |i_$2_$1|) (= |v_$3_$1| (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$4_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|))) (=> (not (= |n_$1_$1| |i_$2_$1|)) (= (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$4_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|) (Seq@Index$BoxType$ |s_$4_$1| |n_$1_$1|)))))  :pattern ( (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$4_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|)))) :named ax_173))
   (assert (! (forall( (|s_$5_$0| Seq$ref$) (|x_$2_$0| ref))(!(= (Seq@Contains$ref$ |s_$5_$0| |x_$2_$0|) (exists( (|i_$3_$1| Int))(!(and (= |x_$2_$0| (Seq@Index$ref$ |s_$5_$0| |i_$3_$1|)) (and (< |i_$3_$1| (Seq@Length$ref$ |s_$5_$0|)) (<= 0 |i_$3_$1|)))  :pattern ( (Seq@Index$ref$ |s_$5_$0| |i_$3_$1|)))))  :pattern ( (Seq@Contains$ref$ |s_$5_$0| |x_$2_$0|)))) :named ax_174))
   (assert (! (forall( (|s_$5_$1| Seq$BoxType$) (|x_$2_$1| BoxType))(!(= (Seq@Contains$BoxType$ |s_$5_$1| |x_$2_$1|) (exists( (|i_$3_$3| Int))(!(and (= |x_$2_$1| (Seq@Index$BoxType$ |s_$5_$1| |i_$3_$3|)) (and (< |i_$3_$3| (Seq@Length$BoxType$ |s_$5_$1|)) (<= 0 |i_$3_$3|)))  :pattern ( (Seq@Index$BoxType$ |s_$5_$1| |i_$3_$3|)))))  :pattern ( (Seq@Contains$BoxType$ |s_$5_$1| |x_$2_$1|)))) :named ax_175))
   (assert (! (forall( (|s_$6_$0| Seq$ref$) (|i_$4_$0| Int) (|v_$4_$0| ref) (|len_$1_$0| Int) (|x_$5_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Build$ref$ |s_$6_$0| |i_$4_$0| |v_$4_$0| |len_$1_$0|) |x_$5_$0|) (or (and (= |x_$5_$0| |v_$4_$0|) (and (< |i_$4_$0| |len_$1_$0|) (<= 0 |i_$4_$0|))) (exists( (|j_$5| Int))(!(and (= |x_$5_$0| (Seq@Index$ref$ |s_$6_$0| |j_$5|)) (and (and (< |j_$5| |len_$1_$0|) (and (< |j_$5| (Seq@Length$ref$ |s_$6_$0|)) (<= 0 |j_$5|))) (not (= |j_$5| |i_$4_$0|))))  :pattern ( (Seq@Index$ref$ |s_$6_$0| |j_$5|))))))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ |s_$6_$0| |i_$4_$0| |v_$4_$0| |len_$1_$0|) |x_$5_$0|)))) :named ax_176))
   (assert (! (forall( (|s_$6_$1| Seq$BoxType$) (|i_$4_$1| Int) (|v_$4_$1| BoxType) (|len_$1_$1| Int) (|x_$5_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Build$BoxType$ |s_$6_$1| |i_$4_$1| |v_$4_$1| |len_$1_$1|) |x_$5_$1|) (or (and (= |x_$5_$1| |v_$4_$1|) (and (< |i_$4_$1| |len_$1_$1|) (<= 0 |i_$4_$1|))) (exists( (|j_$7| Int))(!(and (= |x_$5_$1| (Seq@Index$BoxType$ |s_$6_$1| |j_$7|)) (and (and (< |j_$7| |len_$1_$1|) (and (< |j_$7| (Seq@Length$BoxType$ |s_$6_$1|)) (<= 0 |j_$7|))) (not (= |j_$7| |i_$4_$1|))))  :pattern ( (Seq@Index$BoxType$ |s_$6_$1| |j_$7|))))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Build$BoxType$ |s_$6_$1| |i_$4_$1| |v_$4_$1| |len_$1_$1|) |x_$5_$1|)))) :named ax_177))
   (assert (! (forall( (|s_$7_$0| Seq$ref$) (|n_$2_$0| Int) (|x_$6_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$7_$0| |n_$2_$0|) |x_$6_$0|) (exists( (|i_$5_$1| Int))(!(and (= |x_$6_$0| (Seq@Index$ref$ |s_$7_$0| |i_$5_$1|)) (and (< |i_$5_$1| (Seq@Length$ref$ |s_$7_$0|)) (and (< |i_$5_$1| |n_$2_$0|) (<= 0 |i_$5_$1|))))  :pattern ( (Seq@Index$ref$ |s_$7_$0| |i_$5_$1|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$7_$0| |n_$2_$0|) |x_$6_$0|)))) :named ax_178))
   (assert (! (forall( (|s_$7_$1| Seq$BoxType$) (|n_$2_$1| Int) (|x_$6_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$7_$1| |n_$2_$1|) |x_$6_$1|) (exists( (|i_$5_$3| Int))(!(and (= |x_$6_$1| (Seq@Index$BoxType$ |s_$7_$1| |i_$5_$3|)) (and (< |i_$5_$3| (Seq@Length$BoxType$ |s_$7_$1|)) (and (< |i_$5_$3| |n_$2_$1|) (<= 0 |i_$5_$3|))))  :pattern ( (Seq@Index$BoxType$ |s_$7_$1| |i_$5_$3|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$7_$1| |n_$2_$1|) |x_$6_$1|)))) :named ax_179))
   (assert (! (forall( (|s_$8_$0| Seq$ref$) (|n_$3_$0| Int) (|x_$7_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$8_$0| |n_$3_$0|) |x_$7_$0|) (exists( (|i_$6_$1| Int))(!(and (= |x_$7_$0| (Seq@Index$ref$ |s_$8_$0| |i_$6_$1|)) (and (< |i_$6_$1| (Seq@Length$ref$ |s_$8_$0|)) (and (<= |n_$3_$0| |i_$6_$1|) (<= 0 |n_$3_$0|))))  :pattern ( (Seq@Index$ref$ |s_$8_$0| |i_$6_$1|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$8_$0| |n_$3_$0|) |x_$7_$0|)))) :named ax_180))
   (assert (! (forall( (|s_$8_$1| Seq$BoxType$) (|n_$3_$1| Int) (|x_$7_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$8_$1| |n_$3_$1|) |x_$7_$1|) (exists( (|i_$6_$3| Int))(!(and (= |x_$7_$1| (Seq@Index$BoxType$ |s_$8_$1| |i_$6_$3|)) (and (< |i_$6_$3| (Seq@Length$BoxType$ |s_$8_$1|)) (and (<= |n_$3_$1| |i_$6_$3|) (<= 0 |n_$3_$1|))))  :pattern ( (Seq@Index$BoxType$ |s_$8_$1| |i_$6_$3|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$8_$1| |n_$3_$1|) |x_$7_$1|)))) :named ax_181))
   (assert (! (forall( (|s_$9_$0| Seq$ref$) (|n_$5_$0| Int))(!(=> (<= 0 |n_$5_$0|) (and (=> (< (Seq@Length$ref$ |s_$9_$0|) |n_$5_$0|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$9_$0| |n_$5_$0|)) (Seq@Length$ref$ |s_$9_$0|))) (=> (<= |n_$5_$0| (Seq@Length$ref$ |s_$9_$0|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$9_$0| |n_$5_$0|)) |n_$5_$0|))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$9_$0| |n_$5_$0|))))) :named ax_182))
   (assert (! (forall( (|s_$9_$1| Seq$BoxType$) (|n_$5_$1| Int))(!(=> (<= 0 |n_$5_$1|) (and (=> (< (Seq@Length$BoxType$ |s_$9_$1|) |n_$5_$1|) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$9_$1| |n_$5_$1|)) (Seq@Length$BoxType$ |s_$9_$1|))) (=> (<= |n_$5_$1| (Seq@Length$BoxType$ |s_$9_$1|)) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$9_$1| |n_$5_$1|)) |n_$5_$1|))))  :pattern ( (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$9_$1| |n_$5_$1|))))) :named ax_183))
   (assert (! (forall( (|s0_$0_$0| Seq$ref$) (|s1_$0_$0| Seq$ref$) (|n_$9| Int))(!(and (=> (<= (Seq@Length$ref$ |s0_$0_$0|) |n_$9|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|) (Seq@Index$ref$ |s1_$0_$0| (- |n_$9| (Seq@Length$ref$ |s0_$0_$0|))))) (=> (< |n_$9| (Seq@Length$ref$ |s0_$0_$0|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|) (Seq@Index$ref$ |s0_$0_$0| |n_$9|))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|)))) :named ax_184))
   (assert (! (forall( (|s0_$0_$1| Seq$BoxType$) (|s1_$0_$1| Seq$BoxType$) (|n_$10| Int))(!(and (=> (<= (Seq@Length$BoxType$ |s0_$0_$1|) |n_$10|) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|) (Seq@Index$BoxType$ |s1_$0_$1| (- |n_$10| (Seq@Length$BoxType$ |s0_$0_$1|))))) (=> (< |n_$10| (Seq@Length$BoxType$ |s0_$0_$1|)) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|) (Seq@Index$BoxType$ |s0_$0_$1| |n_$10|))))  :pattern ( (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|)))) :named ax_185))
   (assert (! (forall( (|s0_$1_$0| Seq$ref$) (|s1_$1_$0| Seq$ref$) (|x_$4_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$0| |s1_$1_$0|) |x_$4_$0|) (or (Seq@Contains$ref$ |s1_$1_$0| |x_$4_$0|) (Seq@Contains$ref$ |s0_$1_$0| |x_$4_$0|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$0| |s1_$1_$0|) |x_$4_$0|)))) :named ax_186))
   (assert (! (forall( (|s0_$1_$1| Seq$BoxType$) (|s1_$1_$1| Seq$BoxType$) (|x_$4_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$1| |s1_$1_$1|) |x_$4_$1|) (or (Seq@Contains$BoxType$ |s1_$1_$1| |x_$4_$1|) (Seq@Contains$BoxType$ |s0_$1_$1| |x_$4_$1|)))  :pattern ( (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$1| |s1_$1_$1|) |x_$4_$1|)))) :named ax_187))
   (assert (! (forall( (|s0_$2_$0| Seq$ref$) (|s1_$2_$0| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$ref$ |s1_$2_$0|) (Seq@Length$ref$ |s0_$2_$0|)) (forall( (|j_$0_$1| Int))(!(=> (and (< |j_$0_$1| (Seq@Length$ref$ |s0_$2_$0|)) (<= 0 |j_$0_$1|)) (= (Seq@Index$ref$ |s1_$2_$0| |j_$0_$1|) (Seq@Index$ref$ |s0_$2_$0| |j_$0_$1|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$0| |j_$0_$1|)) :pattern ( (Seq@Index$ref$ |s1_$2_$0| |j_$0_$1|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$0| |s1_$2_$0|)))) :named ax_188))
   (assert (! (forall( (|s0_$2_$1| Seq$BoxType$) (|s1_$2_$1| Seq$BoxType$))(!(= (Seq@Equal$BoxType$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$BoxType$ |s1_$2_$1|) (Seq@Length$BoxType$ |s0_$2_$1|)) (forall( (|j_$0_$3| Int))(!(=> (and (< |j_$0_$3| (Seq@Length$BoxType$ |s0_$2_$1|)) (<= 0 |j_$0_$3|)) (= (Seq@Index$BoxType$ |s1_$2_$1| |j_$0_$3|) (Seq@Index$BoxType$ |s0_$2_$1| |j_$0_$3|)))  :pattern ( (Seq@Index$BoxType$ |s0_$2_$1| |j_$0_$3|)) :pattern ( (Seq@Index$BoxType$ |s1_$2_$1| |j_$0_$3|))))))  :pattern ( (Seq@Equal$BoxType$ |s0_$2_$1| |s1_$2_$1|)))) :named ax_189))
   (assert (! (forall( (|s0_$4| Seq$ref$) (|s1_$4| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$4| |s1_$4|)) (+ (Seq@Length$ref$ |s0_$4|) (Seq@Length$ref$ |s1_$4|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$4| |s1_$4|))))) :named ax_190))
   (assert (! (forall( (|s0_$5| Seq$BoxType$) (|s1_$5| Seq$BoxType$))(!(= (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$5| |s1_$5|)) (+ (Seq@Length$BoxType$ |s0_$5|) (Seq@Length$BoxType$ |s1_$5|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$5| |s1_$5|))))) :named ax_191))
   (assert (! (forall( (|t_$0_$0| ref))(!(= |t_$0_$0| (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$0|) 0))  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$0|) 0)))) :named ax_192))
   (assert (! (forall( (|t_$0_$1| BoxType))(!(= |t_$0_$1| (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$1|) 0))  :pattern ( (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$1|) 0)))) :named ax_193))
   (assert (! (forall( (|t_$3| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|))))) :named ax_194))
   (assert (! (forall( (|t_$4| BoxType))(!(= (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|)) 1)  :pattern ( (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|))))) :named ax_195))
   (assert (! (forall( (|v_$5| Bool) (|f_$0_$0| Field$Bool$) (|r_$0_$0| ref) (|H_$0_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$5|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$5|))) :named ax_196))
   (assert (! (forall( (|v_$6| ref) (|f_$0_$1| Field$ref$) (|r_$0_$1| ref) (|H_$0_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$6|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$6|))) :named ax_197))
   (assert (! (forall( (|v_$7| BoxType) (|f_$0_$2| Field$BoxType$) (|r_$0_$2| ref) (|H_$0_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$2| |r_$0_$2| |f_$0_$2| |v_$7|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$2| |r_$0_$2| |f_$0_$2| |v_$7|))) :named ax_198))
   (assert (! (forall( (|v_$8| $@Map@@BoxType@To@Bool@@) (|f_$0_$3| Field$$@Map@@BoxType@To@Bool@@$) (|r_$0_$3| ref) (|H_$0_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$0_$3| |r_$0_$3| |f_$0_$3| |v_$8|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$0_$3| |r_$0_$3| |f_$0_$3| |v_$8|))) :named ax_199))
   (assert (! (forall( (|v_$9| Seq$BoxType$) (|f_$0_$4| Field$Seq$BoxType$$) (|r_$0_$4| ref) (|H_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |H_$0_$4| |r_$0_$4| |f_$0_$4| |v_$9|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |H_$0_$4| |r_$0_$4| |f_$0_$4| |v_$9|))) :named ax_200))
   (assert (! (forall( (|x_$11| Int) (|y_$3| Int))(!(= (mod |x_$11| |y_$3|) (- |x_$11| (* (div |x_$11| |y_$3|) |y_$3|)))  :pattern ( (mod |x_$11| |y_$3|)) :pattern ( (div |x_$11| |y_$3|)))) :named ax_201))
   (assert (! (forall( (|x_$12| Int) (|y_$4| Int))(!(=> (< 0 |y_$4|) (and (<= 0 (mod |x_$12| |y_$4|)) (< (mod |x_$12| |y_$4|) |y_$4|)))  :pattern ( (mod |x_$12| |y_$4|)))) :named ax_202))
   (assert (! (forall( (|x_$13| Int) (|y_$5| Int))(!(=> (< |y_$5| 0) (and (< |y_$5| (mod |x_$13| |y_$5|)) (<= (mod |x_$13| |y_$5|) 0)))  :pattern ( (mod |x_$13| |y_$5|)))) :named ax_203))
   (assert (! (forall( (|x_$3| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$3|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$3|)))) :named ax_204))
   (assert (! (forall( (|x_$8_$0| Bool))(!(= |x_$8_$0| ($Unbox$Bool$ ($Box$Bool$ |x_$8_$0|)))  :pattern ( ($Box$Bool$ |x_$8_$0|)))) :named ax_205))
   (assert (! (forall( (|x_$8_$1| TickType))(!(= |x_$8_$1| ($Unbox$TickType$ ($Box$TickType$ |x_$8_$1|)))  :pattern ( ($Box$TickType$ |x_$8_$1|)))) :named ax_206))
   (assert (! (forall( (|x_$8_$10| Field$BoxType$))(!(= |x_$8_$10| ($Unbox$Field$BoxType$$ ($Box$Field$BoxType$$ |x_$8_$10|)))  :pattern ( ($Box$Field$BoxType$$ |x_$8_$10|)))) :named ax_207))
   (assert (! (forall( (|x_$8_$11| Field$Bool$))(!(= |x_$8_$11| ($Unbox$Field$Bool$$ ($Box$Field$Bool$$ |x_$8_$11|)))  :pattern ( ($Box$Field$Bool$$ |x_$8_$11|)))) :named ax_208))
   (assert (! (forall( (|x_$8_$12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= |x_$8_$12| ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$8_$12|)))  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$8_$12|)))) :named ax_209))
   (assert (! (forall( (|x_$8_$13| Field$Seq$BoxType$$))(!(= |x_$8_$13| ($Unbox$Field$Seq$BoxType$$$ ($Box$Field$Seq$BoxType$$$ |x_$8_$13|)))  :pattern ( ($Box$Field$Seq$BoxType$$$ |x_$8_$13|)))) :named ax_210))
   (assert (! (forall( (|x_$8_$14| Field$$@Map@@BoxType@To@Bool@@$))(!(= |x_$8_$14| ($Unbox$Field$$@Map@@BoxType@To@Bool@@$$ ($Box$Field$$@Map@@BoxType@To@Bool@@$$ |x_$8_$14|)))  :pattern ( ($Box$Field$$@Map@@BoxType@To@Bool@@$$ |x_$8_$14|)))) :named ax_211))
   (assert (! (forall( (|x_$8_$15| Field$ref$))(!(= |x_$8_$15| ($Unbox$Field$ref$$ ($Box$Field$ref$$ |x_$8_$15|)))  :pattern ( ($Box$Field$ref$$ |x_$8_$15|)))) :named ax_212))
   (assert (! (forall( (|x_$8_$16| $@Map@@$T0@@ref@Field$$T0$@To@Bool@@))(!(= |x_$8_$16| ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$8_$16|)))  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$8_$16|)))) :named ax_213))
   (assert (! (forall( (|x_$8_$2| Int))(!(= |x_$8_$2| ($Unbox$Int$ ($Box$Int$ |x_$8_$2|)))  :pattern ( ($Box$Int$ |x_$8_$2|)))) :named ax_214))
   (assert (! (forall( (|x_$8_$3| Seq$ref$))(!(= |x_$8_$3| ($Unbox$Seq$ref$$ ($Box$Seq$ref$$ |x_$8_$3|)))  :pattern ( ($Box$Seq$ref$$ |x_$8_$3|)))) :named ax_215))
   (assert (! (forall( (|x_$8_$4| ref))(!(= |x_$8_$4| ($Unbox$ref$ ($Box$ref$ |x_$8_$4|)))  :pattern ( ($Box$ref$ |x_$8_$4|)))) :named ax_216))
   (assert (! (forall( (|x_$8_$5| BoxType))(!(= |x_$8_$5| ($Unbox$BoxType$ ($Box$BoxType$ |x_$8_$5|)))  :pattern ( ($Box$BoxType$ |x_$8_$5|)))) :named ax_217))
   (assert (! (forall( (|x_$8_$6| $@Map@@BoxType@To@Bool@@))(!(= |x_$8_$6| ($Unbox$$@Map@@BoxType@To@Bool@@$ ($Box$$@Map@@BoxType@To@Bool@@$ |x_$8_$6|)))  :pattern ( ($Box$$@Map@@BoxType@To@Bool@@$ |x_$8_$6|)))) :named ax_218))
   (assert (! (forall( (|x_$8_$7| Seq$BoxType$))(!(= |x_$8_$7| ($Unbox$Seq$BoxType$$ ($Box$Seq$BoxType$$ |x_$8_$7|)))  :pattern ( ($Box$Seq$BoxType$$ |x_$8_$7|)))) :named ax_219))
   (assert (! (forall( (|x_$8_$8| DatatypeType))(!(= |x_$8_$8| ($Unbox$DatatypeType$ ($Box$DatatypeType$ |x_$8_$8|)))  :pattern ( ($Box$DatatypeType$ |x_$8_$8|)))) :named ax_220))
   (assert (! (forall( (|x_$8_$9| ClassName))(!(= |x_$8_$9| ($Unbox$ClassName$ ($Box$ClassName$ |x_$8_$9|)))  :pattern ( ($Box$ClassName$ |x_$8_$9|)))) :named ax_221))
   (assert (! (forall( (|x_$9| Int) (|h_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$6|) (GenericAlloc ($Box$Int$ |x_$9|) |h_$6|))) :named ax_222))
   (assert (! (GenericAlloc key@16 $Heap) :named ax_223))
   (assert (! (Map.Valid $Heap this) :named ax_224))
   (assert (! (Map.Valid@canCall $Heap this) :named ax_225))
   (assert (! (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap this alloc) :named ax_226))
   (assert (! (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ this)) :named ax_227))
   (assert (! (not ($Unbox$Bool$ ($Box$Bool$ false))) :named ax_228))
   (assert (! (not (= class.Map class.Node)) :named ax_229))
   (assert (! (not (= class.Node class.Map)) :named ax_230))
   (assert (! (not (= Map.Keys Map.nodes)) :named ax_231))
   (assert (! (not (= Map.Keys Map.Values)) :named ax_232))
   (assert (! (not (= Map.nodes Map.Keys)) :named ax_233))
   (assert (! (not (= Map.nodes Map.Values)) :named ax_234))
   (assert (! (not (= Map.Values Map.Keys)) :named ax_235))
   (assert (! (not (= Map.Values Map.nodes)) :named ax_236))
   (assert (! (not (= Node.next Map.head)) :named ax_237))
   (assert (! (not (= Node.val Node.key)) :named ax_238))
   (assert (! (not (= this null)) :named ax_239))
   (assert (! (or (= call4formal@p@24@0 null) (and (= (dtype call4formal@p@24@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call4formal@p@24@0 alloc))) :named ax_240))
   (assert (! (or (= call4formal@p@24@0 null) (and (= (dtype call4formal@p@24@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 call4formal@p@24@0 alloc))) :named ax_241))
   (assert (! (or (= call6formal@prev@26@0 null) (and (= (dtype call6formal@prev@26@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call6formal@prev@26@0 alloc))) :named ax_242))
   (assert (! (or (= call6formal@prev@26@0 null) (and (= (dtype call6formal@prev@26@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 call6formal@prev@26@0 alloc))) :named ax_243))
   (assert (! (or (= p@20 null) (and (= (dtype p@20) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap p@20 alloc))) :named ax_244))
   (assert (! (or (= prev@22 null) (and (= (dtype prev@22) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap prev@22 alloc))) :named ax_245))
   (assert (! (or (and (= (dtype $rhs@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@0 alloc)) (= $rhs@0 null)) :named ax_246))
   (assert (! (or (and (= (dtype $rhs@2) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@2 alloc)) (= $rhs@2 null)) :named ax_247))
   (assert (! true :named ax_248))

;Program
(assert (not
(let ((GeneratedUnifiedExit@4_assertion (and
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (forall( (|i#0_$5| Int))(=> true (=> (and (<= 0 |i#0_$5|) (< |i#0_$5| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)))) (and (and (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 this Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |i#0_$5|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) (+ |i#0_$5| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.key)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.val) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values) |i#0_$5|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.next) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) (+ |i#0_$5| 1))))))))))
)))
(let ((anon5_Then@11_assertion (and
    (Seq@Equal$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Values) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values) (+ call5formal@n@25@0 1)))
)))
(let ((anon5_Then@8_assertion (and
    (Seq@Equal$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Keys) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) (+ call5formal@n@25@0 1)))
)))
(let ((GeneratedUnifiedExit@1_assertion (and
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values)))))
)))
(let ((GeneratedUnifiedExit@10_assertion (and
    (=> (not (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) key@16)) (Seq@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values)))
)))
(let ((GeneratedUnifiedExit@11_assertion (and
    (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) key@16) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)) (- (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) 1)))
)))
(let ((GeneratedUnifiedExit@2_assertion (and
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)) 1))))
)))
(let ((GeneratedUnifiedExit@3_assertion (and
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@6 this Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) 0)))))
)))
(let ((GeneratedUnifiedExit@5_assertion (and
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) (- (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes)) 1))) null)))
)))
(let ((GeneratedUnifiedExit@6_assertion (and
    (forall( (|$o_$21| ref))(=> (and (and (not (= |$o_$21| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 this Map.Repr) ($Box$ref$ |$o_$21|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ |$o_$21|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$21| alloc))))
)))
(let ((GeneratedUnifiedExit@7_assertion (and
    (forall( (|k#17| BoxType))(=> (GenericAlloc |k#17| $Heap@6) (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |k#17|) (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |k#17|))))
)))
(let ((GeneratedUnifiedExit@8_assertion (and
    (forall( (|k#18| BoxType))(=> (GenericAlloc |k#18| $Heap@6) (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |k#18|) (or (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |k#18|) (= |k#18| key@16)))))
)))
(let ((GeneratedUnifiedExit@9_assertion (and
    (=> (not (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) key@16)) (Seq@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)))
)))
(let ((GeneratedUnifiedExit_assertion (and
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 this Map.Repr) ($Box$ref$ this))))
)))
(let ((anon6_Else@1_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 call6formal@prev@26@0 Node.next)
)))
(let ((anon5_Then@7_assertion (and
    (<= (+ call5formal@n@25@0 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)))
    (<= 0 (+ call5formal@n@25@0 1))
)))
(let ((anon5_Then@10_assertion (and
    (<= (+ call5formal@n@25@0 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values)))
    (<= 0 (+ call5formal@n@25@0 1))
)))
(let ((anon5_Then@2_assertion (and
    (<= (+ call5formal@n@25@0 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys)))
    (<= 0 (+ call5formal@n@25@0 1))
)))
(let ((anon5_Then@5_assertion (and
    (<= (+ call5formal@n@25@0 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values)))
    (<= 0 (+ call5formal@n@25@0 1))
)))
(let ((anon5_Then@14_assertion (and
    (<= (+ call5formal@n@25@0 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes)))
    (<= 0 (+ call5formal@n@25@0 1))
)))
(let ((anon5_Then@1_assertion (and
    (<= 0 call5formal@n@25@0)
    (<= call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys)))
)))
(let ((anon5_Then@4_assertion (and
    (<= 0 call5formal@n@25@0)
    (<= call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values)))
)))
(let ((anon5_Then@6_assertion (and
    (<= 0 call5formal@n@25@0)
    (<= call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Keys)))
)))
(let ((anon5_Then@13_assertion (and
    (<= 0 call5formal@n@25@0)
    (<= call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes)))
)))
(let ((anon5_Then@9_assertion (and
    (<= 0 call5formal@n@25@0)
    (<= call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Values)))
)))
(let ((GeneratedUnifiedExit@13_assertion (and
    (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) key@16) (exists( (|h#19| Int))(and (and (and (and (and (<= 0 |h#19|) (< |h#19| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)))) (Seq@Equal$BoxType$ (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |h#19|) (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |h#19|))) (Seq@Equal$BoxType$ (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values) |h#19|) (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values) |h#19|))) (Seq@Equal$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |h#19|) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) (+ |h#19| 1)))) (Seq@Equal$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values) |h#19|) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values) (+ |h#19| 1))))))
)))
(let ((anon6_Then@1_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 this Map.head) null))
)))
(let ((GeneratedUnifiedExit@12_assertion (and
    (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) key@16) (not (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) key@16)))
)))
(let ((GeneratedUnifiedExit@13 (=> (and true
    (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) key@16) (not (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) key@16)))
  )
    GeneratedUnifiedExit@13_assertion
)))
(let ((GeneratedUnifiedExit@12 (=> (and true
    (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) key@16) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)) (+ (- 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)))))
  )(and 
    GeneratedUnifiedExit@12_assertion
    GeneratedUnifiedExit@13
))))
(let ((GeneratedUnifiedExit@11 (=> (and true
    (=> (not (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) key@16)) (Seq@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values)))
  )(and 
    GeneratedUnifiedExit@11_assertion
    GeneratedUnifiedExit@12
))))
(let ((GeneratedUnifiedExit@10 (=> (and true
    (=> (not (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) key@16)) (Seq@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)))
  )(and 
    GeneratedUnifiedExit@10_assertion
    GeneratedUnifiedExit@11
))))
(let ((GeneratedUnifiedExit@9 (=> (and true
    (forall( (|k#18| BoxType))(=> (GenericAlloc |k#18| $Heap@6) (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |k#18|) (or (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |k#18|) (= key@16 |k#18|)))))
  )(and 
    GeneratedUnifiedExit@9_assertion
    GeneratedUnifiedExit@10
))))
(let ((GeneratedUnifiedExit@8 (=> (and true
    (forall( (|k#17| BoxType))(=> (GenericAlloc |k#17| $Heap@6) (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |k#17|) (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |k#17|))))
  )(and 
    GeneratedUnifiedExit@8_assertion
    GeneratedUnifiedExit@9
))))
(let ((GeneratedUnifiedExit@7 (=> (and true
    (forall( (|$o_$21| ref))(=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 this Map.Repr) ($Box$ref$ |$o_$21|)) (not (= null |$o_$21|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ |$o_$21|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$21| alloc))))
  )(and 
    GeneratedUnifiedExit@7_assertion
    GeneratedUnifiedExit@8
))))
(let ((GeneratedUnifiedExit@6 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) (+ (- 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes))))) null)))
  )(and 
    GeneratedUnifiedExit@6_assertion
    GeneratedUnifiedExit@7
))))
(let ((GeneratedUnifiedExit@5 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (forall( (|i#0_$5| Int))(=> (and (< |i#0_$5| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys))) (<= 0 |i#0_$5|)) (and (and (= (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values) |i#0_$5|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.val)) (and (and (= (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |i#0_$5|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.key)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 this Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)))) (not (= null ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)))))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) (+ |i#0_$5| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.key))))) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) (+ |i#0_$5| 1))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.next)))))))
    (not (= null this))
  )(and 
    GeneratedUnifiedExit@5_assertion
    GeneratedUnifiedExit@6
))))
(let ((GeneratedUnifiedExit@4 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@6 this Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) 0))) (Map.Valid $Heap@6 this)))
  )(and 
    GeneratedUnifiedExit@4_assertion
    GeneratedUnifiedExit@5
))))
(let ((GeneratedUnifiedExit@3 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes)) (+ 1 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)))) (Map.Valid $Heap@6 this)))
  )(and 
    GeneratedUnifiedExit@3_assertion
    GeneratedUnifiedExit@4
))))
(let ((GeneratedUnifiedExit@2 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values))) (Map.Valid $Heap@6 this)))
  )(and 
    GeneratedUnifiedExit@2_assertion
    GeneratedUnifiedExit@3
))))
(let ((GeneratedUnifiedExit@1 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 this Map.Repr) ($Box$ref$ this)) (Map.Valid $Heap@6 this)))
  )(and 
    GeneratedUnifiedExit@1_assertion
    GeneratedUnifiedExit@2
))))
(let ((GeneratedUnifiedExit (=> (and true
  )(and 
    GeneratedUnifiedExit_assertion
    GeneratedUnifiedExit@1
))))
(let ((anon5_Else (=> (and true
    (= $Heap@0 $Heap@6)
    (= call4formal@p@24@0 null)
    (not $@condition)
  )
    GeneratedUnifiedExit
)))
(let (($join_2 (=> (and true
  )
    GeneratedUnifiedExit
)))
(let ((anon6_Else@2 (=> (and true
    ($IsGoodHeap $Heap@5)
    (= $Heap@5 $Heap@6)
    (= $Heap@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 call6formal@prev@26@0 Node.next $rhs@7@0))
    (= $rhs@7@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 call4formal@p@24@0 Node.next))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 call6formal@prev@26@0 Node.next)
  )
    $join_2
)))
(let ((anon6_Then@2 (=> (and true
    ($IsGoodHeap $Heap@4)
    (= $Heap@4 $Heap@6)
    (= $Heap@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 this Map.head $rhs@6@0))
    (= $rhs@6@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 this Map.head) Node.next))
    (not (= call6formal@prev@26@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 this Map.head)))
  )
    $join_2
)))
(let ((anon6_Else (=> (and true
    (not $@condition_$0)
    (not (= null call6formal@prev@26@0))
  )(and 
    anon6_Else@1_assertion
    anon6_Else@2
))))
(let ((anon6_Then (=> (and true
    $@condition_$0
    (= call6formal@prev@26@0 null)
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 this Map.head)
    (not (= this call6formal@prev@26@0))
  )(and 
    anon6_Then@1_assertion
    anon6_Then@2
))))
(let ((anon5_Then@15 (=> (and true
    ($IsGoodHeap $Heap@3)
    (= $Heap@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes $rhs@5@0))
    (= $rhs@5@0 (Seq@Append$BoxType$ (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes) (+ call5formal@n@25@0 1))))
    (not (< (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes)) (+ call5formal@n@25@0 1)))
  )
    (and anon6_Else anon6_Then)
)))
(let ((anon5_Then@14 (=> (and true
    (not (< (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes)) call5formal@n@25@0))
  )(and 
    anon5_Then@14_assertion
    anon5_Then@15
))))
(let ((anon5_Then@12 (=> (and true
    (= (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Values) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values) (+ call5formal@n@25@0 1)))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ $_Frame@0 this Map.nodes)
    (Seq@Equal$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Values) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Values) call5formal@n@25@0))
  )(and 
    anon5_Then@13_assertion
    anon5_Then@14
))))
(let ((anon5_Then@11 (=> (and true
  )(and 
    anon5_Then@11_assertion
    anon5_Then@12
))))
(let ((anon5_Then@10 (=> (and true
    (not (< (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Values)) call5formal@n@25@0))
  )(and 
    anon5_Then@10_assertion
    anon5_Then@11
))))
(let ((anon5_Then@9 (=> (and true
    (= (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Keys) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) (+ call5formal@n@25@0 1)))
    (Seq@Equal$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Keys) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Keys) call5formal@n@25@0))
  )(and 
    anon5_Then@9_assertion
    anon5_Then@10
))))
(let ((anon5_Then@8 (=> (and true
    (not (< (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) (+ call5formal@n@25@0 1)))
  )(and 
    anon5_Then@8_assertion
    anon5_Then@9
))))
(let ((anon5_Then@7 (=> (and true
    (not (< (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Keys)) call5formal@n@25@0))
  )(and 
    anon5_Then@7_assertion
    anon5_Then@8
))))
(let ((anon5_Then@6 (=> (and true
    ($IsGoodHeap $Heap@2)
    (= $Heap@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values $rhs@4@0))
    (= $rhs@4@0 (Seq@Append$BoxType$ (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values) (+ call5formal@n@25@0 1))))
    (not (< (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values)) (+ call5formal@n@25@0 1)))
  )(and 
    anon5_Then@6_assertion
    anon5_Then@7
))))
(let ((anon5_Then@5 (=> (and true
    (not (< (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values)) call5formal@n@25@0))
  )(and 
    anon5_Then@5_assertion
    anon5_Then@6
))))
(let ((anon5_Then@3 (=> (and true
    ($IsGoodHeap $Heap@1)
    (= $Heap@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys $rhs@3@0))
    (= $rhs@3@0 (Seq@Append$BoxType$ (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) (+ call5formal@n@25@0 1))))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ $_Frame@0 this Map.Values)
    (not (< (+ call5formal@n@25@0 1) 0))
    (not (< (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys)) (+ call5formal@n@25@0 1)))
  )(and 
    anon5_Then@4_assertion
    anon5_Then@5
))))
(let ((anon5_Then@2 (=> (and true
    (not (< (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys)) call5formal@n@25@0))
    (not (< call5formal@n@25@0 0))
  )(and 
    anon5_Then@2_assertion
    anon5_Then@3
))))
(let ((anon5_Then (=> (and true
    $@condition
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ $_Frame@0 this Map.Keys)
    (not (= null call4formal@p@24@0))
    (not (= null this))
  )(and 
    anon5_Then@1_assertion
    anon5_Then@2
))))
(let (($root (=> (and true
  )
    (and anon5_Else anon5_Then)
)))
   $root
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
