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
(declare-fun call4formal@p@24 ( ) ref)
(declare-fun call4formal@p@24@0 ( ) ref)
(declare-fun call5formal@n@25@0 ( ) Int)
(declare-fun call6formal@prev@26 ( ) ref)
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
   (assert (! (forall ((|i_1| Field$Bool$)(|i| ref)(|m| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v| Bool))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_0))
   (assert (! (forall ((|i_13| Field$ref$)(|i_12| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_6| ref))(!(= v_6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_6 i_12 i_13 v_6) i_12 i_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_6 i_12 i_13 v_6) i_12 i_13)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_1))
   (assert (! (forall ((|i_25| Field$BoxType$)(|i_24| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_12| BoxType))(!(= v_12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_12 i_24 i_25 v_12) i_24 i_25)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_12 i_24 i_25 v_12) i_24 i_25)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_2))
   (assert (! (forall ((|i_37| Field$$@Map@@BoxType@To@Bool@@$)(|i_36| ref)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_18| $@Map@@BoxType@To@Bool@@))(!(= v_18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_18 i_36 i_37 v_18) i_36 i_37)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_18 i_36 i_37 v_18) i_36 i_37)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_3))
   (assert (! (forall ((|i_49| Field$Seq$BoxType$$)(|i_48| ref)(|m_24| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_24| Seq$BoxType$))(!(= v_24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_24 i_48 i_49 v_24) i_48 i_49)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_24 i_48 i_49 v_24) i_48 i_49)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_4))
   (assert (! (forall ((|v_1| Bool)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_3| Field$Bool$)(|j_1| Field$Bool$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_5))
   (assert (! (forall ((|v_10| ref)(|i_21| Field$ref$)(|i_20| ref)(|j_17| Field$$@Map@@BoxType@To@Bool@@$)(|j_16| ref)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_10 j_16 j_17) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_10 i_20 i_21 v_10) j_16 j_17)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_10 i_20 i_21 v_10) j_16 j_17)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__ref :weight 0 )) :named ax_6))
   (assert (! (forall ((|v_11| ref)(|i_23| Field$ref$)(|i_22| ref)(|j_19| Field$Seq$BoxType$$)(|j_18| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_11 j_18 j_19) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_11 i_22 i_23 v_11) j_18 j_19)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_11 i_22 i_23 v_11) j_18 j_19)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$BoxType$__ref :weight 0 )) :named ax_7))
   (assert (! (forall ((|v_13| BoxType)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_27| Field$BoxType$)(|j_21| Field$BoxType$)(|i_26| ref)(|j_20| ref))(!(=> (or (not (= j_21 i_27)) (not (= j_20 i_26))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_13 j_20 j_21) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_13 i_26 i_27 v_13) j_20 j_21))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_13 i_26 i_27 v_13) j_20 j_21)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_8))
   (assert (! (forall ((|v_14| BoxType)(|i_29| Field$BoxType$)(|i_28| ref)(|j_23| Field$Bool$)(|j_22| ref)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_14 j_22 j_23) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_14 i_28 i_29 v_14) j_22 j_23)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_14 i_28 i_29 v_14) j_22 j_23)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__BoxType :weight 0 )) :named ax_9))
   (assert (! (forall ((|v_15| BoxType)(|i_31| Field$BoxType$)(|i_30| ref)(|j_25| Field$ref$)(|j_24| ref)(|m_15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_15 j_24 j_25) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_15 i_30 i_31 v_15) j_24 j_25)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_15 i_30 i_31 v_15) j_24 j_25)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__BoxType :weight 0 )) :named ax_10))
   (assert (! (forall ((|v_16| BoxType)(|i_33| Field$BoxType$)(|i_32| ref)(|j_27| Field$$@Map@@BoxType@To@Bool@@$)(|j_26| ref)(|m_16| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_16 j_26 j_27) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_16 i_32 i_33 v_16) j_26 j_27)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_16 i_32 i_33 v_16) j_26 j_27)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__BoxType :weight 0 )) :named ax_11))
   (assert (! (forall ((|v_17| BoxType)(|i_35| Field$BoxType$)(|i_34| ref)(|j_29| Field$Seq$BoxType$$)(|j_28| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_17 j_28 j_29) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_17 i_34 i_35 v_17) j_28 j_29)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_17 i_34 i_35 v_17) j_28 j_29)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$BoxType$__BoxType :weight 0 )) :named ax_12))
   (assert (! (forall ((|v_19| $@Map@@BoxType@To@Bool@@)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_39| Field$$@Map@@BoxType@To@Bool@@$)(|j_31| Field$$@Map@@BoxType@To@Bool@@$)(|i_38| ref)(|j_30| ref))(!(=> (or (not (= j_31 i_39)) (not (= j_30 i_38))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_19 j_30 j_31) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_19 i_38 i_39 v_19) j_30 j_31))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_19 i_38 i_39 v_19) j_30 j_31)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_13))
   (assert (! (forall ((|v_2| Bool)(|i_5| Field$Bool$)(|i_4| ref)(|j_3| Field$ref$)(|j_2| ref)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_2 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Bool :weight 0 )) :named ax_14))
   (assert (! (forall ((|v_20| $@Map@@BoxType@To@Bool@@)(|i_41| Field$$@Map@@BoxType@To@Bool@@$)(|i_40| ref)(|j_33| Field$Bool$)(|j_32| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_20 j_32 j_33) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_20 i_40 i_41 v_20) j_32 j_33)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_20 i_40 i_41 v_20) j_32 j_33)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_15))
   (assert (! (forall ((|v_21| $@Map@@BoxType@To@Bool@@)(|i_43| Field$$@Map@@BoxType@To@Bool@@$)(|i_42| ref)(|j_35| Field$ref$)(|j_34| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_21 j_34 j_35) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_21 i_42 i_43 v_21) j_34 j_35)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_21 i_42 i_43 v_21) j_34 j_35)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_16))
   (assert (! (forall ((|v_22| $@Map@@BoxType@To@Bool@@)(|i_45| Field$$@Map@@BoxType@To@Bool@@$)(|i_44| ref)(|j_37| Field$BoxType$)(|j_36| ref)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_22 j_36 j_37) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_22 i_44 i_45 v_22) j_36 j_37)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_22 i_44 i_45 v_22) j_36 j_37)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_17))
   (assert (! (forall ((|v_23| $@Map@@BoxType@To@Bool@@)(|i_47| Field$$@Map@@BoxType@To@Bool@@$)(|i_46| ref)(|j_39| Field$Seq$BoxType$$)(|j_38| ref)(|m_23| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_23 j_38 j_39) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_23 i_46 i_47 v_23) j_38 j_39)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_23 i_46 i_47 v_23) j_38 j_39)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$BoxType$__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_18))
   (assert (! (forall ((|v_25| Seq$BoxType$)(|m_25| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_51| Field$Seq$BoxType$$)(|j_41| Field$Seq$BoxType$$)(|i_50| ref)(|j_40| ref))(!(=> (or (not (= j_41 i_51)) (not (= j_40 i_50))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_25 j_40 j_41) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_25 i_50 i_51 v_25) j_40 j_41))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_25 i_50 i_51 v_25) j_40 j_41)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_19))
   (assert (! (forall ((|v_26| Seq$BoxType$)(|i_53| Field$Seq$BoxType$$)(|i_52| ref)(|j_43| Field$Bool$)(|j_42| ref)(|m_26| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_26 j_42 j_43) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_26 i_52 i_53 v_26) j_42 j_43)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_26 i_52 i_53 v_26) j_42 j_43)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Seq$BoxType$ :weight 0 )) :named ax_20))
   (assert (! (forall ((|v_27| Seq$BoxType$)(|i_55| Field$Seq$BoxType$$)(|i_54| ref)(|j_45| Field$ref$)(|j_44| ref)(|m_27| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_27 j_44 j_45) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_27 i_54 i_55 v_27) j_44 j_45)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_27 i_54 i_55 v_27) j_44 j_45)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Seq$BoxType$ :weight 0 )) :named ax_21))
   (assert (! (forall ((|v_28| Seq$BoxType$)(|i_57| Field$Seq$BoxType$$)(|i_56| ref)(|j_47| Field$BoxType$)(|j_46| ref)(|m_28| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_28 j_46 j_47) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_28 i_56 i_57 v_28) j_46 j_47)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_28 i_56 i_57 v_28) j_46 j_47)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__Seq$BoxType$ :weight 0 )) :named ax_22))
   (assert (! (forall ((|v_29| Seq$BoxType$)(|i_59| Field$Seq$BoxType$$)(|i_58| ref)(|j_49| Field$$@Map@@BoxType@To@Bool@@$)(|j_48| ref)(|m_29| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_29 j_48 j_49) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_29 i_58 i_59 v_29) j_48 j_49)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_29 i_58 i_59 v_29) j_48 j_49)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__Seq$BoxType$ :weight 0 )) :named ax_23))
   (assert (! (forall ((|v_3| Bool)(|i_7| Field$Bool$)(|i_6| ref)(|j_5| Field$BoxType$)(|j_4| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_3 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__Bool :weight 0 )) :named ax_24))
   (assert (! (forall ((|v_4| Bool)(|i_9| Field$Bool$)(|i_8| ref)(|j_7| Field$$@Map@@BoxType@To@Bool@@$)(|j_6| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_4 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_4 i_8 i_9 v_4) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_4 i_8 i_9 v_4) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__Bool :weight 0 )) :named ax_25))
   (assert (! (forall ((|v_5| Bool)(|i_11| Field$Bool$)(|i_10| ref)(|j_9| Field$Seq$BoxType$$)(|j_8| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ m_5 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_5 i_10 i_11 v_5) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_5 i_10 i_11 v_5) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$BoxType$__Bool :weight 0 )) :named ax_26))
   (assert (! (forall ((|v_7| ref)(|m_7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_15| Field$ref$)(|j_11| Field$ref$)(|i_14| ref)(|j_10| ref))(!(=> (or (not (= j_11 i_15)) (not (= j_10 i_14))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_7 j_10 j_11) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_7 i_14 i_15 v_7) j_10 j_11))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_7 i_14 i_15 v_7) j_10 j_11)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_27))
   (assert (! (forall ((|v_8| ref)(|i_17| Field$ref$)(|i_16| ref)(|j_13| Field$Bool$)(|j_12| ref)(|m_8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_8 j_12 j_13) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_8 i_16 i_17 v_8) j_12 j_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_8 i_16 i_17 v_8) j_12 j_13)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_28))
   (assert (! (forall ((|v_9| ref)(|i_19| Field$ref$)(|i_18| ref)(|j_15| Field$BoxType$)(|j_14| ref)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_9 j_14 j_15) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_9 i_18 i_19 v_9) j_14 j_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_9 i_18 i_19 v_9) j_14 j_15)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__ref :weight 0 )) :named ax_29))
   (assert (! (not (= class.Map class.Node)) :named ax_30))
   (assert (! (not (= class.Node class.Map)) :named ax_31))
   (assert (! (not (= Map.head Node.next)) :named ax_32))
   (assert (! (not (= Map.Keys Map.nodes)) :named ax_33))
   (assert (! (not (= Map.Keys Map.Values)) :named ax_34))
   (assert (! (not (= Map.nodes Map.Keys)) :named ax_35))
   (assert (! (not (= Map.Values Map.Keys)) :named ax_36))
   (assert (! (not (= Map.Values Map.nodes)) :named ax_37))
   (assert (! (not (= Map.Values Map.nodes)) :named ax_38))
   (assert (! (not (= Node.key Node.val)) :named ax_39))
   (assert (! (not (= Node.next Map.head)) :named ax_40))
   (assert (! (not (= Node.val Node.key)) :named ax_41))

