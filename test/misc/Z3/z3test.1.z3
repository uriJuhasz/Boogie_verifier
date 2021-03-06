; Boogie program verifier version 2.2.30705.1126, Copyright (c) 2003-2011, Microsoft.
; Command Line Options: z3test.1.bpl /prover:z3 /proverLog:z3test.1.z3 /z3types
; Proof obligation: p
; Z3 command line: C:\Program Files (x86)\Microsoft Research\Z3-3.1\bin\z3.exe  /si /@ /cex:5 /t:0
; User supplied Z3 options:
; Prover options: 
; 
(SETPARAMETER MODEL_PARTIAL true)
(SETPARAMETER MODEL_HIDE_UNUSED_PARTITIONS false)
(SETPARAMETER MODEL_V1 true)
(SETPARAMETER ASYNC_COMMANDS false)
(SETPARAMETER AUTO_CONFIG false)
(SETPARAMETER MBQI false)
(SETPARAMETER PHASE_SELECTION 0)
(SETPARAMETER RESTART_STRATEGY 0)
(SETPARAMETER RESTART_FACTOR |1.5|)
(SETPARAMETER ARITH_RANDOM_INITIAL_VALUE true)
(SETPARAMETER CASE_SPLIT 3)
(SETPARAMETER DELAY_UNITS true)
(SETPARAMETER DELAY_UNITS_THRESHOLD 16)
(SETPARAMETER NNF_SK_HACK true)
(SETPARAMETER QI_EAGER_THRESHOLD 100)
(SETPARAMETER QI_COST |"(+ weight generation)"|)
(SETPARAMETER TYPE_CHECK true)
(SETPARAMETER BV_REFLECT true)
; -------------------------------------------------------------------------
; Boogie 2 universal background predicate for Z3 (Simplify notation with types)
; Copyright (c) 2004-2009, Microsoft Corp.

(DEFTYPE $int :BUILTIN Int)
(DEFTYPE $bool :BUILTIN bool)
(DEFTYPE U)
(DEFTYPE T)

(DEFOP <: U U $bool)         ; used for translation with type premisses
(DEFOP <:: T U U $bool)      ; used for translation with type arguments

(DEFOP tickleBool $bool $bool) ; used in triggers to exhaustively instantiate quantifiers over booleans

(BG_PUSH (AND

  ; false is not true

  (DISTINCT |@false| |@true|)

  ; we assume type correctness of the operations here
  ; a-l>=0 ==> (v ++ w:l)[a:b] = v[a-l:b-l]
  (FORALL (v lv w lw lvw a b)
    (QID bv:e:c1)
    (PATS ($bv_extract ($bv_concat v lv w lw) lvw a b))
    (IMPLIES
      (>= (- a lw) 0)
      (EQ ($bv_extract ($bv_concat v lv w lw) lvw a b) ($bv_extract v lv (- a lw) (- b lw)))))

  ; b<=l ==> (v ++ w:l)[a:b] = w[a:b]
  (FORALL (v lv w lw lvw a b)
    (QID bv:e:c2)
    (PATS ($bv_extract ($bv_concat v lv w lw) lvw a b))
    (IMPLIES
      (<= b lw)
      (EQ ($bv_extract ($bv_concat v lv w lw) lvw a b) ($bv_extract w lw a b))))

  ; v:l
  ; a>=x || b<=y ==> (v[x:l] ++ w ++ v[0:y])[a:b] = v[a:b]
  (FORALL (v lv x lxv w lw lwy y a b)
    (QID bv:e:c3)
    (PATS 
      ($bv_extract 
        ($bv_concat 
          ($bv_extract v lv x lv) lxv
	  ($bv_concat 
	    w lw
            ($bv_extract v lv 0 y) y) lwy) lv a b))
    (IMPLIES
      (AND
        (EQ lw (- x y))
        (EQ lxv (- lv x))
        (EQ lwy (+ w y))
        (OR (>= a x) (<= b y)))
      (EQ
        ($bv_extract 
          ($bv_concat 
            ($bv_extract v lv x lv) lxv
	    ($bv_concat 
	      w lw
              ($bv_extract v lv 0 y) y) lwy) lv a b)
	($bv_extract v lv a b))))

  ; a>=x ==> (v[x:l] ++ w)[a:b] = v[a:b]
  (FORALL (v lv x lxv w a b)
    (QID bv:e:c4)
    (PATS 
      ($bv_extract 
        ($bv_concat 
          ($bv_extract v lv x lv) lxv 
	  w x) 
	lv a b))
    (IMPLIES
      (AND
        (EQ lxv (- lv x))
        (>= a x))
      (EQ
        ($bv_extract 
          ($bv_concat 
            ($bv_extract v lv x lv) lxv 
	    w x) 
	  lv a b)
	($bv_extract v lv a b))))

  (FORALL (v l)
    (QID bv:e:0)
    (PATS ($bv_extract v l 0 l))
      (EQ ($bv_extract v l 0 l) v))

  (FORALL (n)
    (QID bv:pow)
    (PATS ($pow2 n))
      (IMPLIES (> n 0) (EQ ($pow2 n) (* 2 ($pow2 (- n 1))))))

  (EQ ($pow2 0) 1)

  ; 0 <= v < 2^Y ==> 0bvX ++ v[0:Y] == v
  (FORALL (v l a b)
    (QID bv:e:pow)
    (PATS ($bv_concat 0 b ($bv_extract v l 0 a) a))
    (IMPLIES
      (AND
        (<= 0 v)
        (< v ($pow2 a))
        (EQ l (+ a b)))
      (EQ ($bv_concat 0 b ($bv_extract v l 0 a) a) v)))
  
  ; X > 0 ==> 0bvX ++ v >= 0
  (FORALL (v a b)
    (QID bv:e:pos)
    (PATS ($bv_concat 0 b v a))
    (IMPLIES
      (> b 0)
      (>= ($bv_concat 0 b v a) 0)))

  ;; unsound?
;  (FORALL (lv w lw)
;    (QID bv:c:0)
;    (PATS ($bv_concat 0 lv w lw))
;    (EQ ($bv_concat 0 lv w lw) w))
  ;; matching loop
;  (FORALL (v l1 a b l2 c d)
;    (QID bv:e:e)
;    (PATS ($bv_extract ($bv_extract v l1 a b) l2 c d))
;    (EQ ($bv_extract ($bv_extract v l1 a b) l2 c d) ($bv_extract v l1 (+ c a) (+ d a))))
  

  ; Reflect plus
  (FORALL (a b) (PATS (Reflect$Add a b)) (EQ (Reflect$Add a b) (+ a b)))

  (tickleBool FALSE)
  (tickleBool TRUE)
))  ;; AND, BG_PUSH
; End Boogie universal background predicate
; -------------------------------------------------------------------------

