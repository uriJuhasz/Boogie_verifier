; Boogie program verifier version 2.2.30705.1126, Copyright (c) 2003-2011, Microsoft.
; Command Line Options: z3test.bpl /proverLog:z3input.z3
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
(DEFOP FieldType T T)
(DEFOP FieldTypeInv0 T T)
(DEFOP MapType0Select U U U)
(DEFOP MapType0Type T)
(DEFOP MapType0Store U U U U)
(DEFOP read U U U)
(BG_PUSH 
(AND (EQ (Ctor (intType)) 0) (EQ (Ctor (boolType)) 1) (FORALL (arg0 :TYPE $int) (PATS (int_2_U arg0)) (QID typeInv:U_2_int) (EQ (U_2_int (int_2_U arg0)) arg0)) (FORALL (x :TYPE U) (PATS (U_2_int x)) (QID cast:U_2_int) (IMPLIES (EQ (type x) (intType)) (EQ (int_2_U (U_2_int x)) x))) (FORALL (arg0@@0 :TYPE $int) (PATS (int_2_U arg0@@0)) (QID funType:int_2_U) (EQ (type (int_2_U arg0@@0)) (intType))) (FORALL (arg0@@1 :TYPE $bool) (PATS (bool_2_U arg0@@1)) (QID typeInv:U_2_bool) (IFF (U_2_bool (bool_2_U arg0@@1)) arg0@@1)) (FORALL (x@@0 :TYPE U) (PATS (U_2_bool x@@0)) (QID cast:U_2_bool) (IMPLIES (EQ (type x@@0) (boolType)) (EQ (bool_2_U (U_2_bool x@@0)) x@@0))) (FORALL (arg0@@2 :TYPE $bool) (PATS (bool_2_U arg0@@2)) (QID funType:bool_2_U) (EQ (type (bool_2_U arg0@@2)) (boolType))) (FORALL (arg0@@3 :TYPE T) (QID ctor:FieldType) (EQ (Ctor (FieldType arg0@@3)) 2)) (FORALL (arg0@@4 :TYPE T) (PATS (FieldType arg0@@4)) (QID typeInv:FieldTypeInv0) (EQ (FieldTypeInv0 (FieldType arg0@@4)) arg0@@4)) (FORALL (arg0@@5 :TYPE U arg1 :TYPE U) (PATS (MapType0Select arg0@@5 arg1)) (QID funType:MapType0Select) (LET ((TERM a (FieldTypeInv0 (type arg1)))) (EQ (type (MapType0Select arg0@@5 arg1)) a))) (EQ (Ctor (MapType0Type)) 3) (FORALL (arg0@@6 :TYPE U arg1@@0 :TYPE U arg2 :TYPE U) (PATS (MapType0Store arg0@@6 arg1@@0 arg2)) (QID funType:MapType0Store) (EQ (type (MapType0Store arg0@@6 arg1@@0 arg2)) (MapType0Type))) (FORALL (m :TYPE U x0 :TYPE U val :TYPE U) (QID mapAx0:MapType0Select) (WEIGHT 0) (LET ((TERM a@@0 (FieldTypeInv0 (type x0)))) (IMPLIES (EQ (type val) a@@0) (EQ (MapType0Select (MapType0Store m x0 val) x0) val)))) (FORALL (val@@0 :TYPE U m@@0 :TYPE U x0@@0 :TYPE U y0 :TYPE U) (QID mapAx1:MapType0Select:0) (WEIGHT 0) (OR (EQ x0@@0 y0) (EQ (MapType0Select (MapType0Store m@@0 x0@@0 val@@0) y0) (MapType0Select m@@0 y0)))) (FORALL (val@@1 :TYPE U m@@1 :TYPE U x0@@1 :TYPE U y0@@0 :TYPE U) (QID mapAx2:MapType0Select) (WEIGHT 0) (OR TRUE (EQ (MapType0Select (MapType0Store m@@1 x0@@1 val@@1) y0@@0) (MapType0Select m@@1 y0@@0)))) (FORALL (arg0@@7 :TYPE U arg1@@1 :TYPE U) (PATS (read arg0@@7 arg1@@1)) (QID funType:read) (LET ((TERM T (FieldTypeInv0 (type arg1@@1)))) (EQ (type (read arg0@@7 arg1@@1)) T))))
)
(BG_PUSH 
(AND (FORALL (x@@1 :TYPE U) (NOPATS (U_2_int x@@1) (U_2_bool x@@1)) (QID bg:subtype-refl) (<: x@@1 x@@1)) (FORALL (x@@2 :TYPE U y :TYPE U z :TYPE U) (PATS (MPAT (<: x@@2 y) (<: y z))) (QID bg:subtype-trans) (LET ((TERM alpha (type x@@2))) (IMPLIES (AND (EQ (type y) alpha) (EQ (type z) alpha) (<: x@@2 y) (<: y z)) (<: x@@2 z)))) (FORALL (x@@3 :TYPE U y@@0 :TYPE U) (PATS (MPAT (<: x@@3 y@@0) (<: y@@0 x@@3))) (QID bg:subtype-antisymm) (LET ((TERM alpha@@0 (type x@@3))) (IMPLIES (EQ (type y@@0) alpha@@0) (IMPLIES (AND (<: x@@3 y@@0) (<: y@@0 x@@3)) (EQ x@@3 y@@0))))) (FORALL (h :TYPE U f :TYPE U) (PATS (read h f)) (QID z3testbp.7:18) (SKOLEMID 0) (LET ((TERM T@@0 (FieldTypeInv0 (type f)))) (IMPLIES (AND (EQ (type h) (MapType0Type)) (EQ (type f) (FieldType T@@0))) (EQ (read h f) (MapType0Select h f))))))
)
; Initialized all axioms.
(DEFOP heap U)
(DEFOP f1 U)
(DEFOP i@0 $int)
(BG_PUSH 
(AND (EQ (type heap) (MapType0Type)) (EQ (type f1) (FieldType (intType))))
)
(LET ((FORMULA anon0_correct (IMPLIES (LBLPOS |+88| TRUE) (IMPLIES (EQ i@0 (U_2_int (MapType0Select heap f1))) (AND (LBLNEG |@192| (> i@0 0)) (IMPLIES (> i@0 0) TRUE))))) (FORMULA PreconditionGeneratedEntry_correct (IMPLIES (LBLPOS |+138| TRUE) (IMPLIES (> (U_2_int (MapType0Select heap f1)) 0) anon0_correct)))) PreconditionGeneratedEntry_correct)
; Valid
