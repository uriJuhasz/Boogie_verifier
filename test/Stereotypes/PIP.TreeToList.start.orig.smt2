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
(declare-sort $@Map@@$T0@@ref@field$$T0$@To@$T0@@ 0)
(declare-sort $@Map@@Int@To@Int@@ 0)
(declare-sort $@Map@@ref@To@Bool@@ 0)
(declare-sort field$$@Map@@Int@To@Int@@$ 0)
(declare-sort field$$@Map@@ref@To@Bool@@$ 0)
(declare-sort field$Int$ 0)
(declare-sort field$ref$ 0)
(declare-sort field$TNodeState$ 0)
(declare-sort ref 0)
(declare-sort TNodeState 0)

;Functions
(declare-fun $Heap ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@0 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@1 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun AddEl ( $@Map@@ref@To@Bool@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun AddMSet ( $@Map@@Int@To@Int@@ Int ) $@Map@@Int@To@Int@@)
(declare-fun BBSet ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun Card ( $@Map@@ref@To@Bool@@ ) Int)
(declare-fun CLn ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) ref)
(declare-fun CLp ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) ref)
(declare-fun Empty ( ) $@Map@@ref@To@Bool@@)
(declare-fun EmptyMSet ( ) $@Map@@Int@To@Int@@)
(declare-fun FBP ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ Int ) $@Map@@ref@To@Bool@@)
(declare-fun Lb ( ) field$ref$)
(declare-fun Le ( ) field$ref$)
(declare-fun LL ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun Ln ( ) field$ref$)
(declare-fun Lp ( ) field$ref$)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$$@Map@@Int@To@Int@@$ ) $@Map@@Int@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$$@Map@@ref@To@Bool@@$ ) $@Map@@ref@To@Bool@@)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$Int$ ) Int)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$ref$ ) ref)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$TNodeState$ ) TNodeState)
(declare-fun MapRead$$@Map@@Int@To@Int@@$ ( $@Map@@Int@To@Int@@ Int ) Int)
(declare-fun Max ( Int Int ) Int)
(declare-fun MaxMSet ( $@Map@@Int@To@Int@@ ) Int)
(declare-fun Minus ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) $@Map@@ref@To@Bool@@)
(declare-fun NA ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun NACCoSet ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun NACCSet ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun Nbb ( ) field$ref$)
(declare-fun NC ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun Ncpr ( ) field$Int$)
(declare-fun ND ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun Ndpr ( ) field$Int$)
(declare-fun Np ( ) field$ref$)
(declare-fun Npr ( ) field$$@Map@@Int@To@Int@@$)
(declare-fun NSt ( ) field$TNodeState$)
(declare-fun Nt ( ) field$ref$)
(declare-fun null ( ) ref)
(declare-fun RemEl ( $@Map@@ref@To@Bool@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun RemoveMSet ( $@Map@@Int@To@Int@@ Int ) $@Map@@Int@To@Int@@)
(declare-fun Singleton ( ref ) $@Map@@ref@To@Bool@@)
(declare-fun StD ( ) TNodeState)
(declare-fun StF ( ) TNodeState)
(declare-fun StL ( ) TNodeState)
(declare-fun subTree ( ) ref)
(declare-fun tree ( ) ref)
(declare-fun Union ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) $@Map@@ref@To@Bool@@)

