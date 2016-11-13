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
(declare-sort $ctype 0)
(declare-sort $field 0)
(declare-sort $kind 0)
(declare-sort $memory_t 0)
(declare-sort $ptr 0)
(declare-sort $ptrset 0)
(declare-sort $pure_function 0)
(declare-sort $state 0)
(declare-sort $status 0)
(declare-sort $statusmap_t 0)
(declare-sort $struct 0)
(declare-sort $token 0)
(declare-sort $type_state 0)
(declare-sort $typemap_t 0)
(declare-sort $version 0)
(declare-sort $vol_version 0)

;Functions
(declare-fun $@bf_39 ( ) Bool)
(declare-fun $@bf_40 ( ) Bool)
(declare-fun $@bf_41 ( ) Bool)
(declare-fun $@bf_42 ( ) Bool)
(declare-fun $@distTp1 ( ) $ctype)
(declare-fun $@distTp2 ( ) $ctype)
(declare-fun $@distTp3 ( ) $ctype)
(declare-fun $@file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cexamples?5CLockFreeIncr.c ( ) $token)
(declare-fun $_pow2 ( Int ) Int)
(declare-fun $arch_ptr_size ( ) Int)
(declare-fun $arch_spec_ptr_start ( ) Int)
(declare-fun $array ( $ctype Int ) $ctype)
(declare-fun $current_timestamp ( $state ) Int)
(declare-fun $dot ( $ptr $field ) $ptr)
(declare-fun $emb ( $state $ptr ) $ptr)
(declare-fun $extent ( $state $ptr ) $ptrset)
(declare-fun $field_parent_type ( $field ) $ctype)
(declare-fun $full_extent ( $ptr ) $ptrset)
(declare-fun $ghost_emb ( Int ) $ptr)
(declare-fun $ghost_path ( Int ) $field)
(declare-fun $ghost_ref ( $ptr $field ) Int)
(declare-fun $kind_of ( $ctype ) $kind)
(declare-fun $kind_primitive ( ) $kind)
(declare-fun $kind_thread ( ) $kind)
(declare-fun $map_t ( $ctype $ctype ) $ctype)
(declare-fun $max.i1 ( ) Int)
(declare-fun $max.i2 ( ) Int)
(declare-fun $max.i4 ( ) Int)
(declare-fun $max.i8 ( ) Int)
(declare-fun $max.u1 ( ) Int)
(declare-fun $max.u2 ( ) Int)
(declare-fun $max.u4 ( ) Int)
(declare-fun $max.u8 ( ) Int)
(declare-fun $me ( ) $ptr)
(declare-fun $mem ( $state $ptr ) Int)
(declare-fun $memory ( $state ) $memory_t)
(declare-fun $memory_allocator_type ( ) $ctype)
(declare-fun $min.i1 ( ) Int)
(declare-fun $min.i2 ( ) Int)
(declare-fun $min.i4 ( ) Int)
(declare-fun $min.i8 ( ) Int)
(declare-fun $no_claim ( ) $ptr)
(declare-fun $null ( ) $ptr)
(declare-fun $owner ( $state $ptr ) $ptr)
(declare-fun $owns ( $state $ptr ) $ptrset)
(declare-fun $owns_set_field ( $ctype ) $field)
(declare-fun $ptr ( $ctype Int ) $ptr)
(declare-fun $ptr_level ( $ctype ) Int)
(declare-fun $ptr_to ( $ctype ) $ctype)
(declare-fun $ptr_to_i1 ( $ptr ) Int)
(declare-fun $ptr_to_i2 ( $ptr ) Int)
(declare-fun $ptr_to_i4 ( $ptr ) Int)
(declare-fun $ptr_to_i8 ( $ptr ) Int)
(declare-fun $ptr_to_u1 ( $ptr ) Int)
(declare-fun $ptr_to_u2 ( $ptr ) Int)
(declare-fun $ptr_to_u4 ( $ptr ) Int)
(declare-fun $ptr_to_u8 ( $ptr ) Int)
(declare-fun $read_version ( $state $ptr ) $version)
(declare-fun $read_vol_version ( $state $ptr ) $vol_version)
(declare-fun $ref ( $ptr ) Int)
(declare-fun $ref_cnt ( $state $ptr ) Int)
(declare-fun $s ( ) $state)
(declare-fun $s_$_0 ( ) $state)
(declare-fun $s_$_2 ( ) $state)
(declare-fun $select.mem ( $memory_t $ptr ) Int)
(declare-fun $select.sm ( $statusmap_t $ptr ) $status)
(declare-fun $select.tm ( $typemap_t $ptr ) $type_state)
(declare-fun $set_empty ( ) $ptrset)
(declare-fun $sizeof ( $ctype ) Int)
(declare-fun $st ( $state $ptr ) $status)
(declare-fun $st_owner ( $status ) $ptr)
(declare-fun $statusmap ( $state ) $statusmap_t)
(declare-fun $struct_zero ( ) $struct)
(declare-fun $timestamp ( $state $ptr ) Int)
(declare-fun $ts ( $state $ptr ) $type_state)
(declare-fun $ts_active_option ( $type_state ) $field)
(declare-fun $ts_emb ( $type_state ) $ptr)
(declare-fun $ts_path ( $type_state ) $field)
(declare-fun $typ ( $ptr ) $ctype)
(declare-fun $typemap ( $state ) $typemap_t)
(declare-fun $unchecked ( $ctype Int ) Int)
(declare-fun $vs_state ( $struct ) $state)
(declare-fun ^$@ptrset ( ) $ctype)
(declare-fun ^$@thread_id ( ) $ctype)
(declare-fun ^^bool ( ) $ctype)
(declare-fun ^^claim ( ) $ctype)
(declare-fun ^^i4 ( ) $ctype)
(declare-fun ^^root_emb ( ) $ctype)
(declare-fun ^^u4 ( ) $ctype)
(declare-fun ^^u8 ( ) $ctype)
(declare-fun ^^void ( ) $ctype)
(declare-fun ^A ( ) $ctype)
(declare-fun A.$owns ( ) $field)
(declare-fun A.x ( ) $field)
(declare-fun call0formal_$_@l_$_0 ( ) $ptr)
(declare-fun cf@classifier@default ( ) $pure_function)
(declare-fun P@_this_ ( ) Int)