;Program
(assert (not
(let ((anon0@5_assertion (and
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (forall( (|i#0_$4| Int))(=> true (=> (and (<= 0 |i#0_$4|) (< |i#0_$4| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)))) (and (and (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |i#0_$4|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) (+ |i#0_$4| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|)) Node.key)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|)) Node.val) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values) |i#0_$4|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|)) Node.next) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) (+ |i#0_$4| 1))))))))))
)))
(let ((GeneratedUnifiedExit@4_assertion (and
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (forall( (|i#0_$5| Int))(=> true (=> (and (<= 0 |i#0_$5|) (< |i#0_$5| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)))) (and (and (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 this Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |i#0_$5|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) (+ |i#0_$5| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.key)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.val) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values) |i#0_$5|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.next) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) (+ |i#0_$5| 1))))))))))
)))
(let ((anon0@1_assertion (and
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ this))))
)))
(let ((anon0@2_assertion (and
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values)))))
)))
(let ((anon0@3_assertion (and
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) 1))))
)))
(let ((anon0@4_assertion (and
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap this Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) 0)))))
)))
(let ((anon0@6_assertion (and
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) (- (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes)) 1))) null)))
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
(let ((anon6_Then_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 this Map.head)
)))
(let ((anon5_Then_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ $_Frame@0 this Map.Keys)
)))
(let ((anon5_Then@12_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ $_Frame@0 this Map.nodes)
)))
(let ((anon5_Then@3_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ $_Frame@0 this Map.Values)
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
(let ((anon6_Else_assertion (and
    (not (= call6formal@prev@26@0 null))
)))
(let ((anon6_Else@2_assertion (and
    (not (= call4formal@p@24@0 null))
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
    (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) key@16) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)) (- (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) 1)))
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
    (forall( (|k#18| BoxType))(=> (GenericAlloc |k#18| $Heap@6) (=> (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |k#18|) (or (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |k#18|) (= |k#18| key@16)))))
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
    (forall( (|$o_$21| ref))(=> (and (and (not (= |$o_$21| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 this Map.Repr) ($Box$ref$ |$o_$21|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ |$o_$21|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$21| alloc))))
  )(and 
    GeneratedUnifiedExit@7_assertion
    GeneratedUnifiedExit@8
))))
(let ((GeneratedUnifiedExit@6 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) (- (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes)) 1))) null)))
  )(and 
    GeneratedUnifiedExit@6_assertion
    GeneratedUnifiedExit@7
))))
(let ((GeneratedUnifiedExit@5 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (forall( (|i#0_$5| Int))(=> true (=> (and (<= 0 |i#0_$5|) (< |i#0_$5| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)))) (and (and (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 this Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) |i#0_$5|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys) (+ |i#0_$5| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.key)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.val) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values) |i#0_$5|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@6 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) |i#0_$5|)) Node.next) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) (+ |i#0_$5| 1))))))))))
  )(and 
    GeneratedUnifiedExit@5_assertion
    GeneratedUnifiedExit@6
))))
(let ((GeneratedUnifiedExit@4 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@6 this Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes) 0)))))
  )(and 
    GeneratedUnifiedExit@4_assertion
    GeneratedUnifiedExit@5
))))
(let ((GeneratedUnifiedExit@3 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)) 1))))
  )(and 
    GeneratedUnifiedExit@3_assertion
    GeneratedUnifiedExit@4
))))
(let ((GeneratedUnifiedExit@2 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@6 this Map.Values)))))
  )(and 
    GeneratedUnifiedExit@2_assertion
    GeneratedUnifiedExit@3
))))
(let ((GeneratedUnifiedExit@1 (=> (and true
    (=> (Map.Valid@canCall $Heap@6 this) (or (Map.Valid $Heap@6 this) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 this Map.Repr) ($Box$ref$ this))))
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
    (= $Heap@6 $Heap@0)
    (= call4formal@p@24@0 null)
  )
    GeneratedUnifiedExit
)))
(let ((anon6_Else@3 (=> (and true
    ($IsGoodHeap $Heap@5)
    (= $Heap@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 call6formal@prev@26@0 Node.next $rhs@7@0))
    (= $Heap@6 $Heap@5)
    (= $rhs@7@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 call4formal@p@24@0 Node.next))
    (not (= call4formal@p@24@0 null))
  )
    GeneratedUnifiedExit
)))
(let ((anon6_Then@2 (=> (and true
    ($IsGoodHeap $Heap@4)
    (= $Heap@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 this Map.head $rhs@6@0))
    (= $Heap@6 $Heap@4)
    (= $rhs@6@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 this Map.head) Node.next))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 this Map.head) null))
  )
    GeneratedUnifiedExit
)))
(let ((anon6_Else@2 (=> (and true
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 call6formal@prev@26@0 Node.next)
  )(and 
    anon6_Else@2_assertion
    anon6_Else@3
))))
(let ((anon6_Then@1 (=> (and true
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 this Map.head)
  )(and 
    anon6_Then@1_assertion
    anon6_Then@2
))))
(let ((anon6_Else@1 (=> (and true
    (not (= call6formal@prev@26@0 null))
  )(and 
    anon6_Else@1_assertion
    anon6_Else@2
))))
(let ((anon6_Then (=> (and true
    (= call6formal@prev@26@0 null)
  )(and 
    anon6_Then_assertion
    anon6_Then@1
))))
(let ((anon6_Else (=> (and true
    (not (= call6formal@prev@26@0 null))
  )(and 
    anon6_Else_assertion
    anon6_Else@1
))))
(let ((anon5_Then@15 (=> (and true
    ($IsGoodHeap $Heap@3)
    (<= (+ call5formal@n@25@0 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes)))
    (<= 0 (+ call5formal@n@25@0 1))
    (= $Heap@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes $rhs@5@0))
    (= $rhs@5@0 (Seq@Append$BoxType$ (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes) (+ call5formal@n@25@0 1))))
  )
    (and anon6_Else anon6_Then)
)))
(let ((anon5_Then@14 (=> (and true
    (<= 0 call5formal@n@25@0)
    (<= call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.nodes)))
  )(and 
    anon5_Then@14_assertion
    anon5_Then@15
))))
(let ((anon5_Then@13 (=> (and true
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ $_Frame@0 this Map.nodes)
  )(and 
    anon5_Then@13_assertion
    anon5_Then@14
))))
(let ((anon5_Then@12 (=> (and true
    (Seq@Equal$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Values) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values) (+ call5formal@n@25@0 1)))
  )(and 
    anon5_Then@12_assertion
    anon5_Then@13
))))
(let ((anon5_Then@11 (=> (and true
    (<= (+ call5formal@n@25@0 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values)))
    (<= 0 (+ call5formal@n@25@0 1))
  )(and 
    anon5_Then@11_assertion
    anon5_Then@12
))))
(let ((anon5_Then@10 (=> (and true
    (<= 0 call5formal@n@25@0)
    (<= call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Values)))
  )(and 
    anon5_Then@10_assertion
    anon5_Then@11
))))
(let ((anon5_Then@9 (=> (and true
    (Seq@Equal$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Keys) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) (+ call5formal@n@25@0 1)))
  )(and 
    anon5_Then@9_assertion
    anon5_Then@10
))))
(let ((anon5_Then@8 (=> (and true
    (<= (+ call5formal@n@25@0 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)))
    (<= 0 (+ call5formal@n@25@0 1))
  )(and 
    anon5_Then@8_assertion
    anon5_Then@9
))))
(let ((anon5_Then@7 (=> (and true
    (<= 0 call5formal@n@25@0)
    (<= call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@2 this Map.Keys)))
  )(and 
    anon5_Then@7_assertion
    anon5_Then@8
))))
(let ((anon5_Then@6 (=> (and true
    ($IsGoodHeap $Heap@2)
    (<= (+ call5formal@n@25@0 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values)))
    (<= 0 (+ call5formal@n@25@0 1))
    (= $Heap@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values $rhs@4@0))
    (= $rhs@4@0 (Seq@Append$BoxType$ (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values) (+ call5formal@n@25@0 1))))
  )(and 
    anon5_Then@6_assertion
    anon5_Then@7
))))
(let ((anon5_Then@5 (=> (and true
    (<= 0 call5formal@n@25@0)
    (<= call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@1 this Map.Values)))
  )(and 
    anon5_Then@5_assertion
    anon5_Then@6
))))
(let ((anon5_Then@4 (=> (and true
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ $_Frame@0 this Map.Values)
  )(and 
    anon5_Then@4_assertion
    anon5_Then@5
))))
(let ((anon5_Then@3 (=> (and true
    ($IsGoodHeap $Heap@1)
    (<= (+ call5formal@n@25@0 1) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys)))
    (<= 0 (+ call5formal@n@25@0 1))
    (= $Heap@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys $rhs@3@0))
    (= $rhs@3@0 (Seq@Append$BoxType$ (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) call5formal@n@25@0) (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) (+ call5formal@n@25@0 1))))
  )(and 
    anon5_Then@3_assertion
    anon5_Then@4
))))
(let ((anon5_Then@2 (=> (and true
    (<= 0 call5formal@n@25@0)
    (<= call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys)))
  )(and 
    anon5_Then@2_assertion
    anon5_Then@3
))))
(let ((anon5_Then@1 (=> (and true
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ $_Frame@0 this Map.Keys)
  )(and 
    anon5_Then@1_assertion
    anon5_Then@2
))))
(let ((anon5_Then (=> (and true
    (not (= call4formal@p@24@0 null))
  )(and 
    anon5_Then_assertion
    anon5_Then@1
))))
(let ((anon0@7 (=> (and true
    ($HeapSucc $Heap $Heap@0)
    ($IsGoodHeap $Heap@0)
    (=> (= call4formal@p@24@0 null) (not (Seq@Contains$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) key@16)))
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) (- (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes)) 1))) null)))
    (=> (not (= call4formal@p@24@0 null)) (< call5formal@n@25@0 (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys))))
    (=> (not (= call4formal@p@24@0 null)) (<= 0 call5formal@n@25@0))
    (=> (not (= call4formal@p@24@0 null)) (= (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) call5formal@n@25@0) key@16))
    (=> (not (= call4formal@p@24@0 null)) (= call4formal@p@24@0 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.nodes) call5formal@n@25@0))))
    (=> (not (= call4formal@p@24@0 null)) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) (+ call5formal@n@25@0 1)) key@16)))
    (=> (not (= call4formal@p@24@0 null)) (not (Seq@Contains$BoxType$ (Seq@Take$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.Keys) call5formal@n@25@0) key@16)))
    (=> (not (= call4formal@p@24@0 null)) (or (and (= call5formal@n@25@0 0) (= call6formal@prev@26@0 null)) (and (< 0 call5formal@n@25@0) (= call6formal@prev@26@0 ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 this Map.nodes) (- call5formal@n@25@0 1)))))))
    (forall( (|$o_$20_$0| ref) (|$f_$12_$0| Field$Bool$))(!(=> (and (not (= |$o_$20_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$0| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$20_$0| |$f_$12_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$0| |$f_$12_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$20_$0| |$f_$12_$0|))))
    (forall( (|$o_$20_$1| ref) (|$f_$12_$1| Field$ref$))(!(=> (and (not (= |$o_$20_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$1| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@0 |$o_$20_$1| |$f_$12_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$20_$1| |$f_$12_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@0 |$o_$20_$1| |$f_$12_$1|))))
    (forall( (|$o_$20_$2| ref) (|$f_$12_$2| Field$BoxType$))(!(=> (and (not (= |$o_$20_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$2| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$20_$2| |$f_$12_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$20_$2| |$f_$12_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$20_$2| |$f_$12_$2|))))
    (forall( (|$o_$20_$3| ref) (|$f_$12_$3| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (not (= |$o_$20_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$3| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@0 |$o_$20_$3| |$f_$12_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap |$o_$20_$3| |$f_$12_$3|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@0 |$o_$20_$3| |$f_$12_$3|))))
    (forall( (|$o_$20_$4| ref) (|$f_$12_$4| Field$Seq$BoxType$$))(!(=> (and (not (= |$o_$20_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$20_$4| alloc)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 |$o_$20_$4| |$f_$12_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap |$o_$20_$4| |$f_$12_$4|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap@0 |$o_$20_$4| |$f_$12_$4|))))
    (or (= call4formal@p@24@0 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 call4formal@p@24@0 alloc) (= (dtype call4formal@p@24@0) class.Node)))
    (or (= call6formal@prev@26@0 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 call6formal@prev@26@0 alloc) (= (dtype call6formal@prev@26@0) class.Node)))
  )
    (and anon5_Else anon5_Then)
)))
(let ((anon0@6 (=> (and true
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (forall( (|i#0_$4| Int))(=> true (=> (and (<= 0 |i#0_$4|) (< |i#0_$4| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)))) (and (and (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |i#0_$4|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) (+ |i#0_$4| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|)) Node.key)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|)) Node.val) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values) |i#0_$4|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$4|)) Node.next) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) (+ |i#0_$4| 1))))))))))
  )(and 
    anon0@6_assertion
    anon0@7
))))
(let ((anon0@5 (=> (and true
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap this Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) 0)))))
  )(and 
    anon0@5_assertion
    anon0@6
))))
(let ((anon0@4 (=> (and true
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) 1))))
  )(and 
    anon0@4_assertion
    anon0@5
))))
(let ((anon0@3 (=> (and true
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values)))))
  )(and 
    anon0@3_assertion
    anon0@4
))))
(let ((anon0@2 (=> (and true
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ this))))
  )(and 
    anon0@2_assertion
    anon0@3
))))
(let ((anon0@1 (=> (and true
    (forall( (|$o_$19_$0| ref) (|$f_$11_$0| Field$Bool$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$19_$0| |$f_$11_$0|)))
    (forall( (|$o_$19_$1| ref) (|$f_$11_$1| Field$ref$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$19_$1| |$f_$11_$1|)))
    (forall( (|$o_$19_$2| ref) (|$f_$11_$2| Field$BoxType$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$19_$2| |$f_$11_$2|)))
    (forall( (|$o_$19_$3| ref) (|$f_$11_$3| Field$$@Map@@BoxType@To@Bool@@$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$19_$3| |$f_$11_$3|)))
    (forall( (|$o_$19_$4| ref) (|$f_$11_$4| Field$Seq$BoxType$$))(=> false (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ $_Frame@0 |$o_$19_$4| |$f_$11_$4|)))
    (or (= call4formal@p@24 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call4formal@p@24 alloc) (= (dtype call4formal@p@24) class.Node)))
    (or (= call6formal@prev@26 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call6formal@prev@26 alloc) (= (dtype call6formal@prev@26) class.Node)))
  )(and 
    anon0@1_assertion
    anon0@2
))))
(let ((anon0 (=> (and true
    (= $_Frame@0 (lambda@8 Map.Repr null $Heap alloc this))
  )
    anon0@1
)))
(let ((PreconditionGeneratedEntry (=> (and true
    $InMethodContext
    ($IsGoodHeap $Heap)
    (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) (- (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes)) 1))) null)
    (= (dtype this) class.Map)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap this Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) 0)))
    (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values)))
    (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) 1))
    (= 0 $ModuleContextHeight)
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) (- (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes)) 1))) null)))
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap this Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) 0)))))
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values)))))
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)) 1))))
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (forall( (|i#0_$3| Int))(=> true (=> (and (<= 0 |i#0_$3|) (< |i#0_$3| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)))) (and (and (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$3|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$3|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |i#0_$3|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) (+ |i#0_$3| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$3|)) Node.key)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$3|)) Node.val) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values) |i#0_$3|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$3|)) Node.next) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) (+ |i#0_$3| 1))))))))))
    (=> (Map.Valid@canCall $Heap this) (or (Map.Valid $Heap this) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ this))))
    (forall( (|i#0_$2| Int))(=> true (=> (and (<= 0 |i#0_$2|) (< |i#0_$2| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys)))) (and (and (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) |i#0_$2|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Keys) (+ |i#0_$2| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)) Node.key)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)) Node.val) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.Values) |i#0_$2|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) |i#0_$2|)) Node.next) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ $Heap this Map.nodes) (+ |i#0_$2| 1))))))))
    (GenericAlloc key@16 $Heap)
    (Map.Valid $Heap this)
    (Map.Valid@canCall $Heap this)
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap this alloc)
    (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap this Map.Repr) ($Box$ref$ this))
    (not (= this null))
    (or (= $rhs@0 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@0 alloc) (= (dtype $rhs@0) class.Node)))
    (or (= $rhs@2 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@2 alloc) (= (dtype $rhs@2) class.Node)))
    (or (= p@20 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap p@20 alloc) (= (dtype p@20) class.Node)))
    (or (= prev@22 null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap prev@22 alloc) (= (dtype prev@22) class.Node)))
  )
    anon0
)))
(let (($start (=> (and true
    $$Language$Dafny
    ($IsCanonicalBoolBox ($Box$Bool$ false))
    ($IsCanonicalBoolBox ($Box$Bool$ true))
    (= (DeclType$$@Map@@BoxType@To@Bool@@$ Map.Repr) class.Map)
    (= (DeclType$BoxType$ Node.key) class.Node)
    (= (DeclType$BoxType$ Node.val) class.Node)
    (= (DeclType$ref$ Map.head) class.Map)
    (= (DeclType$ref$ Node.next) class.Node)
    (= (DeclType$Seq$BoxType$$ Map.Keys) class.Map)
    (= (DeclType$Seq$BoxType$$ Map.nodes) class.Map)
    (= (DeclType$Seq$BoxType$$ Map.Values) class.Map)
    (= (FDim$$@Map@@BoxType@To@Bool@@$ Map.Repr) 0)
    (= (FDim$Bool$ alloc) 0)
    (= (FDim$BoxType$ Node.key) 0)
    (= (FDim$BoxType$ Node.val) 0)
    (= (FDim$ref$ Map.head) 0)
    (= (FDim$ref$ Node.next) 0)
    (= (FDim$Seq$BoxType$$ Map.Keys) 0)
    (= (FDim$Seq$BoxType$$ Map.nodes) 0)
    (= (FDim$Seq$BoxType$$ Map.Values) 0)
    (= (Seq@Length$BoxType$ Seq@Empty$BoxType$) 0)
    (= (Seq@Length$ref$ Seq@Empty$ref$) 0)
    (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 4 $FunctionContextHeight) $InMethodContext))) (forall( (|$Heap_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$0| ref))(!(=> (or (Map.Valid@canCall |$Heap_$0| |this_$0|) (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 4 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap |$Heap_$0|)) (not (= |this_$0| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$0| |this_$0| alloc)) (= (dtype |this_$0|) class.Map))) (and (and (and (and (and (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ |this_$0|)) true) (=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ |this_$0|)) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Values)))) true)) (=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ |this_$0|)) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Values)))) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)) 1))) true)) (=> (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ |this_$0|)) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Values)))) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)) 1))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) 0)))) (forall( (|i#0| Int))(=> true (and (=> (<= 0 |i#0|) true) (=> (and (<= 0 |i#0|) (< |i#0| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)))) (and (and (and (and (=> (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) null)) true) (=> (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|))))) true)) (=> (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) |i#0|))) true)) (=> (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) |i#0|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) (+ |i#0| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) Node.key)))) true)) (=> (and (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) |i#0|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) (+ |i#0| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) Node.key)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0|)) Node.val) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Values) |i#0|))) true)))))))) (=> (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ |this_$0|)) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Values)))) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)) 1))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) 0)))) (forall( (|i#0_$0| Int))(=> true (=> (and (<= 0 |i#0_$0|) (< |i#0_$0| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)))) (and (and (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$0|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$0|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) |i#0_$0|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) (+ |i#0_$0| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$0|)) Node.key)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$0|)) Node.val) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Values) |i#0_$0|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$0|)) Node.next) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) (+ |i#0_$0| 1))))))))) true)) (= (Map.Valid |$Heap_$0| |this_$0|) (and (and (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ |this_$0|)) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)) (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Values)))) (= (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes)) (+ (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)) 1))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| Map.head) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) 0)))) (forall( (|i#0_$1| Int))(=> true (=> (and (<= 0 |i#0_$1|) (< |i#0_$1| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys)))) (and (and (and (and (and (not (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| Map.Repr) ($Box$ref$ ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)) Node.key) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) |i#0_$1|))) (not (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Keys) (+ |i#0_$1| 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)) Node.key)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)) Node.val) (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.Values) |i#0_$1|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) |i#0_$1|)) Node.next) ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) (+ |i#0_$1| 1))))))))) (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes) (- (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$Heap_$0| |this_$0| Map.nodes)) 1))) null)))))  :pattern ( (Map.Valid |$Heap_$0| |this_$0|)))))
    (forall( (|$h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$0| ref))(!(=> (and (and ($IsGoodHeap |$h_$0|) (not (= |$o_$0| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$0| |$o_$0| alloc)) (forall( (|$i#1| Int))(!(=> (and (<= 0 |$i#1|) (< |$i#1| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$0| |$o_$0| Map.Values)))) (GenericAlloc (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$0| |$o_$0| Map.Values) |$i#1|) |$h_$0|))  :pattern ( (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$0| |$o_$0| Map.Values) |$i#1|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$0| |$o_$0| Map.Values))))
    (forall( (|$h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$1| ref))(!(=> (and (and ($IsGoodHeap |$h_$1|) (not (= |$o_$1| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$1| |$o_$1| alloc)) (forall( (|$t#2| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$1| |$o_$1| Map.Repr) |$t#2|) (or (= ($Unbox$ref$ |$t#2|) null) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$1| ($Unbox$ref$ |$t#2|) alloc)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$1| |$o_$1| Map.Repr) |$t#2|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$1| |$o_$1| Map.Repr))))
    (forall( (|$h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$2| ref))(!(=> (and (and ($IsGoodHeap |$h_$2|) (not (= |$o_$2| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$2| |$o_$2| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$2| Map.head) null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$2| Map.head) alloc) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$2| Map.head)) class.Node))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$2| Map.head))))
    (forall( (|$h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$3| ref))(!(=> (and (and ($IsGoodHeap |$h_$3|) (not (= |$o_$3| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$3| |$o_$3| alloc)) (forall( (|$i#3| Int))(!(=> (and (<= 0 |$i#3|) (< |$i#3| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes)))) (or (= ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes) |$i#3|)) null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$3| ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes) |$i#3|)) alloc) (= (dtype ($Unbox$ref$ (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes) |$i#3|))) class.Node))))  :pattern ( (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes) |$i#3|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h_$3| |$o_$3| Map.nodes))))
    (forall( (|$h_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$5| ref))(!(=> (and (and ($IsGoodHeap |$h_$4|) (not (= |$o_$5| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$4| |$o_$5| alloc)) (GenericAlloc (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h_$4| |$o_$5| Node.key) |$h_$4|))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h_$4| |$o_$5| Node.key))))
    (forall( (|$h_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$6| ref))(!(=> (and (and ($IsGoodHeap |$h_$5|) (not (= |$o_$6| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$5| |$o_$6| alloc)) (GenericAlloc (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h_$5| |$o_$6| Node.val) |$h_$5|))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h_$5| |$o_$6| Node.val))))
    (forall( (|$h_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$7| ref))(!(=> (and (and ($IsGoodHeap |$h_$6|) (not (= |$o_$7| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$6| |$o_$7| alloc)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$6| |$o_$7| Node.next) null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$6| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$6| |$o_$7| Node.next) alloc) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$6| |$o_$7| Node.next)) class.Node))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$6| |$o_$7| Node.next))))
    (forall( (|$h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o| ref))(!(=> (and (and ($IsGoodHeap |$h|) (not (= |$o| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h| |$o| alloc)) (forall( (|$i#0| Int))(!(=> (and (<= 0 |$i#0|) (< |$i#0| (Seq@Length$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h| |$o| Map.Keys)))) (GenericAlloc (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h| |$o| Map.Keys) |$i#0|) |$h|))  :pattern ( (Seq@Index$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h| |$o| Map.Keys) |$i#0|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h| |$o| Map.Keys))))
    (forall( (|$h0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$1| ref))(!(=> (and (and (and (and (and (and (and ($IsGoodHeap |$h0|) ($IsGoodHeap |$h1|)) (not (= |this_$1| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |this_$1| alloc)) (= (dtype |this_$1|) class.Map)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |this_$1| alloc)) (= (dtype |this_$1|) class.Map)) ($HeapSucc |$h0| |$h1|)) (=> (and (and (and (and (forall( (|$o_$4_$0| ref) (|$f_$13| Field$Bool$))(=> (and (and (and (not (= |$o_$4_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$0| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$0| alloc)) (or (= |$o_$4_$0| |this_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| Map.Repr) ($Box$ref$ |$o_$4_$0|)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$0| |$f_$13|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$0| |$f_$13|)))) (forall( (|$o_$4_$1| ref) (|$f_$14| Field$ref$))(=> (and (and (and (not (= |$o_$4_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$1| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$1| alloc)) (or (= |$o_$4_$1| |this_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| Map.Repr) ($Box$ref$ |$o_$4_$1|)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0| |$o_$4_$1| |$f_$14|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1| |$o_$4_$1| |$f_$14|))))) (forall( (|$o_$4_$2| ref) (|$f_$15| Field$BoxType$))(=> (and (and (and (not (= |$o_$4_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$2| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$2| alloc)) (or (= |$o_$4_$2| |this_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| Map.Repr) ($Box$ref$ |$o_$4_$2|)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0| |$o_$4_$2| |$f_$15|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1| |$o_$4_$2| |$f_$15|))))) (forall( (|$o_$4_$3| ref) (|$f_$16| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$4_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$3| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$3| alloc)) (or (= |$o_$4_$3| |this_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| Map.Repr) ($Box$ref$ |$o_$4_$3|)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |$o_$4_$3| |$f_$16|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1| |$o_$4_$3| |$f_$16|))))) (forall( (|$o_$4_$4| ref) (|$f_$17| Field$Seq$BoxType$$))(=> (and (and (and (not (= |$o_$4_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$4_$4| alloc)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$4_$4| alloc)) (or (= |$o_$4_$4| |this_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| Map.Repr) ($Box$ref$ |$o_$4_$4|)))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h0| |$o_$4_$4| |$f_$17|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |$h1| |$o_$4_$4| |$f_$17|))))) (= (Map.Valid |$h0| |this_$1|) (Map.Valid |$h1| |this_$1|))))  :pattern ( ($HeapSucc |$h0| |$h1|) (Map.Valid |$h1| |this_$1|))))
    (forall( (|$o_$16_$0| ref) (|$f_$8_$0| Field$Bool$) (|Map.Repr_$4_$0| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$0| ref) (|$Heap_$9_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$0| Field$Bool$) (|this_$8_$0| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@8 |Map.Repr_$4_$0| |null_$8_$0| |$Heap_$9_$0| |alloc_$8_$0| |this_$8_$0|) |$o_$16_$0| |$f_$8_$0|) (=> (and (not (= |$o_$16_$0| |null_$8_$0|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9_$0| |$o_$16_$0| |alloc_$8_$0|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$9_$0| |this_$8_$0| |Map.Repr_$4_$0|) ($Box$ref$ |$o_$16_$0|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@8 |Map.Repr_$4_$0| |null_$8_$0| |$Heap_$9_$0| |alloc_$8_$0| |this_$8_$0|) |$o_$16_$0| |$f_$8_$0|))))
    (forall( (|$o_$16_$1| ref) (|$f_$8_$1| Field$ref$) (|Map.Repr_$4_$1| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$1| ref) (|$Heap_$9_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$1| Field$Bool$) (|this_$8_$1| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ (lambda@8 |Map.Repr_$4_$1| |null_$8_$1| |$Heap_$9_$1| |alloc_$8_$1| |this_$8_$1|) |$o_$16_$1| |$f_$8_$1|) (=> (and (not (= |$o_$16_$1| |null_$8_$1|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9_$1| |$o_$16_$1| |alloc_$8_$1|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$9_$1| |this_$8_$1| |Map.Repr_$4_$1|) ($Box$ref$ |$o_$16_$1|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ (lambda@8 |Map.Repr_$4_$1| |null_$8_$1| |$Heap_$9_$1| |alloc_$8_$1| |this_$8_$1|) |$o_$16_$1| |$f_$8_$1|))))
    (forall( (|$o_$16_$2| ref) (|$f_$8_$2| Field$BoxType$) (|Map.Repr_$4_$2| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$2| ref) (|$Heap_$9_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$2| Field$Bool$) (|this_$8_$2| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@8 |Map.Repr_$4_$2| |null_$8_$2| |$Heap_$9_$2| |alloc_$8_$2| |this_$8_$2|) |$o_$16_$2| |$f_$8_$2|) (=> (and (not (= |$o_$16_$2| |null_$8_$2|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9_$2| |$o_$16_$2| |alloc_$8_$2|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$9_$2| |this_$8_$2| |Map.Repr_$4_$2|) ($Box$ref$ |$o_$16_$2|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@8 |Map.Repr_$4_$2| |null_$8_$2| |$Heap_$9_$2| |alloc_$8_$2| |this_$8_$2|) |$o_$16_$2| |$f_$8_$2|))))
    (forall( (|$o_$16_$3| ref) (|$f_$8_$3| Field$$@Map@@BoxType@To@Bool@@$) (|Map.Repr_$4_$3| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$3| ref) (|$Heap_$9_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$3| Field$Bool$) (|this_$8_$3| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ (lambda@8 |Map.Repr_$4_$3| |null_$8_$3| |$Heap_$9_$3| |alloc_$8_$3| |this_$8_$3|) |$o_$16_$3| |$f_$8_$3|) (=> (and (not (= |$o_$16_$3| |null_$8_$3|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9_$3| |$o_$16_$3| |alloc_$8_$3|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$9_$3| |this_$8_$3| |Map.Repr_$4_$3|) ($Box$ref$ |$o_$16_$3|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ (lambda@8 |Map.Repr_$4_$3| |null_$8_$3| |$Heap_$9_$3| |alloc_$8_$3| |this_$8_$3|) |$o_$16_$3| |$f_$8_$3|))))
    (forall( (|$o_$16_$4| ref) (|$f_$8_$4| Field$Seq$BoxType$$) (|Map.Repr_$4_$4| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$4| ref) (|$Heap_$9_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$4| Field$Bool$) (|this_$8_$4| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ (lambda@8 |Map.Repr_$4_$4| |null_$8_$4| |$Heap_$9_$4| |alloc_$8_$4| |this_$8_$4|) |$o_$16_$4| |$f_$8_$4|) (=> (and (not (= |$o_$16_$4| |null_$8_$4|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9_$4| |$o_$16_$4| |alloc_$8_$4|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$9_$4| |this_$8_$4| |Map.Repr_$4_$4|) ($Box$ref$ |$o_$16_$4|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Seq$BoxType$$ (lambda@8 |Map.Repr_$4_$4| |null_$8_$4| |$Heap_$9_$4| |alloc_$8_$4| |this_$8_$4|) |$o_$16_$4| |$f_$8_$4|))))
    (forall( (|a_$0_$0| $@Map@@BoxType@To@Bool@@) (|x_$0_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$0_$0| |x_$0_$0|) |x_$0_$0|)  :pattern ( (Set@UnionOne$BoxType$ |a_$0_$0| |x_$0_$0|))))
    (forall( (|a_$1_$0| $@Map@@BoxType@To@Bool@@) (|x_$1_$0| BoxType) (|y_$6| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$6|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$1_$0| |x_$1_$0|) |y_$6|))  :pattern ( (Set@UnionOne$BoxType$ |a_$1_$0| |x_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$6|))))
    (forall( (|a_$10_$0| $@Map@@BoxType@To@Bool@@) (|b_$7_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ |a_$10_$0| (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|)) (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|))  :pattern ( (Set@Intersection$BoxType$ |a_$10_$0| (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|)))))
    (forall( (|a_$11_$0| $@Map@@BoxType@To@Bool@@) (|b_$8_$0| $@Map@@BoxType@To@Bool@@) (|o_$4_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$11_$0| |b_$8_$0|) |o_$4_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$11_$0| |o_$4_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$8_$0| |o_$4_$0|))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$11_$0| |b_$8_$0|) |o_$4_$0|))))
    (forall( (|a_$12_$0| $@Map@@BoxType@To@Bool@@) (|b_$9_$0| $@Map@@BoxType@To@Bool@@) (|y_$2_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |y_$2_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$12_$0| |b_$9_$0|) |y_$2_$0|)))  :pattern ( (Set@Difference$BoxType$ |a_$12_$0| |b_$9_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |y_$2_$0|))))
    (forall( (|a_$14_$0| $@Map@@BoxType@To@Bool@@) (|b_$11_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Equal$BoxType$ |a_$14_$0| |b_$11_$0|) (forall( (|o_$6_$1| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$6_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$11_$0| |o_$6_$1|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$6_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$11_$0| |o_$6_$1|)))))  :pattern ( (Set@Equal$BoxType$ |a_$14_$0| |b_$11_$0|))))
    (forall( (|a_$15_$0| $@Map@@BoxType@To@Bool@@) (|b_$12_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Equal$BoxType$ |a_$15_$0| |b_$12_$0|) (= |a_$15_$0| |b_$12_$0|))  :pattern ( (Set@Equal$BoxType$ |a_$15_$0| |b_$12_$0|))))
    (forall( (|a_$16_$0| $@Map@@BoxType@To@Bool@@) (|b_$13_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Disjoint$BoxType$ |a_$16_$0| |b_$13_$0|) (forall( (|o_$7_$1| BoxType))(!(or (not (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$16_$0| |o_$7_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$7_$1|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$16_$0| |o_$7_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$7_$1|)))))  :pattern ( (Set@Disjoint$BoxType$ |a_$16_$0| |b_$13_$0|))))
    (forall( (|a_$17_$0| $@Map@@BoxType@To@Bool@@) (|tick_$0| TickType))(!(=> (not (= |a_$17_$0| Set@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$17_$0| (Set@Choose$BoxType$ |a_$17_$0| |tick_$0|)))  :pattern ( (Set@Choose$BoxType$ |a_$17_$0| |tick_$0|))))
    (forall( (|a_$18_$0| Seq$ref$) (|b_$14_$0| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$18_$0| |b_$14_$0|) (= |a_$18_$0| |b_$14_$0|))  :pattern ( (Seq@Equal$ref$ |a_$18_$0| |b_$14_$0|))))
    (forall( (|a_$18_$1| Seq$BoxType$) (|b_$14_$1| Seq$BoxType$))(!(=> (Seq@Equal$BoxType$ |a_$18_$1| |b_$14_$1|) (= |a_$18_$1| |b_$14_$1|))  :pattern ( (Seq@Equal$BoxType$ |a_$18_$1| |b_$14_$1|))))
    (forall( (|a_$19| ClassName) (|b_$21| ClassName))(!(and (= (TypeTupleCar (TypeTuple |a_$19| |b_$21|)) |a_$19|) (= (TypeTupleCdr (TypeTuple |a_$19| |b_$21|)) |b_$21|))  :pattern ( (TypeTuple |a_$19| |b_$21|))))
    (forall( (|a_$2_$0| $@Map@@BoxType@To@Bool@@) (|b_$29| $@Map@@BoxType@To@Bool@@) (|o_$2_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$2_$0| |b_$29|) |o_$2_$0|) (or (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$2_$0| |o_$2_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$29| |o_$2_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$2_$0| |b_$29|) |o_$2_$0|))))
    (forall( (|a_$20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$27| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|c| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (and ($HeapSucc |a_$20| |b_$27|) ($HeapSucc |b_$27| |c|)) ($HeapSucc |a_$20| |c|))  :pattern ( ($HeapSucc |a_$20| |b_$27|) ($HeapSucc |b_$27| |c|))))
    (forall( (|a_$21| Int) (|b_$28| Int) (|d_$1| Int))(!(=> (and (and (<= 2 |d_$1|) (= (mod |a_$21| |d_$1|) (mod |b_$28| |d_$1|))) (< |a_$21| |b_$28|)) (<= (+ |a_$21| |d_$1|) |b_$28|))  :pattern ( (mod |a_$21| |d_$1|) (mod |b_$28| |d_$1|))))
    (forall( (|a_$22| $@Map@@BoxType@To@Bool@@) (|x_$14| BoxType) (|o_$1_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$22| |x_$14|) |o_$1_$0|) (or (= |o_$1_$0| |x_$14|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$22| |o_$1_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$22| |x_$14|) |o_$1_$0|))))
    (forall( (|a_$3_$0| $@Map@@BoxType@To@Bool@@) (|b_$0_$0| $@Map@@BoxType@To@Bool@@) (|y_$0_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |y_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$3_$0| |b_$0_$0|) |y_$0_$0|))  :pattern ( (Set@Union$BoxType$ |a_$3_$0| |b_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |y_$0_$0|))))
    (forall( (|a_$4_$0| $@Map@@BoxType@To@Bool@@) (|b_$1_$0| $@Map@@BoxType@To@Bool@@) (|y_$1_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$4_$0| |b_$1_$0|) |y_$1_$0|))  :pattern ( (Set@Union$BoxType$ |a_$4_$0| |b_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|))))
    (forall( (|a_$5_$0| $@Map@@BoxType@To@Bool@@) (|b_$2_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Disjoint$BoxType$ |a_$5_$0| |b_$2_$0|) (and (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|) |a_$5_$0|) |b_$2_$0|) (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|) |b_$2_$0|) |a_$5_$0|)))  :pattern ( (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|))))
    (forall( (|a_$6_$0| $@Map@@BoxType@To@Bool@@) (|b_$3_$0| $@Map@@BoxType@To@Bool@@) (|o_$3_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$6_$0| |b_$3_$0|) |o_$3_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$6_$0| |o_$3_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$3_$0| |o_$3_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$6_$0| |b_$3_$0|) |o_$3_$0|))))
    (forall( (|a_$7_$0| $@Map@@BoxType@To@Bool@@) (|b_$4_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|) |b_$4_$0|) (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|))  :pattern ( (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|) |b_$4_$0|))))
    (forall( (|a_$8_$0| $@Map@@BoxType@To@Bool@@) (|b_$5_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ |a_$8_$0| (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|)) (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|))  :pattern ( (Set@Union$BoxType$ |a_$8_$0| (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|)))))
    (forall( (|a_$9_$0| $@Map@@BoxType@To@Bool@@) (|b_$6_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|) |b_$6_$0|) (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|))  :pattern ( (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|) |b_$6_$0|))))
    (forall( (|b_$15| BoxType))(!(= ($Box$Int$ ($Unbox$Int$ |b_$15|)) |b_$15|)  :pattern ( ($Unbox$Int$ |b_$15|))))
    (forall( (|b_$16| BoxType))(!(= ($Box$ref$ ($Unbox$ref$ |b_$16|)) |b_$16|)  :pattern ( ($Unbox$ref$ |b_$16|))))
    (forall( (|b_$17| BoxType))(!(= ($Box$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$17|)) |b_$17|)  :pattern ( ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$17|))))
    (forall( (|b_$18| BoxType))(!(= ($Box$Seq$BoxType$$ ($Unbox$Seq$BoxType$$ |b_$18|)) |b_$18|)  :pattern ( ($Unbox$Seq$BoxType$$ |b_$18|))))
    (forall( (|b_$19| BoxType))(!(= ($Box$DatatypeType$ ($Unbox$DatatypeType$ |b_$19|)) |b_$19|)  :pattern ( ($Unbox$DatatypeType$ |b_$19|))))
    (forall( (|b_$20| BoxType))(!(=> ($IsCanonicalBoolBox |b_$20|) (= ($Box$Bool$ ($Unbox$Bool$ |b_$20|)) |b_$20|))  :pattern ( ($Unbox$Bool$ |b_$20|))))
    (forall( (|b_$22| BoxType) (|h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$22| |h_$1|) (or (= ($Unbox$ref$ |b_$22|) null) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| ($Unbox$ref$ |b_$22|) alloc)))  :pattern ( (GenericAlloc |b_$22| |h_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| ($Unbox$ref$ |b_$22|) alloc))))
    (forall( (|b_$23| BoxType) (|h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|i_$11| Int))(!(=> (and (and (GenericAlloc |b_$23| |h_$2|) (<= 0 |i_$11|)) (< |i_$11| (Seq@Length$BoxType$ ($Unbox$Seq$BoxType$$ |b_$23|)))) (GenericAlloc (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$23|) |i_$11|) |h_$2|))  :pattern ( (GenericAlloc |b_$23| |h_$2|) (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$23|) |i_$11|))))
    (forall( (|b_$24| BoxType) (|h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|t_$2| BoxType))(!(=> (and (GenericAlloc |b_$24| |h_$3|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$24|) |t_$2|)) (GenericAlloc |t_$2| |h_$3|))  :pattern ( (GenericAlloc |b_$24| |h_$3|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$24|) |t_$2|))))
    (forall( (|b_$25| BoxType) (|h_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$25| |h_$4|) (DtAlloc ($Unbox$DatatypeType$ |b_$25|) |h_$4|))  :pattern ( (GenericAlloc |b_$25| |h_$4|) (DtType ($Unbox$DatatypeType$ |b_$25|)))))
    (forall( (|b_$26| Bool) (|h_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$5|) (GenericAlloc ($Box$Bool$ |b_$26|) |h_$5|)))
    (forall( (|f_$1| Field$BoxType$) (|i_$9| Int))(!(= (FDim$BoxType$ (MultiIndexField |f_$1| |i_$9|)) (+ (FDim$BoxType$ |f_$1|) 1))  :pattern ( (MultiIndexField |f_$1| |i_$9|))))
    (forall( (|f_$2| Field$BoxType$) (|i_$10| Int))(!(and (= (MultiIndexField_Inverse0$BoxType$ (MultiIndexField |f_$2| |i_$10|)) |f_$2|) (= (MultiIndexField_Inverse1$BoxType$ (MultiIndexField |f_$2| |i_$10|)) |i_$10|))  :pattern ( (MultiIndexField |f_$2| |i_$10|))))
    (forall( (|f_$4| Field$Bool$) (|r_$5| ref) (|H_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$5| |f_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$5| |f_$4|)))
    (forall( (|f_$5| Field$ref$) (|r_$6| ref) (|H_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$2| |r_$6| |f_$5|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$2| |r_$6| |f_$5|)))
    (forall( (|f_$6| Field$BoxType$) (|r_$7| ref) (|H_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$3| |r_$7| |f_$6|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$3| |r_$7| |f_$6|)))
    (forall( (|f_$7| Field$$@Map@@BoxType@To@Bool@@$) (|r_$8| ref) (|H_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$4| |r_$8| |f_$7|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$4| |r_$8| |f_$7|)))
    (forall( (|f_$8| Field$Seq$BoxType$$) (|r_$9| ref) (|H_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |H_$5| |r_$9| |f_$8|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |H_$5| |r_$9| |f_$8|)))
    (forall( (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d_$0| BoxType))(!(=> ($HeapSucc |h_$0| |k_$0|) (=> (GenericAlloc |d_$0| |h_$0|) (GenericAlloc |d_$0| |k_$0|)))  :pattern ( ($HeapSucc |h_$0| |k_$0|) (GenericAlloc |d_$0| |h_$0|)) :pattern ( ($HeapSucc |h_$0| |k_$0|) (GenericAlloc |d_$0| |k_$0|))))
    (forall( (|h_$8_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$4_$0| ref) (|f_$3_$0| Field$Bool$) (|x_$10_$0| Bool))(!($HeapSucc |h_$8_$0| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$8_$0| |r_$4_$0| |f_$3_$0| |x_$10_$0|))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$8_$0| |r_$4_$0| |f_$3_$0| |x_$10_$0|))))
    (forall( (|h_$8_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$4_$1| ref) (|f_$3_$1| Field$ref$) (|x_$10_$1| ref))(!($HeapSucc |h_$8_$1| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$8_$1| |r_$4_$1| |f_$3_$1| |x_$10_$1|))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$8_$1| |r_$4_$1| |f_$3_$1| |x_$10_$1|))))
    (forall( (|h_$8_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$4_$2| ref) (|f_$3_$2| Field$BoxType$) (|x_$10_$2| BoxType))(!($HeapSucc |h_$8_$2| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$8_$2| |r_$4_$2| |f_$3_$2| |x_$10_$2|))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$8_$2| |r_$4_$2| |f_$3_$2| |x_$10_$2|))))
    (forall( (|h_$8_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$4_$3| ref) (|f_$3_$3| Field$$@Map@@BoxType@To@Bool@@$) (|x_$10_$3| $@Map@@BoxType@To@Bool@@))(!($HeapSucc |h_$8_$3| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |h_$8_$3| |r_$4_$3| |f_$3_$3| |x_$10_$3|))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |h_$8_$3| |r_$4_$3| |f_$3_$3| |x_$10_$3|))))
    (forall( (|h_$8_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$4_$4| ref) (|f_$3_$4| Field$Seq$BoxType$$) (|x_$10_$4| Seq$BoxType$))(!($HeapSucc |h_$8_$4| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |h_$8_$4| |r_$4_$4| |f_$3_$4| |x_$10_$4|))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |h_$8_$4| |r_$4_$4| |f_$3_$4| |x_$10_$4|))))
    (forall( (|h_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($HeapSucc |h_$9| |k_$1|) (forall( (|o_$8| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$9| |o_$8| alloc) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$8| alloc))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$8| alloc)))))  :pattern ( ($HeapSucc |h_$9| |k_$1|))))
    (forall( (|h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d| DatatypeType))(!(=> ($HeapSucc |h| |k|) (=> (DtAlloc |d| |h|) (DtAlloc |d| |k|)))  :pattern ( ($HeapSucc |h| |k|) (DtAlloc |d| |h|)) :pattern ( ($HeapSucc |h| |k|) (DtAlloc |d| |k|))))
    (forall( (|i_$7| Int))(!(= (FDim$BoxType$ (IndexField |i_$7|)) 1)  :pattern ( (IndexField |i_$7|))))
    (forall( (|o_$10| BoxType))(!(not (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$10|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$10|))))
    (forall( (|o_$9| ref))(<= 0 (array.Length |o_$9|)))
    (forall( (|r_$1_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$1_$0|) |r_$1_$0|)  :pattern ( (Set@Singleton$BoxType$ |r_$1_$0|))))
    (forall( (|r_$2_$0| BoxType) (|o_$0_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|) (= |r_$2_$0| |o_$0_$0|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|))))
    (forall( (|r_$3| ref) (|h_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (and ($IsGoodHeap |h_$7|) (or (= |r_$3| null) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$7| |r_$3| alloc))) (GenericAlloc ($Box$ref$ |r_$3|) |h_$7|))  :pattern ( (GenericAlloc ($Box$ref$ |r_$3|) |h_$7|))))
    (forall( (|s_$0_$0| Seq$ref$))(!(=> (= (Seq@Length$ref$ |s_$0_$0|) 0) (= |s_$0_$0| Seq@Empty$ref$))  :pattern ( (Seq@Length$ref$ |s_$0_$0|))))
    (forall( (|s_$0_$1| Seq$BoxType$))(!(=> (= (Seq@Length$BoxType$ |s_$0_$1|) 0) (= |s_$0_$1| Seq@Empty$BoxType$))  :pattern ( (Seq@Length$BoxType$ |s_$0_$1|))))
    (forall( (|s_$1_$0| Seq$ref$) (|i_$12| Int) (|v_$0_$0| ref) (|len_$2| Int))(!(=> (<= 0 |len_$2|) (= (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$0| |i_$12| |v_$0_$0| |len_$2|)) |len_$2|))  :pattern ( (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$0| |i_$12| |v_$0_$0| |len_$2|)))))
    (forall( (|s_$1_$1| Seq$BoxType$) (|i_$13| Int) (|v_$0_$1| BoxType) (|len_$3| Int))(!(=> (<= 0 |len_$3|) (= (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$1_$1| |i_$13| |v_$0_$1| |len_$3|)) |len_$3|))  :pattern ( (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$1_$1| |i_$13| |v_$0_$1| |len_$3|)))))
    (forall( (|s_$10_$0| Seq$ref$) (|n_$6_$0| Int) (|j_$2_$0| Int))(!(=> (and (and (<= 0 |j_$2_$0|) (< |j_$2_$0| |n_$6_$0|)) (< |j_$2_$0| (Seq@Length$ref$ |s_$10_$0|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$10_$0| |n_$6_$0|) |j_$2_$0|) (Seq@Index$ref$ |s_$10_$0| |j_$2_$0|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$10_$0| |n_$6_$0|) |j_$2_$0|))))
    (forall( (|s_$10_$1| Seq$BoxType$) (|n_$6_$1| Int) (|j_$2_$1| Int))(!(=> (and (and (<= 0 |j_$2_$1|) (< |j_$2_$1| |n_$6_$1|)) (< |j_$2_$1| (Seq@Length$BoxType$ |s_$10_$1|))) (= (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$10_$1| |n_$6_$1|) |j_$2_$1|) (Seq@Index$BoxType$ |s_$10_$1| |j_$2_$1|)))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$10_$1| |n_$6_$1|) |j_$2_$1|))))
    (forall( (|s_$11_$0| Seq$ref$) (|n_$7_$0| Int))(!(=> (<= 0 |n_$7_$0|) (and (=> (<= |n_$7_$0| (Seq@Length$ref$ |s_$11_$0|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$11_$0| |n_$7_$0|)) (- (Seq@Length$ref$ |s_$11_$0|) |n_$7_$0|))) (=> (< (Seq@Length$ref$ |s_$11_$0|) |n_$7_$0|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$11_$0| |n_$7_$0|)) 0))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$11_$0| |n_$7_$0|)))))
    (forall( (|s_$11_$1| Seq$BoxType$) (|n_$7_$1| Int))(!(=> (<= 0 |n_$7_$1|) (and (=> (<= |n_$7_$1| (Seq@Length$BoxType$ |s_$11_$1|)) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$11_$1| |n_$7_$1|)) (- (Seq@Length$BoxType$ |s_$11_$1|) |n_$7_$1|))) (=> (< (Seq@Length$BoxType$ |s_$11_$1|) |n_$7_$1|) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$11_$1| |n_$7_$1|)) 0))))  :pattern ( (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$11_$1| |n_$7_$1|)))))
    (forall( (|s_$12_$0| Seq$ref$) (|n_$8_$0| Int) (|j_$3_$0| Int))(!(=> (and (and (<= 0 |n_$8_$0|) (<= 0 |j_$3_$0|)) (< |j_$3_$0| (- (Seq@Length$ref$ |s_$12_$0|) |n_$8_$0|))) (= (Seq@Index$ref$ (Seq@Drop$ref$ |s_$12_$0| |n_$8_$0|) |j_$3_$0|) (Seq@Index$ref$ |s_$12_$0| (+ |j_$3_$0| |n_$8_$0|))))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Drop$ref$ |s_$12_$0| |n_$8_$0|) |j_$3_$0|))))
    (forall( (|s_$12_$1| Seq$BoxType$) (|n_$8_$1| Int) (|j_$3_$1| Int))(!(=> (and (and (<= 0 |n_$8_$1|) (<= 0 |j_$3_$1|)) (< |j_$3_$1| (- (Seq@Length$BoxType$ |s_$12_$1|) |n_$8_$1|))) (= (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$12_$1| |n_$8_$1|) |j_$3_$1|) (Seq@Index$BoxType$ |s_$12_$1| (+ |j_$3_$1| |n_$8_$1|))))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$12_$1| |n_$8_$1|) |j_$3_$1|))))
    (forall( (|s_$13_$0| Seq$ref$) (|t_$1_$0| Seq$ref$))(!(and (= (Seq@Take$ref$ (Seq@Append$ref$ |s_$13_$0| |t_$1_$0|) (Seq@Length$ref$ |s_$13_$0|)) |s_$13_$0|) (= (Seq@Drop$ref$ (Seq@Append$ref$ |s_$13_$0| |t_$1_$0|) (Seq@Length$ref$ |s_$13_$0|)) |t_$1_$0|))  :pattern ( (Seq@Append$ref$ |s_$13_$0| |t_$1_$0|))))
    (forall( (|s_$13_$1| Seq$BoxType$) (|t_$1_$1| Seq$BoxType$))(!(and (= (Seq@Take$BoxType$ (Seq@Append$BoxType$ |s_$13_$1| |t_$1_$1|) (Seq@Length$BoxType$ |s_$13_$1|)) |s_$13_$1|) (= (Seq@Drop$BoxType$ (Seq@Append$BoxType$ |s_$13_$1| |t_$1_$1|) (Seq@Length$BoxType$ |s_$13_$1|)) |t_$1_$1|))  :pattern ( (Seq@Append$BoxType$ |s_$13_$1| |t_$1_$1|))))
    (forall( (|s_$14| Seq$ref$))(!(<= 0 (Seq@Length$ref$ |s_$14|))  :pattern ( (Seq@Length$ref$ |s_$14|))))
    (forall( (|s_$15| Seq$BoxType$))(!(<= 0 (Seq@Length$BoxType$ |s_$15|))  :pattern ( (Seq@Length$BoxType$ |s_$15|))))
    (forall( (|s_$2_$0| Seq$ref$) (|i_$0_$0| Int) (|v_$1_$0| ref) (|len_$0_$0| Int) (|n_$0_$0| Int))(!(=> (and (<= 0 |n_$0_$0|) (< |n_$0_$0| |len_$0_$0|)) (and (=> (= |i_$0_$0| |n_$0_$0|) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|) |v_$1_$0|)) (=> (not (= |i_$0_$0| |n_$0_$0|)) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|) (Seq@Index$ref$ |s_$2_$0| |n_$0_$0|)))))  :pattern ( (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|))))
    (forall( (|s_$2_$1| Seq$BoxType$) (|i_$0_$1| Int) (|v_$1_$1| BoxType) (|len_$0_$1| Int) (|n_$0_$1| Int))(!(=> (and (<= 0 |n_$0_$1|) (< |n_$0_$1| |len_$0_$1|)) (and (=> (= |i_$0_$1| |n_$0_$1|) (= (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$2_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|) |v_$1_$1|)) (=> (not (= |i_$0_$1| |n_$0_$1|)) (= (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$2_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|) (Seq@Index$BoxType$ |s_$2_$1| |n_$0_$1|)))))  :pattern ( (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$2_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|))))
    (forall( (|s_$3_$0| Seq$ref$) (|i_$1_$0| Int) (|v_$2_$0| ref))(!(=> (and (<= 0 |i_$1_$0|) (< |i_$1_$0| (Seq@Length$ref$ |s_$3_$0|))) (= (Seq@Length$ref$ (Seq@Update$ref$ |s_$3_$0| |i_$1_$0| |v_$2_$0|)) (Seq@Length$ref$ |s_$3_$0|)))  :pattern ( (Seq@Length$ref$ (Seq@Update$ref$ |s_$3_$0| |i_$1_$0| |v_$2_$0|)))))
    (forall( (|s_$3_$1| Seq$BoxType$) (|i_$1_$1| Int) (|v_$2_$1| BoxType))(!(=> (and (<= 0 |i_$1_$1|) (< |i_$1_$1| (Seq@Length$BoxType$ |s_$3_$1|))) (= (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$3_$1| |i_$1_$1| |v_$2_$1|)) (Seq@Length$BoxType$ |s_$3_$1|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$3_$1| |i_$1_$1| |v_$2_$1|)))))
    (forall( (|s_$4_$0| Seq$ref$) (|i_$2_$0| Int) (|v_$3_$0| ref) (|n_$1_$0| Int))(!(=> (and (<= 0 |n_$1_$0|) (< |n_$1_$0| (Seq@Length$ref$ |s_$4_$0|))) (and (=> (= |i_$2_$0| |n_$1_$0|) (= (Seq@Index$ref$ (Seq@Update$ref$ |s_$4_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|) |v_$3_$0|)) (=> (not (= |i_$2_$0| |n_$1_$0|)) (= (Seq@Index$ref$ (Seq@Update$ref$ |s_$4_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|) (Seq@Index$ref$ |s_$4_$0| |n_$1_$0|)))))  :pattern ( (Seq@Index$ref$ (Seq@Update$ref$ |s_$4_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|))))
    (forall( (|s_$4_$1| Seq$BoxType$) (|i_$2_$1| Int) (|v_$3_$1| BoxType) (|n_$1_$1| Int))(!(=> (and (<= 0 |n_$1_$1|) (< |n_$1_$1| (Seq@Length$BoxType$ |s_$4_$1|))) (and (=> (= |i_$2_$1| |n_$1_$1|) (= (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$4_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|) |v_$3_$1|)) (=> (not (= |i_$2_$1| |n_$1_$1|)) (= (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$4_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|) (Seq@Index$BoxType$ |s_$4_$1| |n_$1_$1|)))))  :pattern ( (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$4_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|))))
    (forall( (|s_$5_$0| Seq$ref$) (|x_$2_$0| ref))(!(= (Seq@Contains$ref$ |s_$5_$0| |x_$2_$0|) (exists( (|i_$3_$1| Int))(!(and (and (<= 0 |i_$3_$1|) (< |i_$3_$1| (Seq@Length$ref$ |s_$5_$0|))) (= (Seq@Index$ref$ |s_$5_$0| |i_$3_$1|) |x_$2_$0|))  :pattern ( (Seq@Index$ref$ |s_$5_$0| |i_$3_$1|)))))  :pattern ( (Seq@Contains$ref$ |s_$5_$0| |x_$2_$0|))))
    (forall( (|s_$5_$1| Seq$BoxType$) (|x_$2_$1| BoxType))(!(= (Seq@Contains$BoxType$ |s_$5_$1| |x_$2_$1|) (exists( (|i_$3_$3| Int))(!(and (and (<= 0 |i_$3_$3|) (< |i_$3_$3| (Seq@Length$BoxType$ |s_$5_$1|))) (= (Seq@Index$BoxType$ |s_$5_$1| |i_$3_$3|) |x_$2_$1|))  :pattern ( (Seq@Index$BoxType$ |s_$5_$1| |i_$3_$3|)))))  :pattern ( (Seq@Contains$BoxType$ |s_$5_$1| |x_$2_$1|))))
    (forall( (|s_$6_$0| Seq$ref$) (|i_$4_$0| Int) (|v_$4_$0| ref) (|len_$1_$0| Int) (|x_$5_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Build$ref$ |s_$6_$0| |i_$4_$0| |v_$4_$0| |len_$1_$0|) |x_$5_$0|) (or (and (and (<= 0 |i_$4_$0|) (< |i_$4_$0| |len_$1_$0|)) (= |x_$5_$0| |v_$4_$0|)) (exists( (|j_$5| Int))(!(and (and (and (and (<= 0 |j_$5|) (< |j_$5| (Seq@Length$ref$ |s_$6_$0|))) (< |j_$5| |len_$1_$0|)) (not (= |j_$5| |i_$4_$0|))) (= (Seq@Index$ref$ |s_$6_$0| |j_$5|) |x_$5_$0|))  :pattern ( (Seq@Index$ref$ |s_$6_$0| |j_$5|))))))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ |s_$6_$0| |i_$4_$0| |v_$4_$0| |len_$1_$0|) |x_$5_$0|))))
    (forall( (|s_$6_$1| Seq$BoxType$) (|i_$4_$1| Int) (|v_$4_$1| BoxType) (|len_$1_$1| Int) (|x_$5_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Build$BoxType$ |s_$6_$1| |i_$4_$1| |v_$4_$1| |len_$1_$1|) |x_$5_$1|) (or (and (and (<= 0 |i_$4_$1|) (< |i_$4_$1| |len_$1_$1|)) (= |x_$5_$1| |v_$4_$1|)) (exists( (|j_$7| Int))(!(and (and (and (and (<= 0 |j_$7|) (< |j_$7| (Seq@Length$BoxType$ |s_$6_$1|))) (< |j_$7| |len_$1_$1|)) (not (= |j_$7| |i_$4_$1|))) (= (Seq@Index$BoxType$ |s_$6_$1| |j_$7|) |x_$5_$1|))  :pattern ( (Seq@Index$BoxType$ |s_$6_$1| |j_$7|))))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Build$BoxType$ |s_$6_$1| |i_$4_$1| |v_$4_$1| |len_$1_$1|) |x_$5_$1|))))
    (forall( (|s_$7_$0| Seq$ref$) (|n_$2_$0| Int) (|x_$6_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$7_$0| |n_$2_$0|) |x_$6_$0|) (exists( (|i_$5_$1| Int))(!(and (and (and (<= 0 |i_$5_$1|) (< |i_$5_$1| |n_$2_$0|)) (< |i_$5_$1| (Seq@Length$ref$ |s_$7_$0|))) (= (Seq@Index$ref$ |s_$7_$0| |i_$5_$1|) |x_$6_$0|))  :pattern ( (Seq@Index$ref$ |s_$7_$0| |i_$5_$1|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$7_$0| |n_$2_$0|) |x_$6_$0|))))
    (forall( (|s_$7_$1| Seq$BoxType$) (|n_$2_$1| Int) (|x_$6_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$7_$1| |n_$2_$1|) |x_$6_$1|) (exists( (|i_$5_$3| Int))(!(and (and (and (<= 0 |i_$5_$3|) (< |i_$5_$3| |n_$2_$1|)) (< |i_$5_$3| (Seq@Length$BoxType$ |s_$7_$1|))) (= (Seq@Index$BoxType$ |s_$7_$1| |i_$5_$3|) |x_$6_$1|))  :pattern ( (Seq@Index$BoxType$ |s_$7_$1| |i_$5_$3|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$7_$1| |n_$2_$1|) |x_$6_$1|))))
    (forall( (|s_$8_$0| Seq$ref$) (|n_$3_$0| Int) (|x_$7_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$8_$0| |n_$3_$0|) |x_$7_$0|) (exists( (|i_$6_$1| Int))(!(and (and (and (<= 0 |n_$3_$0|) (<= |n_$3_$0| |i_$6_$1|)) (< |i_$6_$1| (Seq@Length$ref$ |s_$8_$0|))) (= (Seq@Index$ref$ |s_$8_$0| |i_$6_$1|) |x_$7_$0|))  :pattern ( (Seq@Index$ref$ |s_$8_$0| |i_$6_$1|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$8_$0| |n_$3_$0|) |x_$7_$0|))))
    (forall( (|s_$8_$1| Seq$BoxType$) (|n_$3_$1| Int) (|x_$7_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$8_$1| |n_$3_$1|) |x_$7_$1|) (exists( (|i_$6_$3| Int))(!(and (and (and (<= 0 |n_$3_$1|) (<= |n_$3_$1| |i_$6_$3|)) (< |i_$6_$3| (Seq@Length$BoxType$ |s_$8_$1|))) (= (Seq@Index$BoxType$ |s_$8_$1| |i_$6_$3|) |x_$7_$1|))  :pattern ( (Seq@Index$BoxType$ |s_$8_$1| |i_$6_$3|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$8_$1| |n_$3_$1|) |x_$7_$1|))))
    (forall( (|s_$9_$0| Seq$ref$) (|n_$5_$0| Int))(!(=> (<= 0 |n_$5_$0|) (and (=> (<= |n_$5_$0| (Seq@Length$ref$ |s_$9_$0|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$9_$0| |n_$5_$0|)) |n_$5_$0|)) (=> (< (Seq@Length$ref$ |s_$9_$0|) |n_$5_$0|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$9_$0| |n_$5_$0|)) (Seq@Length$ref$ |s_$9_$0|)))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$9_$0| |n_$5_$0|)))))
    (forall( (|s_$9_$1| Seq$BoxType$) (|n_$5_$1| Int))(!(=> (<= 0 |n_$5_$1|) (and (=> (<= |n_$5_$1| (Seq@Length$BoxType$ |s_$9_$1|)) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$9_$1| |n_$5_$1|)) |n_$5_$1|)) (=> (< (Seq@Length$BoxType$ |s_$9_$1|) |n_$5_$1|) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$9_$1| |n_$5_$1|)) (Seq@Length$BoxType$ |s_$9_$1|)))))  :pattern ( (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$9_$1| |n_$5_$1|)))))
    (forall( (|s0_$0_$0| Seq$ref$) (|s1_$0_$0| Seq$ref$) (|n_$9| Int))(!(and (=> (< |n_$9| (Seq@Length$ref$ |s0_$0_$0|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|) (Seq@Index$ref$ |s0_$0_$0| |n_$9|))) (=> (<= (Seq@Length$ref$ |s0_$0_$0|) |n_$9|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|) (Seq@Index$ref$ |s1_$0_$0| (- |n_$9| (Seq@Length$ref$ |s0_$0_$0|))))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|))))
    (forall( (|s0_$0_$1| Seq$BoxType$) (|s1_$0_$1| Seq$BoxType$) (|n_$10| Int))(!(and (=> (< |n_$10| (Seq@Length$BoxType$ |s0_$0_$1|)) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|) (Seq@Index$BoxType$ |s0_$0_$1| |n_$10|))) (=> (<= (Seq@Length$BoxType$ |s0_$0_$1|) |n_$10|) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|) (Seq@Index$BoxType$ |s1_$0_$1| (- |n_$10| (Seq@Length$BoxType$ |s0_$0_$1|))))))  :pattern ( (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|))))
    (forall( (|s0_$1_$0| Seq$ref$) (|s1_$1_$0| Seq$ref$) (|x_$4_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$0| |s1_$1_$0|) |x_$4_$0|) (or (Seq@Contains$ref$ |s0_$1_$0| |x_$4_$0|) (Seq@Contains$ref$ |s1_$1_$0| |x_$4_$0|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$0| |s1_$1_$0|) |x_$4_$0|))))
    (forall( (|s0_$1_$1| Seq$BoxType$) (|s1_$1_$1| Seq$BoxType$) (|x_$4_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$1| |s1_$1_$1|) |x_$4_$1|) (or (Seq@Contains$BoxType$ |s0_$1_$1| |x_$4_$1|) (Seq@Contains$BoxType$ |s1_$1_$1| |x_$4_$1|)))  :pattern ( (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$1| |s1_$1_$1|) |x_$4_$1|))))
    (forall( (|s0_$2_$0| Seq$ref$) (|s1_$2_$0| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$ref$ |s0_$2_$0|) (Seq@Length$ref$ |s1_$2_$0|)) (forall( (|j_$0_$1| Int))(!(=> (and (<= 0 |j_$0_$1|) (< |j_$0_$1| (Seq@Length$ref$ |s0_$2_$0|))) (= (Seq@Index$ref$ |s0_$2_$0| |j_$0_$1|) (Seq@Index$ref$ |s1_$2_$0| |j_$0_$1|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$0| |j_$0_$1|)) :pattern ( (Seq@Index$ref$ |s1_$2_$0| |j_$0_$1|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$0| |s1_$2_$0|))))
    (forall( (|s0_$2_$1| Seq$BoxType$) (|s1_$2_$1| Seq$BoxType$))(!(= (Seq@Equal$BoxType$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$BoxType$ |s0_$2_$1|) (Seq@Length$BoxType$ |s1_$2_$1|)) (forall( (|j_$0_$3| Int))(!(=> (and (<= 0 |j_$0_$3|) (< |j_$0_$3| (Seq@Length$BoxType$ |s0_$2_$1|))) (= (Seq@Index$BoxType$ |s0_$2_$1| |j_$0_$3|) (Seq@Index$BoxType$ |s1_$2_$1| |j_$0_$3|)))  :pattern ( (Seq@Index$BoxType$ |s0_$2_$1| |j_$0_$3|)) :pattern ( (Seq@Index$BoxType$ |s1_$2_$1| |j_$0_$3|))))))  :pattern ( (Seq@Equal$BoxType$ |s0_$2_$1| |s1_$2_$1|))))
    (forall( (|s0_$4| Seq$ref$) (|s1_$4| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$4| |s1_$4|)) (+ (Seq@Length$ref$ |s0_$4|) (Seq@Length$ref$ |s1_$4|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$4| |s1_$4|)))))
    (forall( (|s0_$5| Seq$BoxType$) (|s1_$5| Seq$BoxType$))(!(= (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$5| |s1_$5|)) (+ (Seq@Length$BoxType$ |s0_$5|) (Seq@Length$BoxType$ |s1_$5|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$5| |s1_$5|)))))
    (forall( (|t_$0_$0| ref))(!(= (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$0|) 0) |t_$0_$0|)  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$0|) 0))))
    (forall( (|t_$0_$1| BoxType))(!(= (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$1|) 0) |t_$0_$1|)  :pattern ( (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$1|) 0))))
    (forall( (|t_$3| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)))))
    (forall( (|t_$4| BoxType))(!(= (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|)) 1)  :pattern ( (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|)))))
    (forall( (|v_$5| Bool) (|f_$0_$0| Field$Bool$) (|r_$0_$0| ref) (|H_$0_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$5|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$5|)))
    (forall( (|v_$6| ref) (|f_$0_$1| Field$ref$) (|r_$0_$1| ref) (|H_$0_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$6|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$6|)))
    (forall( (|v_$7| BoxType) (|f_$0_$2| Field$BoxType$) (|r_$0_$2| ref) (|H_$0_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$2| |r_$0_$2| |f_$0_$2| |v_$7|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$2| |r_$0_$2| |f_$0_$2| |v_$7|)))
    (forall( (|v_$8| $@Map@@BoxType@To@Bool@@) (|f_$0_$3| Field$$@Map@@BoxType@To@Bool@@$) (|r_$0_$3| ref) (|H_$0_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$0_$3| |r_$0_$3| |f_$0_$3| |v_$8|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$0_$3| |r_$0_$3| |f_$0_$3| |v_$8|)))
    (forall( (|v_$9| Seq$BoxType$) (|f_$0_$4| Field$Seq$BoxType$$) (|r_$0_$4| ref) (|H_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |H_$0_$4| |r_$0_$4| |f_$0_$4| |v_$9|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$BoxType$$ |H_$0_$4| |r_$0_$4| |f_$0_$4| |v_$9|)))
    (forall( (|x_$11| Int) (|y_$3| Int))(!(= (mod |x_$11| |y_$3|) (- |x_$11| (* (div |x_$11| |y_$3|) |y_$3|)))  :pattern ( (mod |x_$11| |y_$3|)) :pattern ( (div |x_$11| |y_$3|))))
    (forall( (|x_$12| Int) (|y_$4| Int))(!(=> (< 0 |y_$4|) (and (<= 0 (mod |x_$12| |y_$4|)) (< (mod |x_$12| |y_$4|) |y_$4|)))  :pattern ( (mod |x_$12| |y_$4|))))
    (forall( (|x_$13| Int) (|y_$5| Int))(!(=> (< |y_$5| 0) (and (< |y_$5| (mod |x_$13| |y_$5|)) (<= (mod |x_$13| |y_$5|) 0)))  :pattern ( (mod |x_$13| |y_$5|))))
    (forall( (|x_$3| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$3|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$3|))))
    (forall( (|x_$8_$0| Bool))(!(= ($Unbox$Bool$ ($Box$Bool$ |x_$8_$0|)) |x_$8_$0|)  :pattern ( ($Box$Bool$ |x_$8_$0|))))
    (forall( (|x_$8_$1| TickType))(!(= ($Unbox$TickType$ ($Box$TickType$ |x_$8_$1|)) |x_$8_$1|)  :pattern ( ($Box$TickType$ |x_$8_$1|))))
    (forall( (|x_$8_$10| Field$BoxType$))(!(= ($Unbox$Field$BoxType$$ ($Box$Field$BoxType$$ |x_$8_$10|)) |x_$8_$10|)  :pattern ( ($Box$Field$BoxType$$ |x_$8_$10|))))
    (forall( (|x_$8_$11| Field$Bool$))(!(= ($Unbox$Field$Bool$$ ($Box$Field$Bool$$ |x_$8_$11|)) |x_$8_$11|)  :pattern ( ($Box$Field$Bool$$ |x_$8_$11|))))
    (forall( (|x_$8_$12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$8_$12|)) |x_$8_$12|)  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$8_$12|))))
    (forall( (|x_$8_$13| Field$Seq$BoxType$$))(!(= ($Unbox$Field$Seq$BoxType$$$ ($Box$Field$Seq$BoxType$$$ |x_$8_$13|)) |x_$8_$13|)  :pattern ( ($Box$Field$Seq$BoxType$$$ |x_$8_$13|))))
    (forall( (|x_$8_$14| Field$$@Map@@BoxType@To@Bool@@$))(!(= ($Unbox$Field$$@Map@@BoxType@To@Bool@@$$ ($Box$Field$$@Map@@BoxType@To@Bool@@$$ |x_$8_$14|)) |x_$8_$14|)  :pattern ( ($Box$Field$$@Map@@BoxType@To@Bool@@$$ |x_$8_$14|))))
    (forall( (|x_$8_$15| Field$ref$))(!(= ($Unbox$Field$ref$$ ($Box$Field$ref$$ |x_$8_$15|)) |x_$8_$15|)  :pattern ( ($Box$Field$ref$$ |x_$8_$15|))))
    (forall( (|x_$8_$16| $@Map@@$T0@@ref@Field$$T0$@To@Bool@@))(!(= ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$8_$16|)) |x_$8_$16|)  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$8_$16|))))
    (forall( (|x_$8_$2| Int))(!(= ($Unbox$Int$ ($Box$Int$ |x_$8_$2|)) |x_$8_$2|)  :pattern ( ($Box$Int$ |x_$8_$2|))))
    (forall( (|x_$8_$3| Seq$ref$))(!(= ($Unbox$Seq$ref$$ ($Box$Seq$ref$$ |x_$8_$3|)) |x_$8_$3|)  :pattern ( ($Box$Seq$ref$$ |x_$8_$3|))))
    (forall( (|x_$8_$4| ref))(!(= ($Unbox$ref$ ($Box$ref$ |x_$8_$4|)) |x_$8_$4|)  :pattern ( ($Box$ref$ |x_$8_$4|))))
    (forall( (|x_$8_$5| BoxType))(!(= ($Unbox$BoxType$ ($Box$BoxType$ |x_$8_$5|)) |x_$8_$5|)  :pattern ( ($Box$BoxType$ |x_$8_$5|))))
    (forall( (|x_$8_$6| $@Map@@BoxType@To@Bool@@))(!(= ($Unbox$$@Map@@BoxType@To@Bool@@$ ($Box$$@Map@@BoxType@To@Bool@@$ |x_$8_$6|)) |x_$8_$6|)  :pattern ( ($Box$$@Map@@BoxType@To@Bool@@$ |x_$8_$6|))))
    (forall( (|x_$8_$7| Seq$BoxType$))(!(= ($Unbox$Seq$BoxType$$ ($Box$Seq$BoxType$$ |x_$8_$7|)) |x_$8_$7|)  :pattern ( ($Box$Seq$BoxType$$ |x_$8_$7|))))
    (forall( (|x_$8_$8| DatatypeType))(!(= ($Unbox$DatatypeType$ ($Box$DatatypeType$ |x_$8_$8|)) |x_$8_$8|)  :pattern ( ($Box$DatatypeType$ |x_$8_$8|))))
    (forall( (|x_$8_$9| ClassName))(!(= ($Unbox$ClassName$ ($Box$ClassName$ |x_$8_$9|)) |x_$8_$9|)  :pattern ( ($Box$ClassName$ |x_$8_$9|))))
    (forall( (|x_$9| Int) (|h_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$6|) (GenericAlloc ($Box$Int$ |x_$9|) |h_$6|)))
  )
    PreconditionGeneratedEntry
)))
(let (($root (=> (and true
  )
    $start
)))
   $root
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