;Predicates
(declare-fun $start ( ) Bool)
(declare-fun anon0 ( ) Bool)
(declare-fun anon0@1 ( ) Bool)
(declare-fun anon0@1_assertion ( ) Bool)
(declare-fun anon0@10 ( ) Bool)
(declare-fun anon0@10_assertion ( ) Bool)
(declare-fun anon0@11 ( ) Bool)
(declare-fun anon0@11_assertion ( ) Bool)
(declare-fun anon0@12 ( ) Bool)
(declare-fun anon0@12_assertion ( ) Bool)
(declare-fun anon0@13 ( ) Bool)
(declare-fun anon0@13_assertion ( ) Bool)
(declare-fun anon0@14 ( ) Bool)
(declare-fun anon0@14_assertion ( ) Bool)
(declare-fun anon0@15 ( ) Bool)
(declare-fun anon0@15_assertion ( ) Bool)
(declare-fun anon0@16 ( ) Bool)
(declare-fun anon0@16_assertion ( ) Bool)
(declare-fun anon0@17 ( ) Bool)
(declare-fun anon0@17_assertion ( ) Bool)
(declare-fun anon0@18 ( ) Bool)
(declare-fun anon0@18_assertion ( ) Bool)
(declare-fun anon0@19 ( ) Bool)
(declare-fun anon0@19_assertion ( ) Bool)
(declare-fun anon0@2 ( ) Bool)
(declare-fun anon0@2_assertion ( ) Bool)
(declare-fun anon0@20 ( ) Bool)
(declare-fun anon0@20_assertion ( ) Bool)
(declare-fun anon0@21 ( ) Bool)
(declare-fun anon0@21_assertion ( ) Bool)
(declare-fun anon0@22 ( ) Bool)
(declare-fun anon0@22_assertion ( ) Bool)
(declare-fun anon0@23 ( ) Bool)
(declare-fun anon0@23_assertion ( ) Bool)
(declare-fun anon0@24 ( ) Bool)
(declare-fun anon0@24_assertion ( ) Bool)
(declare-fun anon0@25 ( ) Bool)
(declare-fun anon0@25_assertion ( ) Bool)
(declare-fun anon0@26 ( ) Bool)
(declare-fun anon0@26_assertion ( ) Bool)
(declare-fun anon0@27 ( ) Bool)
(declare-fun anon0@27_assertion ( ) Bool)
(declare-fun anon0@3 ( ) Bool)
(declare-fun anon0@3_assertion ( ) Bool)
(declare-fun anon0@4 ( ) Bool)
(declare-fun anon0@4_assertion ( ) Bool)
(declare-fun anon0@5 ( ) Bool)
(declare-fun anon0@5_assertion ( ) Bool)
(declare-fun anon0@6 ( ) Bool)
(declare-fun anon0@6_assertion ( ) Bool)
(declare-fun anon0@7 ( ) Bool)
(declare-fun anon0@7_assertion ( ) Bool)
(declare-fun anon0@8 ( ) Bool)
(declare-fun anon0@8_assertion ( ) Bool)
(declare-fun anon0@9 ( ) Bool)
(declare-fun anon0@9_assertion ( ) Bool)
(declare-fun anon0_assertion ( ) Bool)
(declare-fun Disjoint ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Equal ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun EqualMSet ( $@Map@@Int@To@Int@@ $@Map@@Int@To@Int@@ ) Bool)
(declare-fun InMSet ( $@Map@@Int@To@Int@@ Int ) Bool)
(declare-fun InvAAEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAD1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAD2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAD3Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAp1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAp2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAt1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAt2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAt3Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Invb1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Invb2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvCCEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvCD1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvCD2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvCpEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvDD1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvDD2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvDEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Inve1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Inve2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvIsGoodRegionsListEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvIsGoodRegionsTreeEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLbEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLeEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvListEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLL1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLL2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvnEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvnpEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvpEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvpnEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvPr ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun InvPrSt ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref Int Int ) Bool)
(declare-fun InvStADEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStDCCEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStDEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStFEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStLEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStNDLEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStructEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvTree ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvTreeEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun IsEmptyList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun IsGoodRegion ( $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun IsNotAllocatedList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun IsNotAllocatedTree ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun MapRead$$@Map@@ref@To@Bool@@$ ( $@Map@@ref@To@Bool@@ ref ) Bool)
(declare-fun PreconditionGeneratedEntry ( ) Bool)
(declare-fun Sub ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)

;Axioms
   (assert (! (not (= Le Lb)) :named ax_0))
   (assert (! (not (= Le Lb)) :named ax_1))
   (assert (! (not (= Ln Lb)) :named ax_2))
   (assert (! (not (= Ln Lb)) :named ax_3))
   (assert (! (not (= Ln Le)) :named ax_4))
   (assert (! (not (= Ln Le)) :named ax_5))
   (assert (! (not (= Lp Lb)) :named ax_6))
   (assert (! (not (= Lp Lb)) :named ax_7))
   (assert (! (not (= Lp Le)) :named ax_8))
   (assert (! (not (= Lp Le)) :named ax_9))
   (assert (! (not (= Lp Ln)) :named ax_10))
   (assert (! (not (= Lp Ln)) :named ax_11))
   (assert (! (not (= NA LL)) :named ax_12))
   (assert (! (not (= NA LL)) :named ax_13))
   (assert (! (not (= Nbb Lb)) :named ax_14))
   (assert (! (not (= Nbb Lb)) :named ax_15))
   (assert (! (not (= Nbb Le)) :named ax_16))
   (assert (! (not (= Nbb Le)) :named ax_17))
   (assert (! (not (= Nbb Ln)) :named ax_18))
   (assert (! (not (= Nbb Ln)) :named ax_19))
   (assert (! (not (= Nbb Lp)) :named ax_20))
   (assert (! (not (= Nbb Lp)) :named ax_21))
   (assert (! (not (= NC LL)) :named ax_22))
   (assert (! (not (= NC LL)) :named ax_23))
   (assert (! (not (= NC NA)) :named ax_24))
   (assert (! (not (= NC NA)) :named ax_25))
   (assert (! (not (= ND LL)) :named ax_26))
   (assert (! (not (= ND LL)) :named ax_27))
   (assert (! (not (= ND NA)) :named ax_28))
   (assert (! (not (= ND NA)) :named ax_29))
   (assert (! (not (= ND NC)) :named ax_30))
   (assert (! (not (= ND NC)) :named ax_31))
   (assert (! (not (= Ndpr Ncpr)) :named ax_32))
   (assert (! (not (= Ndpr Ncpr)) :named ax_33))
   (assert (! (not (= Np Lb)) :named ax_34))
   (assert (! (not (= Np Lb)) :named ax_35))
   (assert (! (not (= Np Le)) :named ax_36))
   (assert (! (not (= Np Le)) :named ax_37))
   (assert (! (not (= Np Ln)) :named ax_38))
   (assert (! (not (= Np Ln)) :named ax_39))
   (assert (! (not (= Np Lp)) :named ax_40))
   (assert (! (not (= Np Lp)) :named ax_41))
   (assert (! (not (= Np Nbb)) :named ax_42))
   (assert (! (not (= Np Nbb)) :named ax_43))
   (assert (! (not (= Nt Lb)) :named ax_44))
   (assert (! (not (= Nt Lb)) :named ax_45))
   (assert (! (not (= Nt Le)) :named ax_46))
   (assert (! (not (= Nt Le)) :named ax_47))
   (assert (! (not (= Nt Ln)) :named ax_48))
   (assert (! (not (= Nt Ln)) :named ax_49))
   (assert (! (not (= Nt Lp)) :named ax_50))
   (assert (! (not (= Nt Lp)) :named ax_51))
   (assert (! (not (= Nt Nbb)) :named ax_52))
   (assert (! (not (= Nt Nbb)) :named ax_53))
   (assert (! (not (= Nt Np)) :named ax_54))
   (assert (! (not (= Nt Np)) :named ax_55))
   (assert (! (not (= StF StD)) :named ax_56))
   (assert (! (not (= StF StD)) :named ax_57))
   (assert (! (not (= StL StD)) :named ax_58))
   (assert (! (not (= StL StD)) :named ax_59))
   (assert (! (not (= StL StF)) :named ax_60))
   (assert (! (not (= StL StF)) :named ax_61))

;Program
(assert (! (and true
$start
) :named ax_true))
(assert (! (=> $start (and true 
   (and true
      (= (Card Empty) 0)
      (= (MaxMSet EmptyMSet) 0)
      (forall( (|$Heap_$0| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$21| ref))(= (IsEmptyList |$Heap_$0| |o_$21|) (and (and (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |$Heap_$0| |o_$21| LL) (Singleton |o_$21|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Ln) null)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Le) |o_$21|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Lp) null)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Lb) |o_$21|))))
      (forall( (|a_$0| $@Map@@Int@To@Int@@) (|i_$2| Int))(!(= (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$0| |i_$2|) |i_$2|) (+ (MapRead$$@Map@@Int@To@Int@@$ |a_$0| |i_$2|) 1))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$0| |i_$2|) |i_$2|))))
      (forall( (|a_$1| $@Map@@Int@To@Int@@) (|i_$3| Int) (|j| Int))(!(=> (not (= |i_$3| |j|)) (= (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$1| |i_$3|) |j|) (MapRead$$@Map@@Int@To@Int@@$ |a_$1| |j|)))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$1| |i_$3|) |j|))))
      (forall( (|a_$2| $@Map@@Int@To@Int@@) (|i_$4| Int))(!(= (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$2| |i_$4|) |i_$4|) (- (MapRead$$@Map@@Int@To@Int@@$ |a_$2| |i_$4|) 1))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$2| |i_$4|) |i_$4|))))
      (forall( (|a_$3| $@Map@@Int@To@Int@@) (|i_$5| Int) (|j_$0| Int))(!(=> (not (= |i_$5| |j_$0|)) (= (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$3| |i_$5|) |j_$0|) (MapRead$$@Map@@Int@To@Int@@$ |a_$3| |j_$0|)))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$3| |i_$5|) |j_$0|))))
      (forall( (|a_$4| $@Map@@ref@To@Bool@@) (|b_$0| $@Map@@ref@To@Bool@@) (|o_$4| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (Union |a_$4| |b_$0|) |o_$4|) (or (MapRead$$@Map@@ref@To@Bool@@$ |a_$4| |o_$4|) (MapRead$$@Map@@ref@To@Bool@@$ |b_$0| |o_$4|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (Union |a_$4| |b_$0|) |o_$4|))))
      (forall( (|a_$5| $@Map@@ref@To@Bool@@) (|b_$1| $@Map@@ref@To@Bool@@))(!(= (Sub |a_$5| |b_$1|) (forall( (|o_$5| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ |a_$5| |o_$5|) (MapRead$$@Map@@ref@To@Bool@@$ |b_$1| |o_$5|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$5| |o_$5|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$1| |o_$5|)))))  :pattern ( (Sub |a_$5| |b_$1|))))
      (forall( (|a_$6| $@Map@@ref@To@Bool@@) (|b_$2| $@Map@@ref@To@Bool@@))(!(= (Equal |a_$6| |b_$2|) (forall( (|o_$6| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ |a_$6| |o_$6|) (MapRead$$@Map@@ref@To@Bool@@$ |b_$2| |o_$6|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$6| |o_$6|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$2| |o_$6|)))))  :pattern ( (Equal |a_$6| |b_$2|))))
      (forall( (|a_$7| $@Map@@ref@To@Bool@@) (|b_$3| $@Map@@ref@To@Bool@@))(!(= (Disjoint |a_$7| |b_$3|) (forall( (|o_$7| ref))(!(or (not (MapRead$$@Map@@ref@To@Bool@@$ |a_$7| |o_$7|)) (not (MapRead$$@Map@@ref@To@Bool@@$ |b_$3| |o_$7|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$7| |o_$7|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$3| |o_$7|)))))  :pattern ( (Disjoint |a_$7| |b_$3|))))
      (forall( (|a| $@Map@@Int@To@Int@@) (|b| $@Map@@Int@To@Int@@))(!(= (EqualMSet |a| |b|) (forall( (|i_$1| Int))(!(=> (> |i_$1| 0) (= (MapRead$$@Map@@Int@To@Int@@$ |a| |i_$1|) (MapRead$$@Map@@Int@To@Int@@$ |b| |i_$1|)))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ |a| |i_$1|)) :pattern ( (MapRead$$@Map@@Int@To@Int@@$ |b| |i_$1|)))))  :pattern ( (EqualMSet |a| |b|))))
      (forall( (|h_$0| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$0| ref))(!(= (IsNotAllocatedList |h_$0| |o_$0|) (forall( (|o'_$0| ref))(and (and (and (and (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$0| |o'_$0| LL) |o_$0|)) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Ln) |o_$0|))) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Le) |o_$0|))) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Lp) |o_$0|))) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Lb) |o_$0|)))))  :pattern ( (IsNotAllocatedList |h_$0| |o_$0|))))
      (forall( (|h_$10| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$22| ref))(Equal (NACCoSet |h_$10| |o_$22|) (AddEl (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$10| |o_$22| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$10| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$10| |o_$22| Nt) LL)) |o_$22|)))
      (forall( (|h_$100| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$2| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$2| ref) (|child_$0| ref))(=> (and (and (and (and (and (and (and (InvPr |hOld_$2| |this_$2|) (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$2| |this_$2|) |child_$0|)) (not (= |child_$0| null))) (Equal (BBSet |h_$100| |this_$2|) (RemEl (BBSet |hOld_$2| |this_$2|) |child_$0|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$100| |this_$2| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$2| |this_$2| Npr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$100| |this_$2| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |this_$2| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$100| |this_$2| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |this_$2| Ncpr))) (forall( (|o_$68| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$100| |this_$2|) |o_$68|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$100| |o_$68| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |o_$68| Ncpr))))) (and (InvPrSt |h_$100| |this_$2| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |child_$0| Ncpr) 0) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |child_$0| Ncpr) 0) (InvPr |h_$100| |this_$2|)))))
      (forall( (|h_$101| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$3| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$3| ref) (|child_$1| ref))(=> (and (and (and (and (and (and (and (InvPr |hOld_$3| |this_$3|) (not (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$3| |this_$3|) |child_$1|))) (not (= |child_$1| null))) (Equal (BBSet |h_$101| |this_$3|) (AddEl (BBSet |hOld_$3| |this_$3|) |child_$1|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$101| |this_$3| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$3| |this_$3| Npr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$101| |this_$3| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |this_$3| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$101| |this_$3| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |this_$3| Ncpr))) (forall( (|o_$69| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$101| |this_$3|) |o_$69|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$101| |o_$69| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |o_$69| Ncpr))))) (and (InvPrSt |h_$101| |this_$3| 0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |child_$1| Ncpr)) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |child_$1| Ncpr) 0) (InvPr |h_$101| |this_$3|)))))
      (forall( (|h_$102| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$4| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|from_$0| Int) (|to_$0| Int) (|this_$4| ref))(=> (and (and (and (and (and (InvPrSt |hOld_$4| |this_$4| |from_$0| |to_$0|) (Equal (BBSet |h_$102| |this_$4|) (BBSet |hOld_$4| |this_$4|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$102| |this_$4| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$4| |this_$4| Npr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$102| |this_$4| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$4| |this_$4| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$102| |this_$4| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$4| |this_$4| Ncpr))) (forall( (|o_$70| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$102| |this_$4|) |o_$70|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$102| |o_$70| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$4| |o_$70| Ncpr))))) (InvPrSt |h_$102| |this_$4| |from_$0| |to_$0|)))
      (forall( (|h_$103| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$5| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|from_$1| Int) (|to_$1| Int) (|this_$5| ref))(=> (and (and (and (and (and (and (InvPrSt |hOld_$5| |this_$5| |from_$1| |to_$1|) (Equal (BBSet |h_$103| |this_$5|) (BBSet |hOld_$5| |this_$5|))) (=> (<= |from_$1| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$103| |this_$5| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$5| |this_$5| Npr)))) (=> (> |from_$1| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$103| |this_$5| Npr) (RemoveMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$5| |this_$5| Npr) |from_$1|)))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$103| |this_$5| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$5| |this_$5| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$103| |this_$5| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$5| |this_$5| Ncpr))) (forall( (|o_$71| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$103| |this_$5|) |o_$71|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$103| |o_$71| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$5| |o_$71| Ncpr))))) (InvPrSt |h_$103| |this_$5| 0 |to_$1|)))
      (forall( (|h_$104| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$6| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|from_$2| Int) (|to_$2| Int) (|this_$6| ref))(=> (and (and (and (and (and (and (InvPrSt |hOld_$6| |this_$6| |from_$2| |to_$2|) (Equal (BBSet |h_$104| |this_$6|) (BBSet |hOld_$6| |this_$6|))) (=> (<= |to_$2| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$104| |this_$6| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$6| |this_$6| Npr)))) (=> (> |to_$2| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$104| |this_$6| Npr) (AddMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$6| |this_$6| Npr) |to_$2|)))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$104| |this_$6| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$6| |this_$6| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$104| |this_$6| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$6| |this_$6| Ncpr))) (forall( (|o_$72| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$104| |this_$6|) |o_$72|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$104| |o_$72| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$6| |o_$72| Ncpr))))) (InvPrSt |h_$104| |this_$6| |from_$2| 0)))
      (forall( (|h_$105| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$7| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$7| ref))(=> (and (and (and (InvPrSt |hOld_$7| |this_$7| 0 0) (not (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$7| |this_$7|) |this_$7|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$105| |this_$7| Ncpr) (Max (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$7| |this_$7| Ndpr) (MaxMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$7| |this_$7| Npr))))) (and (and (and (and (forall( (|o_$73_$0| ref) (|f_$2_$0| field$ref$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$105| |o_$73_$0| |f_$2_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$7| |o_$73_$0| |f_$2_$0|)) (and (= |o_$73_$0| |this_$7|) false))) (forall( (|o_$73_$1| ref) (|f_$2_$1| field$$@Map@@ref@To@Bool@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$105| |o_$73_$1| |f_$2_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |hOld_$7| |o_$73_$1| |f_$2_$1|)) (and (= |o_$73_$1| |this_$7|) false)))) (forall( (|o_$73_$2| ref) (|f_$2_$2| field$$@Map@@Int@To@Int@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$105| |o_$73_$2| |f_$2_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$7| |o_$73_$2| |f_$2_$2|)) (and (= |o_$73_$2| |this_$7|) false)))) (forall( (|o_$73_$3| ref) (|f_$2_$3| field$Int$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$105| |o_$73_$3| |f_$2_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$7| |o_$73_$3| |f_$2_$3|)) (and (= |o_$73_$3| |this_$7|) (= |f_$2_$3| Ncpr))))) (forall( (|o_$73_$4| ref) (|f_$2_$4| field$TNodeState$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$105| |o_$73_$4| |f_$2_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |hOld_$7| |o_$73_$4| |f_$2_$4|)) (and (= |o_$73_$4| |this_$7|) false))))) (InvPr |h_$105| |this_$7|)))
      (forall( (|h_$11| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$23| ref))(Equal (NACCSet |h_$11| |o_$23|) (RemEl (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| |o_$23| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$23| Nt) LL)) |o_$23|)))
      (forall( (|h_$12| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$24| ref))(and (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$12| |o_$24| NSt) StD)) (Equal (BBSet |h_$12| |o_$24|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$12| |o_$24| NC))) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$12| |o_$24| NSt) StD) (Equal (BBSet |h_$12| |o_$24|) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$12| |o_$24| NC) (CLp |h_$12| |o_$24|))))))
      (forall( (|h_$13| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1| $@Map@@ref@To@Bool@@))(= (InvIsGoodRegionsTreeEx |h_$13| |Ex1|) (forall( (|o_$25| ref))(and (and (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$25| NC)) (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$25| ND))) (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$25| NA))))))
      (forall( (|h_$14| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$0| $@Map@@ref@To@Bool@@) (|Ex2| $@Map@@ref@To@Bool@@))(= (InvCpEx |h_$14| |Ex1_$0| |Ex2|) (forall( (|o_$26| ref) (|o'_$4| ref))(!(=> (and (and (and (not (= |o_$26| null)) (not (= |o'_$4| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$0| |o_$26|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2| |o'_$4|))) (= (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$14| |o_$26| NC) |o'_$4|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$14| |o'_$4| Np) |o_$26|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$14| |o_$26| NC) |o'_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$14| |o'_$4| Np))))))
      (forall( (|h_$15| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$1| $@Map@@ref@To@Bool@@) (|Ex2_$0| $@Map@@ref@To@Bool@@))(= (InvCCEx |h_$15| |Ex1_$1| |Ex2_$0|) (forall( (|o_$27| ref) (|o'_$5| ref))(=> (and (and (and (not (= |o_$27| null)) (not (= |o'_$5| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$1| |o_$27|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$0| |o'_$5|))) (=> (not (= |o_$27| |o'_$5|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$15| |o_$27| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$15| |o'_$5| NC)))))))
      (forall( (|h_$16| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$2| $@Map@@ref@To@Bool@@))(= (InvDEx |h_$16| |Ex1_$2|) (forall( (|o_$28| ref))(=> (and (not (= |o_$28| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$2| |o_$28|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$16| |o_$28| ND) |o_$28|))))))
      (forall( (|h_$17| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$3| $@Map@@ref@To@Bool@@))(= (InvAEx |h_$17| |Ex1_$3|) (forall( (|o_$29| ref))(=> (and (not (= |o_$29| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$3| |o_$29|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$17| |o_$29| NA) |o_$29|))))))
      (forall( (|h_$18| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$4| $@Map@@ref@To@Bool@@))(= (InvCD1Ex |h_$18| |Ex1_$4|) (forall( (|o_$30| ref))(=> (and (not (= |o_$30| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$4| |o_$30|))) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$30| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$30| ND))))))
      (forall( (|h_$19| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$5| $@Map@@ref@To@Bool@@) (|Ex2_$1| $@Map@@ref@To@Bool@@))(= (InvCD2Ex |h_$19| |Ex1_$5| |Ex2_$1|) (forall( (|o_$31| ref) (|o'_$6| ref))(=> (and (and (and (not (= |o_$31| null)) (not (= |o'_$6| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$5| |o_$31|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$1| |o'_$6|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$31| ND) |o'_$6|) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$31| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o'_$6| ND)))))))
      (forall( (|h_$20| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$6| $@Map@@ref@To@Bool@@) (|Ex2_$2| $@Map@@ref@To@Bool@@))(= (InvAD1Ex |h_$20| |Ex1_$6| |Ex2_$2|) (forall( (|o_$32| ref) (|o'_$7| ref))(!(=> (and (and (and (not (= |o_$32| null)) (not (= |o'_$7| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$6| |o_$32|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$2| |o'_$7|))) (= (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o_$32| ND) |o'_$7|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o'_$7| NA) |o_$32|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o_$32| ND) |o'_$7|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o'_$7| NA) |o_$32|))))))
      (forall( (|h_$21| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$7| $@Map@@ref@To@Bool@@) (|Ex2_$3| $@Map@@ref@To@Bool@@))(= (InvAD2Ex |h_$21| |Ex1_$7| |Ex2_$3|) (forall( (|o_$33| ref) (|o'_$8| ref))(!(=> (and (and (and (not (= |o_$33| null)) (not (= |o'_$8| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$7| |o_$33|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$3| |o'_$8|))) (=> (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$33| ND) |o'_$8|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o'_$8| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$33| ND) |o_$33|))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$33| ND) |o'_$8|))))))
      (forall( (|h_$22| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$8| $@Map@@ref@To@Bool@@) (|Ex2_$4| $@Map@@ref@To@Bool@@))(= (InvAD3Ex |h_$22| |Ex1_$8| |Ex2_$4|) (forall( (|o_$34| ref) (|o'_$9| ref))(!(=> (and (and (and (not (= |o_$34| null)) (not (= |o'_$9| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$8| |o_$34|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$4| |o'_$9|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| ND) |o'_$9|) (Equal (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o'_$9| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| ND)) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| NA) |o_$34|))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| ND) |o'_$9|))))))
      (forall( (|h_$23| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$9| $@Map@@ref@To@Bool@@) (|Ex2_$5| $@Map@@ref@To@Bool@@))(= (InvDD1Ex |h_$23| |Ex1_$9| |Ex2_$5|) (forall( (|o_$35| ref) (|o'_$10| ref))(!(=> (and (and (and (not (= |o_$35| null)) (not (= |o'_$10| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$9| |o_$35|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$5| |o'_$10|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o_$35| ND) |o'_$10|) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o'_$10| ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o_$35| ND))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o_$35| ND) |o'_$10|))))))
      (forall( (|h_$24| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$10| $@Map@@ref@To@Bool@@) (|Ex2_$6| $@Map@@ref@To@Bool@@))(= (InvDD2Ex |h_$24| |Ex1_$10| |Ex2_$6|) (forall( (|o_$36| ref) (|o'_$11| ref))(!(=> (and (and (and (not (= |o_$36| null)) (not (= |o'_$11| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$10| |o_$36|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$6| |o'_$11|))) (=> (and (and (not (= |o_$36| |o'_$11|)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o_$36| ND) |o'_$11|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o'_$11| ND) |o_$36|))) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o_$36| ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o'_$11| ND))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o_$36| ND) |o'_$11|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o'_$11| ND) |o_$36|))))))
      (forall( (|h_$25| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$11| $@Map@@ref@To@Bool@@) (|Ex2_$7| $@Map@@ref@To@Bool@@))(= (InvAAEx |h_$25| |Ex1_$11| |Ex2_$7|) (forall( (|o_$37| ref) (|o'_$12| ref))(!(=> (and (and (and (not (= |o_$37| null)) (not (= |o'_$12| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$11| |o_$37|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$7| |o'_$12|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o_$37| NA) |o'_$12|) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o'_$12| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o_$37| NA))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o_$37| NA) |o'_$12|))))))
      (forall( (|h_$26| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$12| $@Map@@ref@To@Bool@@))(= (InvAp1Ex |h_$26| |Ex1_$12|) (forall( (|o_$38| ref))(!(=> (and (not (= |o_$38| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$12| |o_$38|))) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$26| |o_$38| Np) null) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$26| |o_$38| NA) Empty)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$26| |o_$38| Np))))))
      (forall( (|h_$27| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$13| $@Map@@ref@To@Bool@@))(= (InvAp2Ex |h_$27| |Ex1_$13|) (forall( (|o_$39| ref))(!(=> (and (not (= |o_$39| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$13| |o_$39|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np) null)) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$27| |o_$39| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$27| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np) NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np))))))
      (forall( (|h_$28| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$14| $@Map@@ref@To@Bool@@))(= (InvAt1Ex |h_$28| |Ex1_$14|) (forall( (|o_$40| ref))(!(=> (and (not (= |o_$40| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$14| |o_$40|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$28| |o_$40| Np) null)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$28| |o_$40| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$28| |o_$40| Nt))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$28| |o_$40| Nt))))))
      (forall( (|h_$29| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$15| $@Map@@ref@To@Bool@@))(= (InvAt2Ex |h_$29| |Ex1_$15|) (forall( (|o_$41| ref))(!(=> (and (not (= |o_$41| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$15| |o_$41|))) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$29| |o_$41| Np) null) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$29| |o_$41| Nt) |o_$41|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$29| |o_$41| Nt))))))
      (forall( (|h_$30| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$16| $@Map@@ref@To@Bool@@) (|Ex2_$8| $@Map@@ref@To@Bool@@))(= (InvAt3Ex |h_$30| |Ex1_$16| |Ex2_$8|) (forall( (|o_$42| ref) (|o'_$13| ref))(!(=> (and (and (and (not (= |o_$42| null)) (not (= |o'_$13| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$16| |o_$42|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$8| |o'_$13|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$30| |o_$42| NA) |o'_$13|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$30| |o_$42| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$30| |o'_$13| Nt))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$30| |o_$42| NA) |o'_$13|))))))
      (forall( (|h_$4| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|r_$4| $@Map@@ref@To@Bool@@) (|i_$7| Int) (|o_$15| ref))(= (MapRead$$@Map@@ref@To@Bool@@$ (FBP |h_$4| |r_$4| |i_$7|) |o_$15|) (and (and (MapRead$$@Map@@ref@To@Bool@@$ |r_$4| |o_$15|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$4| |o_$15| Ncpr) |i_$7|)) (not (= |o_$15| null)))))
      (forall( (|h_$49| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex| $@Map@@ref@To@Bool@@))(!(= (InvTreeEx |h_$49| |Ex|) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (InvIsGoodRegionsTreeEx |h_$49| |Ex|) (InvCpEx |h_$49| |Ex| |Ex|)) (InvCCEx |h_$49| |Ex| |Ex|)) (InvDEx |h_$49| |Ex|)) (InvAEx |h_$49| |Ex|)) (InvCD1Ex |h_$49| |Ex|)) (InvCD2Ex |h_$49| |Ex| |Ex|)) (InvAD1Ex |h_$49| |Ex| |Ex|)) (InvAD2Ex |h_$49| |Ex| |Ex|)) (InvAD3Ex |h_$49| |Ex| |Ex|)) (InvDD1Ex |h_$49| |Ex| |Ex|)) (InvDD2Ex |h_$49| |Ex| |Ex|)) (InvAAEx |h_$49| |Ex| |Ex|)) (InvAp1Ex |h_$49| |Ex|)) (InvAp2Ex |h_$49| |Ex|)) (InvAt1Ex |h_$49| |Ex|)) (InvAt2Ex |h_$49| |Ex|)) (InvAt3Ex |h_$49| |Ex| |Ex|)))  :pattern ( (InvTreeEx |h_$49| |Ex|))))
      (forall( (|h_$5| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$16| ref))(=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$16| Ln) null) (= (CLn |h_$5| |o_$16|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$16| Lb))))
      (forall( (|h_$50| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (InvTree |h_$50|) (InvTreeEx |h_$50| Empty))  :pattern ( (InvTree |h_$50|))))
      (forall( (|h_$51| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$17| $@Map@@ref@To@Bool@@))(= (InvIsGoodRegionsListEx |h_$51| |Ex1_$17|) (forall( (|o_$43| ref))(IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$51| |o_$43| LL)))))
      (forall( (|h_$52| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$18| $@Map@@ref@To@Bool@@))(= (InvLEx |h_$52| |Ex1_$18|) (forall( (|o_$44| ref))(!(=> (and (not (= |o_$44| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$18| |o_$44|))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$52| |o_$44| LL) |o_$44|))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$52| |o_$44| LL))))))
      (forall( (|h_$53| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$19| $@Map@@ref@To@Bool@@))(= (Inve1Ex |h_$53| |Ex1_$19|) (forall( (|o_$45| ref))(!(=> (and (not (= |o_$45| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$19| |o_$45|))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$53| |o_$45| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$53| |o_$45| Le)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$53| |o_$45| Le))))))
      (forall( (|h_$54| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$20| $@Map@@ref@To@Bool@@))(= (Inve2Ex |h_$54| |Ex1_$20|) (forall( (|o_$46| ref))(!(=> (and (not (= |o_$46| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$20| |o_$46|))) (= (= |o_$46| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Le)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Ln) null)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Ln))))))
      (forall( (|h_$55| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$21| $@Map@@ref@To@Bool@@))(= (Invb1Ex |h_$55| |Ex1_$21|) (forall( (|o_$47| ref))(!(=> (and (not (= |o_$47| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$21| |o_$47|))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$55| |o_$47| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$55| |o_$47| Lb)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$55| |o_$47| Lb))))))
      (forall( (|h_$56| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$22| $@Map@@ref@To@Bool@@))(= (Invb2Ex |h_$56| |Ex1_$22|) (forall( (|o_$48| ref))(!(=> (and (not (= |o_$48| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$22| |o_$48|))) (= (= |o_$48| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lb)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lp) null)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lp))))))
      (forall( (|h_$57| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$23| $@Map@@ref@To@Bool@@))(= (InvnEx |h_$57| |Ex1_$23|) (forall( (|o_$49| ref))(!(=> (and (not (= |o_$49| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$23| |o_$49|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$57| |o_$49| Ln) null)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$57| |o_$49| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$57| |o_$49| Ln))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$57| |o_$49| Ln))))))
      (forall( (|h_$58| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$24| $@Map@@ref@To@Bool@@))(= (InvpEx |h_$58| |Ex1_$24|) (forall( (|o_$50| ref))(!(=> (and (not (= |o_$50| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$24| |o_$50|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$58| |o_$50| Lp) null)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$58| |o_$50| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$58| |o_$50| Lp))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$58| |o_$50| Lp))))))
      (forall( (|h_$59| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$25| $@Map@@ref@To@Bool@@))(= (InvnpEx |h_$59| |Ex1_$25|) (forall( (|o_$51| ref))(!(=> (and (not (= |o_$51| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$25| |o_$51|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| |o_$51| Ln) null)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| |o_$51| Ln) Lp) |o_$51|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| |o_$51| Ln) Lp))))))
      (forall( (|h_$6| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$17| ref))(=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$6| |o_$17| Ln) null)) (= (CLn |h_$6| |o_$17|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$6| |o_$17| Ln))))
      (forall( (|h_$60| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$26| $@Map@@ref@To@Bool@@))(= (InvpnEx |h_$60| |Ex1_$26|) (forall( (|o_$52| ref))(!(=> (and (not (= |o_$52| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$26| |o_$52|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| |o_$52| Lp) null)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| |o_$52| Lp) Ln) |o_$52|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| |o_$52| Lp) Ln))))))
      (forall( (|h_$61| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$27| $@Map@@ref@To@Bool@@) (|Ex2_$9| $@Map@@ref@To@Bool@@))(= (InvLbEx |h_$61| |Ex1_$27| |Ex2_$9|) (forall( (|o_$53| ref) (|o'_$14| ref))(!(=> (and (and (and (not (= |o_$53| null)) (not (= |o'_$14| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$27| |o_$53|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$9| |o'_$14|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$61| |o_$53| LL) |o'_$14|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$61| |o_$53| Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$61| |o'_$14| Lb))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$61| |o_$53| LL) |o'_$14|))))))
      (forall( (|h_$62| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$28| $@Map@@ref@To@Bool@@) (|Ex2_$10| $@Map@@ref@To@Bool@@))(= (InvLeEx |h_$62| |Ex1_$28| |Ex2_$10|) (forall( (|o_$54| ref) (|o'_$15| ref))(!(=> (and (and (and (not (= |o_$54| null)) (not (= |o'_$15| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$28| |o_$54|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$10| |o'_$15|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$62| |o_$54| LL) |o'_$15|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$62| |o_$54| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$62| |o'_$15| Le))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$62| |o_$54| LL) |o'_$15|))))))
      (forall( (|h_$63| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$29| $@Map@@ref@To@Bool@@) (|Ex2_$11| $@Map@@ref@To@Bool@@))(= (InvLL1Ex |h_$63| |Ex1_$29| |Ex2_$11|) (forall( (|o_$55| ref) (|o'_$16| ref))(!(=> (and (and (and (not (= |o_$55| null)) (not (= |o'_$16| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$29| |o_$55|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$11| |o'_$16|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o_$55| LL) |o'_$16|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o_$55| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o'_$16| LL))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o_$55| LL) |o'_$16|))))))
      (forall( (|h_$64| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$30| $@Map@@ref@To@Bool@@) (|Ex2_$12| $@Map@@ref@To@Bool@@))(= (InvLL2Ex |h_$64| |Ex1_$30| |Ex2_$12|) (forall( (|o_$56| ref) (|o'_$17| ref))(!(=> (and (and (and (not (= |o_$56| null)) (not (= |o'_$17| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$30| |o_$56|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$12| |o'_$17|))) (=> (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o_$56| LL) |o'_$17|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o_$56| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o'_$17| LL))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o_$56| LL) |o'_$17|))))))
      (forall( (|h_$7| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$18| ref))(=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$18| Lp) null) (= (CLp |h_$7| |o_$18|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$18| Le))))
      (forall( (|h_$79| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex_$0| $@Map@@ref@To@Bool@@))(!(= (InvListEx |h_$79| |Ex_$0|) (and (and (and (and (and (and (and (and (and (and (and (and (and (InvIsGoodRegionsListEx |h_$79| |Ex_$0|) (InvLEx |h_$79| |Ex_$0|)) (Inve1Ex |h_$79| |Ex_$0|)) (Inve2Ex |h_$79| |Ex_$0|)) (Invb1Ex |h_$79| |Ex_$0|)) (Invb2Ex |h_$79| |Ex_$0|)) (InvnEx |h_$79| |Ex_$0|)) (InvpEx |h_$79| |Ex_$0|)) (InvpnEx |h_$79| |Ex_$0|)) (InvnpEx |h_$79| |Ex_$0|)) (InvLbEx |h_$79| |Ex_$0| |Ex_$0|)) (InvLeEx |h_$79| |Ex_$0| |Ex_$0|)) (InvLL1Ex |h_$79| |Ex_$0| |Ex_$0|)) (InvLL2Ex |h_$79| |Ex_$0| |Ex_$0|)))  :pattern ( (InvListEx |h_$79| |Ex_$0|))))
      (forall( (|h_$8| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$19| ref))(=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$8| |o_$19| Lp) null)) (= (CLp |h_$8| |o_$19|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$8| |o_$19| Lp))))
      (forall( (|h_$80| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (InvList |h_$80|) (InvListEx |h_$80| Empty))  :pattern ( (InvList |h_$80|))))
      (forall( (|h_$81| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$31| $@Map@@ref@To@Bool@@))(= (InvStFEx |h_$81| |Ex1_$31|) (forall( (|o_$57| ref))(=> (and (not (= |o_$57| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$31| |o_$57|))) (= (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$81| |o_$57| NSt) StF) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$81| |o_$57| Nbb) null) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$81| |o_$57| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$81| |o_$57| Nbb))))))))
      (forall( (|h_$82| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$32| $@Map@@ref@To@Bool@@))(= (InvStLEx |h_$82| |Ex1_$32|) (forall( (|o_$58| ref))(=> (and (not (= |o_$58| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$32| |o_$58|))) (= (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$82| |o_$58| NSt) StL) (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$82| |o_$58| Nbb) null)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$82| |o_$58| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$82| |o_$58| Nbb))))))))
      (forall( (|h_$83| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$33| $@Map@@ref@To@Bool@@))(= (InvStDEx |h_$83| |Ex1_$33|) (forall( (|o_$59| ref))(=> (and (not (= |o_$59| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$33| |o_$59|))) (= (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$83| |o_$59| NSt) StD) (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$83| |o_$59| Nbb) null)) (= (CLn |h_$83| |o_$59|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$83| |o_$59| Nbb))))))))
      (forall( (|h_$84| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$34| $@Map@@ref@To@Bool@@))(= (InvStNDLEx |h_$84| |Ex1_$34|) (forall( (|o_$60| ref))(=> (and (not (= |o_$60| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$34| |o_$60|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$84| |o_$60| NSt) StD)) (IsEmptyList |h_$84| |o_$60|))))))
      (forall( (|h_$85| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$35| $@Map@@ref@To@Bool@@) (|Ex2_$13| $@Map@@ref@To@Bool@@))(= (InvStDCCEx |h_$85| |Ex1_$35| |Ex2_$13|) (forall( (|o_$61| ref) (|o'_$18| ref))(=> (and (and (and (not (= |o_$61| null)) (not (= |o'_$18| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$35| |o_$61|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$13| |o'_$18|))) (=> (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$85| |o_$61| NSt) StD) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$85| |o_$61| LL) |o'_$18|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$85| |o'_$18| NSt) StD))))))
      (forall( (|h_$86| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$36| $@Map@@ref@To@Bool@@) (|Ex2_$14| $@Map@@ref@To@Bool@@))(= (InvStADEx |h_$86| |Ex1_$36| |Ex2_$14|) (forall( (|o_$62| ref) (|o'_$19| ref))(=> (and (and (and (not (= |o_$62| null)) (not (= |o'_$19| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$36| |o_$62|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$14| |o'_$19|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$86| |o_$62| ND) |o'_$19|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$86| |o'_$19| NSt) StL))))))
      (forall( (|h_$93| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex_$1| $@Map@@ref@To@Bool@@))(= (InvStructEx |h_$93| |Ex_$1|) (and (and (and (and (and (and (and (InvTreeEx |h_$93| |Ex_$1|) (InvListEx |h_$93| |Ex_$1|)) (InvStFEx |h_$93| |Ex_$1|)) (InvStLEx |h_$93| |Ex_$1|)) (InvStDEx |h_$93| |Ex_$1|)) (InvStNDLEx |h_$93| |Ex_$1|)) (InvStDCCEx |h_$93| |Ex_$1| |Ex_$1|)) (InvStADEx |h_$93| |Ex_$1| |Ex_$1|))))
      (forall( (|h_$95| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$63| ref))(= (InvPr |h_$95| |o_$63|) (and (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ncpr) (Max (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ndpr) (MaxMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$95| |o_$63| Npr)))) (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ncpr) 0)) (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ndpr) 0)) (forall( (|i_$8| Int))(=> (> |i_$8| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$95| |o_$63| Npr) |i_$8|) (Card (FBP |h_$95| (BBSet |h_$95| |o_$63|) |i_$8|))))))))
      (forall( (|h_$96| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$64| ref) (|from| Int) (|to| Int))(= (InvPrSt |h_$96| |o_$64| |from| |to|) (and (and (and (and (forall( (|i_$9| Int))(=> (and (and (> |i_$9| 0) (not (= |i_$9| |from|))) (not (= |i_$9| |to|))) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$96| |o_$64| Npr) |i_$9|) (Card (FBP |h_$96| (BBSet |h_$96| |o_$64|) |i_$9|))))) (=> (> |from| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$96| |o_$64| Npr) |from|) (+ (Card (FBP |h_$96| (BBSet |h_$96| |o_$64|) |from|)) 1)))) (=> (> |to| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$96| |o_$64| Npr) |to|) (- (Card (FBP |h_$96| (BBSet |h_$96| |o_$64|) |to|)) 1)))) (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$96| |o_$64| Ncpr) 0)) (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$96| |o_$64| Ndpr) 0))))
      (forall( (|h_$97| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this| ref))(=> (and (and (and (and (and (InvPr |hOld| |this|) (Equal (BBSet |h_$97| |this|) (BBSet |hOld| |this|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$97| |this| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld| |this| Npr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$97| |this| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld| |this| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$97| |this| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld| |this| Ncpr))) (forall( (|o_$65| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$97| |this|) |o_$65|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$97| |o_$65| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld| |o_$65| Ncpr))))) (InvPr |h_$97| |this|)))
      (forall( (|h_$98| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$0| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$0| ref))(=> (and (and (and (and (and (and (and (and (InvPr |hOld_$0| |this_$0|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$98| |this_$0| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |hOld_$0| |this_$0| NC))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$98| |this_$0| Lp) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$0| |this_$0| Lp))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$98| |this_$0| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$0| |this_$0| Le))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$98| |this_$0| NSt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |hOld_$0| |this_$0| NSt))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$98| |this_$0| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$0| |this_$0| Npr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$98| |this_$0| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$0| |this_$0| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$98| |this_$0| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$0| |this_$0| Ncpr))) (forall( (|o_$66| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$98| |this_$0|) |o_$66|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$98| |o_$66| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$0| |o_$66| Ncpr))))) (InvPr |h_$98| |this_$0|)))
      (forall( (|h_$99| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$1| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$1| ref) (|child| ref) (|newNcpr| Int))(=> (and (and (and (and (and (and (InvPr |hOld_$1| |this_$1|) (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$1| |this_$1|) |child|)) (>= |newNcpr| 0)) (not (= |child| null))) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$1| |child| Ncpr) |newNcpr|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$99| |child| Ncpr) |newNcpr|)) (and (and (and (and (forall( (|o_$67_$0| ref) (|f_$1_$0| field$ref$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$99| |o_$67_$0| |f_$1_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$1| |o_$67_$0| |f_$1_$0|)) (and (= |o_$67_$0| |child|) false))) (forall( (|o_$67_$1| ref) (|f_$1_$1| field$$@Map@@ref@To@Bool@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$99| |o_$67_$1| |f_$1_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |hOld_$1| |o_$67_$1| |f_$1_$1|)) (and (= |o_$67_$1| |child|) false)))) (forall( (|o_$67_$2| ref) (|f_$1_$2| field$$@Map@@Int@To@Int@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$99| |o_$67_$2| |f_$1_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$1| |o_$67_$2| |f_$1_$2|)) (and (= |o_$67_$2| |child|) false)))) (forall( (|o_$67_$3| ref) (|f_$1_$3| field$Int$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$99| |o_$67_$3| |f_$1_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$1| |o_$67_$3| |f_$1_$3|)) (and (= |o_$67_$3| |child|) (= |f_$1_$3| Ncpr))))) (forall( (|o_$67_$4| ref) (|f_$1_$4| field$TNodeState$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$99| |o_$67_$4| |f_$1_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |hOld_$1| |o_$67_$4| |f_$1_$4|)) (and (= |o_$67_$4| |child|) false))))) (InvPrSt |h_$99| |this_$1| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$1| |child| Ncpr) |newNcpr|)))
      (forall( (|h| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o| ref))(!(= (IsNotAllocatedTree |h| |o|) (forall( (|o'| ref))(and (and (and (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o'| Np) |o|)) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o'| Nt) |o|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o'| NA) |o|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o'| NC) |o|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o'| ND) |o|)))))  :pattern ( (IsNotAllocatedTree |h| |o|))))
      (forall( (|i_$0| Int))(!(not (InMSet EmptyMSet |i_$0|))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ EmptyMSet |i_$0|))))
      (forall( (|i_$6| Int) (|j_$1| Int))(!(and (and (>= (Max |i_$6| |j_$1|) |i_$6|) (>= (Max |i_$6| |j_$1|) |j_$1|)) (or (= (Max |i_$6| |j_$1|) |i_$6|) (= (Max |i_$6| |j_$1|) |j_$1|)))  :pattern ( (Max |i_$6| |j_$1|))))
      (forall( (|m| $@Map@@Int@To@Int@@) (|i| Int))(!(= (InMSet |m| |i|) (not (= (MapRead$$@Map@@Int@To@Int@@$ |m| |i|) 0)))  :pattern ( (InMSet |m| |i|))))
      (forall( (|o_$2| ref))(!(not (MapRead$$@Map@@ref@To@Bool@@$ Empty |o_$2|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ Empty |o_$2|))))
      (forall( (|r_$0| $@Map@@ref@To@Bool@@) (|o_$8| ref) (|o'_$2| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (AddEl |r_$0| |o_$8|) |o'_$2|) (or (= |o_$8| |o'_$2|) (MapRead$$@Map@@ref@To@Bool@@$ |r_$0| |o'_$2|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl |r_$0| |o_$8|) |o'_$2|))))
      (forall( (|r_$1| $@Map@@ref@To@Bool@@) (|o_$9| ref) (|o'_$3| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (RemEl |r_$1| |o_$9|) |o'_$3|) (and (not (= |o_$9| |o'_$3|)) (MapRead$$@Map@@ref@To@Bool@@$ |r_$1| |o'_$3|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (RemEl |r_$1| |o_$9|) |o'_$3|))))
      (forall( (|r_$3| $@Map@@ref@To@Bool@@))(!(= (IsGoodRegion |r_$3|) (not (MapRead$$@Map@@ref@To@Bool@@$ |r_$3| null)))  :pattern ( (IsGoodRegion |r_$3|))))
      (forall( (|r| ref) (|o_$3| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (Singleton |r|) |o_$3|) (= |r| |o_$3|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (Singleton |r|) |o_$3|))))
      (forall( (|s_$0| $@Map@@ref@To@Bool@@) (|r_$2| $@Map@@ref@To@Bool@@) (|o_$10| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (Minus |s_$0| |r_$2|) |o_$10|) (and (MapRead$$@Map@@ref@To@Bool@@$ |s_$0| |o_$10|) (not (MapRead$$@Map@@ref@To@Bool@@$ |r_$2| |o_$10|))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (Minus |s_$0| |r_$2|) |o_$10|))))
      (forall( (|s_$1| $@Map@@ref@To@Bool@@) (|o_$11| ref))(=> (not (MapRead$$@Map@@ref@To@Bool@@$ |s_$1| |o_$11|)) (= (Card (AddEl |s_$1| |o_$11|)) (+ (Card |s_$1|) 1))))
      (forall( (|s_$2| $@Map@@ref@To@Bool@@) (|o_$12| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ |s_$2| |o_$12|) (= (Card (RemEl |s_$2| |o_$12|)) (- (Card |s_$2|) 1))))
      (forall( (|s_$3| $@Map@@ref@To@Bool@@) (|t_$0| $@Map@@ref@To@Bool@@))(=> (Equal |s_$3| |t_$0|) (= (Card |s_$3|) (Card |t_$0|))))
      (forall( (|s_$4| $@Map@@ref@To@Bool@@) (|t_$1| $@Map@@ref@To@Bool@@))(=> (Equal |s_$4| |t_$1|) (= |s_$4| |t_$1|)))
      (forall( (|s| $@Map@@Int@To@Int@@) (|t| $@Map@@Int@To@Int@@))(!(=> (EqualMSet |s| |t|) (= (MaxMSet |s|) (MaxMSet |t|)))  :pattern ( (EqualMSet |s| |t|))))
      (forall( (|St| TNodeState))(or (or (= |St| StF) (= |St| StL)) (= |St| StD)))
   )
PreconditionGeneratedEntry
)) :named ax_$start))
(assert (! (=> PreconditionGeneratedEntry (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap tree Np) null)
      (forall( (|o_$74| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$74|) (IsEmptyList $Heap |o_$74|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$74|) (IsEmptyList $Heap |o_$74|))))
      (InvList $Heap)
      (InvTree $Heap)
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap tree ND) subTree)
      (not (= subTree null))
      (not (= tree null))
   )