;Predicates
(declare-fun $call_transition ( $state $state ) Bool)
(declare-fun $closed ( $state $ptr ) Bool)
(declare-fun $dont_instantiate ( $ptr ) Bool)
(declare-fun $extent_hint ( $ptr $ptr ) Bool)
(declare-fun $extent_mutable ( $state $ptr ) Bool)
(declare-fun $extent_zero ( $state $ptr ) Bool)
(declare-fun $file_name_is ( Int $token ) Bool)
(declare-fun $full_stop ( $state ) Bool)
(declare-fun $function_arg_type ( $pure_function Int $ctype ) Bool)
(declare-fun $good_for_admissibility ( $state ) Bool)
(declare-fun $good_for_pre_can_unwrap ( $state ) Bool)
(declare-fun $good_state ( $state ) Bool)
(declare-fun $good_state_ext ( $token $state ) Bool)
(declare-fun $has_volatile_owns_set ( $ctype ) Bool)
(declare-fun $in_range_spec_ptr ( Int ) Bool)
(declare-fun $in_range_t ( $ctype Int ) Bool)
(declare-fun $inv ( $state $ptr $ctype ) Bool)
(declare-fun $inv2 ( $state $state $ptr $ctype ) Bool)
(declare-fun $inv2_when_closed ( $state $state $ptr $ctype ) Bool)
(declare-fun $inv2nt ( $state $state $ptr ) Bool)
(declare-fun $is ( $ptr $ctype ) Bool)
(declare-fun $is_base_field ( $field ) Bool)
(declare-fun $is_claimable ( $ctype ) Bool)
(declare-fun $is_composite ( $ctype ) Bool)
(declare-fun $is_math_type ( $ctype ) Bool)
(declare-fun $is_non_primitive ( $ctype ) Bool)
(declare-fun $is_primitive ( $ctype ) Bool)
(declare-fun $is_primitive_ch ( $ctype ) Bool)
(declare-fun $is_primitive_non_volatile_field ( $field ) Bool)
(declare-fun $is_primitive_volatile_field ( $field ) Bool)
(declare-fun $is_stuttering_check ( ) Bool)
(declare-fun $is_threadtype ( $ctype ) Bool)
(declare-fun $is_unwrap_check ( ) Bool)
(declare-fun $mem_eq ( $state $state $ptr ) Bool)
(declare-fun $mutable ( $state $ptr ) Bool)
(declare-fun $nested_in ( $state $ptr $ptr ) Bool)
(declare-fun $nonvolatile_spans_the_same ( $state $state $ptr $ctype ) Bool)
(declare-fun $position_marker ( ) Bool)
(declare-fun $seclbl.bot ( ) Bool)
(declare-fun $seclbl.top ( ) Bool)
(declare-fun $set_eq ( $ptrset $ptrset ) Bool)
(declare-fun $set_in ( $ptr $ptrset ) Bool)
(declare-fun $spans_the_same ( $state $state $ptr $ctype ) Bool)
(declare-fun $st_closed ( $status ) Bool)
(declare-fun $state_spans_the_same ( $state $state $ptr $ctype ) Bool)
(declare-fun $thread_local ( $state $ptr ) Bool)
(declare-fun $timestamp_is_now ( $state $ptr ) Bool)
(declare-fun $ts_is_volatile ( $type_state ) Bool)
(declare-fun $ts_typed ( $type_state ) Bool)
(declare-fun $typed ( $state $ptr ) Bool)
(declare-fun $typed2 ( $state $ptr $ctype ) Bool)
(declare-fun $wrapped ( $state $ptr $ctype ) Bool)

