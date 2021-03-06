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
(declare-fun %lbl%+584 () Bool)
(declare-fun %lbl%@1560 () Bool)
(declare-sort |T@[ref]Int| 0)
(declare-fun |Select_[ref]$int| (|T@[ref]Int| T@ref) Int)
(declare-fun heap@40 () |T@[ref]Int|)
(declare-fun %lbl%+582 () Bool)
(declare-fun heap@39 () |T@[ref]Int|)
(declare-fun |Store_[ref]$int| (|T@[ref]Int| T@ref Int) |T@[ref]Int|)
(assert (forall ( ( ?x0 |T@[ref]Int|) ( ?x1 T@ref) ( ?x2 Int)) (= (|Select_[ref]$int| (|Store_[ref]$int| ?x0 ?x1 ?x2) ?x1)  ?x2)))
(assert (forall ( ( ?x0 |T@[ref]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 Int)) (=>  (not (= ?x1 ?y1)) (= (|Select_[ref]$int| (|Store_[ref]$int| ?x0 ?x1 ?x2) ?y1) (|Select_[ref]$int| ?x0 ?y1)))))
(declare-fun heap@37 () |T@[ref]Int|)
(declare-fun %lbl%+580 () Bool)
(declare-fun heap@38 () |T@[ref]Int|)
(declare-fun %lbl%+578 () Bool)
(declare-fun heap@36 () |T@[ref]Int|)
(declare-fun %lbl%+576 () Bool)
(declare-fun heap@35 () |T@[ref]Int|)
(declare-fun heap@33 () |T@[ref]Int|)
(declare-fun %lbl%+574 () Bool)
(declare-fun heap@34 () |T@[ref]Int|)
(declare-fun %lbl%+570 () Bool)
(declare-fun heap@32 () |T@[ref]Int|)
(declare-fun heap@30 () |T@[ref]Int|)
(declare-fun %lbl%+568 () Bool)
(declare-fun heap@31 () |T@[ref]Int|)
(declare-fun %lbl%+566 () Bool)
(declare-fun heap@29 () |T@[ref]Int|)
(declare-fun %lbl%+564 () Bool)
(declare-fun heap@28 () |T@[ref]Int|)
(declare-fun heap@26 () |T@[ref]Int|)
(declare-fun %lbl%+562 () Bool)
(declare-fun heap@27 () |T@[ref]Int|)
(declare-fun %lbl%+560 () Bool)
(declare-fun heap@25 () |T@[ref]Int|)
(declare-fun %lbl%+558 () Bool)
(declare-fun heap@24 () |T@[ref]Int|)
(declare-fun heap@22 () |T@[ref]Int|)
(declare-fun %lbl%+556 () Bool)
(declare-fun heap@23 () |T@[ref]Int|)
(declare-fun %lbl%+554 () Bool)
(declare-fun heap@21 () |T@[ref]Int|)
(declare-fun %lbl%+552 () Bool)
(declare-fun heap@20 () |T@[ref]Int|)
(declare-fun heap@18 () |T@[ref]Int|)
(declare-fun %lbl%+550 () Bool)
(declare-fun heap@19 () |T@[ref]Int|)
(declare-fun %lbl%+548 () Bool)
(declare-fun heap@17 () |T@[ref]Int|)
(declare-fun %lbl%+546 () Bool)
(declare-fun heap@16 () |T@[ref]Int|)
(declare-fun heap@14 () |T@[ref]Int|)
(declare-fun %lbl%+544 () Bool)
(declare-fun heap@15 () |T@[ref]Int|)
(declare-fun %lbl%+540 () Bool)
(declare-fun heap@13 () |T@[ref]Int|)
(declare-fun heap@11 () |T@[ref]Int|)
(declare-fun %lbl%+538 () Bool)
(declare-fun heap@12 () |T@[ref]Int|)
(declare-fun %lbl%+536 () Bool)
(declare-fun heap@10 () |T@[ref]Int|)
(declare-fun %lbl%+534 () Bool)
(declare-fun heap@9 () |T@[ref]Int|)
(declare-fun heap@7 () |T@[ref]Int|)
(declare-fun %lbl%+532 () Bool)
(declare-fun heap@8 () |T@[ref]Int|)
(declare-fun %lbl%+530 () Bool)
(declare-fun heap@6 () |T@[ref]Int|)
(declare-fun %lbl%+528 () Bool)
(declare-fun heap@5 () |T@[ref]Int|)
(declare-fun heap@3 () |T@[ref]Int|)
(declare-fun %lbl%+526 () Bool)
(declare-fun heap@4 () |T@[ref]Int|)
(declare-fun %lbl%+524 () Bool)
(declare-fun heap@0 () |T@[ref]Int|)
(declare-fun heap () |T@[ref]Int|)
(declare-fun heap@1 () |T@[ref]Int|)
(declare-fun heap@2 () |T@[ref]Int|)
(declare-fun %lbl%+932 () Bool)
(assert (distinct r0 r1 r2)
)
(push 1)
(set-info :boogie-vc-id m10)
(assert (not
(let ((anon30_correct  (=> (! (and %lbl%+584 true) :lblpos +584) (! (or %lbl%@1560 (= (|Select_[ref]$int| heap@40 r0) 0)) :lblneg @1560))))
(let ((anon40_Else_correct  (=> (! (and %lbl%+582 true) :lblpos +582) (=> (and (= heap@39 (|Store_[ref]$int| heap@37 r2 10)) (= heap@40 heap@39)) anon30_correct))))
(let ((anon40_Then_correct  (=> (! (and %lbl%+580 true) :lblpos +580) (=> (and (= heap@38 (|Store_[ref]$int| heap@37 r1 10)) (= heap@40 heap@38)) anon30_correct))))
(let ((anon27_correct  (=> (! (and %lbl%+578 true) :lblpos +578) (=> (= heap@37 (|Store_[ref]$int| heap@36 r2 1)) (and anon40_Then_correct anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (! (and %lbl%+576 true) :lblpos +576) (=> (and (= heap@35 (|Store_[ref]$int| heap@33 r2 9)) (= heap@36 heap@35)) anon27_correct))))
(let ((anon39_Then_correct  (=> (! (and %lbl%+574 true) :lblpos +574) (=> (and (= heap@34 (|Store_[ref]$int| heap@33 r1 9)) (= heap@36 heap@34)) anon27_correct))))
(let ((anon38_Else_correct  (=> (! (and %lbl%+570 true) :lblpos +570) (=> (and (= heap@32 (|Store_[ref]$int| heap@30 r2 8)) (= heap@33 heap@32)) (and anon39_Then_correct anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (! (and %lbl%+568 true) :lblpos +568) (=> (and (= heap@31 (|Store_[ref]$int| heap@30 r1 8)) (= heap@33 heap@31)) (and anon39_Then_correct anon39_Else_correct)))))
(let ((anon21_correct  (=> (! (and %lbl%+566 true) :lblpos +566) (=> (= heap@30 (|Store_[ref]$int| heap@29 r2 1)) (and anon38_Then_correct anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (! (and %lbl%+564 true) :lblpos +564) (=> (and (= heap@28 (|Store_[ref]$int| heap@26 r2 7)) (= heap@29 heap@28)) anon21_correct))))
(let ((anon37_Then_correct  (=> (! (and %lbl%+562 true) :lblpos +562) (=> (and (= heap@27 (|Store_[ref]$int| heap@26 r1 7)) (= heap@29 heap@27)) anon21_correct))))
(let ((anon18_correct  (=> (! (and %lbl%+560 true) :lblpos +560) (=> (= heap@26 (|Store_[ref]$int| heap@25 r2 1)) (and anon37_Then_correct anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (! (and %lbl%+558 true) :lblpos +558) (=> (and (= heap@24 (|Store_[ref]$int| heap@22 r2 6)) (= heap@25 heap@24)) anon18_correct))))
(let ((anon36_Then_correct  (=> (! (and %lbl%+556 true) :lblpos +556) (=> (and (= heap@23 (|Store_[ref]$int| heap@22 r1 6)) (= heap@25 heap@23)) anon18_correct))))
(let ((anon15_correct  (=> (! (and %lbl%+554 true) :lblpos +554) (=> (= heap@22 (|Store_[ref]$int| heap@21 r1 1)) (and anon36_Then_correct anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (! (and %lbl%+552 true) :lblpos +552) (=> (and (= heap@20 (|Store_[ref]$int| heap@18 r2 5)) (= heap@21 heap@20)) anon15_correct))))
(let ((anon35_Then_correct  (=> (! (and %lbl%+550 true) :lblpos +550) (=> (and (= heap@19 (|Store_[ref]$int| heap@18 r1 5)) (= heap@21 heap@19)) anon15_correct))))
(let ((anon12_correct  (=> (! (and %lbl%+548 true) :lblpos +548) (=> (= heap@18 (|Store_[ref]$int| heap@17 r2 1)) (and anon35_Then_correct anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (! (and %lbl%+546 true) :lblpos +546) (=> (and (= heap@16 (|Store_[ref]$int| heap@14 r2 4)) (= heap@17 heap@16)) anon12_correct))))
(let ((anon34_Then_correct  (=> (! (and %lbl%+544 true) :lblpos +544) (=> (and (= heap@15 (|Store_[ref]$int| heap@14 r1 4)) (= heap@17 heap@15)) anon12_correct))))
(let ((anon33_Else_correct  (=> (! (and %lbl%+540 true) :lblpos +540) (=> (and (= heap@13 (|Store_[ref]$int| heap@11 r2 3)) (= heap@14 heap@13)) (and anon34_Then_correct anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (! (and %lbl%+538 true) :lblpos +538) (=> (and (= heap@12 (|Store_[ref]$int| heap@11 r1 3)) (= heap@14 heap@12)) (and anon34_Then_correct anon34_Else_correct)))))
(let ((anon6_correct  (=> (! (and %lbl%+536 true) :lblpos +536) (=> (= heap@11 (|Store_[ref]$int| heap@10 r2 1)) (and anon33_Then_correct anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (! (and %lbl%+534 true) :lblpos +534) (=> (and (= heap@9 (|Store_[ref]$int| heap@7 r2 2)) (= heap@10 heap@9)) anon6_correct))))
(let ((anon32_Then_correct  (=> (! (and %lbl%+532 true) :lblpos +532) (=> (and (= heap@8 (|Store_[ref]$int| heap@7 r1 2)) (= heap@10 heap@8)) anon6_correct))))
(let ((anon3_correct  (=> (! (and %lbl%+530 true) :lblpos +530) (=> (= heap@7 (|Store_[ref]$int| heap@6 r2 1)) (and anon32_Then_correct anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (! (and %lbl%+528 true) :lblpos +528) (=> (and (= heap@5 (|Store_[ref]$int| heap@3 r2 1)) (= heap@6 heap@5)) anon3_correct))))
(let ((anon31_Then_correct  (=> (! (and %lbl%+526 true) :lblpos +526) (=> (and (= heap@4 (|Store_[ref]$int| heap@3 r1 1)) (= heap@6 heap@4)) anon3_correct))))
(let ((anon0_correct  (=> (! (and %lbl%+524 true) :lblpos +524) (=> (and (and (= heap@0 (|Store_[ref]$int| heap r0 0)) (= heap@1 (|Store_[ref]$int| heap@0 r1 1))) (and (= heap@2 (|Store_[ref]$int| heap@1 r2 2)) (= heap@3 (|Store_[ref]$int| heap@2 r1 1)))) (and anon31_Then_correct anon31_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (! (and %lbl%+932 true) :lblpos +932) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