anon0
)) :named ax_PreconditionGeneratedEntry))
(assert (! (=> anon0 (and true 
   (and true
   )
(or anon0@1 anon0_assertion)
)) :named ax_anon0))
(assert (! (=> anon0@1 (and true 
   (and true
      (not (= tree null))
   )
(or anon0@1_assertion anon0@2)
)) :named ax_anon0@1))
(assert (! (=> anon0_assertion (not (and true
   (and true
      (not (= tree null))
   )
))) :named ax_anon0_assertion))
(assert (! (=> anon0@1_assertion (not (and true
   (and true
      (not (= subTree null))
   )
))) :named ax_anon0@1_assertion))
(assert (! (=> anon0@2 (and true 
   (and true
      (not (= subTree null))
   )
(or anon0@2_assertion anon0@3)
)) :named ax_anon0@2))
(assert (! (=> anon0@2_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap tree Np) null)
   )
))) :named ax_anon0@2_assertion))
(assert (! (=> anon0@3 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap tree Np) null)
   )
(or anon0@3_assertion anon0@4)
)) :named ax_anon0@3))
(assert (! (=> anon0@3_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap tree ND) subTree)
   )
))) :named ax_anon0@3_assertion))
(assert (! (=> anon0@4 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap tree ND) subTree)
   )
