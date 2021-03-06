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
(declare-fun null () T@ref)
(declare-fun r1 () T@ref)
(declare-fun r2 () T@ref)
(declare-fun this () T@ref)
(declare-fun %lbl%+116 () Bool)
(declare-fun %lbl%@356 () Bool)
(declare-sort |T@[ref]Int| 0)
(declare-fun |Select_[ref]$int| (|T@[ref]Int| T@ref) Int)
(declare-fun heap@10 () |T@[ref]Int|)
(declare-fun %lbl%+114 () Bool)
(declare-fun heap@8 () |T@[ref]Int|)
(declare-fun %lbl%+112 () Bool)
(declare-fun heap@9 () |T@[ref]Int|)
(declare-fun |Store_[ref]$int| (|T@[ref]Int| T@ref Int) |T@[ref]Int|)
(assert (forall ( ( ?x0 |T@[ref]Int|) ( ?x1 T@ref) ( ?x2 Int)) (= (|Select_[ref]$int| (|Store_[ref]$int| ?x0 ?x1 ?x2) ?x1)  ?x2)))
(assert (forall ( ( ?x0 |T@[ref]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 Int)) (=>  (not (= ?x1 ?y1)) (= (|Select_[ref]$int| (|Store_[ref]$int| ?x0 ?x1 ?x2) ?y1) (|Select_[ref]$int| ?x0 ?y1)))))
(declare-fun %lbl%+110 () Bool)
(declare-fun heap@7 () |T@[ref]Int|)
(declare-fun %lbl%+108 () Bool)
(declare-fun heap@5 () |T@[ref]Int|)
(declare-fun %lbl%+106 () Bool)
(declare-fun heap@6 () |T@[ref]Int|)
(declare-fun %lbl%+104 () Bool)
(declare-fun heap@4 () |T@[ref]Int|)
(declare-fun %lbl%+102 () Bool)
(declare-fun heap@2 () |T@[ref]Int|)
(declare-fun %lbl%+100 () Bool)
(declare-fun heap@3 () |T@[ref]Int|)
(declare-fun %lbl%+98 () Bool)
(declare-fun heap@0 () |T@[ref]Int|)
(declare-fun heap () |T@[ref]Int|)
(declare-fun heap@1 () |T@[ref]Int|)
(declare-fun %lbl%@236 () Bool)
(declare-fun %lbl%+173 () Bool)
(assert (distinct null r1 r2 this)
)
(push 1)
(set-info :boogie-vc-id m1)
(assert (not
(let ((anon9_correct  (=> (! (and %lbl%+116 true) :lblpos +116) (! (or %lbl%@356 (= (|Select_[ref]$int| heap@10 r1) 1)) :lblneg @356))))
(let ((anon12_Else_correct  (=> (! (and %lbl%+114 true) :lblpos +114) (=> (= heap@10 heap@8) anon9_correct))))
(let ((anon12_Then_correct  (=> (! (and %lbl%+112 true) :lblpos +112) (=> (and (= heap@9 (|Store_[ref]$int| heap@8 r2 5)) (= heap@10 heap@9)) anon9_correct))))
(let ((anon6_correct  (=> (! (and %lbl%+110 true) :lblpos +110) (=> (= heap@8 (|Store_[ref]$int| heap@7 this 2)) (and anon12_Then_correct anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (! (and %lbl%+108 true) :lblpos +108) (=> (= heap@7 heap@5) anon6_correct))))
(let ((anon11_Then_correct  (=> (! (and %lbl%+106 true) :lblpos +106) (=> (and (= heap@6 (|Store_[ref]$int| heap@5 r2 4)) (= heap@7 heap@6)) anon6_correct))))
(let ((anon3_correct  (=> (! (and %lbl%+104 true) :lblpos +104) (=> (= heap@5 (|Store_[ref]$int| heap@4 this 1)) (and anon11_Then_correct anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (! (and %lbl%+102 true) :lblpos +102) (=> (= heap@4 heap@2) anon3_correct))))
(let ((anon10_Then_correct  (=> (! (and %lbl%+100 true) :lblpos +100) (=> (and (= heap@3 (|Store_[ref]$int| heap@2 r2 3)) (= heap@4 heap@3)) anon3_correct))))
(let ((anon0_correct  (=> (! (and %lbl%+98 true) :lblpos +98) (=> (and (= heap@0 (|Store_[ref]$int| heap r1 1)) (= heap@1 (|Store_[ref]$int| heap@0 r2 2))) (and (! (or %lbl%@236 (= (|Select_[ref]$int| heap@1 r1) 1)) :lblneg @236) (=> (= (|Select_[ref]$int| heap@1 r1) 1) (=> (= heap@2 (|Store_[ref]$int| heap@1 this 0)) (and anon10_Then_correct anon10_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (! (and %lbl%+173 true) :lblpos +173) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(pop 1)
; Valid
