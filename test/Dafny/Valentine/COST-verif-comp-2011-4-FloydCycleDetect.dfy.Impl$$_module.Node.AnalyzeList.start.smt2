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
(declare-sort $@Map@@BoxType@To@BoxType@@ 0)
(declare-sort BoxType 0)
(declare-sort ClassName 0)
(declare-sort DatatypeType 0)
(declare-sort Field$Bool$ 0)
(declare-sort Field$BoxType$ 0)
(declare-sort Field$ref$ 0)
(declare-sort LayerType 0)
(declare-sort Map$BoxType$BoxType$ 0)
(declare-sort NameFamily 0)
(declare-sort ref 0)
(declare-sort Seq$BoxType$ 0)
(declare-sort Seq$ref$ 0)

;Functions
(declare-fun $_Frame@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun $Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) BoxType)
(declare-fun $Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ) BoxType)
(declare-fun $Box$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ ) BoxType)
(declare-fun $Box$$@Map@@BoxType@To@BoxType@@$ ( $@Map@@BoxType@To@BoxType@@ ) BoxType)
(declare-fun $Box$Bool$ ( Bool ) BoxType)
(declare-fun $Box$BoxType$ ( BoxType ) BoxType)
(declare-fun $Box$ClassName$ ( ClassName ) BoxType)
(declare-fun $Box$DatatypeType$ ( DatatypeType ) BoxType)
(declare-fun $Box$Field$Bool$$ ( Field$Bool$ ) BoxType)
(declare-fun $Box$Field$BoxType$$ ( Field$BoxType$ ) BoxType)
(declare-fun $Box$Field$ref$$ ( Field$ref$ ) BoxType)
(declare-fun $Box$Int$ ( Int ) BoxType)
(declare-fun $Box$LayerType$ ( LayerType ) BoxType)
(declare-fun $Box$Map$BoxType$BoxType$$ ( Map$BoxType$BoxType$ ) BoxType)
(declare-fun $Box$NameFamily$ ( NameFamily ) BoxType)
(declare-fun $Box$ref$ ( ref ) BoxType)
(declare-fun $Box$Seq$BoxType$$ ( Seq$BoxType$ ) BoxType)
(declare-fun $Box$Seq$ref$$ ( Seq$ref$ ) BoxType)
(declare-fun $decr0$0@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $decr0$init$0@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $decr1$0@1 ( ) Int)
(declare-fun $decr1$init$0@0 ( ) Int)
(declare-fun $FunctionContextHeight ( ) Int)
(declare-fun $Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $LS ( LayerType ) LayerType)
(declare-fun $LZ ( ) LayerType)
(declare-fun $ModuleContextHeight ( ) Int)
(declare-fun $rhs@11@0 ( ) Int)
(declare-fun $rhs@12@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@16@1 ( ) ref)
(declare-fun $rhs@17@1 ( ) Int)
(declare-fun $rhs@18@1 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@20@0 ( ) Int)
(declare-fun $Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun $Unbox$$@Map@@BoxType@To@Bool@@$ ( BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun $Unbox$$@Map@@BoxType@To@BoxType@@$ ( BoxType ) $@Map@@BoxType@To@BoxType@@)
(declare-fun $Unbox$BoxType$ ( BoxType ) BoxType)
(declare-fun $Unbox$ClassName$ ( BoxType ) ClassName)
(declare-fun $Unbox$DatatypeType$ ( BoxType ) DatatypeType)
(declare-fun $Unbox$Field$Bool$$ ( BoxType ) Field$Bool$)
(declare-fun $Unbox$Field$BoxType$$ ( BoxType ) Field$BoxType$)
(declare-fun $Unbox$Field$ref$$ ( BoxType ) Field$ref$)
(declare-fun $Unbox$Int$ ( BoxType ) Int)
(declare-fun $Unbox$LayerType$ ( BoxType ) LayerType)
(declare-fun $Unbox$Map$BoxType$BoxType$$ ( BoxType ) Map$BoxType$BoxType$)
(declare-fun $Unbox$NameFamily$ ( BoxType ) NameFamily)
(declare-fun $Unbox$ref$ ( BoxType ) ref)
(declare-fun $Unbox$Seq$BoxType$$ ( BoxType ) Seq$BoxType$)
(declare-fun $Unbox$Seq$ref$$ ( BoxType ) Seq$ref$)
(declare-fun _module.Node.next ( ) Field$ref$)
(declare-fun _module.Node.Nexxxt ( LayerType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Int $@Map@@BoxType@To@Bool@@ ) ref)
(declare-fun _System.array.Length ( ref ) Int)
(declare-fun A@1@0 ( ) Int)
(declare-fun A@1@1 ( ) Int)
(declare-fun A@1@2 ( ) Int)
(declare-fun A@1@3 ( ) Int)
(declare-fun alloc ( ) Field$Bool$)
(declare-fun B@2@0 ( ) Int)
(declare-fun B@2@1 ( ) Int)
(declare-fun class._module.Node ( ) ClassName)
(declare-fun DeclName$Bool$ ( Field$Bool$ ) NameFamily)
(declare-fun DeclName$BoxType$ ( Field$BoxType$ ) NameFamily)
(declare-fun DeclName$ref$ ( Field$ref$ ) NameFamily)
(declare-fun DeclType$Bool$ ( Field$Bool$ ) ClassName)
(declare-fun DeclType$BoxType$ ( Field$BoxType$ ) ClassName)
(declare-fun DeclType$ref$ ( Field$ref$ ) ClassName)
(declare-fun DtRank ( DatatypeType ) Int)
(declare-fun DtType ( DatatypeType ) ClassName)
(declare-fun dtype ( ref ) ClassName)
(declare-fun FDim$Bool$ ( Field$Bool$ ) Int)
(declare-fun FDim$BoxType$ ( Field$BoxType$ ) Int)
(declare-fun FDim$ref$ ( Field$ref$ ) Int)
(declare-fun field$next ( ) NameFamily)
(declare-fun FieldOfDecl$Bool$ ( ClassName NameFamily ) Field$Bool$)
(declare-fun FieldOfDecl$BoxType$ ( ClassName NameFamily ) Field$BoxType$)
(declare-fun FieldOfDecl$ref$ ( ClassName NameFamily ) Field$ref$)
(declare-fun IndexField ( Int ) Field$BoxType$)
(declare-fun k@46@0 ( ) Int)
(declare-fun k@56@0 ( ) Int)
(declare-fun k@60@0 ( ) Int)
(declare-fun l@47@0 ( ) Int)
(declare-fun lambda@6 ( Field$Bool$ ref $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun Lit$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Lit$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun Lit$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Lit$$@Map@@BoxType@To@BoxType@@$ ( $@Map@@BoxType@To@BoxType@@ ) $@Map@@BoxType@To@BoxType@@)
(declare-fun Lit$BoxType$ ( BoxType ) BoxType)
(declare-fun Lit$ClassName$ ( ClassName ) ClassName)
(declare-fun Lit$DatatypeType$ ( DatatypeType ) DatatypeType)
(declare-fun Lit$Field$Bool$$ ( Field$Bool$ ) Field$Bool$)
(declare-fun Lit$Field$BoxType$$ ( Field$BoxType$ ) Field$BoxType$)
(declare-fun Lit$Field$ref$$ ( Field$ref$ ) Field$ref$)
(declare-fun Lit$Int$ ( Int ) Int)
(declare-fun Lit$LayerType$ ( LayerType ) LayerType)
(declare-fun Lit$Map$BoxType$BoxType$$ ( Map$BoxType$BoxType$ ) Map$BoxType$BoxType$)
(declare-fun Lit$NameFamily$ ( NameFamily ) NameFamily)
(declare-fun Lit$ref$ ( ref ) ref)
(declare-fun Lit$Seq$BoxType$$ ( Seq$BoxType$ ) Seq$BoxType$)
(declare-fun Lit$Seq$ref$$ ( Seq$ref$ ) Seq$ref$)
(declare-fun Map@Build$BoxType$BoxType$ ( Map$BoxType$BoxType$ BoxType BoxType ) Map$BoxType$BoxType$)
(declare-fun Map@Card$BoxType$BoxType$ ( Map$BoxType$BoxType$ ) Int)
(declare-fun Map@Domain$BoxType$BoxType$ ( Map$BoxType$BoxType$ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Map@Elements$BoxType$BoxType$ ( Map$BoxType$BoxType$ ) $@Map@@BoxType@To@BoxType@@)
(declare-fun Map@Empty$BoxType$BoxType$ ( ) Map$BoxType$BoxType$)
(declare-fun Map@Glue$BoxType$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@BoxType@@ ) Map$BoxType$BoxType$)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$BoxType$ ) BoxType)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ) ref)
(declare-fun MapRead$$@Map@@BoxType@To@BoxType@@$ ( $@Map@@BoxType@To@BoxType@@ BoxType ) BoxType)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ Bool ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$BoxType$ BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Math@clip ( Int ) Int)
(declare-fun Math@min ( Int Int ) Int)
(declare-fun MultiIndexField ( Field$BoxType$ Int ) Field$BoxType$)
(declare-fun MultiIndexField_Inverse0$BoxType$ ( Field$BoxType$ ) Field$BoxType$)
(declare-fun MultiIndexField_Inverse1$BoxType$ ( Field$BoxType$ ) Int)
(declare-fun null ( ) ref)
(declare-fun p@30 ( ) ref)
(declare-fun p@30@0 ( ) ref)
(declare-fun q@40@0 ( ) ref)
(declare-fun S@0 ( ) $@Map@@BoxType@To@Bool@@)
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
(declare-fun Seq@Rank$BoxType$ ( Seq$BoxType$ ) Int)
(declare-fun Seq@Rank$ref$ ( Seq$ref$ ) Int)
(declare-fun Seq@Singleton$BoxType$ ( BoxType ) Seq$BoxType$)
(declare-fun Seq@Singleton$ref$ ( ref ) Seq$ref$)
(declare-fun Seq@Take$BoxType$ ( Seq$BoxType$ Int ) Seq$BoxType$)
(declare-fun Seq@Take$ref$ ( Seq$ref$ Int ) Seq$ref$)
(declare-fun Seq@Update$BoxType$ ( Seq$BoxType$ Int BoxType ) Seq$BoxType$)
(declare-fun Seq@Update$ref$ ( Seq$ref$ Int ref ) Seq$ref$)
(declare-fun Set@Card$BoxType$ ( $@Map@@BoxType@To@Bool@@ ) Int)
(declare-fun Set@Difference$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Empty$BoxType$ ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Intersection$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Singleton$BoxType$ ( BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Union$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@UnionOne$BoxType$ ( $@Map@@BoxType@To@Bool@@ BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun steps@31@0 ( ) Int)
(declare-fun t@35@0 ( ) Int)
(declare-fun t@41@0 ( ) Int)
(declare-fun this ( ) ref)
(declare-fun TypeTuple ( ClassName ClassName ) ClassName)
(declare-fun TypeTupleCar ( ClassName ) ClassName)
(declare-fun TypeTupleCdr ( ClassName ) ClassName)
(declare-fun Visited@32 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun Visited@32@0 ( ) $@Map@@BoxType@To@Bool@@)

;Predicates
(declare-fun $$Language$Dafny ( ) Bool)
(declare-fun $HeapSucc ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $IsCanonicalBoolBox ( BoxType ) Bool)
(declare-fun $IsGhostField$Bool$ ( Field$Bool$ ) Bool)
(declare-fun $IsGhostField$ref$ ( Field$ref$ ) Bool)
(declare-fun $IsGoodHeap ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $IsGoodSet_Extended$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@BoxType@To@Bool@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $IsGoodSet_Extended$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ) Bool)
(declare-fun $IsGoodSet_Extended$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun $IsGoodSet_Extended$$@Map@@BoxType@To@BoxType@@$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@BoxType@@ ) Bool)
(declare-fun $IsGoodSet_Extended$Bool$ ( $@Map@@BoxType@To@Bool@@ Bool ) Bool)
(declare-fun $IsGoodSet_Extended$BoxType$ ( $@Map@@BoxType@To@Bool@@ BoxType ) Bool)
(declare-fun $IsGoodSet_Extended$ClassName$ ( $@Map@@BoxType@To@Bool@@ ClassName ) Bool)
(declare-fun $IsGoodSet_Extended$DatatypeType$ ( $@Map@@BoxType@To@Bool@@ DatatypeType ) Bool)
(declare-fun $IsGoodSet_Extended$Field$Bool$$ ( $@Map@@BoxType@To@Bool@@ Field$Bool$ ) Bool)
(declare-fun $IsGoodSet_Extended$Field$BoxType$$ ( $@Map@@BoxType@To@Bool@@ Field$BoxType$ ) Bool)
(declare-fun $IsGoodSet_Extended$Field$ref$$ ( $@Map@@BoxType@To@Bool@@ Field$ref$ ) Bool)
(declare-fun $IsGoodSet_Extended$Int$ ( $@Map@@BoxType@To@Bool@@ Int ) Bool)
(declare-fun $IsGoodSet_Extended$LayerType$ ( $@Map@@BoxType@To@Bool@@ LayerType ) Bool)
(declare-fun $IsGoodSet_Extended$Map$BoxType$BoxType$$ ( $@Map@@BoxType@To@Bool@@ Map$BoxType$BoxType$ ) Bool)
(declare-fun $IsGoodSet_Extended$NameFamily$ ( $@Map@@BoxType@To@Bool@@ NameFamily ) Bool)
(declare-fun $IsGoodSet_Extended$ref$ ( $@Map@@BoxType@To@Bool@@ ref ) Bool)
(declare-fun $IsGoodSet_Extended$Seq$BoxType$$ ( $@Map@@BoxType@To@Bool@@ Seq$BoxType$ ) Bool)
(declare-fun $IsGoodSet_Extended$Seq$ref$$ ( $@Map@@BoxType@To@Bool@@ Seq$ref$ ) Bool)
(declare-fun $Unbox$Bool$ ( BoxType ) Bool)
(declare-fun $w0@0 ( ) Bool)
(declare-fun $w1@0 ( ) Bool)
(declare-fun _module.Node.IsClosed ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun _module.Node.IsClosed@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun _module.Node.Nexxxt@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Int $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun _module.Node.Reaches ( LayerType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ref $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun _module.Node.Reaches@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ref $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun DtAlloc ( DatatypeType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun GenericAlloc ( BoxType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun Lit$Bool$ ( Bool ) Bool)
(declare-fun Map@Equal$BoxType$BoxType$ ( Map$BoxType$BoxType$ Map$BoxType$BoxType$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$BoxType$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$ref$ ) Bool)
(declare-fun MapRead$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ BoxType ) Bool)
(declare-fun Seq@Contains$BoxType$ ( Seq$BoxType$ BoxType ) Bool)
(declare-fun Seq@Contains$ref$ ( Seq$ref$ ref ) Bool)
(declare-fun Seq@Equal$BoxType$ ( Seq$BoxType$ Seq$BoxType$ ) Bool)
(declare-fun Seq@Equal$ref$ ( Seq$ref$ Seq$ref$ ) Bool)
(declare-fun Set@Disjoint$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun Set@Equal$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun Set@Subset$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)

;Axioms
   (assert (! (forall ((|i_1| Field$Bool$)(|i| ref)(|m| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v| Bool))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_0))
   (assert (! (forall ((|i_17| Field$ref$)(|i_16| ref)(|m_8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_8| ref))(!(= v_8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_8 i_16 i_17 v_8) i_16 i_17)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_8 i_16 i_17 v_8) i_16 i_17)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_1))
   (assert (! (forall ((|i_9| Field$BoxType$)(|i_8| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_4| BoxType))(!(= v_4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_4 i_8 i_9 v_4) i_8 i_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_4 i_8 i_9 v_4) i_8 i_9)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_2))
   (assert (! (forall ((|v_1| Bool)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_3| Field$Bool$)(|j_1| Field$Bool$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_3))
   (assert (! (forall ((|v_10| ref)(|i_21| Field$ref$)(|i_20| ref)(|j_15| Field$BoxType$)(|j_14| ref)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_10 j_14 j_15) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_10 i_20 i_21 v_10) j_14 j_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_10 i_20 i_21 v_10) j_14 j_15)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__ref :weight 0 )) :named ax_4))
   (assert (! (forall ((|v_11| ref)(|i_23| Field$ref$)(|i_22| ref)(|j_17| Field$Bool$)(|j_16| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_11 j_16 j_17) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_11 i_22 i_23 v_11) j_16 j_17)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_11 i_22 i_23 v_11) j_16 j_17)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_5))
   (assert (! (forall ((|v_2| Bool)(|i_5| Field$Bool$)(|i_4| ref)(|j_3| Field$BoxType$)(|j_2| ref)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_2 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__Bool :weight 0 )) :named ax_6))
   (assert (! (forall ((|v_3| Bool)(|i_7| Field$Bool$)(|i_6| ref)(|j_5| Field$ref$)(|j_4| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_3 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Bool :weight 0 )) :named ax_7))
   (assert (! (forall ((|v_5| BoxType)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_11| Field$BoxType$)(|j_7| Field$BoxType$)(|i_10| ref)(|j_6| ref))(!(=> (or (not (= j_7 i_11)) (not (= j_6 i_10))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_5 i_10 i_11 v_5) j_6 j_7))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_5 i_10 i_11 v_5) j_6 j_7)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_8))
   (assert (! (forall ((|v_6| BoxType)(|i_13| Field$BoxType$)(|i_12| ref)(|j_9| Field$Bool$)(|j_8| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_6 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_6 i_12 i_13 v_6) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_6 i_12 i_13 v_6) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__BoxType :weight 0 )) :named ax_9))
   (assert (! (forall ((|v_7| BoxType)(|i_15| Field$BoxType$)(|i_14| ref)(|j_11| Field$ref$)(|j_10| ref)(|m_7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_7 j_10 j_11) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_7 i_14 i_15 v_7) j_10 j_11)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_7 i_14 i_15 v_7) j_10 j_11)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__BoxType :weight 0 )) :named ax_10))
   (assert (! (forall ((|v_9| ref)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_19| Field$ref$)(|j_13| Field$ref$)(|i_18| ref)(|j_12| ref))(!(=> (or (not (= j_13 i_19)) (not (= j_12 i_18))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_9 j_12 j_13) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_9 i_18 i_19 v_9) j_12 j_13))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_9 i_18 i_19 v_9) j_12 j_13)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_11))