(or anon0@4_assertion anon0@5)
)) :named ax_anon0@4))
(assert (! (=> anon0@4_assertion (not (and true
   (and true
      (InvTree $Heap)
   )
))) :named ax_anon0@4_assertion))
(assert (! (=> anon0@5 (and true 
   (and true
      (InvTree $Heap)
   )
(or anon0@5_assertion anon0@6)
)) :named ax_anon0@5))
(assert (! (=> anon0@5_assertion (not (and true
   (and true
      (InvList $Heap)
   )
))) :named ax_anon0@5_assertion))
(assert (! (=> anon0@6 (and true 
   (and true
      (InvList $Heap)
   )
(or anon0@6_assertion anon0@7)
)) :named ax_anon0@6))
(assert (! (=> anon0@6_assertion (not (and true
   (and true
      (forall( (|o_$75| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$75|) (IsEmptyList $Heap |o_$75|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$75|) (IsEmptyList $Heap |o_$75|))))
   )
))) :named ax_anon0@6_assertion))
(assert (! (=> anon0@7 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 tree Ln) null)
      (forall( (|o_$75| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$75|) (IsEmptyList $Heap |o_$75|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$75|) (IsEmptyList $Heap |o_$75|))))
      (forall( (|o_$76| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) tree) |o_$76|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$76| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$76| Ln))))
      (forall( (|o_$77| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$77|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$77| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree))))
      (forall( (|o_$78| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$78|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$78| Lb) subTree)))
      (forall( (|o_$79| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$79|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$79| Le) tree)))
      (forall( (|o_$80| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) |o_$80|) (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$80| Lp))))
      (forall( (|o_$81| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) |o_$81|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$81| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$81| Lp))))
      (forall( (|o_$82_$0| ref) (|f_$3_$0| field$ref$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$82_$0| |f_$3_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$82_$0| |f_$3_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$0|) (= |f_$3_$0| Lb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$0|) (= |f_$3_$0| Le))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$0|) (= |f_$3_$0| Lp))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$0|) (= |f_$3_$0| Ln))))
      (forall( (|o_$82_$1| ref) (|f_$3_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$82_$1| |f_$3_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$82_$1| |f_$3_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$1|) (= |f_$3_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$1|) false)))
      (forall( (|o_$82_$2| ref) (|f_$3_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@0 |o_$82_$2| |f_$3_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$82_$2| |f_$3_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$2|) false)))
      (forall( (|o_$82_$3| ref) (|f_$3_$3| field$Int$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@0 |o_$82_$3| |f_$3_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap |o_$82_$3| |f_$3_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$3|) false)))
      (forall( (|o_$82_$4| ref) (|f_$3_$4| field$TNodeState$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 |o_$82_$4| |f_$3_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap |o_$82_$4| |f_$3_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$82_$4|) false)))
      (InvList $Heap@0)
      (InvTree $Heap@0)
   )
