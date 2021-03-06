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
(set-option :smt.qi.profile true)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@ref 0)
(declare-fun r0 () T@ref)
(declare-fun r1 () T@ref)
(declare-fun r2 () T@ref)
(declare-fun %lbl%+54 () Bool)
(declare-sort |T@[ref]Int| 0)
(declare-fun heap@0 () |T@[ref]Int|)
(declare-fun |Store_[ref]$int| (|T@[ref]Int| T@ref Int) |T@[ref]Int|)
(declare-fun |Select_[ref]$int| (|T@[ref]Int| T@ref) Int)
(assert (forall ( ( ?x0 |T@[ref]Int|) ( ?x1 T@ref) ( ?x2 Int)) (= (|Select_[ref]$int| (|Store_[ref]$int| ?x0 ?x1 ?x2) ?x1)  ?x2)))
(assert (forall ( ( ?x0 |T@[ref]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 Int)) (=>  (not (= ?x1 ?y1)) (= (|Select_[ref]$int| (|Store_[ref]$int| ?x0 ?x1 ?x2) ?y1) (|Select_[ref]$int| ?x0 ?y1)))))
(declare-fun heap () |T@[ref]Int|)
(declare-fun heap@1 () |T@[ref]Int|)
(declare-fun heap@2 () |T@[ref]Int|)
(declare-fun %lbl%@581 () Bool)
(declare-fun %lbl%+519 () Bool)
(assert (distinct r0 r1 r2)
)
(push 1)
(set-info :boogie-vc-id m0)
(assert (not
(let ((anon0_correct  (=> (! (and %lbl%+54 true) :lblpos +54) (=> (= heap@0 (|Store_[ref]$int| heap r0 0)) (=> (and (= heap@1 (|Store_[ref]$int| heap@0 r1 1)) (= heap@2 (|Store_[ref]$int| heap@1 r2 2))) (! (or %lbl%@581 (= (|Select_[ref]$int| heap@2 r0) 0)) :lblneg @581))))))
(let ((PreconditionGeneratedEntry_correct  (=> (! (and %lbl%+519 true) :lblpos +519) anon0_correct)))
PreconditionGeneratedEntry_correct))
))
(check-sat)