;Axioms
   (assert (! (not (= $@distTp1 $memory_allocator_type)) :named ax_0))
   (assert (! (not (= $@distTp2 $@distTp1)) :named ax_1))
   (assert (! (not (= $@distTp2 $@distTp1)) :named ax_2))
   (assert (! (not (= $@distTp2 $memory_allocator_type)) :named ax_3))
   (assert (! (not (= $@distTp3 $@distTp1)) :named ax_4))
   (assert (! (not (= $@distTp3 $@distTp1)) :named ax_5))
   (assert (! (not (= $@distTp3 $@distTp2)) :named ax_6))
   (assert (! (not (= $@distTp3 $@distTp2)) :named ax_7))
   (assert (! (not (= $@distTp3 $memory_allocator_type)) :named ax_8))
   (assert (! (not (= $kind_primitive $kind_thread)) :named ax_9))
   (assert (! (not (= $kind_thread $kind_primitive)) :named ax_10))
   (assert (! (not (= $memory_allocator_type $@distTp1)) :named ax_11))
   (assert (! (not (= $memory_allocator_type $@distTp2)) :named ax_12))
   (assert (! (not (= $memory_allocator_type $@distTp3)) :named ax_13))
   (assert (! (not (= $memory_allocator_type ^$@thread_id)) :named ax_14))
   (assert (! (not (= $memory_allocator_type ^A)) :named ax_15))
   (assert (! (not (= ^$@ptrset $@distTp1)) :named ax_16))
   (assert (! (not (= ^$@ptrset $@distTp1)) :named ax_17))
   (assert (! (not (= ^$@ptrset $@distTp2)) :named ax_18))
   (assert (! (not (= ^$@ptrset $@distTp2)) :named ax_19))
   (assert (! (not (= ^$@ptrset $@distTp3)) :named ax_20))
   (assert (! (not (= ^$@ptrset $@distTp3)) :named ax_21))
   (assert (! (not (= ^$@ptrset $memory_allocator_type)) :named ax_22))
   (assert (! (not (= ^$@ptrset $memory_allocator_type)) :named ax_23))
   (assert (! (not (= ^$@ptrset ^$@thread_id)) :named ax_24))
   (assert (! (not (= ^$@ptrset ^A)) :named ax_25))
   (assert (! (not (= ^$@thread_id $@distTp1)) :named ax_26))
   (assert (! (not (= ^$@thread_id $@distTp1)) :named ax_27))
   (assert (! (not (= ^$@thread_id $@distTp2)) :named ax_28))
   (assert (! (not (= ^$@thread_id $@distTp2)) :named ax_29))
   (assert (! (not (= ^$@thread_id $@distTp3)) :named ax_30))
   (assert (! (not (= ^$@thread_id $@distTp3)) :named ax_31))
   (assert (! (not (= ^$@thread_id $memory_allocator_type)) :named ax_32))
   (assert (! (not (= ^$@thread_id ^$@ptrset)) :named ax_33))
   (assert (! (not (= ^$@thread_id ^A)) :named ax_34))
   (assert (! (not (= ^^bool $@distTp1)) :named ax_35))
   (assert (! (not (= ^^bool $@distTp1)) :named ax_36))
   (assert (! (not (= ^^bool $@distTp2)) :named ax_37))
   (assert (! (not (= ^^bool $@distTp2)) :named ax_38))
   (assert (! (not (= ^^bool $@distTp3)) :named ax_39))
   (assert (! (not (= ^^bool $@distTp3)) :named ax_40))
   (assert (! (not (= ^^bool $memory_allocator_type)) :named ax_41))
   (assert (! (not (= ^^bool $memory_allocator_type)) :named ax_42))
   (assert (! (not (= ^^bool ^$@ptrset)) :named ax_43))
   (assert (! (not (= ^^bool ^$@ptrset)) :named ax_44))
   (assert (! (not (= ^^bool ^$@thread_id)) :named ax_45))
   (assert (! (not (= ^^bool ^$@thread_id)) :named ax_46))
   (assert (! (not (= ^^bool ^^claim)) :named ax_47))
   (assert (! (not (= ^^bool ^^root_emb)) :named ax_48))
   (assert (! (not (= ^^bool ^A)) :named ax_49))
   (assert (! (not (= ^^claim $@distTp1)) :named ax_50))
   (assert (! (not (= ^^claim $@distTp1)) :named ax_51))
   (assert (! (not (= ^^claim $@distTp2)) :named ax_52))
   (assert (! (not (= ^^claim $@distTp2)) :named ax_53))
   (assert (! (not (= ^^claim $@distTp3)) :named ax_54))
   (assert (! (not (= ^^claim $@distTp3)) :named ax_55))
   (assert (! (not (= ^^claim $memory_allocator_type)) :named ax_56))
   (assert (! (not (= ^^claim $memory_allocator_type)) :named ax_57))
   (assert (! (not (= ^^claim ^$@ptrset)) :named ax_58))
   (assert (! (not (= ^^claim ^$@ptrset)) :named ax_59))
   (assert (! (not (= ^^claim ^$@thread_id)) :named ax_60))
   (assert (! (not (= ^^claim ^$@thread_id)) :named ax_61))
   (assert (! (not (= ^^claim ^^bool)) :named ax_62))
   (assert (! (not (= ^^claim ^^root_emb)) :named ax_63))
   (assert (! (not (= ^^claim ^A)) :named ax_64))
   (assert (! (not (= ^^i4 $@distTp1)) :named ax_65))
   (assert (! (not (= ^^i4 $@distTp1)) :named ax_66))
   (assert (! (not (= ^^i4 $@distTp2)) :named ax_67))
   (assert (! (not (= ^^i4 $@distTp2)) :named ax_68))
   (assert (! (not (= ^^i4 $@distTp3)) :named ax_69))
   (assert (! (not (= ^^i4 $@distTp3)) :named ax_70))
   (assert (! (not (= ^^i4 $memory_allocator_type)) :named ax_71))
   (assert (! (not (= ^^i4 $memory_allocator_type)) :named ax_72))
   (assert (! (not (= ^^i4 ^$@ptrset)) :named ax_73))
   (assert (! (not (= ^^i4 ^$@ptrset)) :named ax_74))
   (assert (! (not (= ^^i4 ^$@thread_id)) :named ax_75))
   (assert (! (not (= ^^i4 ^$@thread_id)) :named ax_76))
   (assert (! (not (= ^^i4 ^^bool)) :named ax_77))
   (assert (! (not (= ^^i4 ^^bool)) :named ax_78))
   (assert (! (not (= ^^i4 ^^claim)) :named ax_79))
   (assert (! (not (= ^^i4 ^^claim)) :named ax_80))
   (assert (! (not (= ^^i4 ^^root_emb)) :named ax_81))
   (assert (! (not (= ^^i4 ^^u4)) :named ax_82))
   (assert (! (not (= ^^i4 ^^u8)) :named ax_83))
   (assert (! (not (= ^^i4 ^^void)) :named ax_84))
   (assert (! (not (= ^^i4 ^A)) :named ax_85))
   (assert (! (not (= ^^root_emb $@distTp1)) :named ax_86))
   (assert (! (not (= ^^root_emb $@distTp1)) :named ax_87))
   (assert (! (not (= ^^root_emb $@distTp2)) :named ax_88))
   (assert (! (not (= ^^root_emb $@distTp2)) :named ax_89))
   (assert (! (not (= ^^root_emb $@distTp3)) :named ax_90))
   (assert (! (not (= ^^root_emb $@distTp3)) :named ax_91))
   (assert (! (not (= ^^root_emb $memory_allocator_type)) :named ax_92))
   (assert (! (not (= ^^root_emb $memory_allocator_type)) :named ax_93))
   (assert (! (not (= ^^root_emb ^$@ptrset)) :named ax_94))
   (assert (! (not (= ^^root_emb ^$@ptrset)) :named ax_95))
   (assert (! (not (= ^^root_emb ^$@thread_id)) :named ax_96))
   (assert (! (not (= ^^root_emb ^$@thread_id)) :named ax_97))
   (assert (! (not (= ^^root_emb ^^bool)) :named ax_98))
   (assert (! (not (= ^^root_emb ^^claim)) :named ax_99))
   (assert (! (not (= ^^root_emb ^^i4)) :named ax_100))
   (assert (! (not (= ^^root_emb ^A)) :named ax_101))
   (assert (! (not (= ^^u4 $@distTp1)) :named ax_102))
   (assert (! (not (= ^^u4 $@distTp1)) :named ax_103))
   (assert (! (not (= ^^u4 $@distTp2)) :named ax_104))
   (assert (! (not (= ^^u4 $@distTp2)) :named ax_105))
   (assert (! (not (= ^^u4 $@distTp3)) :named ax_106))
   (assert (! (not (= ^^u4 $@distTp3)) :named ax_107))
   (assert (! (not (= ^^u4 $memory_allocator_type)) :named ax_108))
   (assert (! (not (= ^^u4 $memory_allocator_type)) :named ax_109))
   (assert (! (not (= ^^u4 ^$@ptrset)) :named ax_110))
   (assert (! (not (= ^^u4 ^$@ptrset)) :named ax_111))
   (assert (! (not (= ^^u4 ^$@thread_id)) :named ax_112))
   (assert (! (not (= ^^u4 ^$@thread_id)) :named ax_113))
   (assert (! (not (= ^^u4 ^^bool)) :named ax_114))
   (assert (! (not (= ^^u4 ^^bool)) :named ax_115))
   (assert (! (not (= ^^u4 ^^claim)) :named ax_116))
   (assert (! (not (= ^^u4 ^^claim)) :named ax_117))
   (assert (! (not (= ^^u4 ^^i4)) :named ax_118))
   (assert (! (not (= ^^u4 ^^root_emb)) :named ax_119))
   (assert (! (not (= ^^u4 ^^root_emb)) :named ax_120))
   (assert (! (not (= ^^u4 ^^u8)) :named ax_121))
   (assert (! (not (= ^^u4 ^^void)) :named ax_122))
   (assert (! (not (= ^^u4 ^A)) :named ax_123))
   (assert (! (not (= ^^u8 $@distTp1)) :named ax_124))
   (assert (! (not (= ^^u8 $@distTp1)) :named ax_125))
   (assert (! (not (= ^^u8 $@distTp2)) :named ax_126))
   (assert (! (not (= ^^u8 $@distTp2)) :named ax_127))
   (assert (! (not (= ^^u8 $@distTp3)) :named ax_128))
   (assert (! (not (= ^^u8 $@distTp3)) :named ax_129))
   (assert (! (not (= ^^u8 $memory_allocator_type)) :named ax_130))
   (assert (! (not (= ^^u8 $memory_allocator_type)) :named ax_131))
   (assert (! (not (= ^^u8 ^$@ptrset)) :named ax_132))
   (assert (! (not (= ^^u8 ^$@ptrset)) :named ax_133))
   (assert (! (not (= ^^u8 ^$@thread_id)) :named ax_134))
   (assert (! (not (= ^^u8 ^$@thread_id)) :named ax_135))
   (assert (! (not (= ^^u8 ^^bool)) :named ax_136))
   (assert (! (not (= ^^u8 ^^bool)) :named ax_137))
   (assert (! (not (= ^^u8 ^^claim)) :named ax_138))
   (assert (! (not (= ^^u8 ^^claim)) :named ax_139))
   (assert (! (not (= ^^u8 ^^i4)) :named ax_140))
   (assert (! (not (= ^^u8 ^^root_emb)) :named ax_141))
   (assert (! (not (= ^^u8 ^^root_emb)) :named ax_142))
   (assert (! (not (= ^^u8 ^^u4)) :named ax_143))
   (assert (! (not (= ^^u8 ^^void)) :named ax_144))
   (assert (! (not (= ^^u8 ^A)) :named ax_145))
   (assert (! (not (= ^^void $@distTp1)) :named ax_146))
   (assert (! (not (= ^^void $@distTp1)) :named ax_147))
   (assert (! (not (= ^^void $@distTp2)) :named ax_148))
   (assert (! (not (= ^^void $@distTp2)) :named ax_149))
   (assert (! (not (= ^^void $@distTp3)) :named ax_150))
   (assert (! (not (= ^^void $@distTp3)) :named ax_151))
   (assert (! (not (= ^^void $memory_allocator_type)) :named ax_152))
   (assert (! (not (= ^^void $memory_allocator_type)) :named ax_153))
   (assert (! (not (= ^^void ^$@ptrset)) :named ax_154))
   (assert (! (not (= ^^void ^$@ptrset)) :named ax_155))
   (assert (! (not (= ^^void ^$@thread_id)) :named ax_156))
   (assert (! (not (= ^^void ^$@thread_id)) :named ax_157))
   (assert (! (not (= ^^void ^^bool)) :named ax_158))
   (assert (! (not (= ^^void ^^bool)) :named ax_159))
   (assert (! (not (= ^^void ^^claim)) :named ax_160))
   (assert (! (not (= ^^void ^^claim)) :named ax_161))
   (assert (! (not (= ^^void ^^i4)) :named ax_162))
   (assert (! (not (= ^^void ^^root_emb)) :named ax_163))
   (assert (! (not (= ^^void ^^root_emb)) :named ax_164))
   (assert (! (not (= ^^void ^^u4)) :named ax_165))
   (assert (! (not (= ^^void ^^u8)) :named ax_166))
   (assert (! (not (= ^^void ^A)) :named ax_167))
   (assert (! (not (= ^A $@distTp1)) :named ax_168))
   (assert (! (not (= ^A $@distTp1)) :named ax_169))
   (assert (! (not (= ^A $@distTp2)) :named ax_170))
   (assert (! (not (= ^A $@distTp2)) :named ax_171))
   (assert (! (not (= ^A $@distTp3)) :named ax_172))
   (assert (! (not (= ^A $@distTp3)) :named ax_173))
   (assert (! (not (= ^A $memory_allocator_type)) :named ax_174))
   (assert (! (not (= ^A ^$@ptrset)) :named ax_175))
   (assert (! (not (= ^A ^$@thread_id)) :named ax_176))
   (assert (! (not (= ^A ^^bool)) :named ax_177))
   (assert (! (not (= ^A ^^claim)) :named ax_178))
   (assert (! (not (= ^A ^^i4)) :named ax_179))
   (assert (! (not (= ^A ^^root_emb)) :named ax_180))
   (assert (! (not (= ^A ^^u4)) :named ax_181))
   (assert (! (not (= ^A ^^u8)) :named ax_182))
   (assert (! (not (= ^A ^^void)) :named ax_183))
   (assert (! (not (= A.$owns A.x)) :named ax_184))
   (assert (! (not (= A.x A.$owns)) :named ax_185))