(or anon0@7_assertion anon0@8)
)) :named ax_anon0@7))
(assert (! (=> anon0@7_assertion (not (and true
   (and true
      (not (= tree null))
   )
))) :named ax_anon0@7_assertion))
(assert (! (=> anon0@8 (and true 
   (and true
      (not (= tree null))
   )
(or anon0@8_assertion anon0@9)
)) :named ax_anon0@8))
(assert (! (=> anon0@8_assertion (not (and true
   (and true
      (not (= subTree null))
   )
))) :named ax_anon0@8_assertion))
(assert (! (=> anon0@9 (and true 
   (and true
      (not (= subTree null))
   )
(or anon0@10 anon0@9_assertion)
)) :named ax_anon0@9))
(assert (! (=> anon0@10 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 tree Np) null)
   )
(or anon0@10_assertion anon0@11)
)) :named ax_anon0@10))
(assert (! (=> anon0@9_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 tree Np) null)
   )
))) :named ax_anon0@9_assertion))
(assert (! (=> anon0@10_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 tree ND) subTree)
   )
))) :named ax_anon0@10_assertion))
(assert (! (=> anon0@11 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 tree ND) subTree)
   )
(or anon0@11_assertion anon0@12)
)) :named ax_anon0@11))
(assert (! (=> anon0@11_assertion (not (and true
   (and true
      (InvTree $Heap@0)
   )
))) :named ax_anon0@11_assertion))
(assert (! (=> anon0@12 (and true 
   (and true
      (InvTree $Heap@0)
   )
(or anon0@12_assertion anon0@13)
)) :named ax_anon0@12))
(assert (! (=> anon0@12_assertion (not (and true
   (and true
      (InvList $Heap@0)
   )
))) :named ax_anon0@12_assertion))
(assert (! (=> anon0@13 (and true 
   (and true
      (InvList $Heap@0)
   )
(or anon0@13_assertion anon0@14)
)) :named ax_anon0@13))
(assert (! (=> anon0@13_assertion (not (and true
   (and true
      (forall( (|o_$83| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) tree) |o_$83|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$83| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$83| Ln))))
   )
))) :named ax_anon0@13_assertion))
(assert (! (=> anon0@14 (and true 
   (and true
      (forall( (|o_$83| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) tree) |o_$83|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$83| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$83| Ln))))
   )
(or anon0@14_assertion anon0@15)
)) :named ax_anon0@14))
(assert (! (=> anon0@14_assertion (not (and true
   (and true
      (forall( (|o_$84| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) |o_$84|) (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$84| Lp))))
   )
))) :named ax_anon0@14_assertion))
(assert (! (=> anon0@15 (and true 
   (and true
      (forall( (|o_$84| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) |o_$84|) (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$84| Lp))))
   )
(or anon0@15_assertion anon0@16)
)) :named ax_anon0@15))
(assert (! (=> anon0@15_assertion (not (and true
   (and true
      (forall( (|o_$85| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) |o_$85|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$85| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$85| Lp))))
   )
))) :named ax_anon0@15_assertion))
(assert (! (=> anon0@16 (and true 
   (and true
      (forall( (|o_$85| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) |o_$85|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$85| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$85| Lp))))
      (forall( (|o_$86| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) tree) |o_$86|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$86| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$86| Ln))))
      (forall( (|o_$87| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$87|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$87| Np) null)))
      (forall( (|o_$88| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) tree) subTree) |o_$88|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$88| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$88| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$88| Lp)))))
      (forall( (|o_$89| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) tree) subTree) |o_$89|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$89| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$89| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$89| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$89| Lp))))))
      (forall( (|o_$90| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$90|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$90| NA) Empty)))
      (forall( (|o_$91_$0| ref) (|f_$4_$0| field$ref$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$91_$0| |f_$4_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$91_$0| |f_$4_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) tree) |o_$91_$0|) (= |f_$4_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$91_$0|) (= |f_$4_$0| Nt))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) tree) subTree) |o_$91_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$91_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$91_$0|) false)))
      (forall( (|o_$91_$1| ref) (|f_$4_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$91_$1| |f_$4_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$91_$1| |f_$4_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) tree) |o_$91_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$91_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) tree) subTree) |o_$91_$1|) (= |f_$4_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$91_$1|) (= |f_$4_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$91_$1|) (= |f_$4_$1| NA))))
      (forall( (|o_$91_$2| ref) (|f_$4_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@1 |o_$91_$2| |f_$4_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@0 |o_$91_$2| |f_$4_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) tree) |o_$91_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$91_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) tree) subTree) |o_$91_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$91_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$91_$2|) false)))
      (forall( (|o_$91_$3| ref) (|f_$4_$3| field$Int$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@1 |o_$91_$3| |f_$4_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@0 |o_$91_$3| |f_$4_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) tree) |o_$91_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$91_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) tree) subTree) |o_$91_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$91_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$91_$3|) false)))
      (forall( (|o_$91_$4| ref) (|f_$4_$4| field$TNodeState$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 |o_$91_$4| |f_$4_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 |o_$91_$4| |f_$4_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) tree) |o_$91_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$91_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) tree) subTree) |o_$91_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 subTree NA) subTree) |o_$91_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$91_$4|) false)))
      (InvList $Heap@1)
      (InvTree $Heap@1)
   )