(DEFOP Ctor T $int)
(DEFOP intType T)
(DEFOP boolType T)
(DEFOP int_2_U $int U)
(DEFOP U_2_int U $int)
(DEFOP type U T)
(DEFOP bool_2_U $bool U)
(DEFOP U_2_bool U $bool)
(BG_PUSH 
(AND (EQ (Ctor (intType)) 0) (EQ (Ctor (boolType)) 1) (FORALL (arg0 :TYPE $int) (PATS (int_2_U arg0)) (QID typeInv:U_2_int) (EQ (U_2_int (int_2_U arg0)) arg0)) (FORALL (x :TYPE U) (PATS (U_2_int x)) (QID cast:U_2_int) (IMPLIES (EQ (type x) (intType)) (EQ (int_2_U (U_2_int x)) x))) (FORALL (arg0@@0 :TYPE $int) (PATS (int_2_U arg0@@0)) (QID funType:int_2_U) (EQ (type (int_2_U arg0@@0)) (intType))) (FORALL (arg0@@1 :TYPE $bool) (PATS (bool_2_U arg0@@1)) (QID typeInv:U_2_bool) (IFF (U_2_bool (bool_2_U arg0@@1)) arg0@@1)) (FORALL (x@@0 :TYPE U) (PATS (U_2_bool x@@0)) (QID cast:U_2_bool) (IMPLIES (EQ (type x@@0) (boolType)) (EQ (bool_2_U (U_2_bool x@@0)) x@@0))) (FORALL (arg0@@2 :TYPE $bool) (PATS (bool_2_U arg0@@2)) (QID funType:bool_2_U) (EQ (type (bool_2_U arg0@@2)) (boolType))))
)
(BG_PUSH 
(AND (FORALL (x@@1 :TYPE U) (NOPATS (U_2_int x@@1) (U_2_bool x@@1)) (QID bg:subtype-refl) (<: x@@1 x@@1)) (FORALL (x@@2 :TYPE U y :TYPE U z :TYPE U) (PATS (MPAT (<: x@@2 y) (<: y z))) (QID bg:subtype-trans) (LET ((TERM alpha (type x@@2))) (IMPLIES (AND (EQ (type y) alpha) (EQ (type z) alpha) (<: x@@2 y) (<: y z)) (<: x@@2 z)))) (FORALL (x@@3 :TYPE U y@@0 :TYPE U) (PATS (MPAT (<: x@@3 y@@0) (<: y@@0 x@@3))) (QID bg:subtype-antisymm) (LET ((TERM alpha@@0 (type x@@3))) (IMPLIES (EQ (type y@@0) alpha@@0) (IMPLIES (AND (<: x@@3 y@@0) (<: y@@0 x@@3)) (EQ x@@3 y@@0))))))
)
; Initialized all axioms.
(BG_PUSH 
TRUE
)
(LET ((FORMULA anon0_correct (IMPLIES (LBLPOS |+23| TRUE) TRUE))) anon0_correct)
; Valid