;Program
(assert (not
(let ((L3_assertion (and
    (=> $is_unwrap_check ($set_eq ($owns $s_$_2 ($ptr ^A P@_this_)) $set_empty))
)))
(let ((L3 (=> (and true
    $is_unwrap_check
    ($closed $s ($ptr ^A P@_this_))
    ($good_for_pre_can_unwrap $s)
    ($inv2 $s $s ($ptr ^A P@_this_) ($typ ($ptr ^A P@_this_)))
    ($is_non_primitive ($typ ($ptr ^A P@_this_)))
    ($spans_the_same $s $s_$_0 call0formal_$_@l_$_0 ($typ call0formal_$_@l_$_0))
    ($typed2 $s ($ptr ^A P@_this_) ($typ ($ptr ^A P@_this_)))
    (= $s_$_2 $s_$_0)
    (= ($owner $s ($ptr ^A P@_this_)) $me)
    (= call0formal_$_@l_$_0 ($ptr ^A P@_this_))
    (forall( (|#q_$1_$3| $ptr))(!(=> ($closed $s |#q_$1_$3|) ($inv2 $s $s |#q_$1_$3| ($typ |#q_$1_$3|)))  :pattern ( ($select.sm ($statusmap $s) |#q_$1_$3|))))
    (not $is_stuttering_check)
    (not (= ($kind_of ($typ ($ptr ^A P@_this_))) $kind_primitive))
    (or (not ($is_claimable ($typ ($ptr ^A P@_this_)))) (= ($ref_cnt $s ($ptr ^A P@_this_)) 0))
  )
    L3_assertion
)))
(let ((anon0 (=> (and true
    $position_marker
    ($file_name_is 1 $@file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cexamples?5CLockFreeIncr.c)
    ($function_arg_type cf@classifier@default 0 ($map_t ($ptr_to ^^void) ^^bool))
    ($good_state ($vs_state $struct_zero))
    ($has_volatile_owns_set ^^claim)
    ($is_base_field A.$owns)
    ($is_base_field A.x)
    ($is_claimable ^^claim)
    ($is_composite ^A)
    ($is_math_type ^$@thread_id)
    ($is_primitive_non_volatile_field A.$owns)
    ($is_primitive_volatile_field A.x)
    (= $@distTp1 ($ptr_to ^A))
    (= $@distTp3 ($ptr_to ^^i4))
    (= $arch_ptr_size 8)
    (= $arch_spec_ptr_start $max.u8)
    (= $max.i1 127)
    (= $max.i2 32767)
    (= $max.i4 (- (* 65536 32768) 1))
    (= $max.i8 (- (* (* (* 65536 65536) 65536) 32768) 1))
    (= $max.u1 255)
    (= $max.u2 65535)
    (= $max.u4 (- (* 65536 65536) 1))
    (= $max.u8 (- (* (* (* 65536 65536) 65536) 65536) 1))
    (= $min.i1 (- 0 128))
    (= $min.i2 (- 0 32768))
    (= $min.i4 (- 0 (* 65536 32768)))
    (= $min.i8 (- 0 (* (* (* 65536 65536) 65536) 32768)))
    (= $no_claim ($ptr ^^claim 0))
    (= $null ($ptr ^^void 0))
    (= $seclbl.bot false)
    (= $seclbl.top true)
    (= ($_pow2 0) 1)
    (= ($_pow2 1) 2)
    (= ($_pow2 10) 1024)
    (= ($_pow2 11) 2048)
    (= ($_pow2 12) 4096)
    (= ($_pow2 13) 8192)
    (= ($_pow2 14) 16384)
    (= ($_pow2 15) 32768)
    (= ($_pow2 16) 65536)
    (= ($_pow2 17) 131072)
    (= ($_pow2 18) 262144)
    (= ($_pow2 19) 524288)
    (= ($_pow2 2) 4)
    (= ($_pow2 20) 1048576)
    (= ($_pow2 21) 2097152)
    (= ($_pow2 22) 4194304)
    (= ($_pow2 23) 8388608)
    (= ($_pow2 24) 16777216)
    (= ($_pow2 25) 33554432)
    (= ($_pow2 26) 67108864)
    (= ($_pow2 27) 134217728)
    (= ($_pow2 28) 268435456)
    (= ($_pow2 29) 536870912)
    (= ($_pow2 3) 8)
    (= ($_pow2 30) 1073741824)
    (= ($_pow2 31) 2147483648)
    (= ($_pow2 32) 4294967296)
    (= ($_pow2 33) 8589934592)
    (= ($_pow2 34) 17179869184)
    (= ($_pow2 35) 34359738368)
    (= ($_pow2 36) 68719476736)
    (= ($_pow2 37) 137438953472)
    (= ($_pow2 38) 274877906944)
    (= ($_pow2 39) 549755813888)
    (= ($_pow2 4) 16)
    (= ($_pow2 40) 1099511627776)
    (= ($_pow2 41) 2199023255552)
    (= ($_pow2 42) 4398046511104)
    (= ($_pow2 43) 8796093022208)
    (= ($_pow2 44) 17592186044416)
    (= ($_pow2 45) 35184372088832)
    (= ($_pow2 46) 70368744177664)
    (= ($_pow2 47) 140737488355328)
    (= ($_pow2 48) 281474976710656)
    (= ($_pow2 49) 562949953421312)
    (= ($_pow2 5) 32)
    (= ($_pow2 50) 1125899906842624)
    (= ($_pow2 51) 2251799813685248)
    (= ($_pow2 52) 4503599627370496)
    (= ($_pow2 53) 9007199254740992)
    (= ($_pow2 54) 18014398509481984)
    (= ($_pow2 55) 36028797018963968)
    (= ($_pow2 56) 72057594037927936)
    (= ($_pow2 57) 144115188075855872)
    (= ($_pow2 58) 288230376151711744)
    (= ($_pow2 59) 576460752303423488)
    (= ($_pow2 6) 64)
    (= ($_pow2 60) 1152921504606846976)
    (= ($_pow2 61) 2305843009213693952)
    (= ($_pow2 62) 4611686018427387904)
    (= ($_pow2 63) 9223372036854775808)
    (= ($_pow2 7) 128)
    (= ($_pow2 8) 256)
    (= ($_pow2 9) 512)
    (= ($field_parent_type A.$owns) ^A)
    (= ($field_parent_type A.x) ^A)
    (= ($has_volatile_owns_set ^A) false)
    (= ($is_claimable ^A) false)
    (= ($owns_set_field ^A) A.$owns)
    (= ($ptr_level $memory_allocator_type) 0)
    (= ($ptr_level ^A) 0)
    (= ($ptr_to_i1 $null) 0)
    (= ($ptr_to_i2 $null) 0)
    (= ($ptr_to_i4 $null) 0)
    (= ($ptr_to_i8 $null) 0)
    (= ($ptr_to_u1 $null) 0)
    (= ($ptr_to_u2 $null) 0)
    (= ($ptr_to_u4 $null) 0)
    (= ($ptr_to_u8 $null) 0)
    (= ($sizeof ^A) 4)
    (= ($unchecked ^^u4 (- 0 1)) $max.u4)
    (= ($unchecked ^^u4 (+ $max.u4 1)) 0)
    (= ($unchecked ^^u8 (- 0 1)) $max.u8)
    (= ($unchecked ^^u8 (+ $max.u8 1)) 0)
    (= (and (not $is_stuttering_check) (not $is_unwrap_check)) (and (not $is_stuttering_check) (not $is_unwrap_check)))
    (forall( (|#a_$3| $ptrset) (|#b_$5| $ptrset))(!(=> (forall( (|#o_$7| $ptr))(!(= ($set_in |#o_$7| |#a_$3|) ($set_in |#o_$7| |#b_$5|))  :weight  0 :pattern ( ($dont_instantiate |#o_$7|)))) ($set_eq |#a_$3| |#b_$5|))  :weight  0 :pattern ( ($set_eq |#a_$3| |#b_$5|))))
    (forall( (|#p_$20| $ptr) (|#t_$8| $ctype))(!(=> ($is |#p_$20| |#t_$8|) (= |#p_$20| ($ptr |#t_$8| ($ref |#p_$20|))))  :pattern ( ($is |#p_$20| |#t_$8|))))
    (forall( (|#p_$21| $ptr) (|t_$20| $ctype))(!(= ($dot |#p_$21| ($owns_set_field |t_$20|)) ($ptr ^$@ptrset ($ghost_ref |#p_$21| ($owns_set_field |t_$20|))))  :pattern ( ($dot |#p_$21| ($owns_set_field |t_$20|)))))
    (forall( (|#p_$34| $ptr) (|#s1_$12| $state) (|#s2_$10| $state))(!(= ($state_spans_the_same |#s1_$12| |#s2_$10| |#p_$34| ^A) (and (= ($select.mem ($memory |#s1_$12|) ($dot |#p_$34| A.$owns)) ($select.mem ($memory |#s2_$10|) ($dot |#p_$34| A.$owns))) (= ($select.mem ($memory |#s1_$12|) ($dot |#p_$34| A.x)) ($select.mem ($memory |#s2_$10|) ($dot |#p_$34| A.x)))))  :pattern ( ($state_spans_the_same |#s1_$12| |#s2_$10| |#p_$34| ^A))))
    (forall( (|#s1_$11| $state) (|#s2_$8| $state) (|#p_$33| $ptr))(!(= ($inv2 |#s1_$11| |#s2_$8| |#p_$33| ^A) (and (and ($typed |#s2_$8| |#p_$33|) ($set_eq ($owns |#s2_$8| |#p_$33|) $set_empty)) (or (= ($select.mem ($memory |#s1_$11|) ($dot |#p_$33| A.x)) ($select.mem ($memory |#s2_$8|) ($dot |#p_$33| A.x))) (= (+ ($select.mem ($memory |#s1_$11|) ($dot |#p_$33| A.x)) 1) ($select.mem ($memory |#s2_$8|) ($dot |#p_$33| A.x))))))  :pattern ( ($inv2 |#s1_$11| |#s2_$8| |#p_$33| ^A))))
    (forall( (|#s1_$8| $state) (|#s2_$5| $state) (|#p_$27| $ptr) (|#t_$11| $ctype))(!(= ($spans_the_same |#s1_$8| |#s2_$5| |#p_$27| |#t_$11|) (and (and (and (= ($read_version |#s1_$8| |#p_$27|) ($read_version |#s2_$5| |#p_$27|)) (= ($owns |#s1_$8| |#p_$27|) ($owns |#s2_$5| |#p_$27|))) (= ($select.tm ($typemap |#s1_$8|) |#p_$27|) ($select.tm ($typemap |#s2_$5|) |#p_$27|))) ($state_spans_the_same |#s1_$8| |#s2_$5| |#p_$27| |#t_$11|)))  :weight  0 :pattern ( ($spans_the_same |#s1_$8| |#s2_$5| |#p_$27| |#t_$11|))))
    (forall( (|#t_$5| $ctype) (|#b| Int))(!(= ($typ ($ptr |#t_$5| |#b|)) |#t_$5|)  :weight  0))
    (forall( (|#t_$6| $ctype) (|#b_$0| Int))(!(= ($ref ($ptr |#t_$6| |#b_$0|)) |#b_$0|)  :weight  0))
    (forall( (|p_$143| $ptr))(!(=> (and (<= 0 ($ref |p_$143|)) (<= ($ref |p_$143|) $max.u8)) (= ($ptr_to_u8 |p_$143|) ($ref |p_$143|)))  :pattern ( ($ptr_to_u8 |p_$143|))))
    (forall( (|p_$144| $ptr))(!(=> (and (<= $min.i8 ($ref |p_$144|)) (<= ($ref |p_$144|) $max.i8)) (= ($ptr_to_i8 |p_$144|) ($ref |p_$144|)))  :pattern ( ($ptr_to_i8 |p_$144|))))
    (forall( (|p_$145| $ptr))(!(=> (and (<= 0 ($ref |p_$145|)) (<= ($ref |p_$145|) $max.u4)) (= ($ptr_to_u4 |p_$145|) ($ref |p_$145|)))  :pattern ( ($ptr_to_u4 |p_$145|))))
    (forall( (|p_$146| $ptr))(!(=> (and (<= $min.i4 ($ref |p_$146|)) (<= ($ref |p_$146|) $max.i4)) (= ($ptr_to_i4 |p_$146|) ($ref |p_$146|)))  :pattern ( ($ptr_to_i4 |p_$146|))))
    (forall( (|p_$147| $ptr))(!(=> (and (<= 0 ($ref |p_$147|)) (<= ($ref |p_$147|) $max.u2)) (= ($ptr_to_u2 |p_$147|) ($ref |p_$147|)))  :pattern ( ($ptr_to_u2 |p_$147|))))
    (forall( (|p_$148| $ptr))(!(=> (and (<= $min.i2 ($ref |p_$148|)) (<= ($ref |p_$148|) $max.i2)) (= ($ptr_to_i2 |p_$148|) ($ref |p_$148|)))  :pattern ( ($ptr_to_i2 |p_$148|))))
    (forall( (|p_$149| $ptr))(!(=> (and (<= 0 ($ref |p_$149|)) (<= ($ref |p_$149|) $max.u1)) (= ($ptr_to_u1 |p_$149|) ($ref |p_$149|)))  :pattern ( ($ptr_to_u1 |p_$149|))))
    (forall( (|p_$150| $ptr))(!(=> (and (<= $min.i1 ($ref |p_$150|)) (<= ($ref |p_$150|) $max.i1)) (= ($ptr_to_i1 |p_$150|) ($ref |p_$150|)))  :pattern ( ($ptr_to_i1 |p_$150|))))
    (forall( (|p_$63| $ptr))(!($extent_hint |p_$63| |p_$63|)  :pattern ( ($typ |p_$63|))))
    (forall( (|p_$64| $ptr) (|f_$12| $field))(!(and (= ($ghost_emb ($ghost_ref |p_$64| |f_$12|)) |p_$64|) (= ($ghost_path ($ghost_ref |p_$64| |f_$12|)) |f_$12|))  :weight  0 :pattern ( ($ghost_ref |p_$64| |f_$12|))))
    (forall( (|p_$65| $ptr) (|f_$13| $field))(!($in_range_spec_ptr ($ghost_ref |p_$65| |f_$13|))  :pattern ( ($ghost_ref |p_$65| |f_$13|))))
    (forall( (|S_$114| $state))(!(=> ($good_state |S_$114|) (forall( (|#p_$10_$1| $ptr) (|#q_$9| $ptr))(!(=> (and (and ($good_state |S_$114|) ($set_in |#p_$10_$1| ($owns |S_$114| |#q_$9|))) ($closed |S_$114| |#q_$9|)) (and ($closed |S_$114| |#p_$10_$1|) (not (= ($ref |#p_$10_$1|) 0))))  :pattern ( ($set_in |#p_$10_$1| ($owns |S_$114| |#q_$9|))))))  :pattern ( ($good_state |S_$114|))))
    (forall( (|S_$57| $state) (|p_$69| $ptr))(!(or (<= ($timestamp |S_$57| |p_$69|) ($current_timestamp |S_$57|)) (not ($ts_typed ($select.tm ($typemap |S_$57|) |p_$69|))))  :weight  0 :pattern ( ($select.sm ($statusmap |S_$57|) |p_$69|))))
    (forall( (|S_$60| $state) (|p_$73| $ptr))(!(=> ($is_non_primitive ($typ |p_$73|)) (= ($owner |S_$60| |p_$73|) ($st_owner ($select.sm ($statusmap |S_$60|) |p_$73|))))  :weight  0 :pattern ( ($is_non_primitive ($typ |p_$73|)) ($owner |S_$60| |p_$73|))))
    (forall( (|S_$62| $state) (|p_$75| $ptr))(!(=> ($is_non_primitive ($typ |p_$75|)) (= ($closed |S_$62| |p_$75|) ($st_closed ($select.sm ($statusmap |S_$62|) |p_$75|))))  :weight  0 :pattern ( ($is_non_primitive ($typ |p_$75|)) ($closed |S_$62| |p_$75|))))
    (forall( (|S_$67| $state) (|#p_$23| $ptr))(!(=> ($good_state |S_$67|) (= ($typed |S_$67| |#p_$23|) ($ts_typed ($select.tm ($typemap |S_$67|) |#p_$23|))))  :weight  0 :pattern ( ($typed |S_$67| |#p_$23|))))
    (forall( (|s_$7| $status))(!(and (not (= ($kind_of ($typ ($st_owner |s_$7|))) $kind_primitive)) ($is_non_primitive ($typ ($st_owner |s_$7|))))  :pattern ( ($st_owner |s_$7|))))
    (forall( (|T_$11| $ctype))(!(=> ($is_primitive |T_$11|) (and (forall( (|r_$6| Int) (|p_$84| $ptr))(!(= ($set_in |p_$84| ($full_extent ($ptr |T_$11| |r_$6|))) (= |p_$84| ($ptr |T_$11| |r_$6|)))  :pattern ( ($set_in |p_$84| ($full_extent ($ptr |T_$11| |r_$6|)))))) (forall( (|r_$7| Int) (|S_$73| $state))(!(= ($extent_mutable |S_$73| ($ptr |T_$11| |r_$7|)) ($mutable |S_$73| ($ptr |T_$11| |r_$7|)))  :pattern ( ($extent_mutable |S_$73| ($ptr |T_$11| |r_$7|)))))))  :pattern ( ($is_primitive |T_$11|))))
    (forall( (|T_$12| $ctype))(!(=> ($is_primitive |T_$12|) (forall( (|S_$74| $state) (|r_$8| Int) (|p_$85| $ptr))(!(= ($set_in |p_$85| ($extent |S_$74| ($ptr |T_$12| |r_$8|))) (= |p_$85| ($ptr |T_$12| |r_$8|)))  :pattern ( ($set_in |p_$85| ($extent |S_$74| ($ptr |T_$12| |r_$8|)))))))  :pattern ( ($is_primitive |T_$12|))))
    (forall( (|T_$14| $ctype))(!(=> ($is_primitive |T_$14|) (forall( (|S_$76| $state) (|r_$10| Int))(!(= ($extent_zero |S_$76| ($ptr |T_$14| |r_$10|)) (= ($select.mem ($memory |S_$76|) ($ptr |T_$14| |r_$10|)) 0))  :pattern ( ($extent_zero |S_$76| ($ptr |T_$14| |r_$10|))))))  :pattern ( ($is_primitive |T_$14|))))
    (forall( (|t_$42| $ctype) (|val_$17| Int))(!(=> ($in_range_t |t_$42| |val_$17|) (= ($unchecked |t_$42| |val_$17|) |val_$17|))  :pattern ( ($unchecked |t_$42| |val_$17|))))
    (forall( (|t_$43| $ctype) (|val_$18| Int))(!($in_range_t |t_$43| ($unchecked |t_$43| |val_$18|))  :pattern ( ($unchecked |t_$43| |val_$18|))))
    (forall( (|t_$89| $ctype))(!(=> ($is_math_type |t_$89|) ($is_primitive |t_$89|))  :pattern ( ($is_math_type |t_$89|))))
    (forall( (|val_$14| Int))(!(= ($in_range_t ^^u4 |val_$14|) (and (<= 0 |val_$14|) (<= |val_$14| $max.u4)))  :pattern ( ($in_range_t ^^u4 |val_$14|))))
    (forall( (|val_$15| Int))(!(= ($in_range_t ^^u8 |val_$15|) (and (<= 0 |val_$15|) (<= |val_$15| $max.u8)))  :pattern ( ($in_range_t ^^u8 |val_$15|))))
  )
    L3
)))
(let ((PreconditionGeneratedEntry (=> (and true
  )
    anon0
)))
(let (($start (=> (and true
    (= true $@bf_39)
    (= true $@bf_39)
    (= true $@bf_40)
    (= true $@bf_40)
    (= true $@bf_42)
    (= true $@bf_42)
    (forall( (|#p_$0| $ptr) (|S_$0| $state))(= ($ts_emb ($ts |S_$0| |#p_$0|)) ($ts_emb ($select.tm ($typemap |S_$0|) |#p_$0|))))
    (forall( (|#p_$1| $ptr) (|S_$1| $state))(= ($ts_path ($ts |S_$1| |#p_$1|)) ($ts_path ($select.tm ($typemap |S_$1|) |#p_$1|))))
    (forall( (|#p_$12| $ptr) (|#l| $ptr) (|S_$32| $state) (|S0| $state))(= (and (and (and (and (and ($typed |S0| |#p_$12|) ($wrapped |S_$32| |#p_$12| ($typ |#p_$12|))) ($timestamp_is_now |S_$32| |#p_$12|)) ($is_non_primitive ($typ |#p_$12|))) ($set_in |#p_$12| ($owns |S0| |#l|))) ($nested_in |S0| |#p_$12| |#l|)) (and (and (and (and (and ($typed |S0| |#p_$12|) (and (and (and (and ($closed |S_$32| |#p_$12|) (= ($owner |S_$32| |#p_$12|) $me)) ($typed2 |S_$32| |#p_$12| ($typ |#p_$12|))) (not (= ($kind_of ($typ |#p_$12|)) $kind_primitive))) ($is_non_primitive ($typ |#p_$12|)))) (= ($timestamp |S_$32| |#p_$12|) ($current_timestamp |S_$32|))) ($is_non_primitive ($typ |#p_$12|))) ($set_in |#p_$12| ($owns |S0| |#l|))) (and (= ($owner |S0| |#p_$12|) |#l|) ($closed |S0| |#p_$12|)))))
    (forall( (|#p_$17| $ptr))(= ($full_extent |#p_$17|) ($full_extent |#p_$17|)))
    (forall( (|#p2_$0| $ptr) (|#p1_$0| $ptr))(= ($set_in |#p1_$0| ($full_extent |#p2_$0|)) ($set_in |#p1_$0| ($full_extent |#p2_$0|))))
    (forall( (|#p2| $ptr) (|#p1| $ptr) (|S_$22| $state))(= ($set_in |#p1| ($extent |S_$22| |#p2|)) ($set_in |#p1| ($extent |S_$22| |#p2|))))
    (forall( (|#s2_$0| $state) (|#s1_$1| $state))(= (forall( (|#p_$9_$0| $ptr))(!($inv2_when_closed |#s1_$1| |#s2_$0| |#p_$9_$0| ($typ |#p_$9_$0|))  :pattern ( ($closed |#s1_$1| |#p_$9_$0|)) :pattern ( ($closed |#s2_$0| |#p_$9_$0|)))) (forall( (|#p_$9| $ptr))(!(or (and (not ($closed |#s1_$1| |#p_$9|)) (not ($closed |#s2_$0| |#p_$9|))) (and ($inv2 |#s1_$1| |#s2_$0| |#p_$9| ($typ |#p_$9|)) ($nonvolatile_spans_the_same |#s1_$1| |#s2_$0| |#p_$9| ($typ |#p_$9|))))  :pattern ( ($closed |#s1_$1| |#p_$9|)) :pattern ( ($closed |#s2_$0| |#p_$9|))))))
    (forall( (|#t_$0| $ctype) (|#p_$2| $ptr) (|S_$12| $state))(= (and (and (and (and ($closed |S_$12| |#p_$2|) (= ($owner |S_$12| |#p_$2|) $me)) ($typed2 |S_$12| |#p_$2| |#t_$0|)) (not (= ($kind_of |#t_$0|) $kind_primitive))) ($is_non_primitive |#t_$0|)) (and (and (and (and ($closed |S_$12| |#p_$2|) (= ($owner |S_$12| |#p_$2|) $me)) (and ($is |#p_$2| |#t_$0|) ($typed |S_$12| |#p_$2|))) (not (= ($kind_of |#t_$0|) $kind_primitive))) ($is_non_primitive |#t_$0|))))
    (forall( (|#t_$1| $ctype) (|#p_$3| $ptr) (|S_$16| $state))(= (and ($is |#p_$3| |#t_$1|) ($typed |S_$16| |#p_$3|)) (and ($is |#p_$3| |#t_$1|) ($typed |S_$16| |#p_$3|))))
    (forall( (|#t_$4| $ctype) (|#p_$6| $ptr) (|S_$21| $state))(= (and ($is |#p_$6| |#t_$4|) ($thread_local |S_$21| |#p_$6|)) (and ($is |#p_$6| |#t_$4|) ($thread_local |S_$21| |#p_$6|))))
    (forall( (|l2| Bool) (|l1| Bool))(= (=> |l1| |l2|) (=> |l1| |l2|)))
    (forall( (|M2_$0| $state) (|M1_$0| $state))(= (and (and (<= ($current_timestamp |M1_$0|) ($current_timestamp |M2_$0|)) (forall( (|p_$32_$1| $ptr))(!(<= ($timestamp |M1_$0| |p_$32_$1|) ($timestamp |M2_$0| |p_$32_$1|))  :weight  0 :pattern ( ($timestamp |M2_$0| |p_$32_$1|))))) ($call_transition |M1_$0| |M2_$0|)) (and (and (<= ($current_timestamp |M1_$0|) ($current_timestamp |M2_$0|)) (forall( (|p_$32| $ptr))(!(<= ($timestamp |M1_$0| |p_$32|) ($timestamp |M2_$0| |p_$32|))  :weight  0 :pattern ( ($timestamp |M2_$0| |p_$32|))))) ($call_transition |M1_$0| |M2_$0|))))
    (forall( (|max| Int) (|val| Int) (|min| Int))(= (and (<= |min| |val|) (<= |val| |max|)) (and (<= |min| |val|) (<= |val| |max|))))
    (forall( (|owner| $ptr) (|p_$18| $ptr) (|S_$11| $state))(= (and (= ($owner |S_$11| |p_$18|) |owner|) ($closed |S_$11| |p_$18|)) (and (= ($owner |S_$11| |p_$18|) |owner|) ($closed |S_$11| |p_$18|))))
    (forall( (|p_$10| $ptr) (|S_$4| $state))(= ($ts_is_volatile ($ts |S_$4| |p_$10|)) ($ts_is_volatile ($select.tm ($typemap |S_$4|) |p_$10|))))
    (forall( (|p_$15| $ptr) (|S_$8| $state))(= ($select.sm ($statusmap |S_$8|) |p_$15|) ($select.sm ($statusmap |S_$8|) |p_$15|)))
    (forall( (|p_$16| $ptr) (|S_$9| $state))(= ($select.tm ($typemap |S_$9|) |p_$16|) ($select.tm ($typemap |S_$9|) |p_$16|)))
    (forall( (|p_$17| $ptr) (|S_$10| $state))(= (not (= ($kind_of ($typ ($owner |S_$10| |p_$17|))) $kind_thread)) (not (= ($kind_of ($typ ($owner |S_$10| |p_$17|))) $kind_thread))))
    (forall( (|p_$2| $ptr) (|s_$0| $state))(= ($select.mem ($memory |s_$0|) |p_$2|) ($select.mem ($memory |s_$0|) |p_$2|)))
    (forall( (|p_$21| $ptr) (|S_$15| $state))(= (and (and ($typed |S_$15| |p_$21|) (= ($owner |S_$15| |p_$21|) $me)) (=> ($is_primitive_ch ($typ |p_$21|)) (not ($closed |S_$15| |p_$21|)))) (and (and ($typed |S_$15| |p_$21|) (= ($owner |S_$15| |p_$21|) $me)) (=> (= ($kind_of ($typ |p_$21|)) $kind_primitive) (not ($closed |S_$15| |p_$21|))))))
    (forall( (|p_$24| $ptr) (|S2| $state) (|S1| $state))(= ($inv2 |S1| |S2| |p_$24| ($typ |p_$24|)) ($inv2 |S1| |S2| |p_$24| ($typ |p_$24|))))
    (forall( (|p_$26| $ptr) (|S_$27| $state))(= (and (forall( (|#q_$0_$1| $ptr))(!(=> ($closed |S_$27| |#q_$0_$1|) ($inv |S_$27| |#q_$0_$1| ($typ |#q_$0_$1|)))  :pattern ( ($st |S_$27| |#q_$0_$1|)))) ($good_for_admissibility |S_$27|)) (and (forall( (|#q_$0| $ptr))(!(=> ($closed |S_$27| |#q_$0|) ($inv2 |S_$27| |S_$27| |#q_$0| ($typ |#q_$0|)))  :pattern ( ($select.sm ($statusmap |S_$27|) |#q_$0|)))) ($good_for_admissibility |S_$27|))))
    (forall( (|p_$30| $ptr) (|S_$30| $state))(= (= ($timestamp |S_$30| |p_$30|) ($current_timestamp |S_$30|)) (= ($timestamp |S_$30| |p_$30|) ($current_timestamp |S_$30|))))
    (forall( (|p_$4| $ptr) (|s2| $state) (|s1| $state))(= (= ($mem |s1| |p_$4|) ($mem |s2| |p_$4|)) (= ($select.mem ($memory |s1|) |p_$4|) ($select.mem ($memory |s2|) |p_$4|))))
    (forall( (|p_$5| $ptr) (|s2_$0| $state) (|s1_$0| $state))(= (= ($st |s1_$0| |p_$5|) ($st |s2_$0| |p_$5|)) (= ($select.sm ($statusmap |s1_$0|) |p_$5|) ($select.sm ($statusmap |s2_$0|) |p_$5|))))
    (forall( (|p_$6| $ptr) (|s2_$1| $state) (|s1_$1| $state))(= (= ($ts |s1_$1| |p_$6|) ($ts |s2_$1| |p_$6|)) (= ($select.tm ($typemap |s1_$1|) |p_$6|) ($select.tm ($typemap |s2_$1|) |p_$6|))))
    (forall( (|p_$9| $ptr) (|S_$3| $state))(= (= ($emb |S_$3| |p_$9|) ($ptr ^^root_emb ($ref |p_$9|))) (= ($ts_emb ($ts |S_$3| |p_$9|)) ($ptr ^^root_emb ($ref |p_$9|)))))
    (forall( (|S_$23| $state) (|t_$6| $token))(= (and ($good_state_ext |t_$6| |S_$23|) ($full_stop |S_$23|)) (and ($good_state_ext |t_$6| |S_$23|) ($full_stop |S_$23|))))
    (forall( (|S_$24| $state))(= (forall( (|#p_$10_$0| $ptr) (|#q_$1| $ptr))(!(=> (and (and ($good_state |S_$24|) ($set_in |#p_$10_$0| ($owns |S_$24| |#q_$1|))) ($closed |S_$24| |#q_$1|)) (and ($closed |S_$24| |#p_$10_$0|) (not (= ($ref |#p_$10_$0|) 0))))  :pattern ( ($set_in |#p_$10_$0| ($owns |S_$24| |#q_$1|))))) (forall( (|#p_$10| $ptr) (|#q| $ptr))(!(=> (and (and ($good_state |S_$24|) ($set_in |#p_$10| ($owns |S_$24| |#q|))) ($closed |S_$24| |#q|)) (and ($closed |S_$24| |#p_$10|) (not (= ($ref |#p_$10|) 0))))  :pattern ( ($set_in |#p_$10| ($owns |S_$24| |#q|)))))))
    (forall( (|subject| $field) (|approver| $ptr) (|this| $ptr) (|S2_$0| $state) (|S1_$0| $state))(= (or (or (or ($mem_eq |S1_$0| |S2_$0| ($dot |this| |subject|)) (= ($ref |approver|) 0)) (and (not ($is_threadtype ($typ |approver|))) ($inv2nt |S1_$0| |S2_$0| |approver|))) (and ($is_threadtype ($typ |approver|)) (not (= ($read_vol_version |S1_$0| |this|) ($read_vol_version |S2_$0| |this|))))) (or (or (or (= ($mem |S1_$0| ($dot |this| |subject|)) ($mem |S2_$0| ($dot |this| |subject|))) (= ($ref |approver|) 0)) (and (not ($is_threadtype ($typ |approver|))) ($inv2 |S1_$0| |S2_$0| |approver| ($typ |approver|)))) (and ($is_threadtype ($typ |approver|)) (not (= ($read_vol_version |S1_$0| |this|) ($read_vol_version |S2_$0| |this|)))))))
    (forall( (|sz_$7| Int) (|T_$6| $ctype) (|p_$49| $ptr))(= ($ptr ($array |T_$6| |sz_$7|) ($ref |p_$49|)) ($ptr ($array |T_$6| |sz_$7|) ($ref |p_$49|))))
    (forall( (|t| $ctype))(= (= ($kind_of |t|) $kind_primitive) (= ($kind_of |t|) $kind_primitive)))
    (forall( (|typ_$0| $ctype) (|#p_$8| $ptr) (|#s2| $state) (|#s1_$0| $state))(= (or (and (not ($closed |#s1_$0| |#p_$8|)) (not ($closed |#s2| |#p_$8|))) (and ($inv2 |#s1_$0| |#s2| |#p_$8| |typ_$0|) ($nonvolatile_spans_the_same |#s1_$0| |#s2| |#p_$8| |typ_$0|))) (or (and (not ($closed |#s1_$0| |#p_$8|)) (not ($closed |#s2| |#p_$8|))) (and ($inv2 |#s1_$0| |#s2| |#p_$8| |typ_$0|) ($nonvolatile_spans_the_same |#s1_$0| |#s2| |#p_$8| |typ_$0|)))))
    (forall( (|typ| $ctype) (|#p_$7| $ptr) (|#s1| $state))(= ($inv2 |#s1| |#s1| |#p_$7| |typ|) ($inv2 |#s1| |#s1| |#p_$7| |typ|)))
    (forall( (|u| $ptr) (|S_$41| $state))(= ($ts_active_option ($ts |S_$41| |u|)) ($ts_active_option ($select.tm ($typemap |S_$41|) |u|))))
    (not (= true $@bf_41))
    (not (= true $@bf_41))
  )
    PreconditionGeneratedEntry
)))
(let (($root (=> (and true
  )
    $start
)))
   $root
))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