(or anon0@16_assertion anon0@17)
)) :named ax_anon0@16))
(assert (! (=> anon0@16_assertion (not (and true
   (and true
      (InvList $Heap@1)
   )
))) :named ax_anon0@16_assertion))
(assert (! (=> anon0@17 (and true 
   (and true
      (InvList $Heap@1)
   )
(or anon0@17_assertion anon0@18)
)) :named ax_anon0@17))
(assert (! (=> anon0@17_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Ln) null)
   )
))) :named ax_anon0@17_assertion))
(assert (! (=> anon0@18 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Ln) null)
   )
(or anon0@18_assertion anon0@19)
)) :named ax_anon0@18))
(assert (! (=> anon0@18_assertion (not (and true
   (and true
      (forall( (|o_$92| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$92|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$92| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree))))
   )
))) :named ax_anon0@18_assertion))
(assert (! (=> anon0@19 (and true 
   (and true
      (forall( (|o_$92| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$92|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$92| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree))))
   )
(or anon0@19_assertion anon0@20)
)) :named ax_anon0@19))
(assert (! (=> anon0@19_assertion (not (and true
   (and true
      (forall( (|o_$93| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$93|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$93| Lb) subTree)))
   )
))) :named ax_anon0@19_assertion))
(assert (! (=> anon0@20 (and true 
   (and true
      (forall( (|o_$93| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$93|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$93| Lb) subTree)))
   )
(or anon0@20_assertion anon0@21)
)) :named ax_anon0@20))
(assert (! (=> anon0@20_assertion (not (and true
   (and true
      (forall( (|o_$94| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$94|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$94| Le) tree)))
   )
))) :named ax_anon0@20_assertion))
(assert (! (=> anon0@21 (and true 
   (and true
      (forall( (|o_$94| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$94|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$94| Le) tree)))
   )
(or anon0@21_assertion anon0@22)
)) :named ax_anon0@21))
(assert (! (=> anon0@21_assertion (not (and true
   (and true
      (InvTree $Heap@1)
   )
))) :named ax_anon0@21_assertion))
(assert (! (=> anon0@22 (and true 
   (and true
      (InvTree $Heap@1)
   )
(or anon0@22_assertion anon0@23)
)) :named ax_anon0@22))
(assert (! (=> anon0@22_assertion (not (and true
   (and true
      (forall( (|o_$95| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) tree) |o_$95|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$95| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$95| Ln))))
   )
))) :named ax_anon0@22_assertion))
(assert (! (=> anon0@23 (and true 
   (and true
      (forall( (|o_$95| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) tree) |o_$95|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$95| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$95| Ln))))
   )
(or anon0@23_assertion anon0@24)
)) :named ax_anon0@23))
(assert (! (=> anon0@23_assertion (not (and true
   (and true
      (forall( (|o_$96| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$96|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$96| Np) null)))
   )
))) :named ax_anon0@23_assertion))
(assert (! (=> anon0@24 (and true 
   (and true
      (forall( (|o_$96| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$96|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$96| Np) null)))
   )
(or anon0@24_assertion anon0@25)
)) :named ax_anon0@24))
(assert (! (=> anon0@24_assertion (not (and true
   (and true
      (forall( (|o_$97| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) tree) subTree) |o_$97|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$97| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$97| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$97| Lp)))))
   )
))) :named ax_anon0@24_assertion))
(assert (! (=> anon0@25 (and true 
   (and true
      (forall( (|o_$97| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) tree) subTree) |o_$97|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$97| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$97| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$97| Lp)))))
   )