;Program
(assert (not
(let ((anon70_Else@1_assertion (and
    (< (- steps@31@0 A@1@2) $decr1$0@1)
)))
(let ((anon0@5_assertion (and
    (=> $w0@0 (forall( (|t#38| Int))(=> (forall( (|t$ih#13#39| Int))(=> (and (< |t$ih#13#39| |t#38|) (<= 0 |t$ih#13#39|)) (=> (and (< |t$ih#13#39| $rhs@11@0) (<= 0 |t$ih#13#39|)) (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@12@0 ($Box$ref$ (_module.Node.Nexxxt ($LS $LZ) $Heap this |t$ih#13#39| S@0)))))) (=> (and (< |t#38| $rhs@11@0) (<= 0 |t#38|)) (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@12@0 ($Box$ref$ (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |t#38| S@0)))))))
)))
(let ((anon0@7_assertion (and
    (=> $w0@0 (forall( (|k#52| Int) (|l#53| Int))(=> (forall( (|k$ih#14#54| Int) (|l$ih#15#55| Int))(=> (or (and (< |l$ih#15#55| |l#53|) (and (= |k$ih#14#54| |k#52|) (<= 0 |l$ih#15#55|))) (and (< |k$ih#14#54| |k#52|) (<= 0 |k$ih#14#54|))) (=> (and (< |l$ih#15#55| $rhs@11@0) (and (< |k$ih#14#54| |l$ih#15#55|) (<= 0 |k$ih#14#54|))) (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap this |l$ih#15#55| S@0) (_module.Node.Nexxxt ($LS $LZ) $Heap this |k$ih#14#54| S@0)))))) (=> (and (< |l#53| $rhs@11@0) (and (< |k#52| |l#53|) (<= 0 |k#52|))) (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |l#53| S@0) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |k#52| S@0)))))))
)))
(let ((anon61_Else@7_assertion (and
    (=> $w0@0 (forall( (|t#38_$4| Int))(=> (forall( (|t$ih#13#39_$1| Int))(=> (and (< |t$ih#13#39_$1| |t#38_$4|) (<= 0 |t$ih#13#39_$1|)) (=> (and (< |t$ih#13#39_$1| $rhs@17@1) (<= 0 |t$ih#13#39_$1|)) (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@18@1 ($Box$ref$ (_module.Node.Nexxxt ($LS $LZ) $Heap this |t$ih#13#39_$1| S@0)))))) (=> (and (< |t#38_$4| $rhs@17@1) (<= 0 |t#38_$4|)) (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@18@1 ($Box$ref$ (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |t#38_$4| S@0)))))))
)))
(let ((anon61_Else@9_assertion (and
    (=> $w0@0 (forall( (|k#52_$4| Int) (|l#53_$4| Int))(=> (forall( (|k$ih#14#54_$1| Int) (|l$ih#15#55_$1| Int))(=> (or (and (< |l$ih#15#55_$1| |l#53_$4|) (and (= |k$ih#14#54_$1| |k#52_$4|) (<= 0 |l$ih#15#55_$1|))) (and (< |k$ih#14#54_$1| |k#52_$4|) (<= 0 |k$ih#14#54_$1|))) (=> (and (< |l$ih#15#55_$1| $rhs@17@1) (and (< |k$ih#14#54_$1| |l$ih#15#55_$1|) (<= 0 |k$ih#14#54_$1|))) (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap this |l$ih#15#55_$1| S@0) (_module.Node.Nexxxt ($LS $LZ) $Heap this |k$ih#14#54_$1| S@0)))))) (=> (and (< |l#53_$4| $rhs@17@1) (and (< |k#52_$4| |l#53_$4|) (<= 0 |k#52_$4|))) (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |l#53_$4| S@0) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |k#52_$4| S@0)))))))
)))
(let ((GeneratedUnifiedExit@2_assertion (and
    (forall( (|k#10| Int) (|l#11| Int))(=> (forall( (|k$ih#7#28| Int) (|l$ih#8#29| Int))(=> (or (and (< |l$ih#8#29| |l#11|) (and (= |k$ih#7#28| |k#10|) (<= 0 |l$ih#8#29|))) (and (< |k$ih#7#28| |k#10|) (<= 0 |k$ih#7#28|))) (=> (and (< |l$ih#8#29| A@1@3) (and (< |k$ih#7#28| |l$ih#8#29|) (<= 0 |k$ih#7#28|))) (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this |l$ih#8#29| S@0) (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this |k$ih#7#28| S@0)))))) (=> (and (< |l#11| A@1@3) (and (< |k#10| |l#11|) (<= 0 |k#10|))) (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this |l#11| S@0) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this |k#10| S@0))))))
)))
(let ((anon34@3_assertion (and
    (=> $w1@0 (forall( (|k#63| Int))(=> (forall( (|k$ih#21#64| Int))(=> (and (< |k$ih#21#64| |k#63|) (<= 0 |k$ih#21#64|)) (=> (and (< |k$ih#21#64| A@1@0) (<= 0 |k$ih#21#64|)) (not (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this |k$ih#21#64| S@0)))))) (=> (and (< |k#63| A@1@0) (<= 0 |k#63|)) (not (= p@30@0 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |k#63| S@0)))))))
)))
(let ((anon70_Else@4_assertion (and
    (=> $w1@0 (forall( (|k#63_$4| Int))(=> (forall( (|k$ih#21#64_$1| Int))(=> (and (< |k$ih#21#64_$1| |k#63_$4|) (<= 0 |k$ih#21#64_$1|)) (=> (and (< |k$ih#21#64_$1| A@1@2) (<= 0 |k$ih#21#64_$1|)) (not (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this |k$ih#21#64_$1| S@0)))))) (=> (and (< |k#63_$4| A@1@2) (<= 0 |k#63_$4|)) (not (= p@30@0 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |k#63_$4| S@0)))))))
)))
(let ((anon34@2_assertion (and
    (=> $w1@0 (< A@1@0 steps@31@0))
)))
(let ((anon70_Else@3_assertion (and
    (=> $w1@0 (< A@1@2 steps@31@0))
)))
(let ((anon46@3_assertion (and
    (=> (_module.Node.IsClosed@canCall $Heap this S@0) (or (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ this)) (_module.Node.IsClosed $Heap this S@0)))
)))
(let ((anon46@4_assertion (and
    (=> (_module.Node.IsClosed@canCall $Heap this S@0) (or (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ null)) (_module.Node.IsClosed $Heap this S@0)))
)))
(let ((anon46@5_assertion (and
    (=> (_module.Node.IsClosed@canCall $Heap this S@0) (or (_module.Node.IsClosed $Heap this S@0) (forall( (|n#12| ref))(=> (or (= null |n#12|) (and (= (dtype |n#12|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |n#12| alloc))) (=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ |n#12|)) (not (= null |n#12|))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |n#12| _module.Node.next)))) (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |n#12| _module.Node.next))))))))
)))
(let ((anon0@1_assertion (and
    (=> $w0@0 (= this (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this $rhs@11@0 S@0)))
)))
(let ((anon0@2_assertion (and
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ this)))
)))
(let ((anon0@4_assertion (and
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@12@0 S@0))
)))
(let ((anon0@6_assertion (and
    (=> $w0@0 (forall( (|q#45| ref))(=> (or (= |q#45| null) (and (= (dtype |q#45|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |q#45| alloc))) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@12@0 ($Box$ref$ |q#45|)) (or (= |q#45| null) (exists( (|t#44| Int))(and (= |q#45| (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |t#44| S@0)) (and (< |t#44| $rhs@11@0) (<= 0 |t#44|)))))))))
)))
(let ((anon61_Else@3_assertion (and
    (=> $w0@0 (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this $rhs@17@1 S@0) $rhs@16@1))
)))
(let ((anon61_Else@4_assertion (and
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ $rhs@16@1)))
)))
(let ((anon61_Else@6_assertion (and
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@18@1 S@0))
)))
(let ((anon61_Else@8_assertion (and
    (=> $w0@0 (forall( (|q#45_$4| ref))(=> (or (= |q#45_$4| null) (and (= (dtype |q#45_$4|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |q#45_$4| alloc))) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@18@1 ($Box$ref$ |q#45_$4|)) (or (= |q#45_$4| null) (exists( (|t#44_$4| Int))(and (= |q#45_$4| (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |t#44_$4| S@0)) (and (< |t#44_$4| $rhs@17@1) (<= 0 |t#44_$4|)))))))))
)))
(let ((anon70_Else_assertion (and
    (or (<= 0 $decr1$0@1) (= (- steps@31@0 A@1@2) $decr1$0@1))
)))
(let ((GeneratedUnifiedExit@3_assertion (and
    (or (= null (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this A@1@3 S@0)) (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this A@1@3 S@0) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this A@1@3 S@0) B@2@1 S@0)))
)))
(let ((anon0@3_assertion (and
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@12@0 ($Box$ref$ null)))
)))
(let ((anon61_Else@5_assertion (and
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@18@1 ($Box$ref$ null)))
)))
(let ((anon0_assertion (and
    (=> $w0@0 (<= 0 $rhs@11@0))
)))
(let ((anon61_Else@2_assertion (and
    (=> $w0@0 (<= 0 $rhs@17@1))
)))
(let ((anon34@1_assertion (and
    (=> $w1@0 (<= 0 A@1@0))
)))
(let ((anon70_Else@2_assertion (and
    (=> $w1@0 (<= 0 A@1@2))
)))
(let ((anon46_assertion (and
    (_module.Node.IsClosed $Heap this S@0)
    (<= 0 A@1@1)
)))
(let ((anon66_Else_assertion (and
    (_module.Node.IsClosed $Heap this S@0)
    (<= 0 A@1@1)
)))
(let ((anon46@6_assertion (and
    (<= 0 A@1@1)
)))
(let ((GeneratedUnifiedExit_assertion (and
    (<= 0 A@1@3)
)))
(let ((anon46@7_assertion (and
    (<= 0 B@2@0)
)))
(let ((GeneratedUnifiedExit@1_assertion (and
    (<= 1 B@2@1)
)))
(let ((anon60_Then_assertion (and
    (_module.Node.IsClosed $Heap this S@0)
    (<= 0 k@46@0)
)))
(let ((anon64_Then_assertion (and
    (_module.Node.IsClosed $Heap this S@0)
    (<= 0 k@56@0)
)))
(let ((anon69_Then_assertion (and
    (_module.Node.IsClosed $Heap this S@0)
    (<= 0 k@60@0)
)))
(let ((anon60_Then@1_assertion (and
    (_module.Node.IsClosed $Heap this S@0)
    (<= 0 l@47@0)
)))
(let ((anon49_Then_assertion (and
    (_module.Node.IsClosed $Heap this S@0)
    (<= 0 steps@31@0)
)))
(let ((anon53_Then_assertion (and
    (_module.Node.IsClosed $Heap this S@0)
    (<= 0 t@35@0)
)))
(let ((anon57_Then_assertion (and
    (_module.Node.IsClosed $Heap this S@0)
    (<= 0 t@41@0)
)))
(let ((anon34_assertion (and
    (exists( (|k#59_$0| Int))(and (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this |k#59_$0| S@0)) (and (< |k#59_$0| steps@31@0) (<= 0 |k#59_$0|))))
)))
(let ((anon46@1_assertion (and
    (not (= null (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this A@1@1 S@0)))
)))
(let ((anon61_Else_assertion (and
    (not (= p@30@0 null))
)))
(let ((anon61_Else@1_assertion (and
    (not (Set@Subset$BoxType$ $decr0$0@1 (Set@Difference$BoxType$ S@0 $rhs@18@1)))
    (Set@Subset$BoxType$ (Set@Difference$BoxType$ S@0 $rhs@18@1) $decr0$0@1)
)))
(let ((anon61_Else@9 (=> (and true
    (=> $w0@0 (forall( (|q#45_$4| ref))(=> (or (= |q#45_$4| null) (and (= (dtype |q#45_$4|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |q#45_$4| alloc))) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@18@1 ($Box$ref$ |q#45_$4|)) (or (= |q#45_$4| null) (exists( (|t#44_$4| Int))(and (= |q#45_$4| (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |t#44_$4| S@0)) (and (< |t#44_$4| $rhs@17@1) (<= 0 |t#44_$4|)))))))))
  )
    anon61_Else@9_assertion
)))
(let ((anon70_Else@4 (=> (and true
    (=> $w1@0 (< A@1@2 steps@31@0))
  )
    anon70_Else@4_assertion
)))
(let ((GeneratedUnifiedExit@3 (=> (and true
    (forall( (|k#10| Int) (|l#11| Int))(=> (forall( (|k$ih#7#28| Int) (|l$ih#8#29| Int))(=> (or (and (< |l$ih#8#29| |l#11|) (and (= |k$ih#7#28| |k#10|) (<= 0 |l$ih#8#29|))) (and (< |k$ih#7#28| |k#10|) (<= 0 |k$ih#7#28|))) (=> (and (< |l$ih#8#29| A@1@3) (and (< |k$ih#7#28| |l$ih#8#29|) (<= 0 |k$ih#7#28|))) (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this |l$ih#8#29| S@0) (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this |k$ih#7#28| S@0)))))) (=> (and (< |l#11| A@1@3) (and (< |k#10| |l#11|) (<= 0 |k#10|))) (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this |l#11| S@0) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this |k#10| S@0))))))
  )
    GeneratedUnifiedExit@3_assertion
)))
(let ((anon69_Then (=> (and true
    (< k@60@0 A@1@1)
    (<= 0 k@60@0)
  )
    anon69_Then_assertion
)))
(let ((anon60_Then@1 (=> (and true
    (_module.Node.IsClosed $Heap this S@0)
    (_module.Node.Nexxxt@canCall $Heap this k@46@0 S@0)
    (<= 0 k@46@0)
  )
    anon60_Then@1_assertion
)))
(let ((anon61_Else@8 (=> (and true
    (=> $w0@0 (forall( (|t#38_$4| Int))(=> (forall( (|t$ih#13#39_$1| Int))(=> (and (< |t$ih#13#39_$1| |t#38_$4|) (<= 0 |t$ih#13#39_$1|)) (=> (and (< |t$ih#13#39_$1| $rhs@17@1) (<= 0 |t$ih#13#39_$1|)) (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@18@1 ($Box$ref$ (_module.Node.Nexxxt ($LS $LZ) $Heap this |t$ih#13#39_$1| S@0)))))) (=> (and (< |t#38_$4| $rhs@17@1) (<= 0 |t#38_$4|)) (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@18@1 ($Box$ref$ (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |t#38_$4| S@0)))))))
  )(and 
    anon61_Else@8_assertion
    anon61_Else@9
))))
(let ((anon70_Else@3 (=> (and true
    (=> $w1@0 (<= 0 A@1@2))
  )(and 
    anon70_Else@3_assertion
    anon70_Else@4
))))
(let ((GeneratedUnifiedExit@2 (=> (and true
    (<= 1 B@2@1)
  )(and 
    GeneratedUnifiedExit@2_assertion
    GeneratedUnifiedExit@3
))))
(let (($branchMerge_5 (=> (and true
  )
    anon69_Then
)))
(let ((anon60_Then (=> (and true
    (< k@46@0 l@47@0)
    (< l@47@0 steps@31@0)
    (<= 0 k@46@0)
  )(and 
    anon60_Then_assertion
    anon60_Then@1
))))
(let ((anon61_Else@7 (=> (and true
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@18@1 S@0))
  )(and 
    anon61_Else@7_assertion
    anon61_Else@8
))))
(let ((anon70_Else@2 (=> (and true
    (< (- steps@31@0 A@1@2) $decr1$0@1)
    (forall( (|k#63_$3| Int))(=> (and (< |k#63_$3| A@1@2) (<= 0 |k#63_$3|)) (_module.Node.Nexxxt@canCall $Heap this |k#63_$3| S@0)))
    true
  )(and 
    anon70_Else@2_assertion
    anon70_Else@3
))))
(let ((GeneratedUnifiedExit@1 (=> (and true
    (<= 0 A@1@3)
  )(and 
    GeneratedUnifiedExit@1_assertion
    GeneratedUnifiedExit@2
))))
(let ((anon68_Else (=> (and true
    (< k@60@0 0)
  )
    $branchMerge_5
)))
(let ((anon68_Then (=> (and true
    (<= 0 k@60@0)
  )
    $branchMerge_5
)))
(let (($branchMerge_7 (=> (and true
  )
    anon60_Then
)))
(let ((anon61_Else@6 (=> (and true
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@18@1 ($Box$ref$ null)))
  )(and 
    anon61_Else@6_assertion
    anon61_Else@7
))))
(let ((anon70_Else@1 (=> (and true
    (or (<= 0 $decr1$0@1) (= (- steps@31@0 A@1@2) $decr1$0@1))
  )(and 
    anon70_Else@1_assertion
    anon70_Else@2
))))
(let ((GeneratedUnifiedExit (=> (and true
  )(and 
    GeneratedUnifiedExit_assertion
    GeneratedUnifiedExit@1
))))
(let ((anon38 (=> (and true
    (< A@1@1 steps@31@0)
    (<= 0 A@1@1)
    true
  )
    (and anon68_Else anon68_Then)
)))
(let ((anon59_Else (=> (and true
    (not (and (< k@46@0 l@47@0) (<= 0 k@46@0)))
  )
    $branchMerge_7
)))
(let ((anon59_Then (=> (and true
    (< k@46@0 l@47@0)
    (<= 0 k@46@0)
  )
    $branchMerge_7
)))
(let ((anon61_Else@5 (=> (and true
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ $rhs@16@1)))
  )(and 
    anon61_Else@5_assertion
    anon61_Else@6
))))
(let ((anon70_Else (=> (and true
    (= (- steps@31@0 A@1@1) $decr1$0@1)
    (= A@1@2 (+ A@1@1 1))
    (not (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this A@1@1 S@0)))
  )(and 
    anon70_Else_assertion
    anon70_Else@1
))))
(let ((anon46@8 (=> (and true
    ($IsGoodHeap $Heap@0)
    (<= 0 B@2@0)
    (= $Heap@0 $Heap)
    (= $Heap@1 $Heap@0)
    (= A@1@3 A@1@1)
    (= B@2@1 B@2@0)
    (=> (not (= null (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this A@1@1 S@0))) (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this (+ A@1@1 B@2@0) S@0) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this A@1@1 S@0) B@2@0 S@0)))
  )
    GeneratedUnifiedExit
)))
(let ((anon62_Then (=> (and true
    (= $Heap@1 $Heap)
    (= (Lit$Int$ 1) $rhs@20@0)
    (= B@2@1 $rhs@20@0)
    (= p@30@0 null)
    (= steps@31@0 A@1@3)
  )
    GeneratedUnifiedExit
)))
(let ((anon67_Else (=> (and true
    (< A@1@1 0)
  )
    anon38
)))
(let ((anon67_Then (=> (and true
    (<= 0 A@1@1)
  )
    anon38
)))
(let (($branchMerge_6 (=> (and true
  )
    (and anon59_Else anon59_Then)
)))
(let ((anon61_Else@4 (=> (and true
    (=> $w0@0 (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this $rhs@17@1 S@0) $rhs@16@1))
  )(and 
    anon61_Else@4_assertion
    anon61_Else@5
))))
(let ((anon46@7 (=> (and true
    (<= 0 A@1@1)
  )(and 
    anon46@7_assertion
    anon46@8
))))
(let ((anon66_Then (=> (and true
    (not $w1@0)
  )
    (and anon67_Else anon67_Then)
)))
(let ((anon58_Else (=> (and true
    (< k@46@0 0)
  )
    $branchMerge_6
)))
(let ((anon58_Then (=> (and true
    (<= 0 k@46@0)
  )
    $branchMerge_6
)))
(let ((anon61_Else@3 (=> (and true
    (=> $w0@0 (<= 0 $rhs@17@1))
  )(and 
    anon61_Else@3_assertion
    anon61_Else@4
))))
(let ((anon46@6 (=> (and true
    (=> (_module.Node.IsClosed@canCall $Heap this S@0) (or (_module.Node.IsClosed $Heap this S@0) (forall( (|n#12| ref))(=> (or (= null |n#12|) (and (= (dtype |n#12|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |n#12| alloc))) (=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ |n#12|)) (not (= null |n#12|))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |n#12| _module.Node.next)))) (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |n#12| _module.Node.next))))))))
  )(and 
    anon46@6_assertion
    anon46@7
))))
(let ((anon18 (=> (and true
    (forall( (|q#45_$5| ref))(=> (or (= |q#45_$5| null) (and (= (dtype |q#45_$5|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |q#45_$5| alloc))) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ |q#45_$5|)) (=> (not (= |q#45_$5| null)) (forall( (|t#44_$5| Int))(=> (and (< |t#44_$5| steps@31@0) (<= 0 |t#44_$5|)) (_module.Node.Nexxxt@canCall $Heap this |t#44_$5| S@0)))))))
    (forall( (|q#45_$6| ref))(=> (or (= |q#45_$6| null) (and (= (dtype |q#45_$6|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |q#45_$6| alloc))) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ |q#45_$6|)) (or (= |q#45_$6| null) (exists( (|t#44_$6| Int))(and (= |q#45_$6| (_module.Node.Nexxxt ($LS $LZ) $Heap this |t#44_$6| S@0)) (and (< |t#44_$6| steps@31@0) (<= 0 |t#44_$6|))))))))
  )
    (and anon58_Else anon58_Then)
)))
(let ((anon61_Else@2 (=> (and true
    (=> (<= 0 $rhs@17@1) (_module.Node.Nexxxt@canCall $Heap this $rhs@17@1 S@0))
    (forall( (|k#52_$3| Int) (|l#53_$3| Int))(=> (and (< |l#53_$3| $rhs@17@1) (and (< |k#52_$3| |l#53_$3|) (<= 0 |k#52_$3|))) (and (_module.Node.Nexxxt@canCall $Heap this |l#53_$3| S@0) (_module.Node.Nexxxt@canCall $Heap this |k#52_$3| S@0))))
    (forall( (|q#45_$3| ref))(=> (or (= |q#45_$3| null) (and (= (dtype |q#45_$3|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |q#45_$3| alloc))) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@18@1 ($Box$ref$ |q#45_$3|)) (=> (not (= |q#45_$3| null)) (forall( (|t#44_$3| Int))(=> (and (< |t#44_$3| $rhs@17@1) (<= 0 |t#44_$3|)) (_module.Node.Nexxxt@canCall $Heap this |t#44_$3| S@0)))))))
    (forall( (|t#38_$3| Int))(=> (and (< |t#38_$3| $rhs@17@1) (<= 0 |t#38_$3|)) (_module.Node.Nexxxt@canCall $Heap this |t#38_$3| S@0)))
    (not (Set@Subset$BoxType$ $decr0$0@1 (Set@Difference$BoxType$ S@0 $rhs@18@1)))
    (Set@Subset$BoxType$ (Set@Difference$BoxType$ S@0 $rhs@18@1) $decr0$0@1)
    true
    true
  )(and 
    anon61_Else@2_assertion
    anon61_Else@3
))))
(let ((anon46@5 (=> (and true
    (=> (_module.Node.IsClosed@canCall $Heap this S@0) (or (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ null)) (_module.Node.IsClosed $Heap this S@0)))
  )(and 
    anon46@5_assertion
    anon46@6
))))
(let ((anon54_Else (=> (and true
    (not (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ q@40@0)))
  )
    anon18
)))
(let ((anon55_Else (=> (and true
    (= q@40@0 null)
  )
    anon18
)))
(let ((anon57_Else (=> (and true
    (not (and (< t@41@0 steps@31@0) (<= 0 t@41@0)))
  )
    anon18
)))
(let ((anon57_Then@1 (=> (and true
    (_module.Node.IsClosed $Heap this S@0)
    (_module.Node.Nexxxt@canCall $Heap this t@41@0 S@0)
    (<= 0 t@41@0)
  )
    anon18
)))
(let ((anon61_Else@1 (=> (and true
    (= $rhs@16@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap p@30@0 _module.Node.next))
    (= (+ steps@31@0 1) $rhs@17@1)
    (= (Set@Union$BoxType$ Visited@32@0 (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ p@30@0))) $rhs@18@1)
    (not (= p@30@0 null))
  )(and 
    anon61_Else@1_assertion
    anon61_Else@2
))))
(let ((anon46@4 (=> (and true
    (=> (_module.Node.IsClosed@canCall $Heap this S@0) (or (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ this)) (_module.Node.IsClosed $Heap this S@0)))
  )(and 
    anon46@4_assertion
    anon46@5
))))
(let ((anon57_Then (=> (and true
    (< t@41@0 steps@31@0)
    (<= 0 t@41@0)
  )(and 
    anon57_Then_assertion
    anon57_Then@1
))))
(let ((anon61_Else (=> (and true
    (= (Set@Difference$BoxType$ S@0 Visited@32@0) $decr0$0@1)
    (not (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ p@30@0)))
  )(and 
    anon61_Else_assertion
    anon61_Else@1
))))
(let ((anon46@3 (=> (and true
    true
    true
    true
  )(and 
    anon46@3_assertion
    anon46@4
))))
(let (($branchMerge_4 (=> (and true
  )
    (and anon57_Else anon57_Then)
)))
(let ((anon46@2 (=> (and true
    (not (= null (_module.Node.Nexxxt ($LS $LZ) $Heap this A@1@1 S@0)))
    (not (= null (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this A@1@1 S@0)))
  )
    anon46@3
)))
(let ((anon56_Else (=> (and true
    (< t@41@0 0)
  )
    $branchMerge_4
)))
(let ((anon56_Then (=> (and true
    (<= 0 t@41@0)
  )
    $branchMerge_4
)))
(let ((anon46@1 (=> (and true
    (_module.Node.IsClosed $Heap this S@0)
    (_module.Node.Nexxxt@canCall $Heap this A@1@1 S@0)
    (_module.Node.Nexxxt@canCall $Heap this A@1@1 S@0)
    (<= 0 A@1@1)
  )(and 
    anon46@1_assertion
    anon46@2
))))
(let ((anon55_Then (=> (and true
    (not (= q@40@0 null))
  )
    (and anon56_Else anon56_Then)
)))
(let ((anon46 (=> (and true
    (= (- steps@31@0 A@1@1) B@2@0)
  )(and 
    anon46_assertion
    anon46@1
))))
(let ((anon54_Then (=> (and true
    (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ q@40@0))
  )
    (and anon55_Else anon55_Then)
)))
(let ((anon70_Then (=> (and true
    (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this A@1@1 S@0))
  )
    anon46
)))
(let ((anon12 (=> (and true
    (forall( (|t#38_$5| Int))(=> (and (< |t#38_$5| steps@31@0) (<= 0 |t#38_$5|)) (_module.Node.Nexxxt@canCall $Heap this |t#38_$5| S@0)))
    (forall( (|t#38_$6| Int))(=> (and (< |t#38_$6| steps@31@0) (<= 0 |t#38_$6|)) (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ (_module.Node.Nexxxt ($LS $LZ) $Heap this |t#38_$6| S@0)))))
    (or (= q@40@0 null) (and (= (dtype q@40@0) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap q@40@0 alloc)))
  )
    (and anon54_Else anon54_Then)
)))
(let ((anon66_Else@1 (=> (and true
    (_module.Node.IsClosed $Heap this S@0)
    (_module.Node.Nexxxt@canCall $Heap this A@1@1 S@0)
    (_module.Node.Nexxxt@canCall $Heap this A@1@1 S@0)
    (<= 0 A@1@1)
  )
    (and anon70_Else anon70_Then)
)))
(let ((anon53_Else (=> (and true
    (not (and (< t@35@0 steps@31@0) (<= 0 t@35@0)))
  )
    anon12
)))
(let ((anon53_Then@1 (=> (and true
    (_module.Node.IsClosed $Heap this S@0)
    (_module.Node.Nexxxt@canCall $Heap this t@35@0 S@0)
    (<= 0 t@35@0)
  )
    anon12
)))
(let ((anon66_Else (=> (and true
    $w1@0
  )(and 
    anon66_Else_assertion
    anon66_Else@1
))))
(let ((anon53_Then (=> (and true
    (< t@35@0 steps@31@0)
    (<= 0 t@35@0)
  )(and 
    anon53_Then_assertion
    anon53_Then@1
))))
(let ((anon65_LoopBody (=> (and true
  )
    (and anon66_Else anon66_Then)
)))
(let (($branchMerge_3 (=> (and true
  )
    (and anon53_Else anon53_Then)
)))
(let ((anon65_LoopHead (=> (and true
    (<= (- steps@31@0 A@1@1) $decr1$init$0@0)
    (<= 0 $decr1$init$0@0)
    (<= 0 A@1@1)
    (<= 0 steps@31@0)
    (= $Heap $Heap)
    (= 0 $rhs@11@0)
    (=> $w1@0 (< A@1@1 steps@31@0))
    (=> $w1@0 (<= 0 A@1@1))
    (=> $w1@0 (forall( (|k#63_$0| Int))(=> (and (< |k#63_$0| A@1@1) (<= 0 |k#63_$0|)) (_module.Node.Nexxxt@canCall $Heap this |k#63_$0| S@0))))
    (=> $w1@0 (forall( (|k#63_$1| Int))(=> (forall( (|k$ih#21#64_$0| Int))(=> (and (< |k$ih#21#64_$0| |k#63_$1|) (<= 0 |k$ih#21#64_$0|)) (=> (and (< |k$ih#21#64_$0| A@1@1) (<= 0 |k$ih#21#64_$0|)) (not (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this |k$ih#21#64_$0| S@0)))))) (=> (and (< |k#63_$1| A@1@1) (<= 0 |k#63_$1|)) (not (= p@30@0 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |k#63_$1| S@0)))))))
    (=> $w1@0 (forall( (|k#63_$2| Int))(=> (and (< |k#63_$2| A@1@1) (<= 0 |k#63_$2|)) (not (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this |k#63_$2| S@0))))))
    (forall( (|$o_$27_$0| ref) (|$f_$26_$0| Field$Bool$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$27_$0| alloc) (not (= null |$o_$27_$0|))) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$27_$0| |$f_$26_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$27_$0| |$f_$26_$0|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$27_$0| |$f_$26_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$27_$0| |$f_$26_$0|))))
    (forall( (|$o_$27_$1| ref) (|$f_$26_$1| Field$BoxType$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$27_$1| alloc) (not (= null |$o_$27_$1|))) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$27_$1| |$f_$26_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$27_$1| |$f_$26_$1|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$27_$1| |$f_$26_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$27_$1| |$f_$26_$1|))))
    (forall( (|$o_$27_$2| ref) (|$f_$26_$2| Field$ref$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$27_$2| alloc) (not (= null |$o_$27_$2|))) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$27_$2| |$f_$26_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$27_$2| |$f_$26_$2|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$27_$2| |$f_$26_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$27_$2| |$f_$26_$2|))))
    true
    true
    true
  )
    anon65_LoopBody
)))
(let ((anon52_Else (=> (and true
    (< t@35@0 0)
  )
    $branchMerge_3
)))
(let ((anon52_Then (=> (and true
    (<= 0 t@35@0)
  )
    $branchMerge_3
)))
(let ((anon34@4 (=> (and true
    (=> $w1@0 (forall( (|k#63| Int))(=> (forall( (|k$ih#21#64| Int))(=> (and (< |k$ih#21#64| |k#63|) (<= 0 |k$ih#21#64|)) (=> (and (< |k$ih#21#64| A@1@0) (<= 0 |k$ih#21#64|)) (not (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this |k$ih#21#64| S@0)))))) (=> (and (< |k#63| A@1@0) (<= 0 |k#63|)) (not (= p@30@0 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |k#63| S@0)))))))
  )
    anon65_LoopHead
)))
(let ((anon8 (=> (and true
    (<= 0 steps@31@0)
    (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this steps@31@0 S@0))
    (=> (<= 0 steps@31@0) (_module.Node.Nexxxt@canCall $Heap this steps@31@0 S@0))
    (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ p@30@0))
    (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ null))
    (Set@Subset$BoxType$ Visited@32@0 S@0)
    true
    true
  )
    (and anon52_Else anon52_Then)
)))
(let ((anon34@3 (=> (and true
    (=> $w1@0 (< A@1@0 steps@31@0))
  )(and 
    anon34@3_assertion
    anon34@4
))))
(let ((anon51_Else (=> (and true
    (not (and (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ p@30@0)) (and (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this steps@31@0 S@0)) (<= 0 steps@31@0))))
  )
    anon8
)))
(let ((anon51_Then (=> (and true
    (<= 0 steps@31@0)
    (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this steps@31@0 S@0))
    (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ p@30@0))
  )
    anon8
)))
(let ((anon34@2 (=> (and true
    (=> $w1@0 (<= 0 A@1@0))
  )(and 
    anon34@2_assertion
    anon34@3
))))
(let (($branchMerge_1 (=> (and true
  )
    (and anon51_Else anon51_Then)
)))
(let ((anon34@1 (=> (and true
    (= (- steps@31@0 A@1@0) $decr1$init$0@0)
    (= (Lit$Int$ 0) A@1@0)
    (exists( (|k#59_$0| Int))(and (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this |k#59_$0| S@0)) (and (< |k#59_$0| steps@31@0) (<= 0 |k#59_$0|))))
  )(and 
    anon34@1_assertion
    anon34@2
))))
(let ((anon50_Else (=> (and true
    (not (and (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this steps@31@0 S@0)) (<= 0 steps@31@0)))
  )
    $branchMerge_1
)))
(let ((anon50_Then (=> (and true
    (<= 0 steps@31@0)
    (= p@30@0 (_module.Node.Nexxxt ($LS $LZ) $Heap this steps@31@0 S@0))
  )
    $branchMerge_1
)))
(let ((anon34 (=> (and true
    (forall( (|k#59| Int))(=> (and (< |k#59| steps@31@0) (<= 0 |k#59|)) (_module.Node.Nexxxt@canCall $Heap this |k#59| S@0)))
  )(and 
    anon34_assertion
    anon34@1
))))
(let (($branchMerge_0 (=> (and true
  )
    (and anon50_Else anon50_Then)
)))
(let ((anon64_Else (=> (and true
    (not (and (< k@56@0 steps@31@0) (<= 0 k@56@0)))
  )
    anon34
)))
(let ((anon64_Then@1 (=> (and true
    (_module.Node.IsClosed $Heap this S@0)
    (_module.Node.Nexxxt@canCall $Heap this k@56@0 S@0)
    (<= 0 k@56@0)
  )
    anon34
)))
(let ((anon49_Else (=> (and true
    (< steps@31@0 0)
  )
    $branchMerge_0
)))
(let ((anon49_Then@1 (=> (and true
    (_module.Node.IsClosed $Heap this S@0)
    (_module.Node.Nexxxt@canCall $Heap this steps@31@0 S@0)
    (<= 0 steps@31@0)
  )
    $branchMerge_0
)))
(let ((anon64_Then (=> (and true
    (< k@56@0 steps@31@0)
    (<= 0 k@56@0)
  )(and 
    anon64_Then_assertion
    anon64_Then@1
))))
(let ((anon49_Then (=> (and true
    (<= 0 steps@31@0)
  )(and 
    anon49_Then_assertion
    anon49_Then@1
))))
(let (($branchMerge_2 (=> (and true
  )
    (and anon64_Else anon64_Then)
)))
(let ((anon48_Then (=> (and true
    (not $w0@0)
  )
    (and anon49_Else anon49_Then)
)))
(let ((anon63_Else (=> (and true
    (< k@56@0 0)
  )
    $branchMerge_2
)))
(let ((anon63_Then (=> (and true
    (<= 0 k@56@0)
  )
    $branchMerge_2
)))
(let ((anon62_Else (=> (and true
    (not (= p@30@0 null))
  )
    (and anon63_Else anon63_Then)
)))
(let ((anon28 (=> (and true
  )
    (and anon62_Else anon62_Then)
)))
(let ((anon61_Then (=> (and true
    (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ p@30@0))
  )
    anon28
)))
(let ((anon48_Else (=> (and true
    $w0@0
  )
    (and anon61_Else anon61_Then)
)))
(let ((anon47_LoopBody (=> (and true
  )
    (and anon48_Else anon48_Then)
)))
(let ((anon47_LoopHead (=> (and true
    (<= 0 steps@31@0)
    (= $Heap $Heap)
    (= 0 $rhs@11@0)
    (=> $w0@0 (<= 0 steps@31@0))
    (=> $w0@0 (= p@30@0 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this steps@31@0 S@0)))
    (=> $w0@0 (=> (<= 0 steps@31@0) (_module.Node.Nexxxt@canCall $Heap this steps@31@0 S@0)))
    (=> $w0@0 (forall( (|k#52_$0| Int) (|l#53_$0| Int))(=> (and (< |l#53_$0| steps@31@0) (and (< |k#52_$0| |l#53_$0|) (<= 0 |k#52_$0|))) (and (_module.Node.Nexxxt@canCall $Heap this |l#53_$0| S@0) (_module.Node.Nexxxt@canCall $Heap this |k#52_$0| S@0)))))
    (=> $w0@0 (forall( (|k#52_$1| Int) (|l#53_$1| Int))(=> (forall( (|k$ih#14#54_$0| Int) (|l$ih#15#55_$0| Int))(=> (or (and (< |l$ih#15#55_$0| |l#53_$1|) (and (= |k$ih#14#54_$0| |k#52_$1|) (<= 0 |l$ih#15#55_$0|))) (and (< |k$ih#14#54_$0| |k#52_$1|) (<= 0 |k$ih#14#54_$0|))) (=> (and (< |l$ih#15#55_$0| steps@31@0) (and (< |k$ih#14#54_$0| |l$ih#15#55_$0|) (<= 0 |k$ih#14#54_$0|))) (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap this |l$ih#15#55_$0| S@0) (_module.Node.Nexxxt ($LS $LZ) $Heap this |k$ih#14#54_$0| S@0)))))) (=> (and (< |l#53_$1| steps@31@0) (and (< |k#52_$1| |l#53_$1|) (<= 0 |k#52_$1|))) (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |l#53_$1| S@0) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |k#52_$1| S@0)))))))
    (=> $w0@0 (forall( (|k#52_$2| Int) (|l#53_$2| Int))(=> (and (< |l#53_$2| steps@31@0) (and (< |k#52_$2| |l#53_$2|) (<= 0 |k#52_$2|))) (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap this |l#53_$2| S@0) (_module.Node.Nexxxt ($LS $LZ) $Heap this |k#52_$2| S@0))))))
    (=> $w0@0 (forall( (|q#45_$0| ref))(=> (or (= |q#45_$0| null) (and (= (dtype |q#45_$0|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |q#45_$0| alloc))) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ |q#45_$0|)) (=> (not (= |q#45_$0| null)) (forall( (|t#44_$0| Int))(=> (and (< |t#44_$0| steps@31@0) (<= 0 |t#44_$0|)) (_module.Node.Nexxxt@canCall $Heap this |t#44_$0| S@0))))))))
    (=> $w0@0 (forall( (|q#45_$1| ref))(=> (or (= |q#45_$1| null) (and (= (dtype |q#45_$1|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |q#45_$1| alloc))) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ |q#45_$1|)) (or (= |q#45_$1| null) (exists( (|t#44_$1| Int))(and (= |q#45_$1| (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |t#44_$1| S@0)) (and (< |t#44_$1| steps@31@0) (<= 0 |t#44_$1|)))))))))
    (=> $w0@0 (forall( (|q#45_$2| ref))(=> (or (= |q#45_$2| null) (and (= (dtype |q#45_$2|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |q#45_$2| alloc))) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ |q#45_$2|)) (or (= |q#45_$2| null) (exists( (|t#44_$2| Int))(and (= |q#45_$2| (_module.Node.Nexxxt ($LS $LZ) $Heap this |t#44_$2| S@0)) (and (< |t#44_$2| steps@31@0) (<= 0 |t#44_$2|)))))))))
    (=> $w0@0 (forall( (|t#38_$0| Int))(=> (and (< |t#38_$0| steps@31@0) (<= 0 |t#38_$0|)) (_module.Node.Nexxxt@canCall $Heap this |t#38_$0| S@0))))
    (=> $w0@0 (forall( (|t#38_$1| Int))(=> (forall( (|t$ih#13#39_$0| Int))(=> (and (< |t$ih#13#39_$0| |t#38_$1|) (<= 0 |t$ih#13#39_$0|)) (=> (and (< |t$ih#13#39_$0| steps@31@0) (<= 0 |t$ih#13#39_$0|)) (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ (_module.Node.Nexxxt ($LS $LZ) $Heap this |t$ih#13#39_$0| S@0)))))) (=> (and (< |t#38_$1| steps@31@0) (<= 0 |t#38_$1|)) (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |t#38_$1| S@0)))))))
    (=> $w0@0 (forall( (|t#38_$2| Int))(=> (and (< |t#38_$2| steps@31@0) (<= 0 |t#38_$2|)) (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ (_module.Node.Nexxxt ($LS $LZ) $Heap this |t#38_$2| S@0))))))
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ p@30@0)))
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 ($Box$ref$ null)))
    (=> $w0@0 (Set@Subset$BoxType$ Visited@32@0 S@0))
    (forall( (|$o_$26_$0| ref) (|$f_$25_$0| Field$Bool$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$26_$0| alloc) (not (= null |$o_$26_$0|))) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$26_$0| |$f_$25_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$26_$0| |$f_$25_$0|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$26_$0| |$f_$25_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$26_$0| |$f_$25_$0|))))
    (forall( (|$o_$26_$1| ref) (|$f_$25_$1| Field$BoxType$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$26_$1| alloc) (not (= null |$o_$26_$1|))) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$26_$1| |$f_$25_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$26_$1| |$f_$25_$1|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$26_$1| |$f_$25_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$26_$1| |$f_$25_$1|))))
    (forall( (|$o_$26_$2| ref) (|$f_$25_$2| Field$ref$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$26_$2| alloc) (not (= null |$o_$26_$2|))) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$26_$2| |$f_$25_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$26_$2| |$f_$25_$2|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$26_$2| |$f_$25_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$26_$2| |$f_$25_$2|))))
    (forall( (|$t#9_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 |$t#9_$1|) (or (= null ($Unbox$ref$ |$t#9_$1|)) (and (= (dtype ($Unbox$ref$ |$t#9_$1|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap ($Unbox$ref$ |$t#9_$1|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32@0 |$t#9_$1|))))
    (or (= p@30@0 null) (and (= (dtype p@30@0) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap p@30@0 alloc)))
    (Set@Subset$BoxType$ (Set@Difference$BoxType$ S@0 Visited@32@0) $decr0$init$0@0)
    true
    true
    true
  )
    anon47_LoopBody
)))
(let ((anon0@8 (=> (and true
    (=> $w0@0 (forall( (|k#52| Int) (|l#53| Int))(=> (forall( (|k$ih#14#54| Int) (|l$ih#15#55| Int))(=> (or (and (< |l$ih#15#55| |l#53|) (and (= |k$ih#14#54| |k#52|) (<= 0 |l$ih#15#55|))) (and (< |k$ih#14#54| |k#52|) (<= 0 |k$ih#14#54|))) (=> (and (< |l$ih#15#55| $rhs@11@0) (and (< |k$ih#14#54| |l$ih#15#55|) (<= 0 |k$ih#14#54|))) (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap this |l$ih#15#55| S@0) (_module.Node.Nexxxt ($LS $LZ) $Heap this |k$ih#14#54| S@0)))))) (=> (and (< |l#53| $rhs@11@0) (and (< |k#52| |l#53|) (<= 0 |k#52|))) (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |l#53| S@0) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |k#52| S@0)))))))
  )
    anon47_LoopHead
)))
(let ((anon0@7 (=> (and true
    (=> $w0@0 (forall( (|q#45| ref))(=> (or (= |q#45| null) (and (= (dtype |q#45|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |q#45| alloc))) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@12@0 ($Box$ref$ |q#45|)) (or (= |q#45| null) (exists( (|t#44| Int))(and (= |q#45| (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |t#44| S@0)) (and (< |t#44| $rhs@11@0) (<= 0 |t#44|)))))))))
  )(and 
    anon0@7_assertion
    anon0@8
))))
(let ((anon0@6 (=> (and true
    (=> $w0@0 (forall( (|t#38| Int))(=> (forall( (|t$ih#13#39| Int))(=> (and (< |t$ih#13#39| |t#38|) (<= 0 |t$ih#13#39|)) (=> (and (< |t$ih#13#39| $rhs@11@0) (<= 0 |t$ih#13#39|)) (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@12@0 ($Box$ref$ (_module.Node.Nexxxt ($LS $LZ) $Heap this |t$ih#13#39| S@0)))))) (=> (and (< |t#38| $rhs@11@0) (<= 0 |t#38|)) (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@12@0 ($Box$ref$ (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this |t#38| S@0)))))))
  )(and 
    anon0@6_assertion
    anon0@7
))))
(let ((anon0@5 (=> (and true
    (=> $w0@0 (Set@Subset$BoxType$ $rhs@12@0 S@0))
  )(and 
    anon0@5_assertion
    anon0@6
))))
(let ((anon0@4 (=> (and true
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ $rhs@12@0 ($Box$ref$ null)))
  )(and 
    anon0@4_assertion
    anon0@5
))))
(let ((anon0@3 (=> (and true
    (=> $w0@0 (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ this)))
  )(and 
    anon0@3_assertion
    anon0@4
))))
(let ((anon0@2 (=> (and true
    (=> $w0@0 (= this (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap this $rhs@11@0 S@0)))
  )(and 
    anon0@2_assertion
    anon0@3
))))
(let ((anon0@1 (=> (and true
    (=> $w0@0 (<= 0 $rhs@11@0))
  )(and 
    anon0@1_assertion
    anon0@2
))))
(let ((anon0 (=> (and true
    (= (lambda@6 alloc null $Heap) $_Frame@0)
    (= (Lit$Int$ 0) $rhs@11@0)
    (= (Set@Difference$BoxType$ S@0 $rhs@12@0) $decr0$init$0@0)
    (= (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ null)) $rhs@12@0)
  )(and 
    anon0_assertion
    anon0@1
))))
(let ((PreconditionGeneratedEntry (=> (and true
    ($IsGoodHeap $Heap)
    ($IsGoodSet_Extended$ref$ S@0 null)
    (_module.Node.IsClosed $Heap this S@0)
    (_module.Node.IsClosed@canCall $Heap this S@0)
    (= (dtype this) class._module.Node)
    (= 0 $ModuleContextHeight)
    (= 4 $FunctionContextHeight)
    (=> (_module.Node.IsClosed@canCall $Heap this S@0) (or (_module.Node.IsClosed $Heap this S@0) (forall( (|n#26| ref))(=> (or (= null |n#26|) (and (= (dtype |n#26|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |n#26| alloc))) (=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ |n#26|)) (not (= null |n#26|))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |n#26| _module.Node.next)))) (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |n#26| _module.Node.next))))))))
    (=> (_module.Node.IsClosed@canCall $Heap this S@0) (or (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ null)) (_module.Node.IsClosed $Heap this S@0)))
    (=> (_module.Node.IsClosed@canCall $Heap this S@0) (or (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ this)) (_module.Node.IsClosed $Heap this S@0)))
    (forall( (|$t#6_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 |$t#6_$0|) (or (= null ($Unbox$ref$ |$t#6_$0|)) (and (= (dtype ($Unbox$ref$ |$t#6_$0|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap ($Unbox$ref$ |$t#6_$0|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 |$t#6_$0|))))
    (forall( (|$t#9_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32 |$t#9_$0|) (or (= null ($Unbox$ref$ |$t#9_$0|)) (and (= (dtype ($Unbox$ref$ |$t#9_$0|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap ($Unbox$ref$ |$t#9_$0|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ Visited@32 |$t#9_$0|))))
    (forall( (|n#27| ref))(=> (or (= null |n#27|) (and (= (dtype |n#27|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |n#27| alloc))) (=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ |n#27|)) (not (= null |n#27|))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |n#27| _module.Node.next)))) (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |n#27| _module.Node.next))))))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap this alloc)
    (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ null))
    (MapRead$$@Map@@BoxType@To@Bool@@$ S@0 ($Box$ref$ this))
    (not (= this null))
    (or (= p@30 null) (and (= (dtype p@30) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap p@30 alloc)))
  )
    anon0
)))
(let (($start (=> (and true
    $$Language$Dafny
    ($IsCanonicalBoolBox ($Box$Bool$ false))
    ($IsCanonicalBoolBox ($Box$Bool$ true))
    (= (FDim$Bool$ alloc) 0)
    (= (FDim$ref$ _module.Node.next) 0)
    (= (Seq@Drop$BoxType$ Seq@Empty$BoxType$ 0) Seq@Empty$BoxType$)
    (= (Seq@Length$BoxType$ Seq@Empty$BoxType$) 0)
    (= (Seq@Length$ref$ Seq@Empty$ref$) 0)
    (= (Seq@Take$BoxType$ Seq@Empty$BoxType$ 0) Seq@Empty$BoxType$)
    (= _module.Node.next (FieldOfDecl$ref$ class._module.Node field$next))
    (=> (and (<= 1 $FunctionContextHeight) (= 0 $ModuleContextHeight)) (forall( (|$ly_$2| LayerType) (|$Heap_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$7| ref) (|k#0_$2| Int) (|S#1_$2| $@Map@@BoxType@To@Bool@@))(!(=> (or (_module.Node.Nexxxt@canCall |$Heap_$5| |this_$7| |k#0_$2| |S#1_$2|) (and (<= 0 |k#0_$2|) (and (_module.Node.IsClosed |$Heap_$5| |this_$7| |S#1_$2|) (and (forall( (|$t#9| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$2| |$t#9|) (or (= null ($Unbox$ref$ |$t#9|)) (and (= (dtype ($Unbox$ref$ |$t#9|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$5| ($Unbox$ref$ |$t#9|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$2| |$t#9|)))) (and (= (dtype |this_$7|) class._module.Node) (and (and (and ($IsGoodHeap |$Heap_$5|) (not (= 1 $FunctionContextHeight))) (not (= |this_$7| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$5| |this_$7| alloc))))))) (and (= (ite (= |k#0_$2| 0) |this_$7| (ite (= (_module.Node.Nexxxt |$ly_$2| |$Heap_$5| |this_$7| (- |k#0_$2| 1) |S#1_$2|) null) null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$5| (_module.Node.Nexxxt |$ly_$2| |$Heap_$5| |this_$7| (- |k#0_$2| 1) |S#1_$2|) _module.Node.next))) (_module.Node.Nexxxt ($LS |$ly_$2|) |$Heap_$5| |this_$7| |k#0_$2| |S#1_$2|)) (=> (not (= |k#0_$2| 0)) (and (_module.Node.Nexxxt@canCall |$Heap_$5| |this_$7| (- |k#0_$2| 1) |S#1_$2|) (=> (not (= null (_module.Node.Nexxxt ($LS $LZ) |$Heap_$5| |this_$7| (- |k#0_$2| 1) |S#1_$2|))) (_module.Node.Nexxxt@canCall |$Heap_$5| |this_$7| (- |k#0_$2| 1) |S#1_$2|))))))  :pattern ( (_module.Node.Nexxxt ($LS |$ly_$2|) |$Heap_$5| |this_$7| |k#0_$2| |S#1_$2|)))))
    (=> (and (<= 2 $FunctionContextHeight) (= 0 $ModuleContextHeight)) (forall( (|$ly_$7| LayerType) (|$Heap_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$12| ref) (|sink#0_$2| ref) (|S#1_$7| $@Map@@BoxType@To@Bool@@))(!(=> (or (_module.Node.Reaches@canCall |$Heap_$9| |this_$12| |sink#0_$2| |S#1_$7|) (and (_module.Node.IsClosed |$Heap_$9| |this_$12| |S#1_$7|) (and (forall( (|$t#15| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$7| |$t#15|) (or (= null ($Unbox$ref$ |$t#15|)) (and (= (dtype ($Unbox$ref$ |$t#15|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9| ($Unbox$ref$ |$t#15|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$7| |$t#15|)))) (and (or (= |sink#0_$2| null) (and (= (dtype |sink#0_$2|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9| |sink#0_$2| alloc))) (and (= (dtype |this_$12|) class._module.Node) (and (and (and ($IsGoodHeap |$Heap_$9|) (not (= 2 $FunctionContextHeight))) (not (= |this_$12| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$9| |this_$12| alloc))))))) (and (= (_module.Node.Reaches ($LS |$ly_$7|) |$Heap_$9| |this_$12| |sink#0_$2| |S#1_$7|) (exists( (|k#2_$0| Int))(and (= |sink#0_$2| (_module.Node.Nexxxt ($LS $LZ) |$Heap_$9| |this_$12| |k#2_$0| |S#1_$7|)) (<= 0 |k#2_$0|)))) (forall( (|k#2| Int))(=> (<= 0 |k#2|) (_module.Node.Nexxxt@canCall |$Heap_$9| |this_$12| |k#2| |S#1_$7|)))))  :pattern ( (_module.Node.Reaches ($LS |$ly_$7|) |$Heap_$9| |this_$12| |sink#0_$2| |S#1_$7|)))))
    (=> (and (= 0 $ModuleContextHeight) (<= 0 $FunctionContextHeight)) (forall( (|$Heap_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$2| ref) (|S#0_$2| $@Map@@BoxType@To@Bool@@))(!(=> (or (_module.Node.IsClosed@canCall |$Heap_$1| |this_$2| |S#0_$2|) (and (forall( (|$t#3| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$2| |$t#3|) (or (= null ($Unbox$ref$ |$t#3|)) (and (= (dtype ($Unbox$ref$ |$t#3|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$1| ($Unbox$ref$ |$t#3|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$2| |$t#3|)))) (and (= (dtype |this_$2|) class._module.Node) (and (and (and ($IsGoodHeap |$Heap_$1|) (not (= 0 $FunctionContextHeight))) (not (= |this_$2| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$1| |this_$2| alloc))))) (= (_module.Node.IsClosed |$Heap_$1| |this_$2| |S#0_$2|) (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$2| ($Box$ref$ |this_$2|)) (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$2| ($Box$ref$ null))) (forall( (|n#1_$0| ref))(=> (or (= null |n#1_$0|) (and (= (dtype |n#1_$0|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$1| |n#1_$0| alloc))) (=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$2| ($Box$ref$ |n#1_$0|)) (not (= null |n#1_$0|))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$1| |n#1_$0| _module.Node.next)))) (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$2| ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$1| |n#1_$0| _module.Node.next)))))))))  :pattern ( (_module.Node.IsClosed |$Heap_$1| |this_$2| |S#0_$2|)))))
    (=> (or (< 0 $ModuleContextHeight) (and (<= 1 $FunctionContextHeight) (= 0 $ModuleContextHeight))) (forall( (|$ly_$1| LayerType) (|$Heap_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$6| ref) (|k#0_$1| Int) (|S#1_$1| $@Map@@BoxType@To@Bool@@))(!(=> (or (_module.Node.Nexxxt@canCall |$Heap_$4| |this_$6| |k#0_$1| |S#1_$1|) (and (<= 0 |k#0_$1|) (and (_module.Node.IsClosed |$Heap_$4| |this_$6| |S#1_$1|) (and (forall( (|$t#8| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$1| |$t#8|) (or (= null ($Unbox$ref$ |$t#8|)) (and (= (dtype ($Unbox$ref$ |$t#8|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$4| ($Unbox$ref$ |$t#8|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$1| |$t#8|)))) (and (= (dtype |this_$6|) class._module.Node) (and (and (and (or (not (= 1 $FunctionContextHeight)) (not (= 0 $ModuleContextHeight))) ($IsGoodHeap |$Heap_$4|)) (not (= |this_$6| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$4| |this_$6| alloc))))))) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$1| ($Box$ref$ (_module.Node.Nexxxt ($LS $LZ) |$Heap_$4| |this_$6| |k#0_$1| |S#1_$1|))) (or (= null (_module.Node.Nexxxt ($LS |$ly_$1|) |$Heap_$4| |this_$6| |k#0_$1| |S#1_$1|)) (and (= (dtype (_module.Node.Nexxxt ($LS |$ly_$1|) |$Heap_$4| |this_$6| |k#0_$1| |S#1_$1|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$4| (_module.Node.Nexxxt ($LS |$ly_$1|) |$Heap_$4| |this_$6| |k#0_$1| |S#1_$1|) alloc)))))  :pattern ( (_module.Node.Nexxxt ($LS |$ly_$1|) |$Heap_$4| |this_$6| |k#0_$1| |S#1_$1|)))))
    (=> (or (< 0 $ModuleContextHeight) (and (<= 2 $FunctionContextHeight) (= 0 $ModuleContextHeight))) (forall( (|$Heap_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$11| ref) (|sink#0_$1| ref) (|S#1_$6| $@Map@@BoxType@To@Bool@@))(!(=> (or (_module.Node.Reaches@canCall |$Heap_$8| |this_$11| |sink#0_$1| |S#1_$6|) (and (_module.Node.IsClosed |$Heap_$8| |this_$11| |S#1_$6|) (and (forall( (|$t#14| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$6| |$t#14|) (or (= null ($Unbox$ref$ |$t#14|)) (and (= (dtype ($Unbox$ref$ |$t#14|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$8| ($Unbox$ref$ |$t#14|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$6| |$t#14|)))) (and (or (= |sink#0_$1| null) (and (= (dtype |sink#0_$1|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$8| |sink#0_$1| alloc))) (and (= (dtype |this_$11|) class._module.Node) (and (and (and (or (not (= 2 $FunctionContextHeight)) (not (= 0 $ModuleContextHeight))) ($IsGoodHeap |$Heap_$8|)) (not (= |this_$11| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$8| |this_$11| alloc))))))) (=> (_module.Node.Reaches ($LS $LZ) |$Heap_$8| |this_$11| |sink#0_$1| |S#1_$6|) (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$6| ($Box$ref$ |sink#0_$1|))))  :pattern ( (_module.Node.Reaches ($LS |$ly_$6|) |$Heap_$8| |this_$11| |sink#0_$1| |S#1_$6|)))))
    (forall( (|$h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o| ref))(!(=> (and (and ($IsGoodHeap |$h|) (not (= null |$o|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h| |$o| alloc)) (or (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| _module.Node.next)) (and (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| _module.Node.next)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| _module.Node.next) alloc))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| _module.Node.next))))
    (forall( (|$h0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$0| ref) (|S#0_$0| $@Map@@BoxType@To@Bool@@))(!(=> (and (and (or (_module.Node.IsClosed@canCall |$h1| |this_$0| |S#0_$0|) (forall( (|$t#1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$0| |$t#1|) (or (= null ($Unbox$ref$ |$t#1|)) (and (= (dtype ($Unbox$ref$ |$t#1|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| ($Unbox$ref$ |$t#1|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$0| |$t#1|))))) (and (or (_module.Node.IsClosed@canCall |$h0| |this_$0| |S#0_$0|) (forall( (|$t#0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$0| |$t#0|) (or (= null ($Unbox$ref$ |$t#0|)) (and (= (dtype ($Unbox$ref$ |$t#0|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| ($Unbox$ref$ |$t#0|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$0| |$t#0|))))) (and (= (dtype |this_$0|) class._module.Node) (and (and (= (dtype |this_$0|) class._module.Node) (and (and (and ($IsGoodHeap |$h1|) ($IsGoodHeap |$h0|)) (not (= |this_$0| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |this_$0| alloc))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |this_$0| alloc))))) ($HeapSucc |$h0| |$h1|)) (=> (and (forall( (|$o_$0_$2| ref) (|$f_$30| Field$ref$))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$0| ($Box$ref$ |$o_$0_$2|)) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$0_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$0_$2| alloc) (not (= null |$o_$0_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1| |$o_$0_$2| |$f_$30|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0| |$o_$0_$2| |$f_$30|)))) (and (forall( (|$o_$0_$1| ref) (|$f_$29| Field$BoxType$))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$0| ($Box$ref$ |$o_$0_$1|)) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$0_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$0_$1| alloc) (not (= null |$o_$0_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1| |$o_$0_$1| |$f_$29|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0| |$o_$0_$1| |$f_$29|)))) (forall( (|$o_$0_$0| ref) (|$f_$28| Field$Bool$))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#0_$0| ($Box$ref$ |$o_$0_$0|)) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$0_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$0_$0| alloc) (not (= null |$o_$0_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$0_$0| |$f_$28|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$0_$0| |$f_$28|)))))) (= (_module.Node.IsClosed |$h1| |this_$0| |S#0_$0|) (_module.Node.IsClosed |$h0| |this_$0| |S#0_$0|))))  :pattern ( ($HeapSucc |$h0| |$h1|) (_module.Node.IsClosed |$h1| |this_$0| |S#0_$0|))))
    (forall( (|$ly_$0| LayerType) (|$h0_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$5| ref) (|k#0_$0| Int) (|S#1_$0| $@Map@@BoxType@To@Bool@@))(!(=> (and (and (or (_module.Node.Nexxxt@canCall |$h1_$0| |this_$5| |k#0_$0| |S#1_$0|) (forall( (|$t#7| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$0| |$t#7|) (or (= null ($Unbox$ref$ |$t#7|)) (and (= (dtype ($Unbox$ref$ |$t#7|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| ($Unbox$ref$ |$t#7|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$0| |$t#7|))))) (and (or (_module.Node.Nexxxt@canCall |$h0_$0| |this_$5| |k#0_$0| |S#1_$0|) (forall( (|$t#6| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$0| |$t#6|) (or (= null ($Unbox$ref$ |$t#6|)) (and (= (dtype ($Unbox$ref$ |$t#6|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| ($Unbox$ref$ |$t#6|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$0| |$t#6|))))) (and (= (dtype |this_$5|) class._module.Node) (and (and (= (dtype |this_$5|) class._module.Node) (and (and (and ($IsGoodHeap |$h1_$0|) ($IsGoodHeap |$h0_$0|)) (not (= |this_$5| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |this_$5| alloc))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |this_$5| alloc))))) ($HeapSucc |$h0_$0| |$h1_$0|)) (=> (and (forall( (|$o_$1_$2| ref) (|$f_$0_$2| Field$ref$))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$0| ($Box$ref$ |$o_$1_$2|)) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$1_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$1_$2| alloc) (not (= null |$o_$1_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$0| |$o_$1_$2| |$f_$0_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$0| |$o_$1_$2| |$f_$0_$2|)))) (and (forall( (|$o_$1_$1| ref) (|$f_$0_$1| Field$BoxType$))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$0| ($Box$ref$ |$o_$1_$1|)) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$1_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$1_$1| alloc) (not (= null |$o_$1_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$0| |$o_$1_$1| |$f_$0_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$0| |$o_$1_$1| |$f_$0_$1|)))) (forall( (|$o_$1_$0| ref) (|$f_$0_$0| Field$Bool$))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$0| ($Box$ref$ |$o_$1_$0|)) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$1_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$1_$0| alloc) (not (= null |$o_$1_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$1_$0| |$f_$0_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$1_$0| |$f_$0_$0|)))))) (= (_module.Node.Nexxxt |$ly_$0| |$h1_$0| |this_$5| |k#0_$0| |S#1_$0|) (_module.Node.Nexxxt |$ly_$0| |$h0_$0| |this_$5| |k#0_$0| |S#1_$0|))))  :pattern ( ($HeapSucc |$h0_$0| |$h1_$0|) (_module.Node.Nexxxt |$ly_$0| |$h1_$0| |this_$5| |k#0_$0| |S#1_$0|))))
    (forall( (|$ly_$4| LayerType) (|$Heap_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$9| ref) (|sink#0| ref) (|S#1_$4| $@Map@@BoxType@To@Bool@@))(!(= (_module.Node.Reaches |$ly_$4| |$Heap_$7| |this_$9| |sink#0| |S#1_$4|) (_module.Node.Reaches ($LS |$ly_$4|) |$Heap_$7| |this_$9| |sink#0| |S#1_$4|))  :pattern ( (_module.Node.Reaches ($LS |$ly_$4|) |$Heap_$7| |this_$9| |sink#0| |S#1_$4|))))
    (forall( (|$ly_$5| LayerType) (|$h0_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$10| ref) (|sink#0_$0| ref) (|S#1_$5| $@Map@@BoxType@To@Bool@@))(!(=> (and (and (or (_module.Node.Reaches@canCall |$h1_$1| |this_$10| |sink#0_$0| |S#1_$5|) (and (or (= |sink#0_$0| null) (and (= (dtype |sink#0_$0|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |sink#0_$0| alloc))) (forall( (|$t#13| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$5| |$t#13|) (or (= null ($Unbox$ref$ |$t#13|)) (and (= (dtype ($Unbox$ref$ |$t#13|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| ($Unbox$ref$ |$t#13|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$5| |$t#13|)))))) (and (or (_module.Node.Reaches@canCall |$h0_$1| |this_$10| |sink#0_$0| |S#1_$5|) (and (or (= |sink#0_$0| null) (and (= (dtype |sink#0_$0|) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |sink#0_$0| alloc))) (forall( (|$t#12| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$5| |$t#12|) (or (= null ($Unbox$ref$ |$t#12|)) (and (= (dtype ($Unbox$ref$ |$t#12|)) class._module.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| ($Unbox$ref$ |$t#12|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$5| |$t#12|)))))) (and (= (dtype |this_$10|) class._module.Node) (and (and (= (dtype |this_$10|) class._module.Node) (and (and (and ($IsGoodHeap |$h1_$1|) ($IsGoodHeap |$h0_$1|)) (not (= |this_$10| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |this_$10| alloc))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |this_$10| alloc))))) ($HeapSucc |$h0_$1| |$h1_$1|)) (=> (and (forall( (|$o_$2_$2| ref) (|$f_$1_$2| Field$ref$))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$5| ($Box$ref$ |$o_$2_$2|)) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$2_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$2_$2| alloc) (not (= null |$o_$2_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$1| |$o_$2_$2| |$f_$1_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$1| |$o_$2_$2| |$f_$1_$2|)))) (and (forall( (|$o_$2_$1| ref) (|$f_$1_$1| Field$BoxType$))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$5| ($Box$ref$ |$o_$2_$1|)) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$2_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$2_$1| alloc) (not (= null |$o_$2_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$1| |$o_$2_$1| |$f_$1_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$1| |$o_$2_$1| |$f_$1_$1|)))) (forall( (|$o_$2_$0| ref) (|$f_$1_$0| Field$Bool$))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ |S#1_$5| ($Box$ref$ |$o_$2_$0|)) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$2_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$2_$0| alloc) (not (= null |$o_$2_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$2_$0| |$f_$1_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$2_$0| |$f_$1_$0|)))))) (= (_module.Node.Reaches |$ly_$5| |$h1_$1| |this_$10| |sink#0_$0| |S#1_$5|) (_module.Node.Reaches |$ly_$5| |$h0_$1| |this_$10| |sink#0_$0| |S#1_$5|))))  :pattern ( ($HeapSucc |$h0_$1| |$h1_$1|) (_module.Node.Reaches |$ly_$5| |$h1_$1| |this_$10| |sink#0_$0| |S#1_$5|))))
    (forall( (|$ly| LayerType) (|$Heap_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$4| ref) (|k#0| Int) (|S#1| $@Map@@BoxType@To@Bool@@))(!(= (_module.Node.Nexxxt |$ly| |$Heap_$3| |this_$4| |k#0| |S#1|) (_module.Node.Nexxxt ($LS |$ly|) |$Heap_$3| |this_$4| |k#0| |S#1|))  :pattern ( (_module.Node.Nexxxt ($LS |$ly|) |$Heap_$3| |this_$4| |k#0| |S#1|))))
    (forall( (|$o_$9_$0| ref) (|$f_$8_$0| Field$Bool$) (|alloc_$6_$0| Field$Bool$) (|null_$6_$0| ref) (|$Heap_$17_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@6 |alloc_$6_$0| |null_$6_$0| |$Heap_$17_$0|) |$o_$9_$0| |$f_$8_$0|) (not (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$17_$0| |$o_$9_$0| |alloc_$6_$0|) (not (= |null_$6_$0| |$o_$9_$0|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@6 |alloc_$6_$0| |null_$6_$0| |$Heap_$17_$0|) |$o_$9_$0| |$f_$8_$0|))))
    (forall( (|$o_$9_$1| ref) (|$f_$8_$1| Field$BoxType$) (|alloc_$6_$1| Field$Bool$) (|null_$6_$1| ref) (|$Heap_$17_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@6 |alloc_$6_$1| |null_$6_$1| |$Heap_$17_$1|) |$o_$9_$1| |$f_$8_$1|) (not (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$17_$1| |$o_$9_$1| |alloc_$6_$1|) (not (= |null_$6_$1| |$o_$9_$1|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@6 |alloc_$6_$1| |null_$6_$1| |$Heap_$17_$1|) |$o_$9_$1| |$f_$8_$1|))))
    (forall( (|$o_$9_$2| ref) (|$f_$8_$2| Field$ref$) (|alloc_$6_$2| Field$Bool$) (|null_$6_$2| ref) (|$Heap_$17_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ (lambda@6 |alloc_$6_$2| |null_$6_$2| |$Heap_$17_$2|) |$o_$9_$2| |$f_$8_$2|) (not (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$17_$2| |$o_$9_$2| |alloc_$6_$2|) (not (= |null_$6_$2| |$o_$9_$2|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ (lambda@6 |alloc_$6_$2| |null_$6_$2| |$Heap_$17_$2|) |$o_$9_$2| |$f_$8_$2|))))
    (forall( (|a_$0_$0| $@Map@@BoxType@To@Bool@@) (|x_$3_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$0_$0| |x_$3_$0|) |x_$3_$0|)  :pattern ( (Set@UnionOne$BoxType$ |a_$0_$0| |x_$3_$0|))))
    (forall( (|a_$1_$0| $@Map@@BoxType@To@Bool@@) (|x_$4_$0| BoxType) (|y_$6| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$6|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$1_$0| |x_$4_$0|) |y_$6|))  :pattern ( (Set@UnionOne$BoxType$ |a_$1_$0| |x_$4_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$6|))))
    (forall( (|a_$10_$0| $@Map@@BoxType@To@Bool@@) (|b_$5_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ |a_$10_$0| (Set@Union$BoxType$ |a_$10_$0| |b_$5_$0|)) (Set@Union$BoxType$ |a_$10_$0| |b_$5_$0|))  :pattern ( (Set@Union$BoxType$ |a_$10_$0| (Set@Union$BoxType$ |a_$10_$0| |b_$5_$0|)))))
    (forall( (|a_$11_$0| $@Map@@BoxType@To@Bool@@) (|b_$6_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$11_$0| |b_$6_$0|) |b_$6_$0|) (Set@Intersection$BoxType$ |a_$11_$0| |b_$6_$0|))  :pattern ( (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$11_$0| |b_$6_$0|) |b_$6_$0|))))
    (forall( (|a_$12_$0| $@Map@@BoxType@To@Bool@@) (|b_$7_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ |a_$12_$0| (Set@Intersection$BoxType$ |a_$12_$0| |b_$7_$0|)) (Set@Intersection$BoxType$ |a_$12_$0| |b_$7_$0|))  :pattern ( (Set@Intersection$BoxType$ |a_$12_$0| (Set@Intersection$BoxType$ |a_$12_$0| |b_$7_$0|)))))
    (forall( (|a_$13_$0| $@Map@@BoxType@To@Bool@@) (|b_$8_$0| $@Map@@BoxType@To@Bool@@))(!(= (+ (Set@Card$BoxType$ (Set@Union$BoxType$ |a_$13_$0| |b_$8_$0|)) (Set@Card$BoxType$ (Set@Intersection$BoxType$ |a_$13_$0| |b_$8_$0|))) (+ (Set@Card$BoxType$ |a_$13_$0|) (Set@Card$BoxType$ |b_$8_$0|)))  :pattern ( (Set@Card$BoxType$ (Set@Union$BoxType$ |a_$13_$0| |b_$8_$0|))) :pattern ( (Set@Card$BoxType$ (Set@Intersection$BoxType$ |a_$13_$0| |b_$8_$0|)))))
    (forall( (|a_$14_$0| $@Map@@BoxType@To@Bool@@) (|b_$9_$0| $@Map@@BoxType@To@Bool@@) (|o_$4_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$14_$0| |b_$9_$0|) |o_$4_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$4_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |o_$4_$0|))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$14_$0| |b_$9_$0|) |o_$4_$0|))))
    (forall( (|a_$15_$0| $@Map@@BoxType@To@Bool@@) (|b_$10_$0| $@Map@@BoxType@To@Bool@@) (|y_$2_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$10_$0| |y_$2_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$15_$0| |b_$10_$0|) |y_$2_$0|)))  :pattern ( (Set@Difference$BoxType$ |a_$15_$0| |b_$10_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$10_$0| |y_$2_$0|))))
    (forall( (|a_$16_$0| $@Map@@BoxType@To@Bool@@) (|b_$11_$0| $@Map@@BoxType@To@Bool@@))(!(and (= (Set@Card$BoxType$ (Set@Union$BoxType$ |a_$16_$0| |b_$11_$0|)) (+ (+ (Set@Card$BoxType$ (Set@Difference$BoxType$ |a_$16_$0| |b_$11_$0|)) (Set@Card$BoxType$ (Set@Difference$BoxType$ |b_$11_$0| |a_$16_$0|))) (Set@Card$BoxType$ (Set@Intersection$BoxType$ |a_$16_$0| |b_$11_$0|)))) (= (Set@Card$BoxType$ (Set@Difference$BoxType$ |a_$16_$0| |b_$11_$0|)) (- (Set@Card$BoxType$ |a_$16_$0|) (Set@Card$BoxType$ (Set@Intersection$BoxType$ |a_$16_$0| |b_$11_$0|)))))  :pattern ( (Set@Card$BoxType$ (Set@Difference$BoxType$ |a_$16_$0| |b_$11_$0|)))))
    (forall( (|a_$17_$0| $@Map@@BoxType@To@Bool@@) (|b_$12_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Subset$BoxType$ |a_$17_$0| |b_$12_$0|) (forall( (|o_$5_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$17_$0| |o_$5_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$12_$0| |o_$5_$1|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$17_$0| |o_$5_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$12_$0| |o_$5_$1|)))))  :pattern ( (Set@Subset$BoxType$ |a_$17_$0| |b_$12_$0|))))
    (forall( (|a_$18_$0| $@Map@@BoxType@To@Bool@@) (|b_$13_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Equal$BoxType$ |a_$18_$0| |b_$13_$0|) (forall( (|o_$6_$1| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$6_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$18_$0| |o_$6_$1|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$18_$0| |o_$6_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$6_$1|)))))  :pattern ( (Set@Equal$BoxType$ |a_$18_$0| |b_$13_$0|))))
    (forall( (|a_$19_$0| $@Map@@BoxType@To@Bool@@) (|b_$14_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Equal$BoxType$ |a_$19_$0| |b_$14_$0|) (= |b_$14_$0| |a_$19_$0|))  :pattern ( (Set@Equal$BoxType$ |a_$19_$0| |b_$14_$0|))))
    (forall( (|a_$2_$0| $@Map@@BoxType@To@Bool@@) (|x_$5_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$2_$0| |x_$5_$0|) (= (Set@Card$BoxType$ (Set@UnionOne$BoxType$ |a_$2_$0| |x_$5_$0|)) (Set@Card$BoxType$ |a_$2_$0|)))  :pattern ( (Set@Card$BoxType$ (Set@UnionOne$BoxType$ |a_$2_$0| |x_$5_$0|)))))
    (forall( (|a_$20_$0| $@Map@@BoxType@To@Bool@@) (|b_$15_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Disjoint$BoxType$ |a_$20_$0| |b_$15_$0|) (forall( (|o_$7_$1| BoxType))(!(or (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$15_$0| |o_$7_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$20_$0| |o_$7_$1|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$20_$0| |o_$7_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$15_$0| |o_$7_$1|)))))  :pattern ( (Set@Disjoint$BoxType$ |a_$20_$0| |b_$15_$0|))))
    (forall( (|a_$21| Int) (|b_$16| Int))(!(= (= (Math@min |a_$21| |b_$16|) |a_$21|) (<= |a_$21| |b_$16|))  :pattern ( (Math@min |a_$21| |b_$16|))))
    (forall( (|a_$22| Int) (|b_$17| Int))(!(= (= (Math@min |a_$22| |b_$17|) |b_$17|) (<= |b_$17| |a_$22|))  :pattern ( (Math@min |a_$22| |b_$17|))))
    (forall( (|a_$23| Int) (|b_$18| Int))(!(or (= (Math@min |a_$23| |b_$18|) |b_$18|) (= (Math@min |a_$23| |b_$18|) |a_$23|))  :pattern ( (Math@min |a_$23| |b_$18|))))
    (forall( (|a_$24| Int))(!(=> (<= 0 |a_$24|) (= (Math@clip |a_$24|) |a_$24|))  :pattern ( (Math@clip |a_$24|))))
    (forall( (|a_$25| Int))(!(=> (< |a_$25| 0) (= (Math@clip |a_$25|) 0))  :pattern ( (Math@clip |a_$25|))))
    (forall( (|a_$3_$0| $@Map@@BoxType@To@Bool@@) (|x_$6_$0| BoxType))(!(=> (not (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |x_$6_$0|)) (= (Set@Card$BoxType$ (Set@UnionOne$BoxType$ |a_$3_$0| |x_$6_$0|)) (+ (Set@Card$BoxType$ |a_$3_$0|) 1)))  :pattern ( (Set@Card$BoxType$ (Set@UnionOne$BoxType$ |a_$3_$0| |x_$6_$0|)))))
    (forall( (|a_$4_$0| $@Map@@BoxType@To@Bool@@) (|b_$51| $@Map@@BoxType@To@Bool@@) (|o_$2_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$4_$0| |b_$51|) |o_$2_$0|) (or (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$51| |o_$2_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$4_$0| |o_$2_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$4_$0| |b_$51|) |o_$2_$0|))))
    (forall( (|a_$45_$0| Seq$BoxType$) (|b_$32_$0| Seq$BoxType$))(!(=> (Seq@Equal$BoxType$ |a_$45_$0| |b_$32_$0|) (= |b_$32_$0| |a_$45_$0|))  :pattern ( (Seq@Equal$BoxType$ |a_$45_$0| |b_$32_$0|))))
    (forall( (|a_$45_$1| Seq$ref$) (|b_$32_$1| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$45_$1| |b_$32_$1|) (= |b_$32_$1| |a_$45_$1|))  :pattern ( (Seq@Equal$ref$ |a_$45_$1| |b_$32_$1|))))
    (forall( (|a_$5_$0| $@Map@@BoxType@To@Bool@@) (|b_$0_$0| $@Map@@BoxType@To@Bool@@) (|y_$0_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$5_$0| |y_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$5_$0| |b_$0_$0|) |y_$0_$0|))  :pattern ( (Set@Union$BoxType$ |a_$5_$0| |b_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$5_$0| |y_$0_$0|))))
    (forall( (|a_$51_$0| $@Map@@BoxType@To@Bool@@) (|b_$33_$0| $@Map@@BoxType@To@BoxType@@))(!(= (Map@Domain$BoxType$BoxType$ (Map@Glue$BoxType$BoxType$ |a_$51_$0| |b_$33_$0|)) |a_$51_$0|)  :pattern ( (Map@Domain$BoxType$BoxType$ (Map@Glue$BoxType$BoxType$ |a_$51_$0| |b_$33_$0|)))))
    (forall( (|a_$52_$0| $@Map@@BoxType@To@Bool@@) (|b_$34_$0| $@Map@@BoxType@To@BoxType@@))(!(= (Map@Elements$BoxType$BoxType$ (Map@Glue$BoxType$BoxType$ |a_$52_$0| |b_$34_$0|)) |b_$34_$0|)  :pattern ( (Map@Elements$BoxType$BoxType$ (Map@Glue$BoxType$BoxType$ |a_$52_$0| |b_$34_$0|)))))
    (forall( (|a_$53| ClassName) (|b_$42| ClassName))(!(and (= (TypeTupleCdr (TypeTuple |a_$53| |b_$42|)) |b_$42|) (= (TypeTupleCar (TypeTuple |a_$53| |b_$42|)) |a_$53|))  :pattern ( (TypeTuple |a_$53| |b_$42|))))
    (forall( (|a_$54| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$50| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|c| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (and ($HeapSucc |b_$50| |c|) ($HeapSucc |a_$54| |b_$50|)) ($HeapSucc |a_$54| |c|))  :pattern ( ($HeapSucc |a_$54| |b_$50|) ($HeapSucc |b_$50| |c|))))
    (forall( (|a_$55| $@Map@@BoxType@To@Bool@@) (|x_$2_$0| BoxType) (|o_$1_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$55| |x_$2_$0|) |o_$1_$0|) (or (= |x_$2_$0| |o_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$55| |o_$1_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$55| |x_$2_$0|) |o_$1_$0|))))
    (forall( (|a_$6_$0| $@Map@@BoxType@To@Bool@@) (|b_$1_$0| $@Map@@BoxType@To@Bool@@) (|y_$1_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$6_$0| |b_$1_$0|) |y_$1_$0|))  :pattern ( (Set@Union$BoxType$ |a_$6_$0| |b_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|))))
    (forall( (|a_$7_$0| $@Map@@BoxType@To@Bool@@) (|b_$2_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Disjoint$BoxType$ |a_$7_$0| |b_$2_$0|) (and (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$2_$0|) |b_$2_$0|) |a_$7_$0|) (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$2_$0|) |a_$7_$0|) |b_$2_$0|)))  :pattern ( (Set@Union$BoxType$ |a_$7_$0| |b_$2_$0|))))
    (forall( (|a_$8_$0| $@Map@@BoxType@To@Bool@@) (|b_$3_$0| $@Map@@BoxType@To@Bool@@) (|o_$3_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$8_$0| |b_$3_$0|) |o_$3_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$3_$0| |o_$3_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$8_$0| |o_$3_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$8_$0| |b_$3_$0|) |o_$3_$0|))))
    (forall( (|a_$9_$0| $@Map@@BoxType@To@Bool@@) (|b_$4_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$9_$0| |b_$4_$0|) |b_$4_$0|) (Set@Union$BoxType$ |a_$9_$0| |b_$4_$0|))  :pattern ( (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$9_$0| |b_$4_$0|) |b_$4_$0|))))
    (forall( (|b_$35| BoxType))(!(= |b_$35| ($Box$Int$ ($Unbox$Int$ |b_$35|)))  :pattern ( ($Unbox$Int$ |b_$35|))))
    (forall( (|b_$36| BoxType))(!(= |b_$36| ($Box$ref$ ($Unbox$ref$ |b_$36|)))  :pattern ( ($Unbox$ref$ |b_$36|))))
    (forall( (|b_$37| BoxType))(!(= |b_$37| ($Box$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$37|)))  :pattern ( ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$37|))))
    (forall( (|b_$38| BoxType))(!(= |b_$38| ($Box$Seq$BoxType$$ ($Unbox$Seq$BoxType$$ |b_$38|)))  :pattern ( ($Unbox$Seq$BoxType$$ |b_$38|))))
    (forall( (|b_$39| BoxType))(!(= |b_$39| ($Box$Map$BoxType$BoxType$$ ($Unbox$Map$BoxType$BoxType$$ |b_$39|)))  :pattern ( ($Unbox$Map$BoxType$BoxType$$ |b_$39|))))
    (forall( (|b_$40| BoxType))(!(= |b_$40| ($Box$DatatypeType$ ($Unbox$DatatypeType$ |b_$40|)))  :pattern ( ($Unbox$DatatypeType$ |b_$40|))))
    (forall( (|b_$41| BoxType))(!(=> ($IsCanonicalBoolBox |b_$41|) (= |b_$41| ($Box$Bool$ ($Unbox$Bool$ |b_$41|))))  :pattern ( ($Unbox$Bool$ |b_$41|))))
    (forall( (|b_$43| BoxType) (|h_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$43| |h_$6|) (or (= null ($Unbox$ref$ |b_$43|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$6| ($Unbox$ref$ |b_$43|) alloc)))  :pattern ( (GenericAlloc |b_$43| |h_$6|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$6| ($Unbox$ref$ |b_$43|) alloc))))
    (forall( (|b_$44| BoxType) (|h_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|i_$21| Int))(!(=> (and (< |i_$21| (Seq@Length$BoxType$ ($Unbox$Seq$BoxType$$ |b_$44|))) (and (GenericAlloc |b_$44| |h_$7|) (<= 0 |i_$21|))) (GenericAlloc (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$44|) |i_$21|) |h_$7|))  :pattern ( (GenericAlloc |b_$44| |h_$7|) (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$44|) |i_$21|))))
    (forall( (|b_$45| BoxType) (|h_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|i_$22| BoxType))(!(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ ($Unbox$Map$BoxType$BoxType$$ |b_$45|)) |i_$22|) (GenericAlloc |b_$45| |h_$8|)) (GenericAlloc (MapRead$$@Map@@BoxType@To@BoxType@@$ (Map@Elements$BoxType$BoxType$ ($Unbox$Map$BoxType$BoxType$$ |b_$45|)) |i_$22|) |h_$8|))  :pattern ( (GenericAlloc |b_$45| |h_$8|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ ($Unbox$Map$BoxType$BoxType$$ |b_$45|)) |i_$22|))))
    (forall( (|b_$46| BoxType) (|h_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|t_$2| BoxType))(!(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ ($Unbox$Map$BoxType$BoxType$$ |b_$46|)) |t_$2|) (GenericAlloc |b_$46| |h_$9|)) (GenericAlloc |t_$2| |h_$9|))  :pattern ( (GenericAlloc |b_$46| |h_$9|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ ($Unbox$Map$BoxType$BoxType$$ |b_$46|)) |t_$2|))))
    (forall( (|b_$47| BoxType) (|h_$10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|t_$3| BoxType))(!(=> (and (GenericAlloc |b_$47| |h_$10|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$47|) |t_$3|)) (GenericAlloc |t_$3| |h_$10|))  :pattern ( (GenericAlloc |b_$47| |h_$10|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$47|) |t_$3|))))
    (forall( (|b_$48| BoxType) (|h_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$48| |h_$11|) (DtAlloc ($Unbox$DatatypeType$ |b_$48|) |h_$11|))  :pattern ( (GenericAlloc |b_$48| |h_$11|) (DtType ($Unbox$DatatypeType$ |b_$48|)))))
    (forall( (|b_$49| Bool) (|h_$12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$12|) (GenericAlloc ($Box$Bool$ |b_$49|) |h_$12|)))
    (forall( (|cl_$0| ClassName) (|nm_$0| NameFamily))(!(and (= |nm_$0| (DeclName$Bool$ (FieldOfDecl$Bool$ |cl_$0| |nm_$0|))) (= (DeclType$Bool$ (FieldOfDecl$Bool$ |cl_$0| |nm_$0|)) |cl_$0|))  :pattern ( (FieldOfDecl$Bool$ |cl_$0| |nm_$0|))))
    (forall( (|cl_$1| ClassName) (|nm_$1| NameFamily))(!(and (= |nm_$1| (DeclName$BoxType$ (FieldOfDecl$BoxType$ |cl_$1| |nm_$1|))) (= (DeclType$BoxType$ (FieldOfDecl$BoxType$ |cl_$1| |nm_$1|)) |cl_$1|))  :pattern ( (FieldOfDecl$BoxType$ |cl_$1| |nm_$1|))))
    (forall( (|cl_$2| ClassName) (|nm_$2| NameFamily))(!(and (= |nm_$2| (DeclName$ref$ (FieldOfDecl$ref$ |cl_$2| |nm_$2|))) (= (DeclType$ref$ (FieldOfDecl$ref$ |cl_$2| |nm_$2|)) |cl_$2|))  :pattern ( (FieldOfDecl$ref$ |cl_$2| |nm_$2|))))
    (forall( (|f_$2| Field$BoxType$) (|i_$19| Int))(!(= (FDim$BoxType$ (MultiIndexField |f_$2| |i_$19|)) (+ (FDim$BoxType$ |f_$2|) 1))  :pattern ( (MultiIndexField |f_$2| |i_$19|))))
    (forall( (|f_$3| Field$BoxType$) (|i_$20| Int))(!(and (= (MultiIndexField_Inverse1$BoxType$ (MultiIndexField |f_$3| |i_$20|)) |i_$20|) (= (MultiIndexField_Inverse0$BoxType$ (MultiIndexField |f_$3| |i_$20|)) |f_$3|))  :pattern ( (MultiIndexField |f_$3| |i_$20|))))
    (forall( (|f_$7| Field$Bool$) (|r_$9| ref) (|H_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$9| |f_$7|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$9| |f_$7|)))
    (forall( (|f_$8| Field$BoxType$) (|r_$10| ref) (|H_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$2| |r_$10| |f_$8|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$2| |r_$10| |f_$8|)))
    (forall( (|f_$9| Field$ref$) (|r_$11| ref) (|H_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$3| |r_$11| |f_$9|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$3| |r_$11| |f_$9|)))
    (forall( (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a_$47| ref) (|i_$7| Int))(=> (and (< |i_$7| (Seq@Length$BoxType$ (Seq@FromArray |h_$0| |a_$47|))) (<= 0 |i_$7|)) (= (Seq@Index$BoxType$ (Seq@FromArray |h_$0| |a_$47|) |i_$7|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$0| |a_$47| (IndexField |i_$7|)))))
    (forall( (|h_$1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|o_$17_$0| ref) (|f_$1_$0| Field$Bool$) (|v_$7_$0| Bool) (|a_$48_$0| ref))(!(=> (not (= |o_$17_$0| |a_$48_$0|)) (= (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1_$0| |o_$17_$0| |f_$1_$0| |v_$7_$0|) |a_$48_$0|) (Seq@FromArray |h_$1_$0| |a_$48_$0|)))  :pattern ( (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1_$0| |o_$17_$0| |f_$1_$0| |v_$7_$0|) |a_$48_$0|))))
    (forall( (|h_$1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|o_$17_$1| ref) (|f_$1_$1| Field$BoxType$) (|v_$7_$1| BoxType) (|a_$48_$1| ref))(!(=> (not (= |o_$17_$1| |a_$48_$1|)) (= (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$1_$1| |o_$17_$1| |f_$1_$1| |v_$7_$1|) |a_$48_$1|) (Seq@FromArray |h_$1_$1| |a_$48_$1|)))  :pattern ( (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$1_$1| |o_$17_$1| |f_$1_$1| |v_$7_$1|) |a_$48_$1|))))
    (forall( (|h_$1_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|o_$17_$2| ref) (|f_$1_$2| Field$ref$) (|v_$7_$2| ref) (|a_$48_$2| ref))(!(=> (not (= |o_$17_$2| |a_$48_$2|)) (= (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$1_$2| |o_$17_$2| |f_$1_$2| |v_$7_$2|) |a_$48_$2|) (Seq@FromArray |h_$1_$2| |a_$48_$2|)))  :pattern ( (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$1_$2| |o_$17_$2| |f_$1_$2| |v_$7_$2|) |a_$48_$2|))))
    (forall( (|h_$16_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$8_$0| ref) (|f_$5_$0| Field$Bool$) (|x_$24_$0| Bool))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$16_$0| |r_$8_$0| |f_$5_$0| |x_$24_$0|)) ($HeapSucc |h_$16_$0| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$16_$0| |r_$8_$0| |f_$5_$0| |x_$24_$0|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$16_$0| |r_$8_$0| |f_$5_$0| |x_$24_$0|))))
    (forall( (|h_$16_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$8_$1| ref) (|f_$5_$1| Field$BoxType$) (|x_$24_$1| BoxType))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$16_$1| |r_$8_$1| |f_$5_$1| |x_$24_$1|)) ($HeapSucc |h_$16_$1| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$16_$1| |r_$8_$1| |f_$5_$1| |x_$24_$1|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$16_$1| |r_$8_$1| |f_$5_$1| |x_$24_$1|))))
    (forall( (|h_$16_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$8_$2| ref) (|f_$5_$2| Field$ref$) (|x_$24_$2| ref))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$16_$2| |r_$8_$2| |f_$5_$2| |x_$24_$2|)) ($HeapSucc |h_$16_$2| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$16_$2| |r_$8_$2| |f_$5_$2| |x_$24_$2|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$16_$2| |r_$8_$2| |f_$5_$2| |x_$24_$2|))))
    (forall( (|h_$17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($HeapSucc |h_$17| |k_$1|) (forall( (|o_$20| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$17| |o_$20| alloc) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$20| alloc))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$20| alloc)))))  :pattern ( ($HeapSucc |h_$17| |k_$1|))))
    (forall( (|h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|i_$8| Int) (|v_$8| BoxType) (|a_$49| ref))(!(=> (and (< |i_$8| (_System.array.Length |a_$49|)) (<= 0 |i_$8|)) (= (Seq@Update$BoxType$ (Seq@FromArray |h_$2| |a_$49|) |i_$8| |v_$8|) (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$2| |a_$49| (IndexField |i_$8|) |v_$8|) |a_$49|)))  :pattern ( (Seq@FromArray (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$2| |a_$49| (IndexField |i_$8|) |v_$8|) |a_$49|))))
    (forall( (|h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a_$50| ref) (|n0| Int) (|n1| Int))(!(=> (and (<= |n1| (_System.array.Length |a_$50|)) (and (= |n1| (+ |n0| 1)) (<= 0 |n0|))) (= (Seq@Take$BoxType$ (Seq@FromArray |h_$3| |a_$50|) |n1|) (Seq@Build$BoxType$ (Seq@Take$BoxType$ (Seq@FromArray |h_$3| |a_$50|) |n0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$3| |a_$50| (IndexField |n0|)))))  :pattern ( (Seq@Take$BoxType$ (Seq@FromArray |h_$3| |a_$50|) |n0|) (Seq@Take$BoxType$ (Seq@FromArray |h_$3| |a_$50|) |n1|))))
    (forall( (|h_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d| DatatypeType))(!(=> ($HeapSucc |h_$4| |k|) (=> (DtAlloc |d| |h_$4|) (DtAlloc |d| |k|)))  :pattern ( ($HeapSucc |h_$4| |k|) (DtAlloc |d| |h_$4|)) :pattern ( ($HeapSucc |h_$4| |k|) (DtAlloc |d| |k|))))
    (forall( (|h_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d_$0| BoxType))(!(=> ($HeapSucc |h_$5| |k_$0|) (=> (GenericAlloc |d_$0| |h_$5|) (GenericAlloc |d_$0| |k_$0|)))  :pattern ( ($HeapSucc |h_$5| |k_$0|) (GenericAlloc |d_$0| |h_$5|)) :pattern ( ($HeapSucc |h_$5| |k_$0|) (GenericAlloc |d_$0| |k_$0|))))
    (forall( (|h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a_$46| ref))(!(= (Seq@Length$BoxType$ (Seq@FromArray |h| |a_$46|)) (_System.array.Length |a_$46|))  :pattern ( (Seq@Length$BoxType$ (Seq@FromArray |h| |a_$46|)))))
    (forall( (|i_$17| Int))(!(= (FDim$BoxType$ (IndexField |i_$17|)) 1)  :pattern ( (IndexField |i_$17|))))
    (forall( (|m_$0_$0| Map$BoxType$BoxType$))(!(= (= (Map@Card$BoxType$BoxType$ |m_$0_$0|) 0) (= |m_$0_$0| Map@Empty$BoxType$BoxType$))  :pattern ( (Map@Card$BoxType$BoxType$ |m_$0_$0|))))
    (forall( (|m_$1_$0| Map$BoxType$BoxType$) (|u_$0_$0| BoxType) (|u'_$0| BoxType) (|v_$14_$0| BoxType))(!(and (=> (= |u_$0_$0| |u'_$0|) (and (= |v_$14_$0| (MapRead$$@Map@@BoxType@To@BoxType@@$ (Map@Elements$BoxType$BoxType$ (Map@Build$BoxType$BoxType$ |m_$1_$0| |u_$0_$0| |v_$14_$0|)) |u'_$0|)) (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ (Map@Build$BoxType$BoxType$ |m_$1_$0| |u_$0_$0| |v_$14_$0|)) |u'_$0|))) (=> (not (= |u_$0_$0| |u'_$0|)) (and (= (MapRead$$@Map@@BoxType@To@BoxType@@$ (Map@Elements$BoxType$BoxType$ (Map@Build$BoxType$BoxType$ |m_$1_$0| |u_$0_$0| |v_$14_$0|)) |u'_$0|) (MapRead$$@Map@@BoxType@To@BoxType@@$ (Map@Elements$BoxType$BoxType$ |m_$1_$0|) |u'_$0|)) (= (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ (Map@Build$BoxType$BoxType$ |m_$1_$0| |u_$0_$0| |v_$14_$0|)) |u'_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ |m_$1_$0|) |u'_$0|)))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ (Map@Build$BoxType$BoxType$ |m_$1_$0| |u_$0_$0| |v_$14_$0|)) |u'_$0|)) :pattern ( (MapRead$$@Map@@BoxType@To@BoxType@@$ (Map@Elements$BoxType$BoxType$ (Map@Build$BoxType$BoxType$ |m_$1_$0| |u_$0_$0| |v_$14_$0|)) |u'_$0|))))
    (forall( (|m_$2_$0| Map$BoxType$BoxType$) (|u_$1_$0| BoxType) (|v_$15_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ |m_$2_$0|) |u_$1_$0|) (= (Map@Card$BoxType$BoxType$ (Map@Build$BoxType$BoxType$ |m_$2_$0| |u_$1_$0| |v_$15_$0|)) (Map@Card$BoxType$BoxType$ |m_$2_$0|)))  :pattern ( (Map@Card$BoxType$BoxType$ (Map@Build$BoxType$BoxType$ |m_$2_$0| |u_$1_$0| |v_$15_$0|)))))
    (forall( (|m_$3_$0| Map$BoxType$BoxType$) (|u_$2_$0| BoxType) (|v_$16_$0| BoxType))(!(=> (not (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ |m_$3_$0|) |u_$2_$0|)) (= (Map@Card$BoxType$BoxType$ (Map@Build$BoxType$BoxType$ |m_$3_$0| |u_$2_$0| |v_$16_$0|)) (+ (Map@Card$BoxType$BoxType$ |m_$3_$0|) 1)))  :pattern ( (Map@Card$BoxType$BoxType$ (Map@Build$BoxType$BoxType$ |m_$3_$0| |u_$2_$0| |v_$16_$0|)))))
    (forall( (|m_$4_$0| Map$BoxType$BoxType$) (|m'_$2| Map$BoxType$BoxType$))(!(= (Map@Equal$BoxType$BoxType$ |m_$4_$0| |m'_$2|) (and (forall( (|u_$4_$1| BoxType))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ |m_$4_$0|) |u_$4_$1|) (= (MapRead$$@Map@@BoxType@To@BoxType@@$ (Map@Elements$BoxType$BoxType$ |m_$4_$0|) |u_$4_$1|) (MapRead$$@Map@@BoxType@To@BoxType@@$ (Map@Elements$BoxType$BoxType$ |m'_$2|) |u_$4_$1|)))) (forall( (|u_$3_$1| BoxType))(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ |m_$4_$0|) |u_$3_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ |m'_$2|) |u_$3_$1|)))))  :pattern ( (Map@Equal$BoxType$BoxType$ |m_$4_$0| |m'_$2|))))
    (forall( (|m_$5_$0| Map$BoxType$BoxType$) (|m'_$0_$0| Map$BoxType$BoxType$))(!(=> (Map@Equal$BoxType$BoxType$ |m_$5_$0| |m'_$0_$0|) (= |m_$5_$0| |m'_$0_$0|))  :pattern ( (Map@Equal$BoxType$BoxType$ |m_$5_$0| |m'_$0_$0|))))
    (forall( (|m_$7| Map$BoxType$BoxType$))(!(<= 0 (Map@Card$BoxType$BoxType$ |m_$7|))  :pattern ( (Map@Card$BoxType$BoxType$ |m_$7|))))
    (forall( (|o_$19| ref))(<= 0 (_System.array.Length |o_$19|)))
    (forall( (|o_$22| BoxType))(!(not (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$22|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$22|))))
    (forall( (|r_$1_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$1_$0|) |r_$1_$0|)  :pattern ( (Set@Singleton$BoxType$ |r_$1_$0|))))
    (forall( (|r_$2_$0| BoxType) (|o_$0_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|) (= |r_$2_$0| |o_$0_$0|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|))))
    (forall( (|r_$3_$0| BoxType))(!(= (Set@Card$BoxType$ (Set@Singleton$BoxType$ |r_$3_$0|)) 1)  :pattern ( (Set@Card$BoxType$ (Set@Singleton$BoxType$ |r_$3_$0|)))))
    (forall( (|r_$6| ref) (|h_$14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (and (or (= |r_$6| null) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$14| |r_$6| alloc)) ($IsGoodHeap |h_$14|)) (GenericAlloc ($Box$ref$ |r_$6|) |h_$14|))  :pattern ( (GenericAlloc ($Box$ref$ |r_$6|) |h_$14|))))
    (forall( (|r_$7| ref) (|f_$4| Field$BoxType$) (|h_$15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$15| |r_$7| alloc) (and ($IsGoodHeap |h_$15|) (not (= |r_$7| null)))) (GenericAlloc (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$15| |r_$7| |f_$4|) |h_$15|))  :pattern ( (GenericAlloc (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$15| |r_$7| |f_$4|) |h_$15|))))
    (forall( (|s_$0_$0| $@Map@@BoxType@To@Bool@@))(!(and (= (= (Set@Card$BoxType$ |s_$0_$0|) 0) (= |s_$0_$0| Set@Empty$BoxType$)) (=> (not (= (Set@Card$BoxType$ |s_$0_$0|) 0)) (exists( (|x_$1_$1| BoxType))(MapRead$$@Map@@BoxType@To@Bool@@$ |s_$0_$0| |x_$1_$1|))))  :pattern ( (Set@Card$BoxType$ |s_$0_$0|))))
    (forall( (|s_$10_$0| Seq$BoxType$))(!(<= 0 (Seq@Length$BoxType$ |s_$10_$0|))  :pattern ( (Seq@Length$BoxType$ |s_$10_$0|))))
    (forall( (|s_$10_$1| Seq$ref$))(!(<= 0 (Seq@Length$ref$ |s_$10_$1|))  :pattern ( (Seq@Length$ref$ |s_$10_$1|))))
    (forall( (|s_$11_$0| Seq$BoxType$))(!(=> (= (Seq@Length$BoxType$ |s_$11_$0|) 0) (= |s_$11_$0| Seq@Empty$BoxType$))  :pattern ( (Seq@Length$BoxType$ |s_$11_$0|))))
    (forall( (|s_$11_$1| Seq$ref$))(!(=> (= (Seq@Length$ref$ |s_$11_$1|) 0) (= |s_$11_$1| Seq@Empty$ref$))  :pattern ( (Seq@Length$ref$ |s_$11_$1|))))
    (forall( (|s_$12_$0| Seq$BoxType$) (|v_$2_$0| BoxType))(!(= (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$12_$0| |v_$2_$0|)) (+ 1 (Seq@Length$BoxType$ |s_$12_$0|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$12_$0| |v_$2_$0|)))))
    (forall( (|s_$12_$1| Seq$ref$) (|v_$2_$1| ref))(!(= (Seq@Length$ref$ (Seq@Build$ref$ |s_$12_$1| |v_$2_$1|)) (+ 1 (Seq@Length$ref$ |s_$12_$1|)))  :pattern ( (Seq@Length$ref$ (Seq@Build$ref$ |s_$12_$1| |v_$2_$1|)))))
    (forall( (|s_$13_$0| Seq$BoxType$) (|i_$1_$0| Int) (|v_$3_$0| BoxType))(!(and (=> (= (Seq@Length$BoxType$ |s_$13_$0|) |i_$1_$0|) (= |v_$3_$0| (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$13_$0| |v_$3_$0|) |i_$1_$0|))) (=> (not (= (Seq@Length$BoxType$ |s_$13_$0|) |i_$1_$0|)) (= (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$13_$0| |v_$3_$0|) |i_$1_$0|) (Seq@Index$BoxType$ |s_$13_$0| |i_$1_$0|))))  :pattern ( (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$13_$0| |v_$3_$0|) |i_$1_$0|))))
    (forall( (|s_$13_$1| Seq$ref$) (|i_$1_$1| Int) (|v_$3_$1| ref))(!(and (=> (= (Seq@Length$ref$ |s_$13_$1|) |i_$1_$1|) (= |v_$3_$1| (Seq@Index$ref$ (Seq@Build$ref$ |s_$13_$1| |v_$3_$1|) |i_$1_$1|))) (=> (not (= (Seq@Length$ref$ |s_$13_$1|) |i_$1_$1|)) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$13_$1| |v_$3_$1|) |i_$1_$1|) (Seq@Index$ref$ |s_$13_$1| |i_$1_$1|))))  :pattern ( (Seq@Index$ref$ (Seq@Build$ref$ |s_$13_$1| |v_$3_$1|) |i_$1_$1|))))
    (forall( (|s_$14_$0| Seq$BoxType$) (|i_$2_$0| Int) (|v_$4_$0| BoxType))(!(=> (and (< |i_$2_$0| (Seq@Length$BoxType$ |s_$14_$0|)) (<= 0 |i_$2_$0|)) (= (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$14_$0| |i_$2_$0| |v_$4_$0|)) (Seq@Length$BoxType$ |s_$14_$0|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$14_$0| |i_$2_$0| |v_$4_$0|)))))
    (forall( (|s_$14_$1| Seq$ref$) (|i_$2_$1| Int) (|v_$4_$1| ref))(!(=> (and (< |i_$2_$1| (Seq@Length$ref$ |s_$14_$1|)) (<= 0 |i_$2_$1|)) (= (Seq@Length$ref$ (Seq@Update$ref$ |s_$14_$1| |i_$2_$1| |v_$4_$1|)) (Seq@Length$ref$ |s_$14_$1|)))  :pattern ( (Seq@Length$ref$ (Seq@Update$ref$ |s_$14_$1| |i_$2_$1| |v_$4_$1|)))))
    (forall( (|s_$15_$0| Seq$BoxType$) (|i_$3_$0| Int) (|v_$5_$0| BoxType) (|n_$1_$0| Int))(!(=> (and (< |n_$1_$0| (Seq@Length$BoxType$ |s_$15_$0|)) (<= 0 |n_$1_$0|)) (and (=> (= |n_$1_$0| |i_$3_$0|) (= |v_$5_$0| (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$15_$0| |i_$3_$0| |v_$5_$0|) |n_$1_$0|))) (=> (not (= |n_$1_$0| |i_$3_$0|)) (= (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$15_$0| |i_$3_$0| |v_$5_$0|) |n_$1_$0|) (Seq@Index$BoxType$ |s_$15_$0| |n_$1_$0|)))))  :pattern ( (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$15_$0| |i_$3_$0| |v_$5_$0|) |n_$1_$0|))))
    (forall( (|s_$15_$1| Seq$ref$) (|i_$3_$1| Int) (|v_$5_$1| ref) (|n_$1_$1| Int))(!(=> (and (< |n_$1_$1| (Seq@Length$ref$ |s_$15_$1|)) (<= 0 |n_$1_$1|)) (and (=> (= |n_$1_$1| |i_$3_$1|) (= |v_$5_$1| (Seq@Index$ref$ (Seq@Update$ref$ |s_$15_$1| |i_$3_$1| |v_$5_$1|) |n_$1_$1|))) (=> (not (= |n_$1_$1| |i_$3_$1|)) (= (Seq@Index$ref$ (Seq@Update$ref$ |s_$15_$1| |i_$3_$1| |v_$5_$1|) |n_$1_$1|) (Seq@Index$ref$ |s_$15_$1| |n_$1_$1|)))))  :pattern ( (Seq@Index$ref$ (Seq@Update$ref$ |s_$15_$1| |i_$3_$1| |v_$5_$1|) |n_$1_$1|))))
    (forall( (|s_$16_$0| Seq$BoxType$) (|x_$16_$0| BoxType))(!(= (Seq@Contains$BoxType$ |s_$16_$0| |x_$16_$0|) (exists( (|i_$4_$1| Int))(!(and (= |x_$16_$0| (Seq@Index$BoxType$ |s_$16_$0| |i_$4_$1|)) (and (< |i_$4_$1| (Seq@Length$BoxType$ |s_$16_$0|)) (<= 0 |i_$4_$1|)))  :pattern ( (Seq@Index$BoxType$ |s_$16_$0| |i_$4_$1|)))))  :pattern ( (Seq@Contains$BoxType$ |s_$16_$0| |x_$16_$0|))))
    (forall( (|s_$16_$1| Seq$ref$) (|x_$16_$1| ref))(!(= (Seq@Contains$ref$ |s_$16_$1| |x_$16_$1|) (exists( (|i_$4_$3| Int))(!(and (= |x_$16_$1| (Seq@Index$ref$ |s_$16_$1| |i_$4_$3|)) (and (< |i_$4_$3| (Seq@Length$ref$ |s_$16_$1|)) (<= 0 |i_$4_$3|)))  :pattern ( (Seq@Index$ref$ |s_$16_$1| |i_$4_$3|)))))  :pattern ( (Seq@Contains$ref$ |s_$16_$1| |x_$16_$1|))))
    (forall( (|s_$17_$0| Seq$BoxType$) (|v_$6_$0| BoxType) (|x_$19_$0| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Build$BoxType$ |s_$17_$0| |v_$6_$0|) |x_$19_$0|) (or (= |x_$19_$0| |v_$6_$0|) (Seq@Contains$BoxType$ |s_$17_$0| |x_$19_$0|)))  :pattern ( (Seq@Contains$BoxType$ (Seq@Build$BoxType$ |s_$17_$0| |v_$6_$0|) |x_$19_$0|))))
    (forall( (|s_$17_$1| Seq$ref$) (|v_$6_$1| ref) (|x_$19_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Build$ref$ |s_$17_$1| |v_$6_$1|) |x_$19_$1|) (or (= |x_$19_$1| |v_$6_$1|) (Seq@Contains$ref$ |s_$17_$1| |x_$19_$1|)))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ |s_$17_$1| |v_$6_$1|) |x_$19_$1|))))
    (forall( (|s_$18_$0| Seq$BoxType$) (|n_$2_$0| Int) (|x_$20_$0| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$18_$0| |n_$2_$0|) |x_$20_$0|) (exists( (|i_$5_$1| Int))(!(and (= |x_$20_$0| (Seq@Index$BoxType$ |s_$18_$0| |i_$5_$1|)) (and (< |i_$5_$1| (Seq@Length$BoxType$ |s_$18_$0|)) (and (< |i_$5_$1| |n_$2_$0|) (<= 0 |i_$5_$1|))))  :pattern ( (Seq@Index$BoxType$ |s_$18_$0| |i_$5_$1|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$18_$0| |n_$2_$0|) |x_$20_$0|))))
    (forall( (|s_$18_$1| Seq$ref$) (|n_$2_$1| Int) (|x_$20_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$18_$1| |n_$2_$1|) |x_$20_$1|) (exists( (|i_$5_$3| Int))(!(and (= |x_$20_$1| (Seq@Index$ref$ |s_$18_$1| |i_$5_$3|)) (and (< |i_$5_$3| (Seq@Length$ref$ |s_$18_$1|)) (and (< |i_$5_$3| |n_$2_$1|) (<= 0 |i_$5_$3|))))  :pattern ( (Seq@Index$ref$ |s_$18_$1| |i_$5_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$18_$1| |n_$2_$1|) |x_$20_$1|))))
    (forall( (|s_$19_$0| Seq$BoxType$) (|n_$3_$0| Int) (|x_$21_$0| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$19_$0| |n_$3_$0|) |x_$21_$0|) (exists( (|i_$6_$1| Int))(!(and (= |x_$21_$0| (Seq@Index$BoxType$ |s_$19_$0| |i_$6_$1|)) (and (< |i_$6_$1| (Seq@Length$BoxType$ |s_$19_$0|)) (and (<= |n_$3_$0| |i_$6_$1|) (<= 0 |n_$3_$0|))))  :pattern ( (Seq@Index$BoxType$ |s_$19_$0| |i_$6_$1|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$19_$0| |n_$3_$0|) |x_$21_$0|))))
    (forall( (|s_$19_$1| Seq$ref$) (|n_$3_$1| Int) (|x_$21_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$19_$1| |n_$3_$1|) |x_$21_$1|) (exists( (|i_$6_$3| Int))(!(and (= |x_$21_$1| (Seq@Index$ref$ |s_$19_$1| |i_$6_$3|)) (and (< |i_$6_$3| (Seq@Length$ref$ |s_$19_$1|)) (and (<= |n_$3_$1| |i_$6_$3|) (<= 0 |n_$3_$1|))))  :pattern ( (Seq@Index$ref$ |s_$19_$1| |i_$6_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$19_$1| |n_$3_$1|) |x_$21_$1|))))
    (forall( (|s_$20_$0| Seq$BoxType$) (|n_$5_$0| Int))(!(=> (<= 0 |n_$5_$0|) (and (=> (< (Seq@Length$BoxType$ |s_$20_$0|) |n_$5_$0|) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$20_$0| |n_$5_$0|)) (Seq@Length$BoxType$ |s_$20_$0|))) (=> (<= |n_$5_$0| (Seq@Length$BoxType$ |s_$20_$0|)) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$20_$0| |n_$5_$0|)) |n_$5_$0|))))  :pattern ( (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$20_$0| |n_$5_$0|)))))
    (forall( (|s_$20_$1| Seq$ref$) (|n_$5_$1| Int))(!(=> (<= 0 |n_$5_$1|) (and (=> (< (Seq@Length$ref$ |s_$20_$1|) |n_$5_$1|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$20_$1| |n_$5_$1|)) (Seq@Length$ref$ |s_$20_$1|))) (=> (<= |n_$5_$1| (Seq@Length$ref$ |s_$20_$1|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$20_$1| |n_$5_$1|)) |n_$5_$1|))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$20_$1| |n_$5_$1|)))))
    (forall( (|s_$21_$0| Seq$BoxType$) (|n_$6_$0| Int) (|j_$1_$0| Int))(!(=> (and (< |j_$1_$0| (Seq@Length$BoxType$ |s_$21_$0|)) (and (< |j_$1_$0| |n_$6_$0|) (<= 0 |j_$1_$0|))) (= (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$21_$0| |n_$6_$0|) |j_$1_$0|) (Seq@Index$BoxType$ |s_$21_$0| |j_$1_$0|)))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$21_$0| |n_$6_$0|) |j_$1_$0|))))
    (forall( (|s_$21_$1| Seq$ref$) (|n_$6_$1| Int) (|j_$1_$1| Int))(!(=> (and (< |j_$1_$1| (Seq@Length$ref$ |s_$21_$1|)) (and (< |j_$1_$1| |n_$6_$1|) (<= 0 |j_$1_$1|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$21_$1| |n_$6_$1|) |j_$1_$1|) (Seq@Index$ref$ |s_$21_$1| |j_$1_$1|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$21_$1| |n_$6_$1|) |j_$1_$1|))))
    (forall( (|s_$22_$0| Seq$BoxType$) (|n_$7_$0| Int))(!(=> (<= 0 |n_$7_$0|) (and (=> (< (Seq@Length$BoxType$ |s_$22_$0|) |n_$7_$0|) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$22_$0| |n_$7_$0|)) 0)) (=> (<= |n_$7_$0| (Seq@Length$BoxType$ |s_$22_$0|)) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$22_$0| |n_$7_$0|)) (- (Seq@Length$BoxType$ |s_$22_$0|) |n_$7_$0|)))))  :pattern ( (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$22_$0| |n_$7_$0|)))))
    (forall( (|s_$22_$1| Seq$ref$) (|n_$7_$1| Int))(!(=> (<= 0 |n_$7_$1|) (and (=> (< (Seq@Length$ref$ |s_$22_$1|) |n_$7_$1|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$22_$1| |n_$7_$1|)) 0)) (=> (<= |n_$7_$1| (Seq@Length$ref$ |s_$22_$1|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$22_$1| |n_$7_$1|)) (- (Seq@Length$ref$ |s_$22_$1|) |n_$7_$1|)))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$22_$1| |n_$7_$1|)))))
    (forall( (|s_$23_$0| Seq$BoxType$) (|n_$8_$0| Int) (|j_$2_$0| Int))(!(=> (and (< |j_$2_$0| (- (Seq@Length$BoxType$ |s_$23_$0|) |n_$8_$0|)) (and (<= 0 |n_$8_$0|) (<= 0 |j_$2_$0|))) (= (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$23_$0| |n_$8_$0|) |j_$2_$0|) (Seq@Index$BoxType$ |s_$23_$0| (+ |j_$2_$0| |n_$8_$0|))))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$23_$0| |n_$8_$0|) |j_$2_$0|))))
    (forall( (|s_$23_$1| Seq$ref$) (|n_$8_$1| Int) (|j_$2_$1| Int))(!(=> (and (< |j_$2_$1| (- (Seq@Length$ref$ |s_$23_$1|) |n_$8_$1|)) (and (<= 0 |n_$8_$1|) (<= 0 |j_$2_$1|))) (= (Seq@Index$ref$ (Seq@Drop$ref$ |s_$23_$1| |n_$8_$1|) |j_$2_$1|) (Seq@Index$ref$ |s_$23_$1| (+ |j_$2_$1| |n_$8_$1|))))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Drop$ref$ |s_$23_$1| |n_$8_$1|) |j_$2_$1|))))
    (forall( (|s_$24_$0| Seq$BoxType$) (|t_$1_$0| Seq$BoxType$))(!(and (= |t_$1_$0| (Seq@Drop$BoxType$ (Seq@Append$BoxType$ |s_$24_$0| |t_$1_$0|) (Seq@Length$BoxType$ |s_$24_$0|))) (= (Seq@Take$BoxType$ (Seq@Append$BoxType$ |s_$24_$0| |t_$1_$0|) (Seq@Length$BoxType$ |s_$24_$0|)) |s_$24_$0|))  :pattern ( (Seq@Append$BoxType$ |s_$24_$0| |t_$1_$0|))))
    (forall( (|s_$24_$1| Seq$ref$) (|t_$1_$1| Seq$ref$))(!(and (= |t_$1_$1| (Seq@Drop$ref$ (Seq@Append$ref$ |s_$24_$1| |t_$1_$1|) (Seq@Length$ref$ |s_$24_$1|))) (= (Seq@Take$ref$ (Seq@Append$ref$ |s_$24_$1| |t_$1_$1|) (Seq@Length$ref$ |s_$24_$1|)) |s_$24_$1|))  :pattern ( (Seq@Append$ref$ |s_$24_$1| |t_$1_$1|))))
    (forall( (|s_$25_$0| Seq$BoxType$) (|i_$9_$0| Int) (|v_$9_$0| BoxType) (|n_$9_$0| Int))(!(=> (and (<= |n_$9_$0| (Seq@Length$BoxType$ |s_$25_$0|)) (and (< |i_$9_$0| |n_$9_$0|) (<= 0 |i_$9_$0|))) (= (Seq@Update$BoxType$ (Seq@Take$BoxType$ |s_$25_$0| |n_$9_$0|) |i_$9_$0| |v_$9_$0|) (Seq@Take$BoxType$ (Seq@Update$BoxType$ |s_$25_$0| |i_$9_$0| |v_$9_$0|) |n_$9_$0|)))  :pattern ( (Seq@Take$BoxType$ (Seq@Update$BoxType$ |s_$25_$0| |i_$9_$0| |v_$9_$0|) |n_$9_$0|))))
    (forall( (|s_$25_$1| Seq$ref$) (|i_$9_$1| Int) (|v_$9_$1| ref) (|n_$9_$1| Int))(!(=> (and (<= |n_$9_$1| (Seq@Length$ref$ |s_$25_$1|)) (and (< |i_$9_$1| |n_$9_$1|) (<= 0 |i_$9_$1|))) (= (Seq@Update$ref$ (Seq@Take$ref$ |s_$25_$1| |n_$9_$1|) |i_$9_$1| |v_$9_$1|) (Seq@Take$ref$ (Seq@Update$ref$ |s_$25_$1| |i_$9_$1| |v_$9_$1|) |n_$9_$1|)))  :pattern ( (Seq@Take$ref$ (Seq@Update$ref$ |s_$25_$1| |i_$9_$1| |v_$9_$1|) |n_$9_$1|))))
    (forall( (|s_$26_$0| Seq$BoxType$) (|i_$10_$0| Int) (|v_$10_$0| BoxType) (|n_$10_$0| Int))(!(=> (and (<= |n_$10_$0| |i_$10_$0|) (< |i_$10_$0| (Seq@Length$BoxType$ |s_$26_$0|))) (= (Seq@Take$BoxType$ (Seq@Update$BoxType$ |s_$26_$0| |i_$10_$0| |v_$10_$0|) |n_$10_$0|) (Seq@Take$BoxType$ |s_$26_$0| |n_$10_$0|)))  :pattern ( (Seq@Take$BoxType$ (Seq@Update$BoxType$ |s_$26_$0| |i_$10_$0| |v_$10_$0|) |n_$10_$0|))))
    (forall( (|s_$26_$1| Seq$ref$) (|i_$10_$1| Int) (|v_$10_$1| ref) (|n_$10_$1| Int))(!(=> (and (<= |n_$10_$1| |i_$10_$1|) (< |i_$10_$1| (Seq@Length$ref$ |s_$26_$1|))) (= (Seq@Take$ref$ (Seq@Update$ref$ |s_$26_$1| |i_$10_$1| |v_$10_$1|) |n_$10_$1|) (Seq@Take$ref$ |s_$26_$1| |n_$10_$1|)))  :pattern ( (Seq@Take$ref$ (Seq@Update$ref$ |s_$26_$1| |i_$10_$1| |v_$10_$1|) |n_$10_$1|))))
    (forall( (|s_$27_$0| Seq$BoxType$) (|i_$11_$0| Int) (|v_$11_$0| BoxType) (|n_$11_$0| Int))(!(=> (and (< |i_$11_$0| (Seq@Length$BoxType$ |s_$27_$0|)) (and (<= |n_$11_$0| |i_$11_$0|) (<= 0 |n_$11_$0|))) (= (Seq@Update$BoxType$ (Seq@Drop$BoxType$ |s_$27_$0| |n_$11_$0|) (- |i_$11_$0| |n_$11_$0|) |v_$11_$0|) (Seq@Drop$BoxType$ (Seq@Update$BoxType$ |s_$27_$0| |i_$11_$0| |v_$11_$0|) |n_$11_$0|)))  :pattern ( (Seq@Drop$BoxType$ (Seq@Update$BoxType$ |s_$27_$0| |i_$11_$0| |v_$11_$0|) |n_$11_$0|))))
    (forall( (|s_$27_$1| Seq$ref$) (|i_$11_$1| Int) (|v_$11_$1| ref) (|n_$11_$1| Int))(!(=> (and (< |i_$11_$1| (Seq@Length$ref$ |s_$27_$1|)) (and (<= |n_$11_$1| |i_$11_$1|) (<= 0 |n_$11_$1|))) (= (Seq@Update$ref$ (Seq@Drop$ref$ |s_$27_$1| |n_$11_$1|) (- |i_$11_$1| |n_$11_$1|) |v_$11_$1|) (Seq@Drop$ref$ (Seq@Update$ref$ |s_$27_$1| |i_$11_$1| |v_$11_$1|) |n_$11_$1|)))  :pattern ( (Seq@Drop$ref$ (Seq@Update$ref$ |s_$27_$1| |i_$11_$1| |v_$11_$1|) |n_$11_$1|))))
    (forall( (|s_$28_$0| Seq$BoxType$) (|i_$12_$0| Int) (|v_$12_$0| BoxType) (|n_$12_$0| Int))(!(=> (and (< |n_$12_$0| (Seq@Length$BoxType$ |s_$28_$0|)) (and (< |i_$12_$0| |n_$12_$0|) (<= 0 |i_$12_$0|))) (= (Seq@Drop$BoxType$ (Seq@Update$BoxType$ |s_$28_$0| |i_$12_$0| |v_$12_$0|) |n_$12_$0|) (Seq@Drop$BoxType$ |s_$28_$0| |n_$12_$0|)))  :pattern ( (Seq@Drop$BoxType$ (Seq@Update$BoxType$ |s_$28_$0| |i_$12_$0| |v_$12_$0|) |n_$12_$0|))))
    (forall( (|s_$28_$1| Seq$ref$) (|i_$12_$1| Int) (|v_$12_$1| ref) (|n_$12_$1| Int))(!(=> (and (< |n_$12_$1| (Seq@Length$ref$ |s_$28_$1|)) (and (< |i_$12_$1| |n_$12_$1|) (<= 0 |i_$12_$1|))) (= (Seq@Drop$ref$ (Seq@Update$ref$ |s_$28_$1| |i_$12_$1| |v_$12_$1|) |n_$12_$1|) (Seq@Drop$ref$ |s_$28_$1| |n_$12_$1|)))  :pattern ( (Seq@Drop$ref$ (Seq@Update$ref$ |s_$28_$1| |i_$12_$1| |v_$12_$1|) |n_$12_$1|))))
    (forall( (|s_$29_$0| Seq$BoxType$) (|v_$13_$0| BoxType) (|n_$13_$0| Int))(!(=> (and (<= |n_$13_$0| (Seq@Length$BoxType$ |s_$29_$0|)) (<= 0 |n_$13_$0|)) (= (Seq@Drop$BoxType$ (Seq@Build$BoxType$ |s_$29_$0| |v_$13_$0|) |n_$13_$0|) (Seq@Build$BoxType$ (Seq@Drop$BoxType$ |s_$29_$0| |n_$13_$0|) |v_$13_$0|)))  :pattern ( (Seq@Drop$BoxType$ (Seq@Build$BoxType$ |s_$29_$0| |v_$13_$0|) |n_$13_$0|))))
    (forall( (|s_$29_$1| Seq$ref$) (|v_$13_$1| ref) (|n_$13_$1| Int))(!(=> (and (<= |n_$13_$1| (Seq@Length$ref$ |s_$29_$1|)) (<= 0 |n_$13_$1|)) (= (Seq@Drop$ref$ (Seq@Build$ref$ |s_$29_$1| |v_$13_$1|) |n_$13_$1|) (Seq@Build$ref$ (Seq@Drop$ref$ |s_$29_$1| |n_$13_$1|) |v_$13_$1|)))  :pattern ( (Seq@Drop$ref$ (Seq@Build$ref$ |s_$29_$1| |v_$13_$1|) |n_$13_$1|))))
    (forall( (|s_$30| Seq$BoxType$) (|i_$13| Int))(!(=> (and (< |i_$13| (Seq@Length$BoxType$ |s_$30|)) (<= 0 |i_$13|)) (< (DtRank ($Unbox$DatatypeType$ (Seq@Index$BoxType$ |s_$30| |i_$13|))) (Seq@Rank$BoxType$ |s_$30|)))  :pattern ( (DtRank ($Unbox$DatatypeType$ (Seq@Index$BoxType$ |s_$30| |i_$13|))))))
    (forall( (|s_$31_$0| Seq$BoxType$) (|i_$14_$0| Int))(!(=> (and (<= |i_$14_$0| (Seq@Length$BoxType$ |s_$31_$0|)) (< 0 |i_$14_$0|)) (< (Seq@Rank$BoxType$ (Seq@Drop$BoxType$ |s_$31_$0| |i_$14_$0|)) (Seq@Rank$BoxType$ |s_$31_$0|)))  :pattern ( (Seq@Rank$BoxType$ (Seq@Drop$BoxType$ |s_$31_$0| |i_$14_$0|)))))
    (forall( (|s_$31_$1| Seq$ref$) (|i_$14_$1| Int))(!(=> (and (<= |i_$14_$1| (Seq@Length$ref$ |s_$31_$1|)) (< 0 |i_$14_$1|)) (< (Seq@Rank$ref$ (Seq@Drop$ref$ |s_$31_$1| |i_$14_$1|)) (Seq@Rank$ref$ |s_$31_$1|)))  :pattern ( (Seq@Rank$ref$ (Seq@Drop$ref$ |s_$31_$1| |i_$14_$1|)))))
    (forall( (|s_$32_$0| Seq$BoxType$) (|i_$15_$0| Int))(!(=> (and (< |i_$15_$0| (Seq@Length$BoxType$ |s_$32_$0|)) (<= 0 |i_$15_$0|)) (< (Seq@Rank$BoxType$ (Seq@Take$BoxType$ |s_$32_$0| |i_$15_$0|)) (Seq@Rank$BoxType$ |s_$32_$0|)))  :pattern ( (Seq@Rank$BoxType$ (Seq@Take$BoxType$ |s_$32_$0| |i_$15_$0|)))))
    (forall( (|s_$32_$1| Seq$ref$) (|i_$15_$1| Int))(!(=> (and (< |i_$15_$1| (Seq@Length$ref$ |s_$32_$1|)) (<= 0 |i_$15_$1|)) (< (Seq@Rank$ref$ (Seq@Take$ref$ |s_$32_$1| |i_$15_$1|)) (Seq@Rank$ref$ |s_$32_$1|)))  :pattern ( (Seq@Rank$ref$ (Seq@Take$ref$ |s_$32_$1| |i_$15_$1|)))))
    (forall( (|s_$33_$0| Seq$BoxType$) (|i_$16_$0| Int) (|j_$3_$0| Int))(!(=> (and (<= |j_$3_$0| (Seq@Length$BoxType$ |s_$33_$0|)) (and (< |i_$16_$0| |j_$3_$0|) (<= 0 |i_$16_$0|))) (< (Seq@Rank$BoxType$ (Seq@Append$BoxType$ (Seq@Take$BoxType$ |s_$33_$0| |i_$16_$0|) (Seq@Drop$BoxType$ |s_$33_$0| |j_$3_$0|))) (Seq@Rank$BoxType$ |s_$33_$0|)))  :pattern ( (Seq@Rank$BoxType$ (Seq@Append$BoxType$ (Seq@Take$BoxType$ |s_$33_$0| |i_$16_$0|) (Seq@Drop$BoxType$ |s_$33_$0| |j_$3_$0|))))))
    (forall( (|s_$33_$1| Seq$ref$) (|i_$16_$1| Int) (|j_$3_$1| Int))(!(=> (and (<= |j_$3_$1| (Seq@Length$ref$ |s_$33_$1|)) (and (< |i_$16_$1| |j_$3_$1|) (<= 0 |i_$16_$1|))) (< (Seq@Rank$ref$ (Seq@Append$ref$ (Seq@Take$ref$ |s_$33_$1| |i_$16_$1|) (Seq@Drop$ref$ |s_$33_$1| |j_$3_$1|))) (Seq@Rank$ref$ |s_$33_$1|)))  :pattern ( (Seq@Rank$ref$ (Seq@Append$ref$ (Seq@Take$ref$ |s_$33_$1| |i_$16_$1|) (Seq@Drop$ref$ |s_$33_$1| |j_$3_$1|))))))
    (forall( (|s_$34| $@Map@@BoxType@To@Bool@@))(!(<= 0 (Set@Card$BoxType$ |s_$34|))  :pattern ( (Set@Card$BoxType$ |s_$34|))))
    (forall( (|s0_$0_$0| Seq$BoxType$) (|s1_$0_$0| Seq$BoxType$) (|n_$0_$0| Int))(!(and (=> (<= (Seq@Length$BoxType$ |s0_$0_$0|) |n_$0_$0|) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$0| |s1_$0_$0|) |n_$0_$0|) (Seq@Index$BoxType$ |s1_$0_$0| (- |n_$0_$0| (Seq@Length$BoxType$ |s0_$0_$0|))))) (=> (< |n_$0_$0| (Seq@Length$BoxType$ |s0_$0_$0|)) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$0| |s1_$0_$0|) |n_$0_$0|) (Seq@Index$BoxType$ |s0_$0_$0| |n_$0_$0|))))  :pattern ( (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$0| |s1_$0_$0|) |n_$0_$0|))))
    (forall( (|s0_$0_$1| Seq$ref$) (|s1_$0_$1| Seq$ref$) (|n_$0_$1| Int))(!(and (=> (<= (Seq@Length$ref$ |s0_$0_$1|) |n_$0_$1|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$0_$1|) (Seq@Index$ref$ |s1_$0_$1| (- |n_$0_$1| (Seq@Length$ref$ |s0_$0_$1|))))) (=> (< |n_$0_$1| (Seq@Length$ref$ |s0_$0_$1|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$0_$1|) (Seq@Index$ref$ |s0_$0_$1| |n_$0_$1|))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$0_$1|))))
    (forall( (|s0_$1_$0| Seq$BoxType$) (|s1_$1_$0| Seq$BoxType$) (|x_$18_$0| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$0| |s1_$1_$0|) |x_$18_$0|) (or (Seq@Contains$BoxType$ |s1_$1_$0| |x_$18_$0|) (Seq@Contains$BoxType$ |s0_$1_$0| |x_$18_$0|)))  :pattern ( (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$0| |s1_$1_$0|) |x_$18_$0|))))
    (forall( (|s0_$1_$1| Seq$ref$) (|s1_$1_$1| Seq$ref$) (|x_$18_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$18_$1|) (or (Seq@Contains$ref$ |s1_$1_$1| |x_$18_$1|) (Seq@Contains$ref$ |s0_$1_$1| |x_$18_$1|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$18_$1|))))
    (forall( (|s0_$2_$0| Seq$BoxType$) (|s1_$2_$0| Seq$BoxType$))(!(= (Seq@Equal$BoxType$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$BoxType$ |s1_$2_$0|) (Seq@Length$BoxType$ |s0_$2_$0|)) (forall( (|j_$5| Int))(!(=> (and (< |j_$5| (Seq@Length$BoxType$ |s0_$2_$0|)) (<= 0 |j_$5|)) (= (Seq@Index$BoxType$ |s1_$2_$0| |j_$5|) (Seq@Index$BoxType$ |s0_$2_$0| |j_$5|)))  :pattern ( (Seq@Index$BoxType$ |s0_$2_$0| |j_$5|)) :pattern ( (Seq@Index$BoxType$ |s1_$2_$0| |j_$5|))))))  :pattern ( (Seq@Equal$BoxType$ |s0_$2_$0| |s1_$2_$0|))))
    (forall( (|s0_$2_$1| Seq$ref$) (|s1_$2_$1| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$ref$ |s1_$2_$1|) (Seq@Length$ref$ |s0_$2_$1|)) (forall( (|j_$7| Int))(!(=> (and (< |j_$7| (Seq@Length$ref$ |s0_$2_$1|)) (<= 0 |j_$7|)) (= (Seq@Index$ref$ |s1_$2_$1| |j_$7|) (Seq@Index$ref$ |s0_$2_$1| |j_$7|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$1| |j_$7|)) :pattern ( (Seq@Index$ref$ |s1_$2_$1| |j_$7|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|))))
    (forall( (|s0_$4| Seq$BoxType$) (|s1_$4| Seq$BoxType$))(!(= (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$4| |s1_$4|)) (+ (Seq@Length$BoxType$ |s0_$4|) (Seq@Length$BoxType$ |s1_$4|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$4| |s1_$4|)))))
    (forall( (|s0_$5| Seq$ref$) (|s1_$5| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|)) (+ (Seq@Length$ref$ |s0_$5|) (Seq@Length$ref$ |s1_$5|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|)))))
    (forall( (|ss_$0| $@Map@@BoxType@To@Bool@@) (|dummy_$1| Bool) (|bx_$0_$0| BoxType))(!(=> ($IsGoodSet_Extended$Bool$ |ss_$0| |dummy_$1|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$0| |bx_$0_$0|) (= |bx_$0_$0| ($Box$Bool$ ($Unbox$Bool$ |bx_$0_$0|)))))  :pattern ( ($IsGoodSet_Extended$Bool$ |ss_$0| |dummy_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$0| |bx_$0_$0|))))
    (forall( (|ss_$1| $@Map@@BoxType@To@Bool@@) (|dummy_$2| BoxType) (|bx_$0_$1| BoxType))(!(=> ($IsGoodSet_Extended$BoxType$ |ss_$1| |dummy_$2|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$1| |bx_$0_$1|) (= |bx_$0_$1| ($Box$BoxType$ ($Unbox$BoxType$ |bx_$0_$1|)))))  :pattern ( ($IsGoodSet_Extended$BoxType$ |ss_$1| |dummy_$2|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$1| |bx_$0_$1|))))
    (forall( (|ss_$10| $@Map@@BoxType@To@Bool@@) (|dummy_$11| Map$BoxType$BoxType$) (|bx_$0_$10| BoxType))(!(=> ($IsGoodSet_Extended$Map$BoxType$BoxType$$ |ss_$10| |dummy_$11|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$10| |bx_$0_$10|) (= |bx_$0_$10| ($Box$Map$BoxType$BoxType$$ ($Unbox$Map$BoxType$BoxType$$ |bx_$0_$10|)))))  :pattern ( ($IsGoodSet_Extended$Map$BoxType$BoxType$$ |ss_$10| |dummy_$11|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$10| |bx_$0_$10|))))
    (forall( (|ss_$11| $@Map@@BoxType@To@Bool@@) (|dummy_$12| ClassName) (|bx_$0_$11| BoxType))(!(=> ($IsGoodSet_Extended$ClassName$ |ss_$11| |dummy_$12|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$11| |bx_$0_$11|) (= |bx_$0_$11| ($Box$ClassName$ ($Unbox$ClassName$ |bx_$0_$11|)))))  :pattern ( ($IsGoodSet_Extended$ClassName$ |ss_$11| |dummy_$12|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$11| |bx_$0_$11|))))
    (forall( (|ss_$12| $@Map@@BoxType@To@Bool@@) (|dummy_$13| NameFamily) (|bx_$0_$12| BoxType))(!(=> ($IsGoodSet_Extended$NameFamily$ |ss_$12| |dummy_$13|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$12| |bx_$0_$12|) (= |bx_$0_$12| ($Box$NameFamily$ ($Unbox$NameFamily$ |bx_$0_$12|)))))  :pattern ( ($IsGoodSet_Extended$NameFamily$ |ss_$12| |dummy_$13|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$12| |bx_$0_$12|))))
    (forall( (|ss_$13| $@Map@@BoxType@To@Bool@@) (|dummy_$14| Field$Bool$) (|bx_$0_$13| BoxType))(!(=> ($IsGoodSet_Extended$Field$Bool$$ |ss_$13| |dummy_$14|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$13| |bx_$0_$13|) (= |bx_$0_$13| ($Box$Field$Bool$$ ($Unbox$Field$Bool$$ |bx_$0_$13|)))))  :pattern ( ($IsGoodSet_Extended$Field$Bool$$ |ss_$13| |dummy_$14|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$13| |bx_$0_$13|))))
    (forall( (|ss_$14| $@Map@@BoxType@To@Bool@@) (|dummy_$15| $@Map@@BoxType@To@BoxType@@) (|bx_$0_$14| BoxType))(!(=> ($IsGoodSet_Extended$$@Map@@BoxType@To@BoxType@@$ |ss_$14| |dummy_$15|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$14| |bx_$0_$14|) (= |bx_$0_$14| ($Box$$@Map@@BoxType@To@BoxType@@$ ($Unbox$$@Map@@BoxType@To@BoxType@@$ |bx_$0_$14|)))))  :pattern ( ($IsGoodSet_Extended$$@Map@@BoxType@To@BoxType@@$ |ss_$14| |dummy_$15|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$14| |bx_$0_$14|))))
    (forall( (|ss_$15| $@Map@@BoxType@To@Bool@@) (|dummy_$16| Field$ref$) (|bx_$0_$15| BoxType))(!(=> ($IsGoodSet_Extended$Field$ref$$ |ss_$15| |dummy_$16|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$15| |bx_$0_$15|) (= |bx_$0_$15| ($Box$Field$ref$$ ($Unbox$Field$ref$$ |bx_$0_$15|)))))  :pattern ( ($IsGoodSet_Extended$Field$ref$$ |ss_$15| |dummy_$16|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$15| |bx_$0_$15|))))
    (forall( (|ss_$16| $@Map@@BoxType@To@Bool@@) (|dummy_$17| LayerType) (|bx_$0_$16| BoxType))(!(=> ($IsGoodSet_Extended$LayerType$ |ss_$16| |dummy_$17|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$16| |bx_$0_$16|) (= |bx_$0_$16| ($Box$LayerType$ ($Unbox$LayerType$ |bx_$0_$16|)))))  :pattern ( ($IsGoodSet_Extended$LayerType$ |ss_$16| |dummy_$17|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$16| |bx_$0_$16|))))
    (forall( (|ss_$17| $@Map@@BoxType@To@Bool@@) (|dummy_$18| $@Map@@$T0@@ref@Field$$T0$@To@Bool@@) (|bx_$0_$17| BoxType))(!(=> ($IsGoodSet_Extended$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |ss_$17| |dummy_$18|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$17| |bx_$0_$17|) (= |bx_$0_$17| ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |bx_$0_$17|)))))  :pattern ( ($IsGoodSet_Extended$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |ss_$17| |dummy_$18|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$17| |bx_$0_$17|))))
    (forall( (|ss_$2| $@Map@@BoxType@To@Bool@@) (|dummy_$3| Int) (|bx_$0_$2| BoxType))(!(=> ($IsGoodSet_Extended$Int$ |ss_$2| |dummy_$3|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$2| |bx_$0_$2|) (= |bx_$0_$2| ($Box$Int$ ($Unbox$Int$ |bx_$0_$2|)))))  :pattern ( ($IsGoodSet_Extended$Int$ |ss_$2| |dummy_$3|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$2| |bx_$0_$2|))))
    (forall( (|ss_$3| $@Map@@BoxType@To@Bool@@) (|dummy_$4| Seq$ref$) (|bx_$0_$3| BoxType))(!(=> ($IsGoodSet_Extended$Seq$ref$$ |ss_$3| |dummy_$4|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$3| |bx_$0_$3|) (= |bx_$0_$3| ($Box$Seq$ref$$ ($Unbox$Seq$ref$$ |bx_$0_$3|)))))  :pattern ( ($IsGoodSet_Extended$Seq$ref$$ |ss_$3| |dummy_$4|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$3| |bx_$0_$3|))))
    (forall( (|ss_$4| $@Map@@BoxType@To@Bool@@) (|dummy_$5| ref) (|bx_$0_$4| BoxType))(!(=> ($IsGoodSet_Extended$ref$ |ss_$4| |dummy_$5|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$4| |bx_$0_$4|) (= |bx_$0_$4| ($Box$ref$ ($Unbox$ref$ |bx_$0_$4|)))))  :pattern ( ($IsGoodSet_Extended$ref$ |ss_$4| |dummy_$5|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$4| |bx_$0_$4|))))
    (forall( (|ss_$5| $@Map@@BoxType@To@Bool@@) (|dummy_$6| Seq$BoxType$) (|bx_$0_$5| BoxType))(!(=> ($IsGoodSet_Extended$Seq$BoxType$$ |ss_$5| |dummy_$6|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$5| |bx_$0_$5|) (= |bx_$0_$5| ($Box$Seq$BoxType$$ ($Unbox$Seq$BoxType$$ |bx_$0_$5|)))))  :pattern ( ($IsGoodSet_Extended$Seq$BoxType$$ |ss_$5| |dummy_$6|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$5| |bx_$0_$5|))))
    (forall( (|ss_$6| $@Map@@BoxType@To@Bool@@) (|dummy_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|bx_$0_$6| BoxType))(!(=> ($IsGoodSet_Extended$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |ss_$6| |dummy_$7|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$6| |bx_$0_$6|) (= |bx_$0_$6| ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |bx_$0_$6|)))))  :pattern ( ($IsGoodSet_Extended$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |ss_$6| |dummy_$7|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$6| |bx_$0_$6|))))
    (forall( (|ss_$7| $@Map@@BoxType@To@Bool@@) (|dummy_$8| Field$BoxType$) (|bx_$0_$7| BoxType))(!(=> ($IsGoodSet_Extended$Field$BoxType$$ |ss_$7| |dummy_$8|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$7| |bx_$0_$7|) (= |bx_$0_$7| ($Box$Field$BoxType$$ ($Unbox$Field$BoxType$$ |bx_$0_$7|)))))  :pattern ( ($IsGoodSet_Extended$Field$BoxType$$ |ss_$7| |dummy_$8|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$7| |bx_$0_$7|))))
    (forall( (|ss_$8| $@Map@@BoxType@To@Bool@@) (|dummy_$9| DatatypeType) (|bx_$0_$8| BoxType))(!(=> ($IsGoodSet_Extended$DatatypeType$ |ss_$8| |dummy_$9|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$8| |bx_$0_$8|) (= |bx_$0_$8| ($Box$DatatypeType$ ($Unbox$DatatypeType$ |bx_$0_$8|)))))  :pattern ( ($IsGoodSet_Extended$DatatypeType$ |ss_$8| |dummy_$9|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$8| |bx_$0_$8|))))
    (forall( (|ss_$9| $@Map@@BoxType@To@Bool@@) (|dummy_$10| $@Map@@BoxType@To@Bool@@) (|bx_$0_$9| BoxType))(!(=> ($IsGoodSet_Extended$$@Map@@BoxType@To@Bool@@$ |ss_$9| |dummy_$10|) (=> (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$9| |bx_$0_$9|) (= |bx_$0_$9| ($Box$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |bx_$0_$9|)))))  :pattern ( ($IsGoodSet_Extended$$@Map@@BoxType@To@Bool@@$ |ss_$9| |dummy_$10|) (MapRead$$@Map@@BoxType@To@Bool@@$ |ss_$9| |bx_$0_$9|))))
    (forall( (|t_$0_$0| BoxType))(!(= |t_$0_$0| (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$0|) 0))  :pattern ( (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$0|) 0))))
    (forall( (|t_$0_$1| ref))(!(= |t_$0_$1| (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0))  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0))))
    (forall( (|t_$4| BoxType))(!(= (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|)) 1)  :pattern ( (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|)))))
    (forall( (|t_$5| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$5|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$5|)))))
    (forall( (|u_$5| BoxType))(!(not (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ Map@Empty$BoxType$BoxType$) |u_$5|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Map@Domain$BoxType$BoxType$ Map@Empty$BoxType$BoxType$) |u_$5|))))
    (forall( (|v_$17| Bool) (|f_$0_$0| Field$Bool$) (|r_$0_$0| ref) (|H_$0_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$17|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$17|)))
    (forall( (|v_$18| BoxType) (|f_$0_$1| Field$BoxType$) (|r_$0_$1| ref) (|H_$0_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$18|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$18|)))
    (forall( (|v_$19| ref) (|f_$0_$2| Field$ref$) (|r_$0_$2| ref) (|H_$0_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$0_$2| |r_$0_$2| |f_$0_$2| |v_$19|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$0_$2| |r_$0_$2| |f_$0_$2| |v_$19|)))
    (forall( (|x_$0_$0| Bool))(!(= (Lit$BoxType$ ($Box$Bool$ |x_$0_$0|)) ($Box$Bool$ (Lit$Bool$ |x_$0_$0|)))  :pattern ( ($Box$Bool$ (Lit$Bool$ |x_$0_$0|)))))
    (forall( (|x_$0_$1| BoxType))(!(= (Lit$BoxType$ ($Box$BoxType$ |x_$0_$1|)) ($Box$BoxType$ (Lit$BoxType$ |x_$0_$1|)))  :pattern ( ($Box$BoxType$ (Lit$BoxType$ |x_$0_$1|)))))
    (forall( (|x_$0_$10| Map$BoxType$BoxType$))(!(= (Lit$BoxType$ ($Box$Map$BoxType$BoxType$$ |x_$0_$10|)) ($Box$Map$BoxType$BoxType$$ (Lit$Map$BoxType$BoxType$$ |x_$0_$10|)))  :pattern ( ($Box$Map$BoxType$BoxType$$ (Lit$Map$BoxType$BoxType$$ |x_$0_$10|)))))
    (forall( (|x_$0_$11| ClassName))(!(= (Lit$BoxType$ ($Box$ClassName$ |x_$0_$11|)) ($Box$ClassName$ (Lit$ClassName$ |x_$0_$11|)))  :pattern ( ($Box$ClassName$ (Lit$ClassName$ |x_$0_$11|)))))
    (forall( (|x_$0_$12| NameFamily))(!(= (Lit$BoxType$ ($Box$NameFamily$ |x_$0_$12|)) ($Box$NameFamily$ (Lit$NameFamily$ |x_$0_$12|)))  :pattern ( ($Box$NameFamily$ (Lit$NameFamily$ |x_$0_$12|)))))
    (forall( (|x_$0_$13| Field$Bool$))(!(= (Lit$BoxType$ ($Box$Field$Bool$$ |x_$0_$13|)) ($Box$Field$Bool$$ (Lit$Field$Bool$$ |x_$0_$13|)))  :pattern ( ($Box$Field$Bool$$ (Lit$Field$Bool$$ |x_$0_$13|)))))
    (forall( (|x_$0_$14| $@Map@@BoxType@To@BoxType@@))(!(= (Lit$BoxType$ ($Box$$@Map@@BoxType@To@BoxType@@$ |x_$0_$14|)) ($Box$$@Map@@BoxType@To@BoxType@@$ (Lit$$@Map@@BoxType@To@BoxType@@$ |x_$0_$14|)))  :pattern ( ($Box$$@Map@@BoxType@To@BoxType@@$ (Lit$$@Map@@BoxType@To@BoxType@@$ |x_$0_$14|)))))
    (forall( (|x_$0_$15| Field$ref$))(!(= (Lit$BoxType$ ($Box$Field$ref$$ |x_$0_$15|)) ($Box$Field$ref$$ (Lit$Field$ref$$ |x_$0_$15|)))  :pattern ( ($Box$Field$ref$$ (Lit$Field$ref$$ |x_$0_$15|)))))
    (forall( (|x_$0_$16| LayerType))(!(= (Lit$BoxType$ ($Box$LayerType$ |x_$0_$16|)) ($Box$LayerType$ (Lit$LayerType$ |x_$0_$16|)))  :pattern ( ($Box$LayerType$ (Lit$LayerType$ |x_$0_$16|)))))
    (forall( (|x_$0_$17| $@Map@@$T0@@ref@Field$$T0$@To@Bool@@))(!(= (Lit$BoxType$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$0_$17|)) ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ (Lit$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$0_$17|)))  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ (Lit$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$0_$17|)))))
    (forall( (|x_$0_$2| Int))(!(= (Lit$BoxType$ ($Box$Int$ |x_$0_$2|)) ($Box$Int$ (Lit$Int$ |x_$0_$2|)))  :pattern ( ($Box$Int$ (Lit$Int$ |x_$0_$2|)))))
    (forall( (|x_$0_$3| Seq$ref$))(!(= (Lit$BoxType$ ($Box$Seq$ref$$ |x_$0_$3|)) ($Box$Seq$ref$$ (Lit$Seq$ref$$ |x_$0_$3|)))  :pattern ( ($Box$Seq$ref$$ (Lit$Seq$ref$$ |x_$0_$3|)))))
    (forall( (|x_$0_$4| ref))(!(= (Lit$BoxType$ ($Box$ref$ |x_$0_$4|)) ($Box$ref$ (Lit$ref$ |x_$0_$4|)))  :pattern ( ($Box$ref$ (Lit$ref$ |x_$0_$4|)))))
    (forall( (|x_$0_$5| Seq$BoxType$))(!(= (Lit$BoxType$ ($Box$Seq$BoxType$$ |x_$0_$5|)) ($Box$Seq$BoxType$$ (Lit$Seq$BoxType$$ |x_$0_$5|)))  :pattern ( ($Box$Seq$BoxType$$ (Lit$Seq$BoxType$$ |x_$0_$5|)))))
    (forall( (|x_$0_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (Lit$BoxType$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$0_$6|)) ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (Lit$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$0_$6|)))  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (Lit$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$0_$6|)))))
    (forall( (|x_$0_$7| Field$BoxType$))(!(= (Lit$BoxType$ ($Box$Field$BoxType$$ |x_$0_$7|)) ($Box$Field$BoxType$$ (Lit$Field$BoxType$$ |x_$0_$7|)))  :pattern ( ($Box$Field$BoxType$$ (Lit$Field$BoxType$$ |x_$0_$7|)))))
    (forall( (|x_$0_$8| DatatypeType))(!(= (Lit$BoxType$ ($Box$DatatypeType$ |x_$0_$8|)) ($Box$DatatypeType$ (Lit$DatatypeType$ |x_$0_$8|)))  :pattern ( ($Box$DatatypeType$ (Lit$DatatypeType$ |x_$0_$8|)))))
    (forall( (|x_$0_$9| $@Map@@BoxType@To@Bool@@))(!(= (Lit$BoxType$ ($Box$$@Map@@BoxType@To@Bool@@$ |x_$0_$9|)) ($Box$$@Map@@BoxType@To@Bool@@$ (Lit$$@Map@@BoxType@To@Bool@@$ |x_$0_$9|)))  :pattern ( ($Box$$@Map@@BoxType@To@Bool@@$ (Lit$$@Map@@BoxType@To@Bool@@$ |x_$0_$9|)))))
    (forall( (|x_$17| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$17|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$17|))))
    (forall( (|x_$22_$0| Bool))(!(= |x_$22_$0| ($Unbox$Bool$ ($Box$Bool$ |x_$22_$0|)))  :pattern ( ($Box$Bool$ |x_$22_$0|))))
    (forall( (|x_$22_$1| BoxType))(!(= |x_$22_$1| ($Unbox$BoxType$ ($Box$BoxType$ |x_$22_$1|)))  :pattern ( ($Box$BoxType$ |x_$22_$1|))))
    (forall( (|x_$22_$10| Map$BoxType$BoxType$))(!(= |x_$22_$10| ($Unbox$Map$BoxType$BoxType$$ ($Box$Map$BoxType$BoxType$$ |x_$22_$10|)))  :pattern ( ($Box$Map$BoxType$BoxType$$ |x_$22_$10|))))
    (forall( (|x_$22_$11| ClassName))(!(= |x_$22_$11| ($Unbox$ClassName$ ($Box$ClassName$ |x_$22_$11|)))  :pattern ( ($Box$ClassName$ |x_$22_$11|))))
    (forall( (|x_$22_$12| NameFamily))(!(= |x_$22_$12| ($Unbox$NameFamily$ ($Box$NameFamily$ |x_$22_$12|)))  :pattern ( ($Box$NameFamily$ |x_$22_$12|))))
    (forall( (|x_$22_$13| Field$Bool$))(!(= |x_$22_$13| ($Unbox$Field$Bool$$ ($Box$Field$Bool$$ |x_$22_$13|)))  :pattern ( ($Box$Field$Bool$$ |x_$22_$13|))))
    (forall( (|x_$22_$14| $@Map@@BoxType@To@BoxType@@))(!(= |x_$22_$14| ($Unbox$$@Map@@BoxType@To@BoxType@@$ ($Box$$@Map@@BoxType@To@BoxType@@$ |x_$22_$14|)))  :pattern ( ($Box$$@Map@@BoxType@To@BoxType@@$ |x_$22_$14|))))
    (forall( (|x_$22_$15| Field$ref$))(!(= |x_$22_$15| ($Unbox$Field$ref$$ ($Box$Field$ref$$ |x_$22_$15|)))  :pattern ( ($Box$Field$ref$$ |x_$22_$15|))))
    (forall( (|x_$22_$16| LayerType))(!(= |x_$22_$16| ($Unbox$LayerType$ ($Box$LayerType$ |x_$22_$16|)))  :pattern ( ($Box$LayerType$ |x_$22_$16|))))
    (forall( (|x_$22_$17| $@Map@@$T0@@ref@Field$$T0$@To@Bool@@))(!(= |x_$22_$17| ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$22_$17|)))  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$22_$17|))))
    (forall( (|x_$22_$2| Int))(!(= |x_$22_$2| ($Unbox$Int$ ($Box$Int$ |x_$22_$2|)))  :pattern ( ($Box$Int$ |x_$22_$2|))))
    (forall( (|x_$22_$3| Seq$ref$))(!(= |x_$22_$3| ($Unbox$Seq$ref$$ ($Box$Seq$ref$$ |x_$22_$3|)))  :pattern ( ($Box$Seq$ref$$ |x_$22_$3|))))
    (forall( (|x_$22_$4| ref))(!(= |x_$22_$4| ($Unbox$ref$ ($Box$ref$ |x_$22_$4|)))  :pattern ( ($Box$ref$ |x_$22_$4|))))
    (forall( (|x_$22_$5| Seq$BoxType$))(!(= |x_$22_$5| ($Unbox$Seq$BoxType$$ ($Box$Seq$BoxType$$ |x_$22_$5|)))  :pattern ( ($Box$Seq$BoxType$$ |x_$22_$5|))))
    (forall( (|x_$22_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= |x_$22_$6| ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$22_$6|)))  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$22_$6|))))
    (forall( (|x_$22_$7| Field$BoxType$))(!(= |x_$22_$7| ($Unbox$Field$BoxType$$ ($Box$Field$BoxType$$ |x_$22_$7|)))  :pattern ( ($Box$Field$BoxType$$ |x_$22_$7|))))
    (forall( (|x_$22_$8| DatatypeType))(!(= |x_$22_$8| ($Unbox$DatatypeType$ ($Box$DatatypeType$ |x_$22_$8|)))  :pattern ( ($Box$DatatypeType$ |x_$22_$8|))))
    (forall( (|x_$22_$9| $@Map@@BoxType@To@Bool@@))(!(= |x_$22_$9| ($Unbox$$@Map@@BoxType@To@Bool@@$ ($Box$$@Map@@BoxType@To@Bool@@$ |x_$22_$9|)))  :pattern ( ($Box$$@Map@@BoxType@To@Bool@@$ |x_$22_$9|))))
    (forall( (|x_$23| Int) (|h_$13| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$13|) (GenericAlloc ($Box$Int$ |x_$23|) |h_$13|)))
    (forall( (|x_$25| Bool))(!(= |x_$25| (Lit$Bool$ |x_$25|))  :identity  :pattern ( (Lit$Bool$ |x_$25|))))
    (forall( (|x_$26| BoxType))(!(= |x_$26| (Lit$BoxType$ |x_$26|))  :identity  :pattern ( (Lit$BoxType$ |x_$26|))))
    (forall( (|x_$27| Int))(!(= |x_$27| (Lit$Int$ |x_$27|))  :identity  :pattern ( (Lit$Int$ |x_$27|))))
    (forall( (|x_$28| Seq$ref$))(!(= |x_$28| (Lit$Seq$ref$$ |x_$28|))  :identity  :pattern ( (Lit$Seq$ref$$ |x_$28|))))
    (forall( (|x_$29| ref))(!(= |x_$29| (Lit$ref$ |x_$29|))  :identity  :pattern ( (Lit$ref$ |x_$29|))))
    (forall( (|x_$30| Seq$BoxType$))(!(= |x_$30| (Lit$Seq$BoxType$$ |x_$30|))  :identity  :pattern ( (Lit$Seq$BoxType$$ |x_$30|))))
    (forall( (|x_$31| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= |x_$31| (Lit$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$31|))  :identity  :pattern ( (Lit$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$31|))))
    (forall( (|x_$32| Field$BoxType$))(!(= |x_$32| (Lit$Field$BoxType$$ |x_$32|))  :identity  :pattern ( (Lit$Field$BoxType$$ |x_$32|))))
    (forall( (|x_$33| DatatypeType))(!(= |x_$33| (Lit$DatatypeType$ |x_$33|))  :identity  :pattern ( (Lit$DatatypeType$ |x_$33|))))
    (forall( (|x_$34| $@Map@@BoxType@To@Bool@@))(!(= |x_$34| (Lit$$@Map@@BoxType@To@Bool@@$ |x_$34|))  :identity  :pattern ( (Lit$$@Map@@BoxType@To@Bool@@$ |x_$34|))))
    (forall( (|x_$35| Map$BoxType$BoxType$))(!(= |x_$35| (Lit$Map$BoxType$BoxType$$ |x_$35|))  :identity  :pattern ( (Lit$Map$BoxType$BoxType$$ |x_$35|))))
    (forall( (|x_$36| ClassName))(!(= |x_$36| (Lit$ClassName$ |x_$36|))  :identity  :pattern ( (Lit$ClassName$ |x_$36|))))
    (forall( (|x_$37| NameFamily))(!(= |x_$37| (Lit$NameFamily$ |x_$37|))  :identity  :pattern ( (Lit$NameFamily$ |x_$37|))))
    (forall( (|x_$38| Field$Bool$))(!(= |x_$38| (Lit$Field$Bool$$ |x_$38|))  :identity  :pattern ( (Lit$Field$Bool$$ |x_$38|))))
    (forall( (|x_$39| $@Map@@BoxType@To@BoxType@@))(!(= |x_$39| (Lit$$@Map@@BoxType@To@BoxType@@$ |x_$39|))  :identity  :pattern ( (Lit$$@Map@@BoxType@To@BoxType@@$ |x_$39|))))
    (forall( (|x_$40| Field$ref$))(!(= |x_$40| (Lit$Field$ref$$ |x_$40|))  :identity  :pattern ( (Lit$Field$ref$$ |x_$40|))))
    (forall( (|x_$41| LayerType))(!(= |x_$41| (Lit$LayerType$ |x_$41|))  :identity  :pattern ( (Lit$LayerType$ |x_$41|))))
    (forall( (|x_$42| $@Map@@$T0@@ref@Field$$T0$@To@Bool@@))(!(= |x_$42| (Lit$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$42|))  :identity  :pattern ( (Lit$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$42|))))
    (not ($IsGhostField$Bool$ alloc))
    (not ($IsGhostField$ref$ _module.Node.next))
    true
    true
    true
    true
  )
    PreconditionGeneratedEntry
)))
(let (($root (=> (and true
  )
    $start
)))
   $root
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