(or anon0@25_assertion anon0@26)
)) :named ax_anon0@25))
(assert (! (=> anon0@25_assertion (not (and true
   (and true
      (forall( (|o_$98| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) tree) subTree) |o_$98|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$98| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$98| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$98| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$98| Lp))))))
   )
))) :named ax_anon0@25_assertion))
(assert (! (=> anon0@26 (and true 
   (and true
      (forall( (|o_$98| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) tree) subTree) |o_$98|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$98| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$98| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$98| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$98| Lp))))))
   )
(or anon0@26_assertion anon0@27)
)) :named ax_anon0@26))
(assert (! (=> anon0@26_assertion (not (and true
   (and true
      (forall( (|o_$99| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$99|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$99| NA) Empty)))
   )
))) :named ax_anon0@26_assertion))
(assert (! (=> anon0@27 (and true 
   (and true
      (forall( (|o_$99| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$99|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$99| NA) Empty)))
   )
anon0@27_assertion
)) :named ax_anon0@27))
(assert (! (=> anon0@27_assertion (not (and true
   (and true
      (forall( (|o_$100_$0| ref) (|f_$5_$0| field$ref$))(or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$100_$0| |f_$5_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$100_$0| |f_$5_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$0|) (= |f_$5_$0| Lb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$0|) (= |f_$5_$0| Le))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$0|) (= |f_$5_$0| Lp))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$0|) (= |f_$5_$0| Ln))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) tree) |o_$100_$0|) (= |f_$5_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$100_$0|) (= |f_$5_$0| Nt))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) tree) subTree) |o_$100_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$100_$0|) false)))
      (forall( (|o_$100_$1| ref) (|f_$5_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$100_$1| |f_$5_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$100_$1| |f_$5_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$1|) (= |f_$5_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) tree) |o_$100_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$100_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) tree) subTree) |o_$100_$1|) (= |f_$5_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$1|) (= |f_$5_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$100_$1|) (= |f_$5_$1| NA))))
      (forall( (|o_$100_$2| ref) (|f_$5_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@1 |o_$100_$2| |f_$5_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$100_$2| |f_$5_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) tree) |o_$100_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$100_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) tree) subTree) |o_$100_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$100_$2|) false)))
      (forall( (|o_$100_$3| ref) (|f_$5_$3| field$Int$))(or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@1 |o_$100_$3| |f_$5_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap |o_$100_$3| |f_$5_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) tree) |o_$100_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$100_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) tree) subTree) |o_$100_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$100_$3|) false)))
      (forall( (|o_$100_$4| ref) (|f_$5_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 |o_$100_$4| |f_$5_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap |o_$100_$4| |f_$5_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) tree) |o_$100_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$100_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) tree) subTree) |o_$100_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap subTree NA) subTree) |o_$100_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 tree Lp)) |o_$100_$4|) false)))
   )
))) :named ax_anon0@27_assertion))
(assert (=> false (not (and
   anon0@1_assertion
   anon0@10_assertion
   anon0@11_assertion
   anon0@12_assertion
   anon0@13_assertion
   anon0@14_assertion
   anon0@15_assertion
   anon0@16_assertion
   anon0@17_assertion
   anon0@18_assertion
   anon0@19_assertion
   anon0@2_assertion
   anon0@20_assertion
   anon0@21_assertion
   anon0@22_assertion
   anon0@23_assertion
   anon0@24_assertion
   anon0@25_assertion
   anon0@26_assertion
   anon0@27_assertion
   anon0@3_assertion
   anon0@4_assertion
   anon0@5_assertion
   anon0@6_assertion
   anon0@7_assertion
   anon0@8_assertion
   anon0@9_assertion
   anon0_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
