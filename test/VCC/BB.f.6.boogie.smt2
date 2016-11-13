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
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@$kind 0)
(declare-fun $kind_composite () T@$kind)
(declare-fun $kind_primitive () T@$kind)
(declare-fun $kind_array () T@$kind)
(declare-fun $kind_thread () T@$kind)
(declare-sort T@$ctype 0)
(declare-fun ^^i1 () T@$ctype)
(declare-fun ^^i2 () T@$ctype)
(declare-fun ^^i4 () T@$ctype)
(declare-fun ^^i8 () T@$ctype)
(declare-fun ^^u1 () T@$ctype)
(declare-fun ^^u2 () T@$ctype)
(declare-fun ^^u4 () T@$ctype)
(declare-fun ^^u8 () T@$ctype)
(declare-fun ^^void () T@$ctype)
(declare-fun ^^bool () T@$ctype)
(declare-fun ^^f4 () T@$ctype)
(declare-fun ^^f8 () T@$ctype)
(declare-fun ^^claim () T@$ctype)
(declare-fun ^^root_emb () T@$ctype)
(declare-fun ^^mathint () T@$ctype)
(declare-fun |^$#thread_id_t| () T@$ctype)
(declare-fun |^$#ptrset| () T@$ctype)
(declare-fun |^$#state_t| () T@$ctype)
(declare-fun |^$#struct| () T@$ctype)
(declare-fun $memory_allocator_type () T@$ctype)
(declare-sort T@$ptr 0)
(declare-fun $no_claim () T@$ptr)
(declare-sort T@$pure_function 0)
(declare-fun |cf#classifier#default| () T@$pure_function)
(declare-fun |^$#thread_id| () T@$ctype)
(declare-fun ^A () T@$ctype)
(declare-sort T@$field 0)
(declare-fun A.$owns () T@$field)
(declare-fun A.x () T@$field)
(declare-sort T@$label 0)
(declare-fun |l#public| () T@$label)
(declare-fun |#distTp3| () T@$ctype)
(declare-fun |#distTp2| () T@$ctype)
(declare-fun |#distTp1| () T@$ctype)
(declare-sort T@$token 0)
(declare-fun |#loc._this_| () T@$token)
(declare-fun |#tok$1^13.1| () T@$token)
(declare-fun |#file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cexamples?5CLockFreeIncr.c| () T@$token)
(declare-fun %lbl%+24631 () Bool)
(declare-fun $sizeof (T@$ctype) Int)
(declare-fun $as_in_range_t (T@$ctype) T@$ctype)
(declare-fun $ptr_level (T@$ctype) Int)
(declare-fun $is_composite (T@$ctype) Bool)
(declare-fun $ptr_to (T@$ctype) T@$ctype)
(declare-fun $unptr_to (T@$ctype) T@$ctype)
(declare-fun $spec_ptr_to (T@$ctype) T@$ctype)
(declare-fun $arch_ptr_size () Int)
(declare-fun $map_t (T@$ctype T@$ctype) T@$ctype)
(declare-fun $is_primitive (T@$ctype) Bool)
(declare-fun $kind_of (T@$ctype) T@$kind)
(declare-fun $is_arraytype (T@$ctype) Bool)
(declare-fun $is_threadtype (T@$ctype) Bool)
(declare-fun $typ (T@$ptr) T@$ctype)
(declare-fun $is_non_primitive (T@$ctype) Bool)
(declare-fun $is_claimable (T@$ctype) Bool)
(declare-fun $in_range_spec_ptr (Int) Bool)
(declare-fun $me_ref () Int)
(declare-fun $me () T@$ptr)
(declare-fun $ptr (T@$ctype Int) T@$ptr)
(declare-sort T@$state 0)
(declare-sort T@$memory_t 0)
(declare-fun $select.mem (T@$memory_t T@$ptr) Int)
(declare-fun $store.mem (T@$memory_t T@$ptr Int) T@$memory_t)
(declare-fun $ref (T@$ptr) Int)
(declare-fun $idx (T@$ptr Int T@$ctype) T@$ptr)
(declare-fun $select_range.mem (T@$memory_t T@$ptr Int) Int)
(declare-sort T@$typemap_t 0)
(declare-sort T@$type_state 0)
(declare-fun $select.tm (T@$typemap_t T@$ptr) T@$type_state)
(declare-fun $store.tm (T@$typemap_t T@$ptr T@$type_state) T@$typemap_t)
(declare-sort T@$statusmap_t 0)
(declare-sort T@$status 0)
(declare-fun $select.sm (T@$statusmap_t T@$ptr) T@$status)
(declare-fun $store.sm (T@$statusmap_t T@$ptr T@$status) T@$statusmap_t)
(declare-fun $memory (T@$state) T@$memory_t)
(declare-fun $statusmap (T@$state) T@$statusmap_t)
(declare-fun $typemap (T@$state) T@$typemap_t)
(declare-fun $call_transition (T@$state T@$state) Bool)
(declare-fun $extent_hint (T@$ptr T@$ptr) Bool)
(declare-fun $ghost_ref (T@$ptr T@$field) Int)
(declare-fun $ghost_emb (Int) T@$ptr)
(declare-fun $ghost_path (Int) T@$field)
(declare-fun $array_path (T@$field Int) T@$field)
(declare-fun $is_base_field (T@$field) Bool)
(declare-fun $array_path_1 (T@$field) T@$field)
(declare-fun $array_path_2 (T@$field) Int)
(declare-fun $null () T@$ptr)
(declare-fun $is (T@$ptr T@$ctype) Bool)
(declare-fun $ts_emb (T@$type_state) T@$ptr)
(declare-fun $ts_path (T@$type_state) T@$field)
(declare-fun $field_parent_type (T@$field) T@$ctype)
(declare-fun $dot (T@$ptr T@$field) T@$ptr)
(declare-fun $typed (T@$state T@$ptr) Bool)
(declare-fun $ts_is_volatile (T@$type_state) Bool)
(declare-fun $good_state (T@$state) Bool)
(declare-fun $timestamp (T@$state T@$ptr) Int)
(declare-fun $current_timestamp (T@$state) Int)
(declare-fun $ts_typed (T@$type_state) Bool)
(declare-fun $in_writes_at (Int T@$ptr) Bool)
(declare-fun $mutable (T@$state T@$ptr) Bool)
(declare-fun $owner (T@$state T@$ptr) T@$ptr)
(declare-fun $closed (T@$state T@$ptr) Bool)
(declare-sort T@$struct 0)
(declare-fun $vs_state (T@$struct) T@$state)
(declare-fun $struct_zero () T@$struct)
(declare-fun $vs_base_ref (T@$struct) Int)
(declare-fun $vs_ctor (T@$state T@$ptr) T@$struct)
(declare-sort T@$record 0)
(declare-fun $rec_fetch (T@$record T@$field) Int)
(declare-fun $rec_zero () T@$record)
(declare-fun $rec_update (T@$record T@$field Int) T@$record)
(declare-fun $unchecked (T@$ctype Int) Int)
(declare-fun $record_field_int_kind (T@$field) T@$ctype)
(declare-fun $in_range_t (T@$ctype Int) Bool)
(declare-fun $is_record_type (T@$ctype) Bool)
(declare-fun $is_record_field (T@$ctype T@$field T@$ctype) Bool)
(declare-fun $as_record_record_field (T@$field) T@$field)
(declare-fun $rec_eq (T@$record T@$record) Bool)
(declare-fun $rec_base_eq (Int Int) Bool)
(declare-fun $int_to_record (Int) T@$record)
(declare-fun $has_volatile_owns_set (T@$ctype) Bool)
(declare-fun $owns_set_field (T@$ctype) T@$field)
(declare-fun $st_owner (T@$status) T@$ptr)
(declare-fun $st_closed (T@$status) Bool)
(declare-fun $st_timestamp (T@$status) Int)
(declare-fun $position_marker () Bool)
(declare-sort T@$ptrset 0)
(declare-fun $owns (T@$state T@$ptr) T@$ptrset)
(declare-fun $int_to_ptrset (Int) T@$ptrset)
(declare-fun $in_range_phys_ptr (Int) Bool)
(declare-fun $arch_spec_ptr_start () Int)
(declare-fun $instantiate_int (Int) Bool)
(declare-fun $is_domain_root (T@$state T@$ptr) Bool)
(declare-fun $in_wrapped_domain (T@$state T@$ptr) Bool)
(declare-fun $set_in2 (T@$ptr T@$ptrset) Bool)
(declare-sort T@$version 0)
(declare-fun $ver_domain (T@$version) T@$ptrset)
(declare-fun $read_version (T@$state T@$ptr) T@$version)
(declare-fun $set_in (T@$ptr T@$ptrset) Bool)
(declare-fun $thread_local (T@$state T@$ptr) Bool)
(declare-fun $inv2 (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $nonvolatile_spans_the_same (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $sequential (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $spans_the_same (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $state_spans_the_same (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $state_nonvolatile_spans_the_same (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $extent (T@$state T@$ptr) T@$ptrset)
(declare-fun $full_extent (T@$ptr) T@$ptrset)
(declare-fun $extent_mutable (T@$state T@$ptr) Bool)
(declare-fun $array (T@$ctype Int) T@$ctype)
(declare-fun $extent_zero (T@$state T@$ptr) Bool)
(declare-fun $good_state_ext (T@$token T@$state) Bool)
(declare-fun $full_stop (T@$state) Bool)
(declare-fun $function_entry (T@$state) Bool)
(declare-fun $invok_state (T@$state) Bool)
(declare-fun $read_ptr_m (T@$state T@$ptr T@$ctype) T@$ptr)
(declare-fun $int_to_version (Int) T@$version)
(declare-fun $domain (T@$state T@$ptr) T@$ptrset)
(declare-fun $in_domain_lab (T@$state T@$ptr T@$ptr T@$label) Bool)
(declare-fun $inv_lab (T@$state T@$ptr T@$label) Bool)
(declare-fun $in_domain (T@$state T@$ptr T@$ptr) Bool)
(declare-fun $in_vdomain_lab (T@$state T@$ptr T@$ptr T@$label) Bool)
(declare-fun $in_vdomain (T@$state T@$ptr T@$ptr) Bool)
(declare-fun $set_in0 (T@$ptr T@$ptrset) Bool)
(declare-fun $is_primitive_non_volatile_field (T@$field) Bool)
(declare-fun $fetch_from_domain (T@$version T@$ptr) Int)
(declare-fun $is_primitive_embedded_array (T@$field Int) Bool)
(declare-fun $is_primitive_embedded_volatile_array (T@$field Int T@$ctype) Bool)
(declare-fun $instantiate_bool (Bool) Bool)
(declare-fun $in_claim_domain (T@$ptr T@$ptr) Bool)
(declare-fun $dont_instantiate_state (T@$state) Bool)
(declare-fun $valid_claim (T@$state T@$ptr) Bool)
(declare-fun $by_claim (T@$state T@$ptr T@$ptr T@$ptr) T@$ptr)
(declare-fun $claim_version (T@$ptr) T@$version)
(declare-fun $is_array (T@$state T@$ptr T@$ctype Int) Bool)
(declare-sort T@$vol_version 0)
(declare-fun $read_vol_version (T@$state T@$ptr) T@$vol_version)
(declare-fun $int_to_vol_version (Int) T@$vol_version)
(declare-fun $fetch_from_vv (T@$vol_version T@$ptr) Int)
(declare-fun $is_approved_by (T@$ctype T@$field T@$field) Bool)
(declare-fun $int_to_ptr (Int) T@$ptr)
(declare-fun $is_owner_approved (T@$ctype T@$field) Bool)
(declare-fun $post_unwrap (T@$state T@$state) Bool)
(declare-fun $set_empty () T@$ptrset)
(declare-fun $good_for_admissibility (T@$state) Bool)
(declare-fun $is_stuttering_check () Bool)
(declare-fun $is_unwrap_check () Bool)
(declare-fun $ref_cnt (T@$state T@$ptr) Int)
(declare-fun $good_for_pre_can_unwrap (T@$state) Bool)
(declare-fun $update_int (T@$state T@$ptr Int) T@$state)
(declare-fun $take_over (T@$state T@$ptr T@$ptr) T@$state)
(declare-fun $taken_over (T@$state T@$ptr T@$ptr) T@$status)
(declare-fun $release (T@$state T@$state T@$ptr T@$ptr) T@$state)
(declare-fun $released (T@$state T@$ptr T@$ptr) T@$status)
(declare-fun $set_difference (T@$ptrset T@$ptrset) T@$ptrset)
(declare-fun $program_entry_point (T@$state) Bool)
(declare-fun $program_entry_point_ch (T@$state) Bool)
(declare-fun $ts_active_option (T@$type_state) T@$field)
(declare-fun $span (T@$ptr) T@$ptrset)
(declare-fun $volatile_span (T@$state T@$ptr) T@$ptrset)
(declare-fun $set_singleton (T@$ptr) T@$ptrset)
(declare-fun $non_null_set_singleton (T@$ptr) T@$ptrset)
(declare-fun $set_union (T@$ptrset T@$ptrset) T@$ptrset)
(declare-fun $set_intersection (T@$ptrset T@$ptrset) T@$ptrset)
(declare-fun $set_eq (T@$ptrset T@$ptrset) Bool)
(declare-fun $dont_instantiate (T@$ptr) Bool)
(declare-fun $set_cardinality (T@$ptrset) Int)
(declare-fun $set_universe () T@$ptrset)
(declare-fun $set_disjoint (T@$ptrset T@$ptrset) Bool)
(declare-fun $id_set_disjoint (T@$ptr T@$ptrset T@$ptrset) Int)
(declare-fun $in_some_owns (T@$ptr) Bool)
(declare-fun $element_type (T@$ctype) T@$ctype)
(declare-fun $array_length (T@$ctype) Int)
(declare-fun $is_array_vol_or_nonvol (T@$state T@$ptr T@$ctype Int Bool) Bool)
(declare-fun $instantiate_ptr (T@$ptr) Bool)
(declare-fun $index_within (T@$ptr T@$ptr) Int)
(declare-fun $array_members (T@$ptr T@$ctype Int) T@$ptrset)
(declare-fun $array_range (T@$state T@$ptr T@$ctype Int) T@$ptrset)
(declare-fun $array_range_no_state (T@$ptr T@$ctype Int) T@$ptrset)
(declare-fun $non_null_array_range (T@$ptr T@$ctype Int) T@$ptrset)
(declare-fun $non_null_extent (T@$state T@$ptr) T@$ptrset)
(declare-fun $simple_index (T@$ptr T@$ptr) Bool)
(declare-fun $embedded_array_size (T@$field T@$ctype) Int)
(declare-fun $min.i1 () Int)
(declare-fun $max.i1 () Int)
(declare-fun $min.i2 () Int)
(declare-fun $max.i2 () Int)
(declare-fun $min.i4 () Int)
(declare-fun $max.i4 () Int)
(declare-fun $min.i8 () Int)
(declare-fun $max.i8 () Int)
(declare-fun $max.u1 () Int)
(declare-fun $max.u2 () Int)
(declare-fun $max.u4 () Int)
(declare-fun $max.u8 () Int)
(declare-fun $ptr_to_u8 (T@$ptr) Int)
(declare-fun $ptr_to_i8 (T@$ptr) Int)
(declare-fun $ptr_to_u4 (T@$ptr) Int)
(declare-fun $ptr_to_i4 (T@$ptr) Int)
(declare-fun $ptr_to_u2 (T@$ptr) Int)
(declare-fun $ptr_to_i2 (T@$ptr) Int)
(declare-fun $ptr_to_u1 (T@$ptr) Int)
(declare-fun $ptr_to_i1 (T@$ptr) Int)
(declare-fun $_pow2 (Int) Int)
(declare-fun $in_range_ubits (Int Int) Bool)
(declare-fun $unchecked_sbits (Int Int) Int)
(declare-fun $in_range_sbits (Int Int) Bool)
(declare-fun $unchecked_ubits (Int Int) Int)
(declare-fun $unchk_add (T@$ctype Int Int) Int)
(declare-fun $bv_update (Int Int Int Int Int) Int)
(declare-fun $bv_extract_signed (Int Int Int Int) Int)
(declare-fun $bv_extract_unsigned (Int Int Int Int) Int)
(declare-fun $_and (T@$ctype Int Int) Int)
(declare-fun $_or (T@$ctype Int Int) Int)
(declare-fun $_xor (T@$ctype Int Int) Int)
(declare-fun $_not (T@$ctype Int) Int)
(declare-fun $get_string_literal (Int Int) T@$ptr)
(declare-fun $get_fnptr (Int T@$ctype) T@$ptr)
(declare-fun $get_fnptr_ref (Int) Int)
(declare-fun $is_fnptr_type (T@$ctype) Bool)
(declare-fun $is_math_type (T@$ctype) Bool)
(declare-fun $claims_claim (T@$ptr T@$ptr) Bool)
(declare-fun $claims_obj (T@$ptr T@$ptr) Bool)
(declare-fun $instantiate_ptrset (T@$ptrset) Bool)
(declare-fun $claimed_closed (T@$state T@$ptr) Bool)
(declare-fun $account_claim (T@$state T@$ptr T@$ptr) Bool)
(declare-fun $claim_no (T@$state T@$ptr Int) T@$ptr)
(declare-fun $claim_idx (T@$ptr T@$ptr) Int)
(declare-fun $frame_level (T@$pure_function) Int)
(declare-fun $current_frame_level () Int)
(declare-fun $pure_post_level (T@$pure_function) Int)
(declare-fun $current_pure_post_level () Int)
(declare-fun $ptr_to_int (T@$ptr) Int)
(declare-fun $domain_updated_at (T@$state T@$state T@$ptr T@$ptrset) Bool)
(declare-fun $seclbl.top () Bool)
(declare-fun $seclbl.bot () Bool)
(declare-sort |T@[$ptr]Bool| 0)
(declare-fun |Select_[$ptr]$bool| (|T@[$ptr]Bool| T@$ptr) Bool)
(declare-fun $lblset.top () |T@[$ptr]Bool|)
(declare-fun $lblset.bot () |T@[$ptr]Bool|)
(declare-sort T@$flowdata 0)
(declare-fun $select.flow.label (T@$flowdata) |T@[$ptr]Bool|)
(declare-fun $store.flow.label (T@$flowdata |T@[$ptr]Bool|) T@$flowdata)
(declare-fun $select.flow.meta (T@$flowdata) |T@[$ptr]Bool|)
(declare-fun $store.flow.meta (T@$flowdata |T@[$ptr]Bool|) T@$flowdata)
(declare-fun $select.flow.data (T@$memory_t T@$ptr) T@$flowdata)
(declare-fun $store.flow.data (T@$memory_t T@$ptr T@$flowdata) T@$memory_t)
(declare-sort T@$map_t..$ptr_to..^^void.^^bool 0)
(declare-fun $select.$map_t..$ptr_to..^^void.^^bool (T@$map_t..$ptr_to..^^void.^^bool T@$ptr) Bool)
(declare-fun $store.$map_t..$ptr_to..^^void.^^bool (T@$map_t..$ptr_to..^^void.^^bool T@$ptr Bool) T@$map_t..$ptr_to..^^void.^^bool)
(declare-fun $eq.$map_t..$ptr_to..^^void.^^bool (T@$map_t..$ptr_to..^^void.^^bool T@$map_t..$ptr_to..^^void.^^bool) Bool)
(declare-fun $int_to_map_t..ptr_to..^^void.^^bool (Int) T@$map_t..$ptr_to..^^void.^^bool)
(declare-fun $zero.$map_t..$ptr_to..^^void.^^bool () T@$map_t..$ptr_to..^^void.^^bool)
(declare-fun $function_arg_type (T@$pure_function Int T@$ctype) Bool)
(declare-fun |#classifier#default| () T@$map_t..$ptr_to..^^void.^^bool)
(declare-fun $ptrclub.empty () |T@[$ptr]Bool|)
(declare-sort T@$ptrclub 0)
(declare-fun $ptrclub.members (T@$ptrclub) |T@[$ptr]Bool|)
(declare-fun $ptrclub.construct (|T@[$ptr]Bool| |T@[$ptr]Bool|) T@$ptrclub)
(declare-fun $ptrclub.bound (T@$ptrclub) |T@[$ptr]Bool|)
(declare-fun $ptrclub.addMember (T@$ptr T@$ptrclub) T@$ptrclub)
(declare-fun |Store_[$ptr]$bool| (|T@[$ptr]Bool| T@$ptr Bool) |T@[$ptr]Bool|)
(assert (forall ( ( ?x0 |T@[$ptr]Bool|) ( ?x1 T@$ptr) ( ?x2 Bool)) (= (|Select_[$ptr]$bool| (|Store_[$ptr]$bool| ?x0 ?x1 ?x2) ?x1)  ?x2)))
(assert (forall ( ( ?x0 |T@[$ptr]Bool|) ( ?x1 T@$ptr) ( ?y1 T@$ptr) ( ?x2 Bool)) (=>  (not (= ?x1 ?y1)) (= (|Select_[$ptr]$bool| (|Store_[$ptr]$bool| ?x0 ?x1 ?x2) ?y1) (|Select_[$ptr]$bool| ?x0 ?y1)))))
(declare-fun $ptrclub.compare (T@$ptr T@$ptr) |T@[$ptr]Bool|)
(declare-fun is_active_ptrclub (T@$ptrclub) Bool)
(declare-fun $is_primitive_volatile_field (T@$field) Bool)
(declare-fun $file_name_is (Int T@$token) Bool)
(declare-fun $s () T@$state)
(declare-fun $local_value_is (T@$state T@$token T@$token Int T@$ctype) Bool)
(declare-fun |P#_this_| () Int)
(declare-fun $local_value_is_ptr (T@$state T@$token T@$token T@$ptr T@$ctype) Bool)
(declare-fun |#wrTime$1^13.1| () Int)
(declare-fun |call0formal_$_#l_$_0| () T@$ptr)
(declare-fun %lbl%@52143 () Bool)
(declare-fun $select.sec.pc (T@$state) |T@[$ptr]Bool|)
(declare-fun $s_$_0 () T@$state)
(declare-fun $good_for_post_can_unwrap (T@$state) Bool)
(declare-fun %lbl%@52506 () Bool)
(declare-fun %lbl%@52532 () Bool)
(declare-fun %lbl%@52618 () Bool)
(declare-fun %lbl%@52696 () Bool)
(declare-fun %lbl%@52714 () Bool)
(declare-fun %lbl%+26501 () Bool)
(assert (and (distinct $kind_composite $kind_primitive $kind_array $kind_thread)(distinct ^^i1 ^^i2 ^^i4 ^^i8 ^^u1 ^^u2 ^^u4 ^^u8 ^^void ^^bool ^^f4 ^^f8 ^^claim ^^root_emb ^^mathint |^$#thread_id_t| |^$#ptrset| |^$#state_t| |^$#struct| $memory_allocator_type |^$#thread_id| ^A |#distTp3| |#distTp2| |#distTp1|)(distinct A.$owns A.x)(distinct |#loc._this_| |#tok$1^13.1| |#file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cexamples?5CLockFreeIncr.c|))
)
(push 1)
(set-info :boogie-vc-id f)
(assert (not
(let (($start_correct  (=> (! (and %lbl%+24631 true) :lblpos +24631) (=> (= ($sizeof ^^i1) 1) (=> (and (and (= ($sizeof ^^i2) 2) (= ($sizeof ^^i4) 4)) (and (= ($sizeof ^^i8) 8) (= ($sizeof ^^u1) 1))) (=> (and (and (and (and (and (and (and (= ($sizeof ^^u2) 2) (= ($sizeof ^^u4) 4)) (and (= ($sizeof ^^u8) 8) (= ($sizeof ^^f4) 4))) (and (and (= ($sizeof ^^f8) 8) (= ($as_in_range_t ^^i1) ^^i1)) (and (= ($as_in_range_t ^^i2) ^^i2) (= ($as_in_range_t ^^i4) ^^i4)))) (and (and (and (= ($as_in_range_t ^^i8) ^^i8) (= ($as_in_range_t ^^u1) ^^u1)) (and (= ($as_in_range_t ^^u2) ^^u2) (= ($as_in_range_t ^^u4) ^^u4))) (and (and (= ($as_in_range_t ^^u8) ^^u8) (= ($as_in_range_t ^^f4) ^^f4)) (and (= ($as_in_range_t ^^f8) ^^f8) (= ($sizeof |^$#thread_id_t|) 1))))) (and (and (and (and (= ($sizeof |^$#ptrset|) 1) (= ($ptr_level ^^i1) 0)) (and (= ($ptr_level ^^i2) 0) (= ($ptr_level ^^i4) 0))) (and (and (= ($ptr_level ^^i8) 0) (= ($ptr_level ^^u1) 0)) (and (= ($ptr_level ^^u2) 0) (= ($ptr_level ^^u4) 0)))) (and (and (and (= ($ptr_level ^^u8) 0) (= ($ptr_level ^^f4) 0)) (and (= ($ptr_level ^^f8) 0) (= ($ptr_level ^^mathint) 0))) (and (and (= ($ptr_level ^^bool) 0) (= ($ptr_level ^^void) 0)) (and (= ($ptr_level ^^claim) 0) (= ($ptr_level ^^root_emb) 0)))))) (and (and (and (and (and (= ($ptr_level |^$#ptrset|) 0) (= ($ptr_level |^$#thread_id_t|) 0)) (and (= ($ptr_level |^$#state_t|) 0) (= ($ptr_level |^$#struct|) 0))) (and (and ($is_composite ^^claim) ($is_composite ^^root_emb)) (and (forall ((|#n| T@$ctype) ) (! (= ($unptr_to ($ptr_to |#n|)) |#n|)
 :qid |BBf6slic.408:18|
 :skolemid |4|
 :pattern ( ($ptr_to |#n|))
)) (forall ((|#n_$0| T@$ctype) ) (! (= ($unptr_to ($spec_ptr_to |#n_$0|)) |#n_$0|)
 :qid |BBf6slic.409:18|
 :skolemid |5|
 :pattern ( ($spec_ptr_to |#n_$0|))
))))) (and (and (and (forall ((|#n_$1| T@$ctype) ) (! (= ($sizeof ($ptr_to |#n_$1|)) $arch_ptr_size)
 :qid |BBf6slic.410:18|
 :skolemid |6|
 :pattern ( ($ptr_to |#n_$1|))
)) (forall ((|#n_$2| T@$ctype) ) (! (= ($sizeof ($ptr_to |#n_$2|)) $arch_ptr_size)
 :qid |BBf6slic.411:18|
 :skolemid |7|
 :pattern ( ($spec_ptr_to |#n_$2|))
))) (and (forall ((|#n_$3| T@$ctype) ) (! (= ($ptr_level ($ptr_to |#n_$3|)) (+ ($ptr_level |#n_$3|) 17))
 :qid |BBf6slic.412:18|
 :skolemid |8|
 :pattern ( ($ptr_to |#n_$3|))
)) (forall ((|#n_$4| T@$ctype) ) (! (= ($ptr_level ($spec_ptr_to |#n_$4|)) (+ ($ptr_level |#n_$4|) 31))
 :qid |BBf6slic.413:18|
 :skolemid |9|
 :pattern ( ($spec_ptr_to |#n_$4|))
)))) (and (and (forall ((|#r_$1| T@$ctype) (|#d_$1| T@$ctype) ) (! (= ($ptr_level ($map_t |#r_$1| |#d_$1|)) (+ ($ptr_level |#r_$1|) 23))
 :qid |BBf6slic.414:18|
 :skolemid |10|
 :pattern ( ($map_t |#r_$1| |#d_$1|))
)) (forall ((t_$10 T@$ctype) ) (!  (and (=> ($is_primitive t_$10) (= ($kind_of t_$10) $kind_primitive)) (=> (= ($kind_of t_$10) $kind_primitive) ($is_primitive t_$10)))
 :qid |BBf6slic.415:18|
 :weight 0
 :skolemid |11|
 :pattern ( ($is_primitive t_$10))
))) (and (forall ((t T@$ctype) ) (!  (and (=> (= ($kind_of t) $kind_primitive) (= ($kind_of t) $kind_primitive)) (=> (= ($kind_of t) $kind_primitive) (= ($kind_of t) $kind_primitive)))
 :qid |BBf6slic.416:18|
 :skolemid |12|
)) (forall ((t_$11 T@$ctype) ) (!  (and (=> ($is_composite t_$11) (= ($kind_of t_$11) $kind_composite)) (=> (= ($kind_of t_$11) $kind_composite) ($is_composite t_$11)))
 :qid |BBf6slic.417:18|
 :weight 0
 :skolemid |13|
 :pattern ( ($is_composite t_$11))
)))))) (and (and (and (and (forall ((t_$0 T@$ctype) ) (!  (and (=> (= ($kind_of t_$0) $kind_composite) (= ($kind_of t_$0) $kind_composite)) (=> (= ($kind_of t_$0) $kind_composite) (= ($kind_of t_$0) $kind_composite)))
 :qid |BBf6slic.418:18|
 :skolemid |14|
)) (forall ((t_$12 T@$ctype) ) (!  (and (=> ($is_arraytype t_$12) (= ($kind_of t_$12) $kind_array)) (=> (= ($kind_of t_$12) $kind_array) ($is_arraytype t_$12)))
 :qid |BBf6slic.419:18|
 :weight 0
 :skolemid |15|
 :pattern ( ($is_arraytype t_$12))
))) (and (forall ((t_$1 T@$ctype) ) (!  (and (=> (= ($kind_of t_$1) $kind_array) (= ($kind_of t_$1) $kind_array)) (=> (= ($kind_of t_$1) $kind_array) (= ($kind_of t_$1) $kind_array)))
 :qid |BBf6slic.420:18|
 :skolemid |16|
)) (forall ((t_$13 T@$ctype) ) (!  (and (=> ($is_threadtype t_$13) (= ($kind_of t_$13) $kind_thread)) (=> (= ($kind_of t_$13) $kind_thread) ($is_threadtype t_$13)))
 :qid |BBf6slic.421:18|
 :weight 0
 :skolemid |17|
 :pattern ( ($is_threadtype t_$13))
)))) (and (and (forall ((p T@$ptr) ) (!  (and (=> ($is_threadtype ($typ p)) ($is_threadtype ($typ p))) (=> ($is_threadtype ($typ p)) ($is_threadtype ($typ p))))
 :qid |BBf6slic.422:18|
 :skolemid |18|
)) (forall ((p_$0 T@$ptr) ) (!  (and (=> (= ($kind_of ($typ p_$0)) $kind_composite) (= ($kind_of ($typ p_$0)) $kind_composite)) (=> (= ($kind_of ($typ p_$0)) $kind_composite) (= ($kind_of ($typ p_$0)) $kind_composite)))
 :qid |BBf6slic.423:18|
 :skolemid |19|
))) (and (forall ((t_$14 T@$ctype) ) (!  (=> ($is_composite t_$14) ($is_non_primitive t_$14))
 :qid |BBf6slic.424:18|
 :weight 0
 :skolemid |20|
 :pattern ( ($is_composite t_$14))
)) (forall ((t_$15 T@$ctype) ) (!  (=> ($is_arraytype t_$15) ($is_non_primitive t_$15))
 :qid |BBf6slic.425:18|
 :weight 0
 :skolemid |21|
 :pattern ( ($is_arraytype t_$15))
))))) (and (and (and (forall ((t_$16 T@$ctype) ) (!  (=> ($is_threadtype t_$16) ($is_non_primitive t_$16))
 :qid |BBf6slic.426:18|
 :weight 0
 :skolemid |22|
 :pattern ( ($is_threadtype t_$16))
)) (forall ((t_$2 T@$ctype) ) (!  (and (=> (not (= ($kind_of t_$2) $kind_primitive)) (not (= ($kind_of t_$2) $kind_primitive))) (=> (not (= ($kind_of t_$2) $kind_primitive)) (not (= ($kind_of t_$2) $kind_primitive))))
 :qid |BBf6slic.427:18|
 :skolemid |23|
))) (and (forall ((p_$1 T@$ptr) ) (!  (and (=> ($is_non_primitive ($typ p_$1)) ($is_non_primitive ($typ p_$1))) (=> ($is_non_primitive ($typ p_$1)) ($is_non_primitive ($typ p_$1))))
 :qid |BBf6slic.428:18|
 :skolemid |24|
)) (forall ((|#r_$2| T@$ctype) (|#d_$2| T@$ctype) ) (! ($is_primitive ($map_t |#r_$2| |#d_$2|))
 :qid |BBf6slic.429:18|
 :skolemid |25|
 :pattern ( ($map_t |#r_$2| |#d_$2|))
)))) (and (and (forall ((|#n_$5| T@$ctype) ) (! ($is_primitive ($ptr_to |#n_$5|))
 :qid |BBf6slic.430:18|
 :skolemid |26|
 :pattern ( ($ptr_to |#n_$5|))
)) (forall ((|#n_$6| T@$ctype) ) (! ($is_primitive ($spec_ptr_to |#n_$6|))
 :qid |BBf6slic.431:18|
 :skolemid |27|
 :pattern ( ($spec_ptr_to |#n_$6|))
))) (and (forall ((|#n_$7| T@$ctype) ) (!  (=> ($is_primitive |#n_$7|) (not ($is_claimable |#n_$7|)))
 :qid |BBf6slic.432:18|
 :skolemid |28|
 :pattern ( ($is_primitive |#n_$7|))
)) (forall ((|#n_$8| T@$ctype) ) (!  (=> ($is_claimable |#n_$8|) ($is_composite |#n_$8|))
 :qid |BBf6slic.433:18|
 :skolemid |29|
 :pattern ( ($is_claimable |#n_$8|))
)))))))) (and (and (and (and (and (and ($is_primitive ^^void) ($is_primitive ^^bool)) (and ($is_primitive ^^mathint) ($is_primitive |^$#ptrset|))) (and (and ($is_primitive |^$#state_t|) ($is_threadtype |^$#thread_id_t|)) (and ($is_primitive ^^i1) ($is_primitive ^^i2)))) (and (and (and ($is_primitive ^^i4) ($is_primitive ^^i8)) (and ($is_primitive ^^u1) ($is_primitive ^^u2))) (and (and ($is_primitive ^^u4) ($is_primitive ^^u8)) (and ($is_primitive ^^f4) ($is_primitive ^^f8))))) (and (and (and (and ($in_range_spec_ptr $me_ref) (not (= $me_ref 0))) (= $me ($ptr |^$#thread_id_t| $me_ref))) (and (and (forall ((s T@$state) ) (! (= s s)
 :qid |BBf6slic.452:18|
 :skolemid |30|
)) (forall ((M T@$memory_t) (p_$54 T@$ptr) (v_$0 Int) ) (! (= ($select.mem ($store.mem M p_$54 v_$0) p_$54) v_$0)
 :qid |BBf6slic.453:18|
 :weight 0
 :skolemid |31|
))) (and (forall ((M_$0 T@$memory_t) (p_$55 T@$ptr) (q_$2 T@$ptr) (v_$1 Int) ) (!  (or (= p_$55 q_$2) (= ($select.mem ($store.mem M_$0 p_$55 v_$1) q_$2) ($select.mem M_$0 q_$2)))
 :qid |BBf6slic.454:18|
 :weight 0
 :skolemid |32|
)) (forall ((M_$1 T@$memory_t) (p_$56 T@$ptr) (q_$3 T@$ptr) (sz_$12 Int) (v_$2 Int) ) (!  (or (and (and (= ($typ p_$56) ($typ q_$3)) (<= ($ref q_$3) ($ref p_$56))) (< ($ref p_$56) ($ref ($idx q_$3 sz_$12 ($typ q_$3))))) (= ($select_range.mem ($store.mem M_$1 p_$56 v_$2) q_$3 sz_$12) ($select_range.mem M_$1 q_$3 sz_$12)))
 :qid |BBf6slic.455:18|
 :weight 0
 :skolemid |33|
))))) (and (and (and (forall ((M_$2 T@$typemap_t) (p_$57 T@$ptr) (v_$3 T@$type_state) ) (! (= ($select.tm ($store.tm M_$2 p_$57 v_$3) p_$57) v_$3)
 :qid |BBf6slic.456:18|
 :weight 0
 :skolemid |34|
)) (forall ((M_$3 T@$typemap_t) (p_$58 T@$ptr) (q_$4 T@$ptr) (v_$4 T@$type_state) ) (!  (or (= p_$58 q_$4) (= ($select.tm ($store.tm M_$3 p_$58 v_$4) q_$4) ($select.tm M_$3 q_$4)))
 :qid |BBf6slic.457:18|
 :weight 0
 :skolemid |35|
))) (and (forall ((M_$4 T@$statusmap_t) (p_$59 T@$ptr) (v_$5 T@$status) ) (! (= ($select.sm ($store.sm M_$4 p_$59 v_$5) p_$59) v_$5)
 :qid |BBf6slic.458:18|
 :weight 0
 :skolemid |36|
)) (forall ((M_$5 T@$statusmap_t) (p_$60 T@$ptr) (q_$5 T@$ptr) (v_$6 T@$status) ) (!  (or (= p_$60 q_$5) (= ($select.sm ($store.sm M_$5 p_$60 v_$6) q_$5) ($select.sm M_$5 q_$5)))
 :qid |BBf6slic.459:18|
 :weight 0
 :skolemid |37|
)))) (and (and (forall ((p_$2 T@$ptr) (s_$0 T@$state) ) (! (= ($select.mem ($memory s_$0) p_$2) ($select.mem ($memory s_$0) p_$2))
 :qid |BBf6slic.460:18|
 :skolemid |38|
)) (forall ((sz Int) (p_$3 T@$ptr) (s_$1 T@$state) ) (! (= ($select_range.mem ($memory s_$1) p_$3 sz) ($select_range.mem ($memory s_$1) p_$3 sz))
 :qid |BBf6slic.461:18|
 :skolemid |39|
))) (and (forall ((p_$4 T@$ptr) (s2 T@$state) (s1 T@$state) ) (!  (and (=> (= ($select.mem ($memory s1) p_$4) ($select.mem ($memory s2) p_$4)) (= ($select.mem ($memory s1) p_$4) ($select.mem ($memory s2) p_$4))) (=> (= ($select.mem ($memory s1) p_$4) ($select.mem ($memory s2) p_$4)) (= ($select.mem ($memory s1) p_$4) ($select.mem ($memory s2) p_$4))))
 :qid |BBf6slic.462:18|
 :skolemid |40|
)) (forall ((p_$5 T@$ptr) (s2_$0 T@$state) (s1_$0 T@$state) ) (!  (and (=> (= ($select.sm ($statusmap s1_$0) p_$5) ($select.sm ($statusmap s2_$0) p_$5)) (= ($select.sm ($statusmap s1_$0) p_$5) ($select.sm ($statusmap s2_$0) p_$5))) (=> (= ($select.sm ($statusmap s1_$0) p_$5) ($select.sm ($statusmap s2_$0) p_$5)) (= ($select.sm ($statusmap s1_$0) p_$5) ($select.sm ($statusmap s2_$0) p_$5))))
 :qid |BBf6slic.463:18|
 :skolemid |41|
))))))) (and (and (and (and (and (forall ((p_$6 T@$ptr) (s2_$1 T@$state) (s1_$1 T@$state) ) (!  (and (=> (= ($select.tm ($typemap s1_$1) p_$6) ($select.tm ($typemap s2_$1) p_$6)) (= ($select.tm ($typemap s1_$1) p_$6) ($select.tm ($typemap s2_$1) p_$6))) (=> (= ($select.tm ($typemap s1_$1) p_$6) ($select.tm ($typemap s2_$1) p_$6)) (= ($select.tm ($typemap s1_$1) p_$6) ($select.tm ($typemap s2_$1) p_$6))))
 :qid |BBf6slic.464:18|
 :skolemid |42|
)) (forall ((S1_$5 T@$state) (S2_$4 T@$state) (p_$61 T@$ptr) (sz_$13 Int) ) (!  (=> (forall ((i_$7 Int) ) (!  (=> (and (<= 0 i_$7) (< i_$7 sz_$13)) (= ($select.mem ($memory S1_$5) ($idx p_$61 i_$7 ($typ p_$61))) ($select.mem ($memory S2_$4) ($idx p_$61 i_$7 ($typ p_$61)))))
 :qid |BBf6slic.465:175|
 :skolemid |43|
)) (= ($select_range.mem ($memory S1_$5) p_$61 sz_$13) ($select_range.mem ($memory S2_$4) p_$61 sz_$13)))
 :qid |BBf6slic.465:18|
 :skolemid |44|
 :pattern ( ($call_transition S1_$5 S2_$4) ($select_range.mem ($memory S2_$4) p_$61 sz_$13))
))) (and (forall ((p_$62 T@$ptr) (q_$6 T@$ptr) (r_$0 T@$ptr) ) (!  (=> (and ($extent_hint p_$62 q_$6) ($extent_hint q_$6 r_$0)) ($extent_hint p_$62 r_$0))
 :qid |BBf6slic.466:18|
 :skolemid |45|
 :pattern ( ($extent_hint p_$62 q_$6) ($extent_hint q_$6 r_$0))
)) (forall ((p_$63 T@$ptr) ) (! ($extent_hint p_$63 p_$63)
 :qid |BBf6slic.467:18|
 :skolemid |46|
 :pattern ( ($typ p_$63))
)))) (and (and (forall ((|#t_$5| T@$ctype) (|#b| Int) ) (! (= ($typ ($ptr |#t_$5| |#b|)) |#t_$5|)
 :qid |BBf6slic.468:18|
 :weight 0
 :skolemid |47|
)) (forall ((|#t_$6| T@$ctype) (|#b_$0| Int) ) (! (= ($ref ($ptr |#t_$6| |#b_$0|)) |#b_$0|)
 :qid |BBf6slic.469:18|
 :weight 0
 :skolemid |48|
))) (and (forall ((p_$64 T@$ptr) (f_$12 T@$field) ) (!  (and (= ($ghost_emb ($ghost_ref p_$64 f_$12)) p_$64) (= ($ghost_path ($ghost_ref p_$64 f_$12)) f_$12))
 :qid |BBf6slic.470:18|
 :weight 0
 :skolemid |49|
 :pattern ( ($ghost_ref p_$64 f_$12))
)) (forall ((p_$65 T@$ptr) (f_$13 T@$field) ) (! ($in_range_spec_ptr ($ghost_ref p_$65 f_$13))
 :qid |BBf6slic.471:18|
 :skolemid |50|
 :pattern ( ($ghost_ref p_$65 f_$13))
))))) (and (and (and (forall ((fld T@$field) (off Int) ) (!  (and (and (not ($is_base_field ($array_path fld off))) (= ($array_path_1 ($array_path fld off)) fld)) (= ($array_path_2 ($array_path fld off)) off))
 :qid |BBf6slic.472:18|
 :weight 0
 :skolemid |51|
 :pattern ( ($array_path fld off))
)) (= $null ($ptr ^^void 0))) (and (forall ((|#p_$19| T@$ptr) (|#t_$7| T@$ctype) ) (!  (and (=> ($is |#p_$19| |#t_$7|) (= ($typ |#p_$19|) |#t_$7|)) (=> (= ($typ |#p_$19|) |#t_$7|) ($is |#p_$19| |#t_$7|)))
 :qid |BBf6slic.474:18|
 :weight 0
 :skolemid |52|
)) (forall ((|#p_$20| T@$ptr) (|#t_$8| T@$ctype) ) (!  (=> ($is |#p_$20| |#t_$8|) (= |#p_$20| ($ptr |#t_$8| ($ref |#p_$20|))))
 :qid |BBf6slic.475:18|
 :skolemid |53|
 :pattern ( ($is |#p_$20| |#t_$8|))
)))) (and (and (forall ((|#t| T@$ctype) (|#p| T@$ptr) ) (! (= ($ptr |#t| ($ref |#p|)) ($ptr |#t| ($ref |#p|)))
 :qid |BBf6slic.476:18|
 :skolemid |54|
)) (forall ((t_$3 T@$ctype) (p_$7 T@$ptr) (S T@$state) ) (! (= ($ptr t_$3 ($select.mem ($memory S) p_$7)) ($ptr t_$3 ($select.mem ($memory S) p_$7)))
 :qid |BBf6slic.477:18|
 :skolemid |55|
))) (and (forall ((|#p_$0| T@$ptr) (S_$0 T@$state) ) (! (= ($ts_emb ($select.tm ($typemap S_$0) |#p_$0|)) ($ts_emb ($select.tm ($typemap S_$0) |#p_$0|)))
 :qid |BBf6slic.478:18|
 :skolemid |56|
)) (forall ((|#p_$1| T@$ptr) (S_$1 T@$state) ) (! (= ($ts_path ($select.tm ($typemap S_$1) |#p_$1|)) ($ts_path ($select.tm ($typemap S_$1) |#p_$1|)))
 :qid |BBf6slic.479:18|
 :skolemid |57|
)))))) (and (and (and (and (forall ((t_$4 T@$ctype) (f T@$field) ) (!  (and (=> (and ($is_base_field f) (= ($field_parent_type f) t_$4)) (and ($is_base_field f) (= ($field_parent_type f) t_$4))) (=> (and ($is_base_field f) (= ($field_parent_type f) t_$4)) (and ($is_base_field f) (= ($field_parent_type f) t_$4))))
 :qid |BBf6slic.480:18|
 :skolemid |58|
)) (forall ((isvolatile Bool) (tp T@$ctype) (f_$0 T@$field) (p_$8 T@$ptr) (S_$2 T@$state) ) (!  (and (=> (and (and (and (and ($is ($dot p_$8 f_$0) tp) ($typed S_$2 ($dot p_$8 f_$0))) (= ($ts_emb ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) p_$8)) (= ($ts_path ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) f_$0)) (and (=> ($ts_is_volatile ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) isvolatile) (=> isvolatile ($ts_is_volatile ($select.tm ($typemap S_$2) ($dot p_$8 f_$0)))))) (and (and (and (and ($is ($dot p_$8 f_$0) tp) ($typed S_$2 ($dot p_$8 f_$0))) (= ($ts_emb ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) p_$8)) (= ($ts_path ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) f_$0)) (and (=> ($ts_is_volatile ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) isvolatile) (=> isvolatile ($ts_is_volatile ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))))))) (=> (and (and (and (and ($is ($dot p_$8 f_$0) tp) ($typed S_$2 ($dot p_$8 f_$0))) (= ($ts_emb ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) p_$8)) (= ($ts_path ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) f_$0)) (and (=> ($ts_is_volatile ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) isvolatile) (=> isvolatile ($ts_is_volatile ($select.tm ($typemap S_$2) ($dot p_$8 f_$0)))))) (and (and (and (and ($is ($dot p_$8 f_$0) tp) ($typed S_$2 ($dot p_$8 f_$0))) (= ($ts_emb ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) p_$8)) (= ($ts_path ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) f_$0)) (and (=> ($ts_is_volatile ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))) isvolatile) (=> isvolatile ($ts_is_volatile ($select.tm ($typemap S_$2) ($dot p_$8 f_$0))))))))
 :qid |BBf6slic.481:18|
 :skolemid |59|
))) (and (forall ((ts T@$type_state) ) (!  (and (not (= ($kind_of ($typ ($ts_emb ts))) $kind_primitive)) ($is_non_primitive ($typ ($ts_emb ts))))
 :qid |BBf6slic.482:18|
 :skolemid |60|
 :pattern ( ($ts_emb ts))
)) (forall ((S_$55 T@$state) (p_$67 T@$ptr) ) (!  (=> ($typed S_$55 p_$67) ($typed S_$55 ($ts_emb ($select.tm ($typemap S_$55) p_$67))))
 :qid |BBf6slic.483:18|
 :skolemid |61|
 :pattern ( ($typed S_$55 p_$67) ($select.tm ($typemap S_$55) ($ts_emb ($select.tm ($typemap S_$55) p_$67))))
)))) (and (and (forall ((p_$9 T@$ptr) (S_$3 T@$state) ) (!  (and (=> (= ($ts_emb ($select.tm ($typemap S_$3) p_$9)) ($ptr ^^root_emb ($ref p_$9))) (= ($ts_emb ($select.tm ($typemap S_$3) p_$9)) ($ptr ^^root_emb ($ref p_$9)))) (=> (= ($ts_emb ($select.tm ($typemap S_$3) p_$9)) ($ptr ^^root_emb ($ref p_$9))) (= ($ts_emb ($select.tm ($typemap S_$3) p_$9)) ($ptr ^^root_emb ($ref p_$9)))))
 :qid |BBf6slic.484:18|
 :skolemid |62|
)) (forall ((p_$10 T@$ptr) (S_$4 T@$state) ) (!  (and (=> ($ts_is_volatile ($select.tm ($typemap S_$4) p_$10)) ($ts_is_volatile ($select.tm ($typemap S_$4) p_$10))) (=> ($ts_is_volatile ($select.tm ($typemap S_$4) p_$10)) ($ts_is_volatile ($select.tm ($typemap S_$4) p_$10))))
 :qid |BBf6slic.485:18|
 :skolemid |63|
))) (and (forall ((S_$56 T@$state) (p_$68 T@$ptr) ) (!  (=> (and ($good_state S_$56) ($ts_is_volatile ($select.tm ($typemap S_$56) p_$68))) (= ($kind_of ($typ p_$68)) $kind_primitive))
 :qid |BBf6slic.486:18|
 :skolemid |64|
 :pattern ( ($ts_is_volatile ($select.tm ($typemap S_$56) p_$68)))
)) (forall ((p_$11 T@$ptr) (S_$5 T@$state) ) (!  (and (=> (= ($ts_emb ($select.tm ($typemap S_$5) p_$11)) ($ptr ^^root_emb ($ref p_$11))) (= ($ts_emb ($select.tm ($typemap S_$5) p_$11)) ($ptr ^^root_emb ($ref p_$11)))) (=> (= ($ts_emb ($select.tm ($typemap S_$5) p_$11)) ($ptr ^^root_emb ($ref p_$11))) (= ($ts_emb ($select.tm ($typemap S_$5) p_$11)) ($ptr ^^root_emb ($ref p_$11)))))
 :qid |BBf6slic.487:18|
 :skolemid |65|
))))) (and (and (and (forall ((S_$57 T@$state) (p_$69 T@$ptr) ) (!  (or (<= ($timestamp S_$57 p_$69) ($current_timestamp S_$57)) (not ($ts_typed ($select.tm ($typemap S_$57) p_$69))))
 :qid |BBf6slic.488:18|
 :weight 0
 :skolemid |66|
 :pattern ( ($select.sm ($statusmap S_$57) p_$69))
)) (forall ((p_$12 T@$ptr) (M2 T@$state) (M1 T@$state) ) (!  (and (=> (and (< ($current_timestamp M1) ($timestamp M2 p_$12)) (<= ($timestamp M2 p_$12) ($current_timestamp M2))) (and (< ($current_timestamp M1) ($timestamp M2 p_$12)) (<= ($timestamp M2 p_$12) ($current_timestamp M2)))) (=> (and (< ($current_timestamp M1) ($timestamp M2 p_$12)) (<= ($timestamp M2 p_$12) ($current_timestamp M2))) (and (< ($current_timestamp M1) ($timestamp M2 p_$12)) (<= ($timestamp M2 p_$12) ($current_timestamp M2)))))
 :qid |BBf6slic.489:18|
 :skolemid |67|
))) (and (forall ((p_$13 T@$ptr) (begin_time Int) (S_$6 T@$state) ) (!  (and (=> (and (or ($in_writes_at begin_time p_$13) (>= ($timestamp S_$6 p_$13) begin_time)) ($mutable S_$6 p_$13)) (and (or ($in_writes_at begin_time p_$13) (>= ($timestamp S_$6 p_$13) begin_time)) ($mutable S_$6 p_$13))) (=> (and (or ($in_writes_at begin_time p_$13) (>= ($timestamp S_$6 p_$13) begin_time)) ($mutable S_$6 p_$13)) (and (or ($in_writes_at begin_time p_$13) (>= ($timestamp S_$6 p_$13) begin_time)) ($mutable S_$6 p_$13))))
 :qid |BBf6slic.490:18|
 :skolemid |68|
)) (forall ((p_$14 T@$ptr) (begin_time_$0 Int) (S_$7 T@$state) ) (!  (and (=> (and (or ($in_writes_at begin_time_$0 p_$14) (>= ($timestamp S_$7 p_$14) begin_time_$0)) (and (and ($typed S_$7 p_$14) (= ($owner S_$7 p_$14) $me)) (=> (= ($kind_of ($typ p_$14)) $kind_primitive) (not ($closed S_$7 p_$14))))) (and (or ($in_writes_at begin_time_$0 p_$14) (>= ($timestamp S_$7 p_$14) begin_time_$0)) (and (and ($typed S_$7 p_$14) (= ($owner S_$7 p_$14) $me)) (=> (= ($kind_of ($typ p_$14)) $kind_primitive) (not ($closed S_$7 p_$14)))))) (=> (and (or ($in_writes_at begin_time_$0 p_$14) (>= ($timestamp S_$7 p_$14) begin_time_$0)) (and (and ($typed S_$7 p_$14) (= ($owner S_$7 p_$14) $me)) (=> (= ($kind_of ($typ p_$14)) $kind_primitive) (not ($closed S_$7 p_$14))))) (and (or ($in_writes_at begin_time_$0 p_$14) (>= ($timestamp S_$7 p_$14) begin_time_$0)) (and (and ($typed S_$7 p_$14) (= ($owner S_$7 p_$14) $me)) (=> (= ($kind_of ($typ p_$14)) $kind_primitive) (not ($closed S_$7 p_$14)))))))
 :qid |BBf6slic.491:18|
 :skolemid |69|
)))) (and (and ($good_state ($vs_state $struct_zero)) (forall ((t_$5 T@$ctype) (s_$2 T@$struct) ) (! (= ($ptr t_$5 ($vs_base_ref s_$2)) ($ptr t_$5 ($vs_base_ref s_$2)))
 :qid |BBf6slic.493:18|
 :skolemid |70|
))) (and (forall ((s_$6 T@$struct) ) (! ($good_state ($vs_state s_$6))
 :qid |BBf6slic.494:18|
 :skolemid |71|
)) (forall ((S_$58 T@$state) (p_$70 T@$ptr) ) (!  (=> ($good_state S_$58) (and (= ($vs_base_ref ($vs_ctor S_$58 p_$70)) ($ref p_$70)) (= ($vs_state ($vs_ctor S_$58 p_$70)) S_$58)))
 :qid |BBf6slic.495:18|
 :skolemid |72|
 :pattern ( ($vs_ctor S_$58 p_$70))
))))))))) (=> (and (and (and (and (and (and (and (and (forall ((f_$15 T@$field) (t_$18 T@$ctype) ) (! (= ($select.mem ($memory ($vs_state $struct_zero)) ($dot ($ptr t_$18 ($vs_base_ref $struct_zero)) f_$15)) 0)
 :qid |BBf6slic.496:18|
 :skolemid |73|
 :pattern ( ($select.mem ($memory ($vs_state $struct_zero)) ($dot ($ptr t_$18 ($vs_base_ref $struct_zero)) f_$15)))
)) (forall ((f_$17 T@$field) ) (! (= ($rec_fetch $rec_zero f_$17) 0)
 :qid |BBf6slic.497:18|
 :skolemid |74|
))) (and (forall ((r_$2 T@$record) (f_$18 T@$field) (v_$7 Int) ) (! (= ($rec_fetch ($rec_update r_$2 f_$18 v_$7) f_$18) ($unchecked ($record_field_int_kind f_$18) v_$7))
 :qid |BBf6slic.498:18|
 :skolemid |75|
 :pattern ( ($rec_fetch ($rec_update r_$2 f_$18 v_$7) f_$18))
)) (forall ((r_$3 T@$record) (f_$19 T@$field) ) (! ($in_range_t ($record_field_int_kind f_$19) ($rec_fetch r_$3 f_$19))
 :qid |BBf6slic.499:18|
 :skolemid |76|
 :pattern ( ($rec_fetch r_$3 f_$19))
)))) (and (and (forall ((r_$4 T@$record) (f1 T@$field) (f2 T@$field) (v_$8 Int) ) (!  (or (= ($rec_fetch ($rec_update r_$4 f1 v_$8) f2) ($rec_fetch r_$4 f2)) (= f1 f2))
 :qid |BBf6slic.500:18|
 :skolemid |77|
 :pattern ( ($rec_fetch ($rec_update r_$4 f1 v_$8) f2))
)) (forall ((t_$19 T@$ctype) ) (!  (=> ($is_record_type t_$19) ($is_primitive t_$19))
 :qid |BBf6slic.501:18|
 :skolemid |78|
 :pattern ( ($is_record_type t_$19))
))) (and (forall ((p_$71 T@$ctype) (f_$20 T@$field) (ft T@$ctype) ) (!  (=> (and ($is_record_field p_$71 f_$20 ft) ($is_record_type ft)) (= ($as_record_record_field f_$20) f_$20))
 :qid |BBf6slic.502:18|
 :skolemid |79|
 :pattern ( ($is_record_field p_$71 f_$20 ft) ($is_record_type ft))
)) (forall ((r1 T@$record) (r2 T@$record) ) (!  (and (=> ($rec_eq r1 r2) (= r1 r2)) (=> (= r1 r2) ($rec_eq r1 r2)))
 :qid |BBf6slic.503:18|
 :skolemid |80|
 :pattern ( ($rec_eq r1 r2))
))))) (and (and (and (forall ((x_$24 Int) (y_$7 Int) ) (!  (and (=> ($rec_base_eq x_$24 y_$7) (= x_$24 y_$7)) (=> (= x_$24 y_$7) ($rec_base_eq x_$24 y_$7)))
 :qid |BBf6slic.504:18|
 :skolemid |81|
 :pattern ( ($rec_base_eq x_$24 y_$7))
)) (forall ((r1_$0 T@$record) (r2_$0 T@$record) ) (!  (=> (forall ((f_$21 T@$field) ) (! ($rec_base_eq ($rec_fetch r1_$0 f_$21) ($rec_fetch r2_$0 f_$21))
 :qid |BBf6slic.505:89|
 :skolemid |82|
)) ($rec_eq r1_$0 r2_$0))
 :qid |BBf6slic.505:18|
 :skolemid |83|
 :pattern ( ($rec_eq r1_$0 r2_$0))
))) (and (forall ((r1_$1 T@$record) (r2_$1 T@$record) (f_$22 T@$field) ) (!  (=> ($rec_eq ($int_to_record ($rec_fetch r1_$1 f_$22)) ($int_to_record ($rec_fetch r2_$1 f_$22))) ($rec_base_eq ($rec_fetch r1_$1 f_$22) ($rec_fetch r2_$1 f_$22)))
 :qid |BBf6slic.506:18|
 :skolemid |84|
 :pattern ( ($rec_base_eq ($rec_fetch r1_$1 f_$22) ($rec_fetch r2_$1 ($as_record_record_field f_$22))))
)) ($has_volatile_owns_set ^^claim))) (and (and (forall ((|#p_$21| T@$ptr) (t_$20 T@$ctype) ) (! (= ($dot |#p_$21| ($owns_set_field t_$20)) ($ptr |^$#ptrset| ($ghost_ref |#p_$21| ($owns_set_field t_$20))))
 :qid |BBf6slic.508:18|
 :skolemid |85|
 :pattern ( ($dot |#p_$21| ($owns_set_field t_$20)))
)) (forall ((S_$59 T@$state) (p_$72 T@$ptr) ) (!  (=> ($is_primitive ($typ p_$72)) (= ($owner S_$59 p_$72) ($owner S_$59 ($ts_emb ($select.tm ($typemap S_$59) p_$72)))))
 :qid |BBf6slic.509:18|
 :weight 0
 :skolemid |86|
 :pattern ( ($is_primitive ($typ p_$72)) ($owner S_$59 p_$72))
))) (and (forall ((S_$60 T@$state) (p_$73 T@$ptr) ) (!  (=> ($is_non_primitive ($typ p_$73)) (= ($owner S_$60 p_$73) ($st_owner ($select.sm ($statusmap S_$60) p_$73))))
 :qid |BBf6slic.510:18|
 :weight 0
 :skolemid |87|
 :pattern ( ($is_non_primitive ($typ p_$73)) ($owner S_$60 p_$73))
)) (forall ((S_$61 T@$state) (p_$74 T@$ptr) ) (!  (=> ($is_primitive ($typ p_$74)) (and (=> ($closed S_$61 p_$74) ($st_closed ($select.sm ($statusmap S_$61) ($ts_emb ($select.tm ($typemap S_$61) p_$74))))) (=> ($st_closed ($select.sm ($statusmap S_$61) ($ts_emb ($select.tm ($typemap S_$61) p_$74)))) ($closed S_$61 p_$74))))
 :qid |BBf6slic.511:18|
 :weight 0
 :skolemid |88|
 :pattern ( ($is_primitive ($typ p_$74)) ($closed S_$61 p_$74))
)))))) (and (and (and (and (forall ((S_$62 T@$state) (p_$75 T@$ptr) ) (!  (=> ($is_non_primitive ($typ p_$75)) (and (=> ($closed S_$62 p_$75) ($st_closed ($select.sm ($statusmap S_$62) p_$75))) (=> ($st_closed ($select.sm ($statusmap S_$62) p_$75)) ($closed S_$62 p_$75))))
 :qid |BBf6slic.512:18|
 :weight 0
 :skolemid |89|
 :pattern ( ($is_non_primitive ($typ p_$75)) ($closed S_$62 p_$75))
)) (forall ((S_$63 T@$state) (p_$76 T@$ptr) ) (!  (=> ($is_primitive ($typ p_$76)) (= ($timestamp S_$63 p_$76) ($st_timestamp ($select.sm ($statusmap S_$63) ($ts_emb ($select.tm ($typemap S_$63) p_$76))))))
 :qid |BBf6slic.513:18|
 :weight 0
 :skolemid |90|
 :pattern ( ($is_primitive ($typ p_$76)) ($timestamp S_$63 p_$76))
))) (and (forall ((S_$64 T@$state) (p_$77 T@$ptr) ) (!  (=> ($is_non_primitive ($typ p_$77)) (= ($timestamp S_$64 p_$77) ($st_timestamp ($select.sm ($statusmap S_$64) p_$77))))
 :qid |BBf6slic.514:18|
 :weight 0
 :skolemid |91|
 :pattern ( ($is_non_primitive ($typ p_$77)) ($timestamp S_$64 p_$77))
)) $position_marker)) (and (and (forall ((s_$7 T@$status) ) (!  (and (not (= ($kind_of ($typ ($st_owner s_$7))) $kind_primitive)) ($is_non_primitive ($typ ($st_owner s_$7))))
 :qid |BBf6slic.516:18|
 :skolemid |92|
 :pattern ( ($st_owner s_$7))
)) (forall ((p_$15 T@$ptr) (S_$8 T@$state) ) (! (= ($select.sm ($statusmap S_$8) p_$15) ($select.sm ($statusmap S_$8) p_$15))
 :qid |BBf6slic.517:18|
 :skolemid |93|
))) (and (forall ((p_$16 T@$ptr) (S_$9 T@$state) ) (! (= ($select.tm ($typemap S_$9) p_$16) ($select.tm ($typemap S_$9) p_$16))
 :qid |BBf6slic.518:18|
 :skolemid |94|
)) (forall ((S_$65 T@$state) (|#p_$22| T@$ptr) ) (! (= ($owns S_$65 |#p_$22|) ($int_to_ptrset ($select.mem ($memory S_$65) ($dot |#p_$22| ($owns_set_field ($typ |#p_$22|))))))
 :qid |BBf6slic.519:18|
 :weight 0
 :skolemid |95|
 :pattern ( ($owns S_$65 |#p_$22|))
))))) (and (and (and (forall ((p_$17 T@$ptr) (S_$10 T@$state) ) (!  (and (=> (not (= ($kind_of ($typ ($owner S_$10 p_$17))) $kind_thread)) (not (= ($kind_of ($typ ($owner S_$10 p_$17))) $kind_thread))) (=> (not (= ($kind_of ($typ ($owner S_$10 p_$17))) $kind_thread)) (not (= ($kind_of ($typ ($owner S_$10 p_$17))) $kind_thread))))
 :qid |BBf6slic.520:18|
 :skolemid |96|
)) (forall ((owner T@$ptr) (p_$18 T@$ptr) (S_$11 T@$state) ) (!  (and (=> (and (= ($owner S_$11 p_$18) owner) ($closed S_$11 p_$18)) (and (= ($owner S_$11 p_$18) owner) ($closed S_$11 p_$18))) (=> (and (= ($owner S_$11 p_$18) owner) ($closed S_$11 p_$18)) (and (= ($owner S_$11 p_$18) owner) ($closed S_$11 p_$18))))
 :qid |BBf6slic.521:18|
 :skolemid |97|
))) (and (forall ((|#t_$0| T@$ctype) (|#p_$2| T@$ptr) (S_$12 T@$state) ) (!  (and (=> (and (and (and (and ($closed S_$12 |#p_$2|) (= ($owner S_$12 |#p_$2|) $me)) (and ($is |#p_$2| |#t_$0|) ($typed S_$12 |#p_$2|))) (not (= ($kind_of |#t_$0|) $kind_primitive))) ($is_non_primitive |#t_$0|)) (and (and (and (and ($closed S_$12 |#p_$2|) (= ($owner S_$12 |#p_$2|) $me)) (and ($is |#p_$2| |#t_$0|) ($typed S_$12 |#p_$2|))) (not (= ($kind_of |#t_$0|) $kind_primitive))) ($is_non_primitive |#t_$0|))) (=> (and (and (and (and ($closed S_$12 |#p_$2|) (= ($owner S_$12 |#p_$2|) $me)) (and ($is |#p_$2| |#t_$0|) ($typed S_$12 |#p_$2|))) (not (= ($kind_of |#t_$0|) $kind_primitive))) ($is_non_primitive |#t_$0|)) (and (and (and (and ($closed S_$12 |#p_$2|) (= ($owner S_$12 |#p_$2|) $me)) (and ($is |#p_$2| |#t_$0|) ($typed S_$12 |#p_$2|))) (not (= ($kind_of |#t_$0|) $kind_primitive))) ($is_non_primitive |#t_$0|))))
 :qid |BBf6slic.522:18|
 :skolemid |98|
)) (forall ((p_$19 T@$ptr) (S_$13 T@$state) ) (!  (and (=> (or (not (= ($owner S_$13 p_$19) $me)) (and (= ($kind_of ($typ p_$19)) $kind_primitive) ($closed S_$13 p_$19))) (or (not (= ($owner S_$13 p_$19) $me)) (and (= ($kind_of ($typ p_$19)) $kind_primitive) ($closed S_$13 p_$19)))) (=> (or (not (= ($owner S_$13 p_$19) $me)) (and (= ($kind_of ($typ p_$19)) $kind_primitive) ($closed S_$13 p_$19))) (or (not (= ($owner S_$13 p_$19) $me)) (and (= ($kind_of ($typ p_$19)) $kind_primitive) ($closed S_$13 p_$19)))))
 :qid |BBf6slic.523:18|
 :skolemid |99|
)))) (and (and (forall ((S_$66 T@$state) (p_$78 T@$ptr) ) (!  (and (=> ($mutable S_$66 p_$78) (and (and ($typed S_$66 p_$78) (= ($owner S_$66 p_$78) $me)) (not ($closed S_$66 p_$78)))) (=> (and (and ($typed S_$66 p_$78) (= ($owner S_$66 p_$78) $me)) (not ($closed S_$66 p_$78))) ($mutable S_$66 p_$78)))
 :qid |BBf6slic.524:18|
 :weight 0
 :skolemid |100|
 :pattern ( ($mutable S_$66 p_$78))
)) (forall ((p_$20 T@$ptr) (S_$14 T@$state) ) (!  (and (=> (and ($typed S_$14 p_$20) (= ($owner S_$14 p_$20) $me)) (and ($typed S_$14 p_$20) (= ($owner S_$14 p_$20) $me))) (=> (and ($typed S_$14 p_$20) (= ($owner S_$14 p_$20) $me)) (and ($typed S_$14 p_$20) (= ($owner S_$14 p_$20) $me))))
 :qid |BBf6slic.525:18|
 :skolemid |101|
))) (and (forall ((p_$21 T@$ptr) (S_$15 T@$state) ) (!  (and (=> (and (and ($typed S_$15 p_$21) (= ($owner S_$15 p_$21) $me)) (=> (= ($kind_of ($typ p_$21)) $kind_primitive) (not ($closed S_$15 p_$21)))) (and (and ($typed S_$15 p_$21) (= ($owner S_$15 p_$21) $me)) (=> (= ($kind_of ($typ p_$21)) $kind_primitive) (not ($closed S_$15 p_$21))))) (=> (and (and ($typed S_$15 p_$21) (= ($owner S_$15 p_$21) $me)) (=> (= ($kind_of ($typ p_$21)) $kind_primitive) (not ($closed S_$15 p_$21)))) (and (and ($typed S_$15 p_$21) (= ($owner S_$15 p_$21) $me)) (=> (= ($kind_of ($typ p_$21)) $kind_primitive) (not ($closed S_$15 p_$21))))))
 :qid |BBf6slic.526:18|
 :skolemid |102|
)) (forall ((S_$67 T@$state) (|#p_$23| T@$ptr) ) (!  (=> ($good_state S_$67) (and (=> ($typed S_$67 |#p_$23|) ($ts_typed ($select.tm ($typemap S_$67) |#p_$23|))) (=> ($ts_typed ($select.tm ($typemap S_$67) |#p_$23|)) ($typed S_$67 |#p_$23|))))
 :qid |BBf6slic.527:18|
 :weight 0
 :skolemid |103|
 :pattern ( ($typed S_$67 |#p_$23|))
))))))) (and (and (and (and (and (forall ((S_$68 T@$state) (|#p_$24| T@$ptr) ) (!  (=> (and ($good_state S_$68) ($typed S_$68 |#p_$24|)) (> ($ref |#p_$24|) 0))
 :qid |BBf6slic.528:18|
 :skolemid |104|
 :pattern ( ($typed S_$68 |#p_$24|))
)) (forall ((|#r_$3| Int) ) (!  (and (=> ($in_range_phys_ptr |#r_$3|) (and (<= 0 |#r_$3|) (<= |#r_$3| $arch_spec_ptr_start))) (=> (and (<= 0 |#r_$3|) (<= |#r_$3| $arch_spec_ptr_start)) ($in_range_phys_ptr |#r_$3|)))
 :qid |BBf6slic.529:18|
 :skolemid |105|
 :pattern ( ($in_range_phys_ptr |#r_$3|))
))) (and (forall ((|#r_$4| Int) ) (!  (and (=> ($in_range_spec_ptr |#r_$4|) (or (= 0 |#r_$4|) (> |#r_$4| $arch_spec_ptr_start))) (=> (or (= 0 |#r_$4|) (> |#r_$4| $arch_spec_ptr_start)) ($in_range_spec_ptr |#r_$4|)))
 :qid |BBf6slic.530:18|
 :skolemid |106|
 :pattern ( ($in_range_spec_ptr |#r_$4|))
)) (forall ((|#t_$1| T@$ctype) (|#p_$3| T@$ptr) (S_$16 T@$state) ) (!  (and (=> (and ($is |#p_$3| |#t_$1|) ($typed S_$16 |#p_$3|)) (and ($is |#p_$3| |#t_$1|) ($typed S_$16 |#p_$3|))) (=> (and ($is |#p_$3| |#t_$1|) ($typed S_$16 |#p_$3|)) (and ($is |#p_$3| |#t_$1|) ($typed S_$16 |#p_$3|))))
 :qid |BBf6slic.531:18|
 :skolemid |107|
)))) (and (and (forall ((S_$69 T@$state) (|#r_$5| Int) (|#t_$9| T@$ctype) ) (!  (=> (and ($typed S_$69 ($ptr |#t_$9| |#r_$5|)) ($in_range_phys_ptr |#r_$5|)) ($in_range_phys_ptr (- (+ |#r_$5| ($sizeof |#t_$9|)) 1)))
 :qid |BBf6slic.532:18|
 :skolemid |108|
 :pattern ( ($typed S_$69 ($ptr |#t_$9| |#r_$5|)))
)) (forall ((|#t_$2| T@$ctype) (|#p_$4| T@$ptr) (S_$17 T@$state) ) (!  (and (=> (and (and ($is |#p_$4| |#t_$2|) ($typed S_$17 |#p_$4|)) (=> (and ($is |#p_$4| |#t_$2|) ($typed S_$17 |#p_$4|)) ($in_range_phys_ptr ($ref |#p_$4|)))) (and (and ($is |#p_$4| |#t_$2|) ($typed S_$17 |#p_$4|)) (=> (and ($is |#p_$4| |#t_$2|) ($typed S_$17 |#p_$4|)) ($in_range_phys_ptr ($ref |#p_$4|))))) (=> (and (and ($is |#p_$4| |#t_$2|) ($typed S_$17 |#p_$4|)) (=> (and ($is |#p_$4| |#t_$2|) ($typed S_$17 |#p_$4|)) ($in_range_phys_ptr ($ref |#p_$4|)))) (and (and ($is |#p_$4| |#t_$2|) ($typed S_$17 |#p_$4|)) (=> (and ($is |#p_$4| |#t_$2|) ($typed S_$17 |#p_$4|)) ($in_range_phys_ptr ($ref |#p_$4|))))))
 :qid |BBf6slic.533:18|
 :skolemid |109|
))) (and (forall ((|#t_$3| T@$ctype) (|#p_$5| T@$ptr) (S_$18 T@$state) ) (!  (and (=> (and (and ($is |#p_$5| |#t_$3|) ($typed S_$18 |#p_$5|)) (=> (and ($is |#p_$5| |#t_$3|) ($typed S_$18 |#p_$5|)) ($in_range_spec_ptr ($ref |#p_$5|)))) (and (and ($is |#p_$5| |#t_$3|) ($typed S_$18 |#p_$5|)) (=> (and ($is |#p_$5| |#t_$3|) ($typed S_$18 |#p_$5|)) ($in_range_spec_ptr ($ref |#p_$5|))))) (=> (and (and ($is |#p_$5| |#t_$3|) ($typed S_$18 |#p_$5|)) (=> (and ($is |#p_$5| |#t_$3|) ($typed S_$18 |#p_$5|)) ($in_range_spec_ptr ($ref |#p_$5|)))) (and (and ($is |#p_$5| |#t_$3|) ($typed S_$18 |#p_$5|)) (=> (and ($is |#p_$5| |#t_$3|) ($typed S_$18 |#p_$5|)) ($in_range_spec_ptr ($ref |#p_$5|))))))
 :qid |BBf6slic.534:18|
 :skolemid |110|
)) (forall ((p2 T@$ptr) (p1 T@$ptr) ) (!  (and (=> (= ($ref p1) ($ref p2)) (= ($ref p1) ($ref p2))) (=> (= ($ref p1) ($ref p2)) (= ($ref p1) ($ref p2))))
 :qid |BBf6slic.535:18|
 :skolemid |111|
))))) (and (and (and (forall ((p2_$0 T@$ptr) (p1_$0 T@$ptr) ) (!  (and (=> (not (= ($ref p1_$0) ($ref p2_$0))) (not (= ($ref p1_$0) ($ref p2_$0)))) (=> (not (= ($ref p1_$0) ($ref p2_$0))) (not (= ($ref p1_$0) ($ref p2_$0)))))
 :qid |BBf6slic.536:18|
 :skolemid |112|
)) (forall ((|#o| T@$ptr) (|#f| T@$ptr) (S_$19 T@$state) ) (!  (and (=> (and (= ($kind_of ($typ |#f|)) $kind_primitive) (= ($ts_emb ($select.tm ($typemap S_$19) |#f|)) |#o|)) (and (= ($kind_of ($typ |#f|)) $kind_primitive) (= ($ts_emb ($select.tm ($typemap S_$19) |#f|)) |#o|))) (=> (and (= ($kind_of ($typ |#f|)) $kind_primitive) (= ($ts_emb ($select.tm ($typemap S_$19) |#f|)) |#o|)) (and (= ($kind_of ($typ |#f|)) $kind_primitive) (= ($ts_emb ($select.tm ($typemap S_$19) |#f|)) |#o|))))
 :qid |BBf6slic.537:18|
 :skolemid |113|
))) (and (forall ((S1_$7 T@$state) (S2_$6 T@$state) (p_$80 T@$ptr) ) (!  (=> ($call_transition S1_$7 S2_$6) ($instantiate_int ($select.mem ($memory S1_$7) p_$80)))
 :qid |BBf6slic.538:18|
 :skolemid |114|
 :pattern ( ($select.mem ($memory S2_$6) p_$80) ($call_transition S1_$7 S2_$6))
)) (forall ((S_$70 T@$state) (p_$81 T@$ptr) ) (!  (and (=> ($is_domain_root S_$70 p_$81) true) (=> true ($is_domain_root S_$70 p_$81)))
 :qid |BBf6slic.539:18|
 :skolemid |115|
 :pattern ( ($is_domain_root S_$70 p_$81))
)))) (and (and (forall ((S_$71 T@$state) (p_$82 T@$ptr) ) (!  (and (=> ($in_wrapped_domain S_$71 p_$82) (exists ((q_$7 T@$ptr) ) (!  (and (and ($set_in p_$82 ($ver_domain ($read_version S_$71 q_$7))) (and (and (and (and ($closed S_$71 q_$7) (= ($owner S_$71 q_$7) $me)) (and ($is q_$7 ($typ q_$7)) ($typed S_$71 q_$7))) (not (= ($kind_of ($typ q_$7)) $kind_primitive))) ($is_non_primitive ($typ q_$7)))) ($is_domain_root S_$71 q_$7))
 :qid |BBf6slic.540:133|
 :skolemid |116|
 :pattern ( ($set_in2 p_$82 ($ver_domain ($read_version S_$71 q_$7))))
))) (=> (exists ((q_$7@@0 T@$ptr) ) (!  (and (and ($set_in p_$82 ($ver_domain ($read_version S_$71 q_$7@@0))) (and (and (and (and ($closed S_$71 q_$7@@0) (= ($owner S_$71 q_$7@@0) $me)) (and ($is q_$7@@0 ($typ q_$7@@0)) ($typed S_$71 q_$7@@0))) (not (= ($kind_of ($typ q_$7@@0)) $kind_primitive))) ($is_non_primitive ($typ q_$7@@0)))) ($is_domain_root S_$71 q_$7@@0))
 :qid |BBf6slic.540:133|
 :skolemid |116|
 :pattern ( ($set_in2 p_$82 ($ver_domain ($read_version S_$71 q_$7@@0))))
)) ($in_wrapped_domain S_$71 p_$82)))
 :qid |BBf6slic.540:18|
 :skolemid |117|
 :pattern ( ($in_wrapped_domain S_$71 p_$82))
)) (forall ((p_$23 T@$ptr) (S_$20 T@$state) ) (!  (and (=> (and (not (= ($kind_of ($typ p_$23)) $kind_primitive)) (or (= ($owner S_$20 p_$23) $me) ($in_wrapped_domain S_$20 p_$23))) (and (not (= ($kind_of ($typ p_$23)) $kind_primitive)) (or (= ($owner S_$20 p_$23) $me) ($in_wrapped_domain S_$20 p_$23)))) (=> (and (not (= ($kind_of ($typ p_$23)) $kind_primitive)) (or (= ($owner S_$20 p_$23) $me) ($in_wrapped_domain S_$20 p_$23))) (and (not (= ($kind_of ($typ p_$23)) $kind_primitive)) (or (= ($owner S_$20 p_$23) $me) ($in_wrapped_domain S_$20 p_$23)))))
 :qid |BBf6slic.541:18|
 :skolemid |118|
))) (and (forall ((S_$72 T@$state) (p_$83 T@$ptr) ) (!  (and (=> ($thread_local S_$72 p_$83) (and ($typed S_$72 p_$83) (or (and (and (= ($kind_of ($typ p_$83)) $kind_primitive) (or (not ($ts_is_volatile ($select.tm ($typemap S_$72) p_$83))) (not ($closed S_$72 ($ts_emb ($select.tm ($typemap S_$72) p_$83)))))) (and (not (= ($kind_of ($typ ($ts_emb ($select.tm ($typemap S_$72) p_$83)))) $kind_primitive)) (or (= ($owner S_$72 ($ts_emb ($select.tm ($typemap S_$72) p_$83))) $me) ($in_wrapped_domain S_$72 ($ts_emb ($select.tm ($typemap S_$72) p_$83)))))) (and (not (= ($kind_of ($typ p_$83)) $kind_primitive)) (or (= ($owner S_$72 p_$83) $me) ($in_wrapped_domain S_$72 p_$83)))))) (=> (and ($typed S_$72 p_$83) (or (and (and (= ($kind_of ($typ p_$83)) $kind_primitive) (or (not ($ts_is_volatile ($select.tm ($typemap S_$72) p_$83))) (not ($closed S_$72 ($ts_emb ($select.tm ($typemap S_$72) p_$83)))))) (and (not (= ($kind_of ($typ ($ts_emb ($select.tm ($typemap S_$72) p_$83)))) $kind_primitive)) (or (= ($owner S_$72 ($ts_emb ($select.tm ($typemap S_$72) p_$83))) $me) ($in_wrapped_domain S_$72 ($ts_emb ($select.tm ($typemap S_$72) p_$83)))))) (and (not (= ($kind_of ($typ p_$83)) $kind_primitive)) (or (= ($owner S_$72 p_$83) $me) ($in_wrapped_domain S_$72 p_$83))))) ($thread_local S_$72 p_$83)))
 :qid |BBf6slic.542:18|
 :skolemid |119|
 :pattern ( ($thread_local S_$72 p_$83))
)) (forall ((|#t_$4| T@$ctype) (|#p_$6| T@$ptr) (S_$21 T@$state) ) (!  (and (=> (and ($is |#p_$6| |#t_$4|) ($thread_local S_$21 |#p_$6|)) (and ($is |#p_$6| |#t_$4|) ($thread_local S_$21 |#p_$6|))) (=> (and ($is |#p_$6| |#t_$4|) ($thread_local S_$21 |#p_$6|)) (and ($is |#p_$6| |#t_$4|) ($thread_local S_$21 |#p_$6|))))
 :qid |BBf6slic.543:18|
 :skolemid |120|
)))))) (and (and (and (and (forall ((typ T@$ctype) (|#p_$7| T@$ptr) (|#s1| T@$state) ) (!  (and (=> ($inv2 |#s1| |#s1| |#p_$7| typ) ($inv2 |#s1| |#s1| |#p_$7| typ)) (=> ($inv2 |#s1| |#s1| |#p_$7| typ) ($inv2 |#s1| |#s1| |#p_$7| typ)))
 :qid |BBf6slic.544:18|
 :skolemid |121|
)) (forall ((p_$24 T@$ptr) (S2 T@$state) (S1 T@$state) ) (!  (and (=> ($inv2 S1 S2 p_$24 ($typ p_$24)) ($inv2 S1 S2 p_$24 ($typ p_$24))) (=> ($inv2 S1 S2 p_$24 ($typ p_$24)) ($inv2 S1 S2 p_$24 ($typ p_$24))))
 :qid |BBf6slic.545:18|
 :skolemid |122|
))) (and (forall ((typ_$0 T@$ctype) (|#p_$8| T@$ptr) (|#s2| T@$state) (|#s1_$0| T@$state) ) (!  (and (=> (or (and (not ($closed |#s1_$0| |#p_$8|)) (not ($closed |#s2| |#p_$8|))) (and ($inv2 |#s1_$0| |#s2| |#p_$8| typ_$0) ($nonvolatile_spans_the_same |#s1_$0| |#s2| |#p_$8| typ_$0))) (or (and (not ($closed |#s1_$0| |#p_$8|)) (not ($closed |#s2| |#p_$8|))) (and ($inv2 |#s1_$0| |#s2| |#p_$8| typ_$0) ($nonvolatile_spans_the_same |#s1_$0| |#s2| |#p_$8| typ_$0)))) (=> (or (and (not ($closed |#s1_$0| |#p_$8|)) (not ($closed |#s2| |#p_$8|))) (and ($inv2 |#s1_$0| |#s2| |#p_$8| typ_$0) ($nonvolatile_spans_the_same |#s1_$0| |#s2| |#p_$8| typ_$0))) (or (and (not ($closed |#s1_$0| |#p_$8|)) (not ($closed |#s2| |#p_$8|))) (and ($inv2 |#s1_$0| |#s2| |#p_$8| typ_$0) ($nonvolatile_spans_the_same |#s1_$0| |#s2| |#p_$8| typ_$0)))))
 :qid |BBf6slic.546:18|
 :skolemid |123|
)) (forall ((|#s1_$6| T@$state) (|#s2_$3| T@$state) (|#p_$26| T@$ptr) (|#t_$10| T@$ctype) ) (!  (and (=> ($sequential |#s1_$6| |#s2_$3| |#p_$26| |#t_$10|) (=> (and ($closed |#s1_$6| |#p_$26|) ($closed |#s2_$3| |#p_$26|)) ($spans_the_same |#s1_$6| |#s2_$3| |#p_$26| |#t_$10|))) (=> (=> (and ($closed |#s1_$6| |#p_$26|) ($closed |#s2_$3| |#p_$26|)) ($spans_the_same |#s1_$6| |#s2_$3| |#p_$26| |#t_$10|)) ($sequential |#s1_$6| |#s2_$3| |#p_$26| |#t_$10|)))
 :qid |BBf6slic.547:18|
 :weight 0
 :skolemid |124|
 :pattern ( ($sequential |#s1_$6| |#s2_$3| |#p_$26| |#t_$10|))
)))) (and (and (forall ((|#s1_$8| T@$state) (|#s2_$5| T@$state) (|#p_$27| T@$ptr) (|#t_$11| T@$ctype) ) (!  (and (=> ($spans_the_same |#s1_$8| |#s2_$5| |#p_$27| |#t_$11|) (and (and (and (= ($read_version |#s1_$8| |#p_$27|) ($read_version |#s2_$5| |#p_$27|)) (= ($owns |#s1_$8| |#p_$27|) ($owns |#s2_$5| |#p_$27|))) (= ($select.tm ($typemap |#s1_$8|) |#p_$27|) ($select.tm ($typemap |#s2_$5|) |#p_$27|))) ($state_spans_the_same |#s1_$8| |#s2_$5| |#p_$27| |#t_$11|))) (=> (and (and (and (= ($read_version |#s1_$8| |#p_$27|) ($read_version |#s2_$5| |#p_$27|)) (= ($owns |#s1_$8| |#p_$27|) ($owns |#s2_$5| |#p_$27|))) (= ($select.tm ($typemap |#s1_$8|) |#p_$27|) ($select.tm ($typemap |#s2_$5|) |#p_$27|))) ($state_spans_the_same |#s1_$8| |#s2_$5| |#p_$27| |#t_$11|)) ($spans_the_same |#s1_$8| |#s2_$5| |#p_$27| |#t_$11|)))
 :qid |BBf6slic.548:18|
 :weight 0
 :skolemid |125|
 :pattern ( ($spans_the_same |#s1_$8| |#s2_$5| |#p_$27| |#t_$11|))
)) (forall ((|#s1_$9| T@$state) (|#s2_$6| T@$state) (|#p_$28| T@$ptr) (|#t_$12| T@$ctype) ) (!  (and (=> ($nonvolatile_spans_the_same |#s1_$9| |#s2_$6| |#p_$28| |#t_$12|) (and (and (= ($read_version |#s1_$9| |#p_$28|) ($read_version |#s2_$6| |#p_$28|)) (= ($select.tm ($typemap |#s1_$9|) |#p_$28|) ($select.tm ($typemap |#s2_$6|) |#p_$28|))) ($state_nonvolatile_spans_the_same |#s1_$9| |#s2_$6| |#p_$28| |#t_$12|))) (=> (and (and (= ($read_version |#s1_$9| |#p_$28|) ($read_version |#s2_$6| |#p_$28|)) (= ($select.tm ($typemap |#s1_$9|) |#p_$28|) ($select.tm ($typemap |#s2_$6|) |#p_$28|))) ($state_nonvolatile_spans_the_same |#s1_$9| |#s2_$6| |#p_$28| |#t_$12|)) ($nonvolatile_spans_the_same |#s1_$9| |#s2_$6| |#p_$28| |#t_$12|)))
 :qid |BBf6slic.549:18|
 :weight 0
 :skolemid |126|
 :pattern ( ($nonvolatile_spans_the_same |#s1_$9| |#s2_$6| |#p_$28| |#t_$12|))
))) (and (forall ((|#p2| T@$ptr) (|#p1| T@$ptr) (S_$22 T@$state) ) (!  (and (=> ($set_in |#p1| ($extent S_$22 |#p2|)) ($set_in |#p1| ($extent S_$22 |#p2|))) (=> ($set_in |#p1| ($extent S_$22 |#p2|)) ($set_in |#p1| ($extent S_$22 |#p2|))))
 :qid |BBf6slic.550:18|
 :skolemid |127|
)) (forall ((|#p2_$0| T@$ptr) (|#p1_$0| T@$ptr) ) (!  (and (=> ($set_in |#p1_$0| ($full_extent |#p2_$0|)) ($set_in |#p1_$0| ($full_extent |#p2_$0|))) (=> ($set_in |#p1_$0| ($full_extent |#p2_$0|)) ($set_in |#p1_$0| ($full_extent |#p2_$0|))))
 :qid |BBf6slic.551:18|
 :skolemid |128|
))))) (and (and (and (forall ((T_$11 T@$ctype) ) (!  (=> ($is_primitive T_$11) (and (forall ((r_$6 Int) (p_$84 T@$ptr) ) (!  (and (=> ($set_in p_$84 ($full_extent ($ptr T_$11 r_$6))) (= p_$84 ($ptr T_$11 r_$6))) (=> (= p_$84 ($ptr T_$11 r_$6)) ($set_in p_$84 ($full_extent ($ptr T_$11 r_$6)))))
 :qid |BBf6slic.552:97|
 :skolemid |129|
 :pattern ( ($set_in p_$84 ($full_extent ($ptr T_$11 r_$6))))
)) (forall ((r_$7 Int) (S_$73 T@$state) ) (!  (and (=> ($extent_mutable S_$73 ($ptr T_$11 r_$7)) ($mutable S_$73 ($ptr T_$11 r_$7))) (=> ($mutable S_$73 ($ptr T_$11 r_$7)) ($extent_mutable S_$73 ($ptr T_$11 r_$7))))
 :qid |BBf6slic.552:275|
 :skolemid |130|
 :pattern ( ($extent_mutable S_$73 ($ptr T_$11 r_$7)))
))))
 :qid |BBf6slic.552:18|
 :skolemid |131|
 :pattern ( ($is_primitive T_$11))
)) (forall ((T_$12 T@$ctype) ) (!  (=> ($is_primitive T_$12) (forall ((S_$74 T@$state) (r_$8 Int) (p_$85 T@$ptr) ) (!  (and (=> ($set_in p_$85 ($extent S_$74 ($ptr T_$12 r_$8))) (= p_$85 ($ptr T_$12 r_$8))) (=> (= p_$85 ($ptr T_$12 r_$8)) ($set_in p_$85 ($extent S_$74 ($ptr T_$12 r_$8)))))
 :qid |BBf6slic.553:96|
 :skolemid |132|
 :pattern ( ($set_in p_$85 ($extent S_$74 ($ptr T_$12 r_$8))))
)))
 :qid |BBf6slic.553:18|
 :skolemid |133|
 :pattern ( ($is_primitive T_$12))
))) (and (forall ((S_$75 T@$state) (T_$13 T@$ctype) (sz_$14 Int) (r_$9 Int) ) (!  (and (=> ($extent_mutable S_$75 ($ptr ($array T_$13 sz_$14) r_$9)) (and ($mutable S_$75 ($ptr ($array T_$13 sz_$14) r_$9)) (forall ((i_$8 Int) ) (!  (=> (and (<= 0 i_$8) (< i_$8 sz_$14)) ($extent_mutable S_$75 ($idx ($ptr T_$13 r_$9) i_$8 T_$13)))
 :qid |BBf6slic.554:267|
 :skolemid |134|
 :pattern ( ($extent_mutable S_$75 ($idx ($ptr T_$13 r_$9) i_$8 T_$13)))
)))) (=> (and ($mutable S_$75 ($ptr ($array T_$13 sz_$14) r_$9)) (forall ((i_$8@@0 Int) ) (!  (=> (and (<= 0 i_$8@@0) (< i_$8@@0 sz_$14)) ($extent_mutable S_$75 ($idx ($ptr T_$13 r_$9) i_$8@@0 T_$13)))
 :qid |BBf6slic.554:267|
 :skolemid |134|
 :pattern ( ($extent_mutable S_$75 ($idx ($ptr T_$13 r_$9) i_$8@@0 T_$13)))
))) ($extent_mutable S_$75 ($ptr ($array T_$13 sz_$14) r_$9))))
 :qid |BBf6slic.554:18|
 :skolemid |135|
 :pattern ( ($extent_mutable S_$75 ($ptr ($array T_$13 sz_$14) r_$9)))
)) (forall ((T_$14 T@$ctype) ) (!  (=> ($is_primitive T_$14) (forall ((S_$76 T@$state) (r_$10 Int) ) (!  (and (=> ($extent_zero S_$76 ($ptr T_$14 r_$10)) (= ($select.mem ($memory S_$76) ($ptr T_$14 r_$10)) 0)) (=> (= ($select.mem ($memory S_$76) ($ptr T_$14 r_$10)) 0) ($extent_zero S_$76 ($ptr T_$14 r_$10))))
 :qid |BBf6slic.555:96|
 :skolemid |136|
 :pattern ( ($extent_zero S_$76 ($ptr T_$14 r_$10)))
)))
 :qid |BBf6slic.555:18|
 :skolemid |137|
 :pattern ( ($is_primitive T_$14))
)))) (and (and (forall ((S_$77 T@$state) (T_$15 T@$ctype) (sz_$15 Int) (r_$11 Int) ) (!  (and (=> ($extent_zero S_$77 ($ptr ($array T_$15 sz_$15) r_$11)) (forall ((i_$9 Int) ) (!  (=> (and (<= 0 i_$9) (< i_$9 sz_$15)) ($extent_zero S_$77 ($idx ($ptr T_$15 r_$11) i_$9 T_$15)))
 :qid |BBf6slic.556:212|
 :skolemid |138|
 :pattern ( ($idx ($ptr T_$15 r_$11) i_$9 T_$15))
))) (=> (forall ((i_$9@@0 Int) ) (!  (=> (and (<= 0 i_$9@@0) (< i_$9@@0 sz_$15)) ($extent_zero S_$77 ($idx ($ptr T_$15 r_$11) i_$9@@0 T_$15)))
 :qid |BBf6slic.556:212|
 :skolemid |138|
 :pattern ( ($idx ($ptr T_$15 r_$11) i_$9@@0 T_$15))
)) ($extent_zero S_$77 ($ptr ($array T_$15 sz_$15) r_$11))))
 :qid |BBf6slic.556:18|
 :skolemid |139|
 :pattern ( ($extent_zero S_$77 ($ptr ($array T_$15 sz_$15) r_$11)))
)) (forall ((|#s2_$0| T@$state) (|#s1_$1| T@$state) ) (!  (and (=> (forall ((|#p_$9_$0| T@$ptr) ) (!  (or (and (not ($closed |#s1_$1| |#p_$9_$0|)) (not ($closed |#s2_$0| |#p_$9_$0|))) (and ($inv2 |#s1_$1| |#s2_$0| |#p_$9_$0| ($typ |#p_$9_$0|)) ($nonvolatile_spans_the_same |#s1_$1| |#s2_$0| |#p_$9_$0| ($typ |#p_$9_$0|))))
 :qid |BBf6slic.557:66|
 :skolemid |140|
 :pattern ( ($closed |#s1_$1| |#p_$9_$0|))
 :pattern ( ($closed |#s2_$0| |#p_$9_$0|))
)) (forall ((|#p_$9| T@$ptr) ) (!  (or (and (not ($closed |#s1_$1| |#p_$9|)) (not ($closed |#s2_$0| |#p_$9|))) (and ($inv2 |#s1_$1| |#s2_$0| |#p_$9| ($typ |#p_$9|)) ($nonvolatile_spans_the_same |#s1_$1| |#s2_$0| |#p_$9| ($typ |#p_$9|))))
 :qid |BBf6slic.557:215|
 :skolemid |141|
 :pattern ( ($closed |#s1_$1| |#p_$9|))
 :pattern ( ($closed |#s2_$0| |#p_$9|))
))) (=> (forall ((|#p_$9@@0| T@$ptr) ) (!  (or (and (not ($closed |#s1_$1| |#p_$9@@0|)) (not ($closed |#s2_$0| |#p_$9@@0|))) (and ($inv2 |#s1_$1| |#s2_$0| |#p_$9@@0| ($typ |#p_$9@@0|)) ($nonvolatile_spans_the_same |#s1_$1| |#s2_$0| |#p_$9@@0| ($typ |#p_$9@@0|))))
 :qid |BBf6slic.557:215|
 :skolemid |141|
 :pattern ( ($closed |#s1_$1| |#p_$9@@0|))
 :pattern ( ($closed |#s2_$0| |#p_$9@@0|))
)) (forall ((|#p_$9_$0@@0| T@$ptr) ) (!  (or (and (not ($closed |#s1_$1| |#p_$9_$0@@0|)) (not ($closed |#s2_$0| |#p_$9_$0@@0|))) (and ($inv2 |#s1_$1| |#s2_$0| |#p_$9_$0@@0| ($typ |#p_$9_$0@@0|)) ($nonvolatile_spans_the_same |#s1_$1| |#s2_$0| |#p_$9_$0@@0| ($typ |#p_$9_$0@@0|))))
 :qid |BBf6slic.557:66|
 :skolemid |140|
 :pattern ( ($closed |#s1_$1| |#p_$9_$0@@0|))
 :pattern ( ($closed |#s2_$0| |#p_$9_$0@@0|))
))))
 :qid |BBf6slic.557:18|
 :skolemid |142|
))) (and (forall ((S_$23 T@$state) (t_$6 T@$token) ) (!  (and (=> (and ($good_state_ext t_$6 S_$23) ($full_stop S_$23)) (and ($good_state_ext t_$6 S_$23) ($full_stop S_$23))) (=> (and ($good_state_ext t_$6 S_$23) ($full_stop S_$23)) (and ($good_state_ext t_$6 S_$23) ($full_stop S_$23))))
 :qid |BBf6slic.558:18|
 :skolemid |143|
)) (forall ((S_$78 T@$state) ) (!  (=> ($function_entry S_$78) (and ($full_stop S_$78) (>= ($current_timestamp S_$78) 0)))
 :qid |BBf6slic.559:18|
 :skolemid |144|
 :pattern ( ($function_entry S_$78))
)))))))) (and (and (and (and (and (and (forall ((S_$79 T@$state) ) (!  (=> ($full_stop S_$79) (and ($good_state S_$79) ($invok_state S_$79)))
 :qid |BBf6slic.560:18|
 :skolemid |145|
 :pattern ( ($full_stop S_$79))
)) (forall ((S_$80 T@$state) ) (!  (=> ($invok_state S_$80) ($good_state S_$80))
 :qid |BBf6slic.561:18|
 :skolemid |146|
 :pattern ( ($invok_state S_$80))
))) (and (forall ((S_$24 T@$state) ) (!  (and (=> (forall ((|#p_$10_$0| T@$ptr) (|#q_$6| T@$ptr) ) (!  (=> (and (and ($good_state S_$24) ($set_in |#p_$10_$0| ($owns S_$24 |#q_$6|))) ($closed S_$24 |#q_$6|)) (and ($closed S_$24 |#p_$10_$0|) (not (= ($ref |#p_$10_$0|) 0))))
 :qid |BBf6slic.562:48|
 :skolemid |147|
 :pattern ( ($set_in |#p_$10_$0| ($owns S_$24 |#q_$6|)))
)) (forall ((|#p_$10| T@$ptr) (|#q| T@$ptr) ) (!  (=> (and (and ($good_state S_$24) ($set_in |#p_$10| ($owns S_$24 |#q|))) ($closed S_$24 |#q|)) (and ($closed S_$24 |#p_$10|) (not (= ($ref |#p_$10|) 0))))
 :qid |BBf6slic.562:289|
 :skolemid |148|
 :pattern ( ($set_in |#p_$10| ($owns S_$24 |#q|)))
))) (=> (forall ((|#p_$10@@0| T@$ptr) (|#q@@0| T@$ptr) ) (!  (=> (and (and ($good_state S_$24) ($set_in |#p_$10@@0| ($owns S_$24 |#q@@0|))) ($closed S_$24 |#q@@0|)) (and ($closed S_$24 |#p_$10@@0|) (not (= ($ref |#p_$10@@0|) 0))))
 :qid |BBf6slic.562:289|
 :skolemid |148|
 :pattern ( ($set_in |#p_$10@@0| ($owns S_$24 |#q@@0|)))
)) (forall ((|#p_$10_$0@@0| T@$ptr) (|#q_$6@@0| T@$ptr) ) (!  (=> (and (and ($good_state S_$24) ($set_in |#p_$10_$0@@0| ($owns S_$24 |#q_$6@@0|))) ($closed S_$24 |#q_$6@@0|)) (and ($closed S_$24 |#p_$10_$0@@0|) (not (= ($ref |#p_$10_$0@@0|) 0))))
 :qid |BBf6slic.562:48|
 :skolemid |147|
 :pattern ( ($set_in |#p_$10_$0@@0| ($owns S_$24 |#q_$6@@0|)))
))))
 :qid |BBf6slic.562:18|
 :skolemid |149|
)) (forall ((id T@$token) (S_$81 T@$state) ) (!  (=> ($good_state_ext id S_$81) ($good_state S_$81))
 :qid |BBf6slic.563:18|
 :skolemid |150|
 :pattern ( ($good_state_ext id S_$81))
)))) (and (and (forall ((S_$82 T@$state) (r_$12 Int) (t_$21 T@$ctype) ) (! (= ($ptr t_$21 ($select.mem ($memory S_$82) ($ptr ($ptr_to t_$21) r_$12))) ($read_ptr_m S_$82 ($ptr ($ptr_to t_$21) r_$12) t_$21))
 :qid |BBf6slic.564:18|
 :skolemid |151|
 :pattern ( ($ptr t_$21 ($select.mem ($memory S_$82) ($ptr ($ptr_to t_$21) r_$12))))
)) (forall ((S_$83 T@$state) (r_$13 Int) (t_$22 T@$ctype) ) (! (= ($ptr t_$22 ($select.mem ($memory S_$83) ($ptr ($spec_ptr_to t_$22) r_$13))) ($read_ptr_m S_$83 ($ptr ($spec_ptr_to t_$22) r_$13) t_$22))
 :qid |BBf6slic.565:18|
 :skolemid |152|
 :pattern ( ($ptr t_$22 ($select.mem ($memory S_$83) ($ptr ($spec_ptr_to t_$22) r_$13))))
))) (and (forall ((S_$84 T@$state) (p_$86 T@$ptr) ) (! (= ($read_version S_$84 p_$86) ($int_to_version ($select.mem ($memory S_$84) p_$86)))
 :qid |BBf6slic.566:18|
 :weight 0
 :skolemid |153|
 :pattern ( ($read_version S_$84 p_$86))
)) (forall ((S_$85 T@$state) (p_$87 T@$ptr) ) (! (= ($domain S_$85 p_$87) ($ver_domain ($read_version S_$85 p_$87)))
 :qid |BBf6slic.567:18|
 :weight 0
 :skolemid |154|
 :pattern ( ($domain S_$85 p_$87))
))))) (and (and (and (forall ((S_$86 T@$state) (p_$88 T@$ptr) (q_$8 T@$ptr) (l T@$label) ) (!  (=> ($in_domain_lab S_$86 p_$88 q_$8 l) ($inv_lab S_$86 p_$88 l))
 :qid |BBf6slic.568:18|
 :weight 0
 :skolemid |155|
 :pattern ( ($in_domain_lab S_$86 p_$88 q_$8 l))
)) (forall ((S_$87 T@$state) (p_$89 T@$ptr) (q_$9 T@$ptr) (l_$0 T@$label) ) (!  (and (=> ($in_domain_lab S_$87 p_$89 q_$9 l_$0) ($in_domain S_$87 p_$89 q_$9)) (=> ($in_domain S_$87 p_$89 q_$9) ($in_domain_lab S_$87 p_$89 q_$9 l_$0)))
 :qid |BBf6slic.569:18|
 :weight 0
 :skolemid |156|
 :pattern ( ($in_domain_lab S_$87 p_$89 q_$9 l_$0))
))) (and (forall ((S_$88 T@$state) (p_$90 T@$ptr) (q_$10 T@$ptr) (l_$1 T@$label) ) (!  (=> ($in_vdomain_lab S_$88 p_$90 q_$10 l_$1) ($inv_lab S_$88 p_$90 l_$1))
 :qid |BBf6slic.570:18|
 :weight 0
 :skolemid |157|
 :pattern ( ($in_vdomain_lab S_$88 p_$90 q_$10 l_$1))
)) (forall ((S_$89 T@$state) (p_$91 T@$ptr) (q_$11 T@$ptr) (l_$2 T@$label) ) (!  (and (=> ($in_vdomain_lab S_$89 p_$91 q_$11 l_$2) ($in_vdomain S_$89 p_$91 q_$11)) (=> ($in_vdomain S_$89 p_$91 q_$11) ($in_vdomain_lab S_$89 p_$91 q_$11 l_$2)))
 :qid |BBf6slic.571:18|
 :weight 0
 :skolemid |158|
 :pattern ( ($in_vdomain_lab S_$89 p_$91 q_$11 l_$2))
)))) (and (and (forall ((|#p_$11| T@$ptr) (S_$25 T@$state) ) (!  (and (=> (and ($typed S_$25 |#p_$11|) (not ($ts_is_volatile ($select.tm ($typemap S_$25) |#p_$11|)))) (and ($typed S_$25 |#p_$11|) (not ($ts_is_volatile ($select.tm ($typemap S_$25) |#p_$11|))))) (=> (and ($typed S_$25 |#p_$11|) (not ($ts_is_volatile ($select.tm ($typemap S_$25) |#p_$11|)))) (and ($typed S_$25 |#p_$11|) (not ($ts_is_volatile ($select.tm ($typemap S_$25) |#p_$11|))))))
 :qid |BBf6slic.572:18|
 :skolemid |159|
)) (forall ((S_$90 T@$state) (p_$92 T@$ptr) (q_$12 T@$ptr) ) (!  (=> ($in_domain S_$90 p_$92 q_$12) (and (and ($set_in p_$92 ($domain S_$90 q_$12)) ($closed S_$90 p_$92)) (forall ((r_$14 T@$ptr) ) (!  (=> (and (not ($has_volatile_owns_set ($typ p_$92))) ($set_in r_$14 ($owns S_$90 p_$92))) ($set_in2 r_$14 ($ver_domain ($read_version S_$90 q_$12))))
 :qid |BBf6slic.573:220|
 :skolemid |160|
 :pattern ( ($set_in r_$14 ($owns S_$90 p_$92)))
))))
 :qid |BBf6slic.573:18|
 :weight 0
 :skolemid |161|
 :pattern ( ($in_domain S_$90 p_$92 q_$12))
))) (and (forall ((S_$91 T@$state) (p_$93 T@$ptr) ) (!  (=> (and ($full_stop S_$91) (and (and (and (and ($closed S_$91 p_$93) (= ($owner S_$91 p_$93) $me)) (and ($is p_$93 ($typ p_$93)) ($typed S_$91 p_$93))) (not (= ($kind_of ($typ p_$93)) $kind_primitive))) ($is_non_primitive ($typ p_$93)))) ($in_domain S_$91 p_$93 p_$93))
 :qid |BBf6slic.574:18|
 :skolemid |162|
 :pattern ( ($in_domain S_$91 p_$93 p_$93))
)) (forall ((S_$92 T@$state) (p_$94 T@$ptr) (q_$13 T@$ptr) ) (!  (=> (and ($full_stop S_$92) ($set_in q_$13 ($domain S_$92 p_$94))) ($in_domain S_$92 q_$13 p_$94))
 :qid |BBf6slic.575:18|
 :weight 0
 :skolemid |163|
 :pattern ( ($in_domain S_$92 q_$13 p_$94))
)))))) (and (and (and (and (forall ((S_$93 T@$state) (p_$95 T@$ptr) (q_$14 T@$ptr) (r_$15 T@$ptr) ) (!  (=> (and (and (not ($has_volatile_owns_set ($typ q_$14))) ($set_in q_$14 ($domain S_$93 p_$95))) ($set_in0 r_$15 ($owns S_$93 q_$14))) (and ($in_domain S_$93 r_$15 p_$95) ($set_in0 r_$15 ($owns S_$93 q_$14))))
 :qid |BBf6slic.576:18|
 :weight 0
 :skolemid |164|
 :pattern ( ($set_in q_$14 ($domain S_$93 p_$95)) ($in_domain S_$93 r_$15 p_$95))
)) (forall ((S_$94 T@$state) (p_$96 T@$ptr) (q_$15 T@$ptr) (r_$16 T@$ptr) ) (!  (=> (and (and ($has_volatile_owns_set ($typ q_$15)) ($set_in q_$15 ($domain S_$94 p_$96))) (forall ((S1_$8 T@$state) ) (!  (=> (and (and ($inv2 S1_$8 S1_$8 q_$15 ($typ q_$15)) (= ($read_version S1_$8 p_$96) ($read_version S_$94 p_$96))) (= ($domain S1_$8 p_$96) ($domain S_$94 p_$96))) ($set_in0 r_$16 ($owns S1_$8 q_$15)))
 :qid |BBf6slic.577:252|
 :skolemid |165|
))) (and ($in_vdomain S_$94 r_$16 p_$96) ($set_in0 r_$16 ($owns S_$94 q_$15))))
 :qid |BBf6slic.577:18|
 :weight 0
 :skolemid |166|
 :pattern ( ($set_in q_$15 ($domain S_$94 p_$96)) ($in_vdomain S_$94 r_$16 p_$96))
))) (and (forall ((S_$95 T@$state) (p_$97 T@$ptr) (q_$16 T@$ptr) ) (!  (=> ($in_vdomain S_$95 p_$97 q_$16) ($in_domain S_$95 p_$97 q_$16))
 :qid |BBf6slic.578:18|
 :weight 0
 :skolemid |167|
 :pattern ( ($in_vdomain S_$95 p_$97 q_$16))
)) (forall ((S_$96 T@$state) (p_$98 T@$ptr) (d T@$ptr) (f_$23 T@$field) ) (!  (=> (and ($set_in p_$98 ($domain S_$96 d)) ($is_primitive_non_volatile_field f_$23)) (= ($select.mem ($memory S_$96) ($dot p_$98 f_$23)) ($fetch_from_domain ($read_version S_$96 d) ($dot p_$98 f_$23))))
 :qid |BBf6slic.579:18|
 :skolemid |168|
 :pattern ( ($set_in p_$98 ($domain S_$96 d)) ($is_primitive_non_volatile_field f_$23) ($select.mem ($memory S_$96) ($dot p_$98 f_$23)))
)))) (and (and (forall ((S_$97 T@$state) (p_$99 T@$ptr) (d_$0 T@$ptr) ) (!  (=> (and ($full_stop S_$97) ($set_in p_$99 ($domain S_$97 d_$0))) (and ($typed S_$97 p_$99) (not ($ts_is_volatile ($select.tm ($typemap S_$97) p_$99)))))
 :qid |BBf6slic.580:18|
 :skolemid |169|
 :pattern ( ($full_stop S_$97) ($set_in p_$99 ($domain S_$97 d_$0)) ($select.sm ($statusmap S_$97) p_$99))
 :pattern ( ($full_stop S_$97) ($set_in p_$99 ($domain S_$97 d_$0)) ($select.tm ($typemap S_$97) p_$99))
)) (forall ((S_$98 T@$state) (p_$100 T@$ptr) (d_$1 T@$ptr) (f_$24 T@$field) ) (!  (=> (and (and ($full_stop S_$98) ($set_in p_$100 ($domain S_$98 d_$1))) ($is_primitive_non_volatile_field f_$24)) (and ($typed S_$98 ($dot p_$100 f_$24)) (not ($ts_is_volatile ($select.tm ($typemap S_$98) ($dot p_$100 f_$24))))))
 :qid |BBf6slic.581:18|
 :skolemid |170|
 :pattern ( ($set_in p_$100 ($domain S_$98 d_$1)) ($is_primitive_non_volatile_field f_$24) ($owner S_$98 ($dot p_$100 f_$24)))
 :pattern ( ($set_in p_$100 ($domain S_$98 d_$1)) ($is_primitive_non_volatile_field f_$24) ($select.tm ($typemap S_$98) ($dot p_$100 f_$24)))
))) (and (forall ((S_$99 T@$state) (p_$101 T@$ptr) (d_$2 T@$ptr) (f_$25 T@$field) (sz_$16 Int) (i_$10 Int) (t_$23 T@$ctype) ) (!  (=> (and (and (and (and ($full_stop S_$99) ($set_in p_$101 ($domain S_$99 d_$2))) ($is_primitive_embedded_array f_$25 sz_$16)) (<= 0 i_$10)) (< i_$10 sz_$16)) (= ($select.mem ($memory S_$99) ($idx ($dot p_$101 f_$25) i_$10 t_$23)) ($fetch_from_domain ($read_version S_$99 d_$2) ($idx ($dot p_$101 f_$25) i_$10 t_$23))))
 :qid |BBf6slic.582:18|
 :skolemid |171|
 :pattern ( ($set_in p_$101 ($domain S_$99 d_$2)) ($is_primitive_embedded_array f_$25 sz_$16) ($select.mem ($memory S_$99) ($idx ($dot p_$101 f_$25) i_$10 t_$23)))
)) (forall ((S_$100 T@$state) (p_$102 T@$ptr) (d_$3 T@$ptr) (f_$26 T@$field) (sz_$17 Int) (i_$11 Int) (t_$24 T@$ctype) ) (!  (=> (and (and (and (and ($full_stop S_$100) ($set_in p_$102 ($domain S_$100 d_$3))) ($is_primitive_embedded_array f_$26 sz_$17)) (<= 0 i_$11)) (< i_$11 sz_$17)) (and ($typed S_$100 ($idx ($dot p_$102 f_$26) i_$11 t_$24)) (not ($ts_is_volatile ($select.tm ($typemap S_$100) ($idx ($dot p_$102 f_$26) i_$11 t_$24))))))
 :qid |BBf6slic.583:18|
 :skolemid |172|
 :pattern ( ($set_in p_$102 ($domain S_$100 d_$3)) ($is_primitive_embedded_array f_$26 sz_$17) ($select.tm ($typemap S_$100) ($idx ($dot p_$102 f_$26) i_$11 t_$24)))
 :pattern ( ($set_in p_$102 ($domain S_$100 d_$3)) ($is_primitive_embedded_array f_$26 sz_$17) ($owner S_$100 ($idx ($dot p_$102 f_$26) i_$11 t_$24)))
))))) (and (and (and (forall ((S_$101 T@$state) (r_$17 Int) (d_$4 T@$ptr) (sz_$18 Int) (i_$12 Int) (t_$25 T@$ctype) ) (!  (=> (and (and (and (and ($full_stop S_$101) ($is_primitive t_$25)) ($set_in ($ptr ($array t_$25 sz_$18) r_$17) ($domain S_$101 d_$4))) (<= 0 i_$12)) (< i_$12 sz_$18)) (and ($typed S_$101 ($idx ($ptr t_$25 r_$17) i_$12 t_$25)) (not ($ts_is_volatile ($select.tm ($typemap S_$101) ($idx ($ptr t_$25 r_$17) i_$12 t_$25))))))
 :qid |BBf6slic.584:18|
 :skolemid |173|
 :pattern ( ($set_in ($ptr ($array t_$25 sz_$18) r_$17) ($domain S_$101 d_$4)) ($select.tm ($typemap S_$101) ($idx ($ptr t_$25 r_$17) i_$12 t_$25)) ($is_primitive t_$25))
 :pattern ( ($set_in ($ptr ($array t_$25 sz_$18) r_$17) ($domain S_$101 d_$4)) ($owner S_$101 ($idx ($ptr t_$25 r_$17) i_$12 t_$25)) ($is_primitive t_$25))
)) (forall ((S_$102 T@$state) (r_$18 Int) (d_$5 T@$ptr) (sz_$19 Int) (i_$13 Int) (t_$26 T@$ctype) ) (!  (=> (and (and (and (and ($full_stop S_$102) ($is_primitive t_$26)) ($set_in ($ptr ($array t_$26 sz_$19) r_$18) ($domain S_$102 d_$5))) (<= 0 i_$13)) (< i_$13 sz_$19)) (= ($select.mem ($memory S_$102) ($idx ($ptr t_$26 r_$18) i_$13 t_$26)) ($fetch_from_domain ($read_version S_$102 d_$5) ($idx ($ptr t_$26 r_$18) i_$13 t_$26))))
 :qid |BBf6slic.585:18|
 :skolemid |174|
 :pattern ( ($set_in ($ptr ($array t_$26 sz_$19) r_$18) ($domain S_$102 d_$5)) ($select.mem ($memory S_$102) ($idx ($ptr t_$26 r_$18) i_$13 t_$26)) ($is_primitive t_$26))
))) (and (forall ((S_$103 T@$state) (p_$103 T@$ptr) (f_$27 T@$field) (sz_$20 Int) (i_$14 Int) (t_$27 T@$ctype) ) (!  (=> (and (and (and ($good_state S_$103) ($is_primitive_embedded_volatile_array f_$27 sz_$20 t_$27)) (<= 0 i_$14)) (< i_$14 sz_$20)) ($ts_is_volatile ($select.tm ($typemap S_$103) ($idx ($dot p_$103 f_$27) i_$14 t_$27))))
 :qid |BBf6slic.586:18|
 :skolemid |175|
 :pattern ( ($is_primitive_embedded_volatile_array f_$27 sz_$20 t_$27) ($ts_is_volatile ($select.tm ($typemap S_$103) ($idx ($dot p_$103 f_$27) i_$14 t_$27))))
)) (forall ((p_$104 T@$ptr) (S1_$9 T@$state) (S2_$7 T@$state) (q_$17 T@$ptr) ) (! ($instantiate_bool ($set_in q_$17 ($domain S2_$7 p_$104)))
 :qid |BBf6slic.587:18|
 :weight 0
 :skolemid |176|
 :pattern ( ($set_in q_$17 ($domain S1_$9 p_$104)) ($call_transition S1_$9 S2_$7))
)))) (and (and (forall ((p_$105 T@$ptr) (S1_$10 T@$state) (S2_$8 T@$state) (q_$18 T@$ptr) ) (! ($instantiate_bool ($set_in q_$18 ($ver_domain ($read_version S2_$8 p_$105))))
 :qid |BBf6slic.588:18|
 :weight 0
 :skolemid |177|
 :pattern ( ($set_in q_$18 ($ver_domain ($read_version S1_$10 p_$105))) ($call_transition S1_$10 S2_$8))
)) (forall ((p_$106 T@$ptr) (c_$2 T@$ptr) ) (!  (=> (forall ((s_$8 T@$state) ) (!  (=> ($valid_claim s_$8 c_$2) ($closed s_$8 p_$106))
 :qid |BBf6slic.589:92|
 :skolemid |178|
 :pattern ( ($dont_instantiate_state s_$8))
)) ($in_claim_domain p_$106 c_$2))
 :qid |BBf6slic.589:18|
 :skolemid |179|
 :pattern ( ($in_claim_domain p_$106 c_$2))
))) (and (forall ((S_$104 T@$state) (c_$3 T@$ptr) (obj T@$ptr) (ptr T@$ptr) ) (! (= ($by_claim S_$104 c_$3 obj ptr) ptr)
 :qid |BBf6slic.590:18|
 :weight 0
 :skolemid |180|
 :pattern ( ($by_claim S_$104 c_$3 obj ptr))
)) (forall ((S_$105 T@$state) (p_$107 T@$ptr) (c_$4 T@$ptr) (f_$28 T@$field) ) (!  (=> (and (and (and ($good_state S_$105) ($closed S_$105 c_$4)) ($in_claim_domain p_$107 c_$4)) ($is_primitive_non_volatile_field f_$28)) (and ($in_claim_domain p_$107 c_$4) (= ($select.mem ($memory S_$105) ($dot p_$107 f_$28)) ($fetch_from_domain ($claim_version c_$4) ($dot p_$107 f_$28)))))
 :qid |BBf6slic.591:18|
 :skolemid |181|
 :pattern ( ($in_claim_domain p_$107 c_$4) ($select.mem ($memory S_$105) ($dot p_$107 f_$28)))
 :pattern ( ($by_claim S_$105 c_$4 p_$107 ($dot p_$107 f_$28)))
))))))) (and (and (and (and (and (forall ((S_$106 T@$state) (p_$108 T@$ptr) (c_$5 T@$ptr) (f_$29 T@$field) (i_$15 Int) (sz_$21 Int) (t_$28 T@$ctype) ) (!  (=> (and (and (and (and (and ($good_state S_$106) ($closed S_$106 c_$5)) ($in_claim_domain p_$108 c_$5)) ($is_primitive_embedded_array f_$29 sz_$21)) (<= 0 i_$15)) (< i_$15 sz_$21)) (= ($select.mem ($memory S_$106) ($idx ($dot p_$108 f_$29) i_$15 t_$28)) ($fetch_from_domain ($claim_version c_$5) ($idx ($dot p_$108 f_$29) i_$15 t_$28))))
 :qid |BBf6slic.592:18|
 :skolemid |182|
 :pattern ( ($valid_claim S_$106 c_$5) ($in_claim_domain p_$108 c_$5) ($select.mem ($memory S_$106) ($idx ($dot p_$108 f_$29) i_$15 t_$28)) ($is_primitive_embedded_array f_$29 sz_$21))
 :pattern ( ($by_claim S_$106 c_$5 p_$108 ($idx ($dot p_$108 f_$29) i_$15 t_$28)) ($is_primitive_embedded_array f_$29 sz_$21))
)) (forall ((S_$107 T@$state) (p_$109 T@$ptr) (c_$6 T@$ptr) (i_$16 Int) (sz_$22 Int) (t_$29 T@$ctype) ) (!  (=> (and (and (and (and (and ($good_state S_$107) ($closed S_$107 c_$6)) ($in_claim_domain ($ptr ($array t_$29 sz_$22) ($ref p_$109)) c_$6)) ($is_primitive t_$29)) (<= 0 i_$16)) (< i_$16 sz_$22)) (= ($select.mem ($memory S_$107) ($idx p_$109 i_$16 t_$29)) ($fetch_from_domain ($claim_version c_$6) ($idx p_$109 i_$16 t_$29))))
 :qid |BBf6slic.593:18|
 :skolemid |183|
 :pattern ( ($valid_claim S_$107 c_$6) ($in_claim_domain ($ptr ($array t_$29 sz_$22) ($ref p_$109)) c_$6) ($select.mem ($memory S_$107) ($idx p_$109 i_$16 t_$29)) ($is_primitive t_$29))
 :pattern ( ($by_claim S_$107 c_$6 p_$109 ($idx p_$109 i_$16 t_$29)) ($is_primitive t_$29) ($is_array S_$107 p_$109 t_$29 sz_$22))
))) (and (forall ((S_$108 T@$state) (p_$110 T@$ptr) ) (! (= ($read_vol_version S_$108 p_$110) ($int_to_vol_version ($select.mem ($memory S_$108) p_$110)))
 :qid |BBf6slic.594:18|
 :weight 0
 :skolemid |184|
 :pattern ( ($read_vol_version S_$108 p_$110))
)) (forall ((f_$1 T@$field) (p_$25 T@$ptr) (S_$26 T@$state) ) (! (= ($fetch_from_vv ($read_vol_version S_$26 p_$25) ($dot p_$25 f_$1)) ($fetch_from_vv ($read_vol_version S_$26 p_$25) ($dot p_$25 f_$1)))
 :qid |BBf6slic.595:18|
 :skolemid |185|
)))) (and (and (forall ((S_$109 T@$state) (r_$19 Int) (t_$30 T@$ctype) (approver_$1 T@$field) (subject_$2 T@$field) ) (!  (=> (and (and (and ($full_stop S_$109) ($is_approved_by t_$30 approver_$1 subject_$2)) ($closed S_$109 ($ptr t_$30 r_$19))) (or (= ($int_to_ptr ($select.mem ($memory S_$109) ($dot ($ptr t_$30 r_$19) approver_$1))) $me) (= ($int_to_ptr ($fetch_from_vv ($read_vol_version S_$109 ($ptr t_$30 r_$19)) ($dot ($ptr t_$30 r_$19) approver_$1))) $me))) (= ($select.mem ($memory S_$109) ($dot ($ptr t_$30 r_$19) subject_$2)) ($fetch_from_vv ($read_vol_version S_$109 ($ptr t_$30 r_$19)) ($dot ($ptr t_$30 r_$19) subject_$2))))
 :qid |BBf6slic.596:18|
 :skolemid |186|
 :pattern ( ($is_approved_by t_$30 approver_$1 subject_$2) ($select.mem ($memory S_$109) ($dot ($ptr t_$30 r_$19) subject_$2)))
)) (forall ((subject T@$field) (approver T@$ptr) (this T@$ptr) (S2_$0 T@$state) (S1_$0 T@$state) ) (!  (and (=> (or (or (or (= ($select.mem ($memory S1_$0) ($dot this subject)) ($select.mem ($memory S2_$0) ($dot this subject))) (= ($ref approver) 0)) (and (not ($is_threadtype ($typ approver))) ($inv2 S1_$0 S2_$0 approver ($typ approver)))) (and ($is_threadtype ($typ approver)) (not (= ($read_vol_version S1_$0 this) ($read_vol_version S2_$0 this))))) (or (or (or (= ($select.mem ($memory S1_$0) ($dot this subject)) ($select.mem ($memory S2_$0) ($dot this subject))) (= ($ref approver) 0)) (and (not ($is_threadtype ($typ approver))) ($inv2 S1_$0 S2_$0 approver ($typ approver)))) (and ($is_threadtype ($typ approver)) (not (= ($read_vol_version S1_$0 this) ($read_vol_version S2_$0 this)))))) (=> (or (or (or (= ($select.mem ($memory S1_$0) ($dot this subject)) ($select.mem ($memory S2_$0) ($dot this subject))) (= ($ref approver) 0)) (and (not ($is_threadtype ($typ approver))) ($inv2 S1_$0 S2_$0 approver ($typ approver)))) (and ($is_threadtype ($typ approver)) (not (= ($read_vol_version S1_$0 this) ($read_vol_version S2_$0 this))))) (or (or (or (= ($select.mem ($memory S1_$0) ($dot this subject)) ($select.mem ($memory S2_$0) ($dot this subject))) (= ($ref approver) 0)) (and (not ($is_threadtype ($typ approver))) ($inv2 S1_$0 S2_$0 approver ($typ approver)))) (and ($is_threadtype ($typ approver)) (not (= ($read_vol_version S1_$0 this) ($read_vol_version S2_$0 this)))))))
 :qid |BBf6slic.597:18|
 :skolemid |187|
))) (and (forall ((subject_$0 T@$field) (approver_$0 T@$field) (this_$0 T@$ptr) (S2_$1 T@$state) (S1_$1 T@$state) ) (!  (and (=> (or (or (or (= ($select.mem ($memory S1_$1) ($dot this_$0 subject_$0)) ($select.mem ($memory S2_$1) ($dot this_$0 subject_$0))) (= ($ref ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0)))) 0)) (and (not ($is_threadtype ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0)))))) ($inv2 S1_$1 S2_$1 ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))) ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))))))) (and ($is_threadtype ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))))) (not (= ($read_vol_version S1_$1 this_$0) ($read_vol_version S2_$1 this_$0))))) (or (or (or (= ($select.mem ($memory S1_$1) ($dot this_$0 subject_$0)) ($select.mem ($memory S2_$1) ($dot this_$0 subject_$0))) (= ($ref ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0)))) 0)) (and (not ($is_threadtype ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0)))))) ($inv2 S1_$1 S2_$1 ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))) ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))))))) (and ($is_threadtype ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))))) (not (= ($read_vol_version S1_$1 this_$0) ($read_vol_version S2_$1 this_$0)))))) (=> (or (or (or (= ($select.mem ($memory S1_$1) ($dot this_$0 subject_$0)) ($select.mem ($memory S2_$1) ($dot this_$0 subject_$0))) (= ($ref ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0)))) 0)) (and (not ($is_threadtype ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0)))))) ($inv2 S1_$1 S2_$1 ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))) ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))))))) (and ($is_threadtype ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))))) (not (= ($read_vol_version S1_$1 this_$0) ($read_vol_version S2_$1 this_$0))))) (or (or (or (= ($select.mem ($memory S1_$1) ($dot this_$0 subject_$0)) ($select.mem ($memory S2_$1) ($dot this_$0 subject_$0))) (= ($ref ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0)))) 0)) (and (not ($is_threadtype ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0)))))) ($inv2 S1_$1 S2_$1 ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))) ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))))))) (and ($is_threadtype ($typ ($int_to_ptr ($select.mem ($memory S1_$1) ($dot this_$0 approver_$0))))) (not (= ($read_vol_version S1_$1 this_$0) ($read_vol_version S2_$1 this_$0)))))))
 :qid |BBf6slic.598:18|
 :skolemid |188|
)) (forall ((S_$110 T@$state) (r_$20 Int) (t_$31 T@$ctype) (subject_$3 T@$field) ) (!  (=> (and (and (and ($full_stop S_$110) ($closed S_$110 ($ptr t_$31 r_$20))) ($is_owner_approved t_$31 subject_$3)) (= ($owner S_$110 ($ptr t_$31 r_$20)) $me)) (= ($select.mem ($memory S_$110) ($dot ($ptr t_$31 r_$20) subject_$3)) ($fetch_from_vv ($read_vol_version S_$110 ($ptr t_$31 r_$20)) ($dot ($ptr t_$31 r_$20) subject_$3))))
 :qid |BBf6slic.599:18|
 :skolemid |189|
 :pattern ( ($is_owner_approved t_$31 subject_$3) ($select.mem ($memory S_$110) ($dot ($ptr t_$31 r_$20) subject_$3)))
))))) (and (and (and (forall ((S1_$11 T@$state) (S2_$9 T@$state) (r_$21 Int) (t_$32 T@$ctype) (subject_$4 T@$field) ) (! ($instantiate_int ($select.mem ($memory S2_$9) ($dot ($ptr t_$32 r_$21) subject_$4)))
 :qid |BBf6slic.600:18|
 :skolemid |190|
 :pattern ( ($is_owner_approved t_$32 subject_$4) ($post_unwrap S1_$11 S2_$9) ($select.mem ($memory S1_$11) ($dot ($ptr t_$32 r_$21) subject_$4)))
)) (forall ((subject_$1 T@$field) (this_$1 T@$ptr) (S2_$2 T@$state) (S1_$2 T@$state) ) (!  (and (=> (or (or (or (= ($select.mem ($memory S1_$2) ($dot this_$1 subject_$1)) ($select.mem ($memory S2_$2) ($dot this_$1 subject_$1))) (= ($ref ($owner S1_$2 this_$1)) 0)) (and (not ($is_threadtype ($typ ($owner S1_$2 this_$1)))) ($inv2 S1_$2 S2_$2 ($owner S1_$2 this_$1) ($typ ($owner S1_$2 this_$1))))) (and ($is_threadtype ($typ ($owner S1_$2 this_$1))) (not (= ($read_vol_version S1_$2 this_$1) ($read_vol_version S2_$2 this_$1))))) (or (or (or (= ($select.mem ($memory S1_$2) ($dot this_$1 subject_$1)) ($select.mem ($memory S2_$2) ($dot this_$1 subject_$1))) (= ($ref ($owner S1_$2 this_$1)) 0)) (and (not ($is_threadtype ($typ ($owner S1_$2 this_$1)))) ($inv2 S1_$2 S2_$2 ($owner S1_$2 this_$1) ($typ ($owner S1_$2 this_$1))))) (and ($is_threadtype ($typ ($owner S1_$2 this_$1))) (not (= ($read_vol_version S1_$2 this_$1) ($read_vol_version S2_$2 this_$1)))))) (=> (or (or (or (= ($select.mem ($memory S1_$2) ($dot this_$1 subject_$1)) ($select.mem ($memory S2_$2) ($dot this_$1 subject_$1))) (= ($ref ($owner S1_$2 this_$1)) 0)) (and (not ($is_threadtype ($typ ($owner S1_$2 this_$1)))) ($inv2 S1_$2 S2_$2 ($owner S1_$2 this_$1) ($typ ($owner S1_$2 this_$1))))) (and ($is_threadtype ($typ ($owner S1_$2 this_$1))) (not (= ($read_vol_version S1_$2 this_$1) ($read_vol_version S2_$2 this_$1))))) (or (or (or (= ($select.mem ($memory S1_$2) ($dot this_$1 subject_$1)) ($select.mem ($memory S2_$2) ($dot this_$1 subject_$1))) (= ($ref ($owner S1_$2 this_$1)) 0)) (and (not ($is_threadtype ($typ ($owner S1_$2 this_$1)))) ($inv2 S1_$2 S2_$2 ($owner S1_$2 this_$1) ($typ ($owner S1_$2 this_$1))))) (and ($is_threadtype ($typ ($owner S1_$2 this_$1))) (not (= ($read_vol_version S1_$2 this_$1) ($read_vol_version S2_$2 this_$1)))))))
 :qid |BBf6slic.601:18|
 :skolemid |191|
))) (and (forall ((S_$111 T@$state) (p_$111 T@$ptr) (q_$19 T@$ptr) ) (!  (=> (and (and ($good_state S_$111) ($closed S_$111 q_$19)) ($is_non_primitive ($typ p_$111))) (and (=> ($set_in p_$111 ($owns S_$111 q_$19)) (= ($owner S_$111 p_$111) q_$19)) (=> (= ($owner S_$111 p_$111) q_$19) ($set_in p_$111 ($owns S_$111 q_$19)))))
 :qid |BBf6slic.602:18|
 :skolemid |192|
 :pattern ( ($set_in p_$111 ($owns S_$111 q_$19)) ($is_non_primitive ($typ p_$111)))
)) (forall ((|#s1_$10| T@$state) (|#s2_$7| T@$state) (|#p_$29| T@$ptr) (|#t_$13| T@$ctype) ) (!  (=> (and ($is_arraytype |#t_$13|) (= ($typ |#p_$29|) |#t_$13|)) (and (and (=> ($inv2 |#s1_$10| |#s2_$7| |#p_$29| |#t_$13|) ($typed |#s2_$7| |#p_$29|)) (=> ($typed |#s2_$7| |#p_$29|) ($inv2 |#s1_$10| |#s2_$7| |#p_$29| |#t_$13|))) ($sequential |#s1_$10| |#s2_$7| |#p_$29| |#t_$13|)))
 :qid |BBf6slic.603:18|
 :skolemid |193|
 :pattern ( ($is_arraytype |#t_$13|) ($inv2 |#s1_$10| |#s2_$7| |#p_$29| |#t_$13|))
)))) (and (and (forall ((S_$112 T@$state) (|#r_$6| Int) (|#t_$14| T@$ctype) ) (!  (=> ($good_state S_$112) (=> ($is_arraytype |#t_$14|) (= ($owns S_$112 ($ptr |#t_$14| |#r_$6|)) $set_empty)))
 :qid |BBf6slic.604:18|
 :skolemid |194|
 :pattern ( ($owns S_$112 ($ptr |#t_$14| |#r_$6|)) ($is_arraytype |#t_$14|))
)) (forall ((S_$113 T@$state) (|#p_$30| T@$ptr) (|#t_$15| T@$ctype) ) (!  (=> (and ($invok_state S_$113) ($closed S_$113 |#p_$30|)) ($inv2 S_$113 S_$113 |#p_$30| |#t_$15|))
 :qid |BBf6slic.605:18|
 :skolemid |195|
 :pattern ( ($inv2 S_$113 S_$113 |#p_$30| |#t_$15|))
))) (and (forall ((S_$114 T@$state) ) (!  (=> ($good_state S_$114) (forall ((|#p_$10_$1| T@$ptr) (|#q_$7| T@$ptr) ) (!  (=> (and (and ($good_state S_$114) ($set_in |#p_$10_$1| ($owns S_$114 |#q_$7|))) ($closed S_$114 |#q_$7|)) (and ($closed S_$114 |#p_$10_$1|) (not (= ($ref |#p_$10_$1|) 0))))
 :qid |BBf6slic.606:95|
 :skolemid |196|
 :pattern ( ($set_in |#p_$10_$1| ($owns S_$114 |#q_$7|)))
)))
 :qid |BBf6slic.606:18|
 :skolemid |197|
 :pattern ( ($good_state S_$114))
)) (forall ((S_$115 T@$state) (|#p_$31| T@$ptr) ) (!  (=> ($closed S_$115 |#p_$31|) ($typed S_$115 |#p_$31|))
 :qid |BBf6slic.607:18|
 :skolemid |198|
 :pattern ( ($closed S_$115 |#p_$31|))
)))))) (and (and (and (and (forall ((p_$26 T@$ptr) (S_$27 T@$state) ) (!  (and (=> (and (forall ((|#q_$0_$1| T@$ptr) ) (!  (=> ($closed S_$27 |#q_$0_$1|) ($inv2 S_$27 S_$27 |#q_$0_$1| ($typ |#q_$0_$1|)))
 :qid |BBf6slic.608:63|
 :skolemid |199|
 :pattern ( ($select.sm ($statusmap S_$27) |#q_$0_$1|))
)) ($good_for_admissibility S_$27)) (and (forall ((|#q_$0| T@$ptr) ) (!  (=> ($closed S_$27 |#q_$0|) ($inv2 S_$27 S_$27 |#q_$0| ($typ |#q_$0|)))
 :qid |BBf6slic.608:223|
 :skolemid |200|
 :pattern ( ($select.sm ($statusmap S_$27) |#q_$0|))
)) ($good_for_admissibility S_$27))) (=> (and (forall ((|#q_$0@@0| T@$ptr) ) (!  (=> ($closed S_$27 |#q_$0@@0|) ($inv2 S_$27 S_$27 |#q_$0@@0| ($typ |#q_$0@@0|)))
 :qid |BBf6slic.608:223|
 :skolemid |200|
 :pattern ( ($select.sm ($statusmap S_$27) |#q_$0@@0|))
)) ($good_for_admissibility S_$27)) (and (forall ((|#q_$0_$1@@0| T@$ptr) ) (!  (=> ($closed S_$27 |#q_$0_$1@@0|) ($inv2 S_$27 S_$27 |#q_$0_$1@@0| ($typ |#q_$0_$1@@0|)))
 :qid |BBf6slic.608:63|
 :skolemid |199|
 :pattern ( ($select.sm ($statusmap S_$27) |#q_$0_$1@@0|))
)) ($good_for_admissibility S_$27))))
 :qid |BBf6slic.608:18|
 :skolemid |201|
)) (forall ((p_$27 T@$ptr) (S_$28 T@$state) ) (!  (and (=> (and (and ($closed S_$28 p_$27) ($inv2 S_$28 S_$28 p_$27 ($typ p_$27))) (and (forall ((|#q_$0@@1| T@$ptr) ) (!  (=> ($closed S_$28 |#q_$0@@1|) ($inv2 S_$28 S_$28 |#q_$0@@1| ($typ |#q_$0@@1|)))
 :qid |BBf6slic.241:85|
 :skolemid |2|
 :pattern ( ($select.sm ($statusmap S_$28) |#q_$0@@1|))
)) ($good_for_admissibility S_$28))) (and (and ($closed S_$28 p_$27) ($inv2 S_$28 S_$28 p_$27 ($typ p_$27))) (and (forall ((|#q_$0_$3| T@$ptr) ) (!  (=> ($closed S_$28 |#q_$0_$3|) ($inv2 S_$28 S_$28 |#q_$0_$3| ($typ |#q_$0_$3|)))
 :qid |BBf6slic.609:223|
 :skolemid |202|
 :pattern ( ($select.sm ($statusmap S_$28) |#q_$0_$3|))
)) ($good_for_admissibility S_$28)))) (=> (and (and ($closed S_$28 p_$27) ($inv2 S_$28 S_$28 p_$27 ($typ p_$27))) (and (forall ((|#q_$0_$3@@0| T@$ptr) ) (!  (=> ($closed S_$28 |#q_$0_$3@@0|) ($inv2 S_$28 S_$28 |#q_$0_$3@@0| ($typ |#q_$0_$3@@0|)))
 :qid |BBf6slic.609:223|
 :skolemid |202|
 :pattern ( ($select.sm ($statusmap S_$28) |#q_$0_$3@@0|))
)) ($good_for_admissibility S_$28))) (and (and ($closed S_$28 p_$27) ($inv2 S_$28 S_$28 p_$27 ($typ p_$27))) (and (forall ((|#q_$0@@2| T@$ptr) ) (!  (=> ($closed S_$28 |#q_$0@@2|) ($inv2 S_$28 S_$28 |#q_$0@@2| ($typ |#q_$0@@2|)))
 :qid |BBf6slic.241:85|
 :skolemid |2|
 :pattern ( ($select.sm ($statusmap S_$28) |#q_$0@@2|))
)) ($good_for_admissibility S_$28)))))
 :qid |BBf6slic.609:18|
 :skolemid |203|
))) (and (forall ((s2_$2 T@$state) (s1_$2 T@$state) ) (!  (and (=> (forall ((p_$28_$0 T@$ptr) ) (!  (=> ($mutable s1_$2 p_$28_$0) ($mutable s2_$2 p_$28_$0))
 :qid |BBf6slic.610:64|
 :skolemid |204|
 :pattern ( ($select.sm ($statusmap s2_$2) p_$28_$0))
 :pattern ( ($select.tm ($typemap s2_$2) p_$28_$0))
)) (forall ((p_$28 T@$ptr) ) (!  (=> ($mutable s1_$2 p_$28) ($mutable s2_$2 p_$28))
 :qid |BBf6slic.610:200|
 :skolemid |205|
 :pattern ( ($select.sm ($statusmap s2_$2) p_$28))
 :pattern ( ($select.tm ($typemap s2_$2) p_$28))
))) (=> (forall ((p_$28@@0 T@$ptr) ) (!  (=> ($mutable s1_$2 p_$28@@0) ($mutable s2_$2 p_$28@@0))
 :qid |BBf6slic.610:200|
 :skolemid |205|
 :pattern ( ($select.sm ($statusmap s2_$2) p_$28@@0))
 :pattern ( ($select.tm ($typemap s2_$2) p_$28@@0))
)) (forall ((p_$28_$0@@0 T@$ptr) ) (!  (=> ($mutable s1_$2 p_$28_$0@@0) ($mutable s2_$2 p_$28_$0@@0))
 :qid |BBf6slic.610:64|
 :skolemid |204|
 :pattern ( ($select.sm ($statusmap s2_$2) p_$28_$0@@0))
 :pattern ( ($select.tm ($typemap s2_$2) p_$28_$0@@0))
))))
 :qid |BBf6slic.610:18|
 :skolemid |206|
)) (forall ((s2_$3 T@$state) (s1_$3 T@$state) ) (!  (and (=> (and (= ($typemap s1_$3) ($typemap s2_$3)) (= ($statusmap s1_$3) ($statusmap s2_$3))) (and (= ($typemap s1_$3) ($typemap s2_$3)) (= ($statusmap s1_$3) ($statusmap s2_$3)))) (=> (and (= ($typemap s1_$3) ($typemap s2_$3)) (= ($statusmap s1_$3) ($statusmap s2_$3))) (and (= ($typemap s1_$3) ($typemap s2_$3)) (= ($statusmap s1_$3) ($statusmap s2_$3)))))
 :qid |BBf6slic.611:18|
 :skolemid |207|
)))) (and (and (=> (and (not $is_stuttering_check) (not $is_unwrap_check)) (and (not $is_stuttering_check) (not $is_unwrap_check))) (=> (and (not $is_stuttering_check) (not $is_unwrap_check)) (and (not $is_stuttering_check) (not $is_unwrap_check)))) (and (forall ((p_$29 T@$ptr) (S_$29 T@$state) ) (!  (and (=> (and (and (and (and (and (and (and (and ($closed S_$29 p_$29) (= ($owner S_$29 p_$29) $me)) (and ($is p_$29 ($typ p_$29)) ($typed S_$29 p_$29))) (not (= ($kind_of ($typ p_$29)) $kind_primitive))) ($is_non_primitive ($typ p_$29))) (or (not ($is_claimable ($typ p_$29))) (= ($ref_cnt S_$29 p_$29) 0))) ($inv2 S_$29 S_$29 p_$29 ($typ p_$29))) (forall ((|#q_$1_$1| T@$ptr) ) (!  (=> ($closed S_$29 |#q_$1_$1|) ($inv2 S_$29 S_$29 |#q_$1_$1| ($typ |#q_$1_$1|)))
 :qid |BBf6slic.613:205|
 :skolemid |208|
 :pattern ( ($select.sm ($statusmap S_$29) |#q_$1_$1|))
))) ($good_for_pre_can_unwrap S_$29)) (and (and (and (and (and (and (and (and ($closed S_$29 p_$29) (= ($owner S_$29 p_$29) $me)) (and ($is p_$29 ($typ p_$29)) ($typed S_$29 p_$29))) (not (= ($kind_of ($typ p_$29)) $kind_primitive))) ($is_non_primitive ($typ p_$29))) (or (not ($is_claimable ($typ p_$29))) (= ($ref_cnt S_$29 p_$29) 0))) ($inv2 S_$29 S_$29 p_$29 ($typ p_$29))) (forall ((|#q_$1| T@$ptr) ) (!  (=> ($closed S_$29 |#q_$1|) ($inv2 S_$29 S_$29 |#q_$1| ($typ |#q_$1|)))
 :qid |BBf6slic.613:664|
 :skolemid |209|
 :pattern ( ($select.sm ($statusmap S_$29) |#q_$1|))
))) ($good_for_pre_can_unwrap S_$29))) (=> (and (and (and (and (and (and (and (and ($closed S_$29 p_$29) (= ($owner S_$29 p_$29) $me)) (and ($is p_$29 ($typ p_$29)) ($typed S_$29 p_$29))) (not (= ($kind_of ($typ p_$29)) $kind_primitive))) ($is_non_primitive ($typ p_$29))) (or (not ($is_claimable ($typ p_$29))) (= ($ref_cnt S_$29 p_$29) 0))) ($inv2 S_$29 S_$29 p_$29 ($typ p_$29))) (forall ((|#q_$1@@0| T@$ptr) ) (!  (=> ($closed S_$29 |#q_$1@@0|) ($inv2 S_$29 S_$29 |#q_$1@@0| ($typ |#q_$1@@0|)))
 :qid |BBf6slic.613:664|
 :skolemid |209|
 :pattern ( ($select.sm ($statusmap S_$29) |#q_$1@@0|))
))) ($good_for_pre_can_unwrap S_$29)) (and (and (and (and (and (and (and (and ($closed S_$29 p_$29) (= ($owner S_$29 p_$29) $me)) (and ($is p_$29 ($typ p_$29)) ($typed S_$29 p_$29))) (not (= ($kind_of ($typ p_$29)) $kind_primitive))) ($is_non_primitive ($typ p_$29))) (or (not ($is_claimable ($typ p_$29))) (= ($ref_cnt S_$29 p_$29) 0))) ($inv2 S_$29 S_$29 p_$29 ($typ p_$29))) (forall ((|#q_$1_$1@@0| T@$ptr) ) (!  (=> ($closed S_$29 |#q_$1_$1@@0|) ($inv2 S_$29 S_$29 |#q_$1_$1@@0| ($typ |#q_$1_$1@@0|)))
 :qid |BBf6slic.613:205|
 :skolemid |208|
 :pattern ( ($select.sm ($statusmap S_$29) |#q_$1_$1@@0|))
))) ($good_for_pre_can_unwrap S_$29))))
 :qid |BBf6slic.613:18|
 :skolemid |210|
)) (forall ((S_$116 T@$state) (p_$112 T@$ptr) (v_$9 Int) ) (!  (and (and (and (= ($typemap ($update_int S_$116 p_$112 v_$9)) ($typemap S_$116)) (= ($statusmap ($update_int S_$116 p_$112 v_$9)) ($statusmap S_$116))) (= ($memory ($update_int S_$116 p_$112 v_$9)) ($store.mem ($memory S_$116) p_$112 v_$9))) (and (and (< ($current_timestamp S_$116) ($current_timestamp ($update_int S_$116 p_$112 v_$9))) (forall ((p_$33_$1 T@$ptr) ) (! (<= ($timestamp S_$116 p_$33_$1) ($timestamp ($update_int S_$116 p_$112 v_$9) p_$33_$1))
 :qid |BBf6slic.614:433|
 :weight 0
 :skolemid |211|
 :pattern ( ($timestamp ($update_int S_$116 p_$112 v_$9) p_$33_$1))
))) ($call_transition S_$116 ($update_int S_$116 p_$112 v_$9))))
 :qid |BBf6slic.614:18|
 :skolemid |212|
 :pattern ( ($update_int S_$116 p_$112 v_$9))
))))) (and (and (and (forall ((p_$30 T@$ptr) (S_$30 T@$state) ) (!  (and (=> (= ($timestamp S_$30 p_$30) ($current_timestamp S_$30)) (= ($timestamp S_$30 p_$30) ($current_timestamp S_$30))) (=> (= ($timestamp S_$30 p_$30) ($current_timestamp S_$30)) (= ($timestamp S_$30 p_$30) ($current_timestamp S_$30))))
 :qid |BBf6slic.615:18|
 :skolemid |213|
)) (forall ((p_$31 T@$ptr) (S_$31 T@$state) ) (!  (and (=> (and (= ($timestamp S_$31 p_$31) ($current_timestamp S_$31)) ($mutable S_$31 p_$31)) (and (= ($timestamp S_$31 p_$31) ($current_timestamp S_$31)) ($mutable S_$31 p_$31))) (=> (and (= ($timestamp S_$31 p_$31) ($current_timestamp S_$31)) ($mutable S_$31 p_$31)) (and (= ($timestamp S_$31 p_$31) ($current_timestamp S_$31)) ($mutable S_$31 p_$31))))
 :qid |BBf6slic.616:18|
 :skolemid |214|
))) (and (forall ((M2_$0 T@$state) (M1_$0 T@$state) ) (!  (and (=> (and (and (<= ($current_timestamp M1_$0) ($current_timestamp M2_$0)) (forall ((p_$32_$1 T@$ptr) ) (! (<= ($timestamp M1_$0 p_$32_$1) ($timestamp M2_$0 p_$32_$1))
 :qid |BBf6slic.617:126|
 :weight 0
 :skolemid |215|
 :pattern ( ($timestamp M2_$0 p_$32_$1))
))) ($call_transition M1_$0 M2_$0)) (and (and (<= ($current_timestamp M1_$0) ($current_timestamp M2_$0)) (forall ((p_$32 T@$ptr) ) (! (<= ($timestamp M1_$0 p_$32) ($timestamp M2_$0 p_$32))
 :qid |BBf6slic.617:359|
 :weight 0
 :skolemid |216|
 :pattern ( ($timestamp M2_$0 p_$32))
))) ($call_transition M1_$0 M2_$0))) (=> (and (and (<= ($current_timestamp M1_$0) ($current_timestamp M2_$0)) (forall ((p_$32@@0 T@$ptr) ) (! (<= ($timestamp M1_$0 p_$32@@0) ($timestamp M2_$0 p_$32@@0))
 :qid |BBf6slic.617:359|
 :weight 0
 :skolemid |216|
 :pattern ( ($timestamp M2_$0 p_$32@@0))
))) ($call_transition M1_$0 M2_$0)) (and (and (<= ($current_timestamp M1_$0) ($current_timestamp M2_$0)) (forall ((p_$32_$1@@0 T@$ptr) ) (! (<= ($timestamp M1_$0 p_$32_$1@@0) ($timestamp M2_$0 p_$32_$1@@0))
 :qid |BBf6slic.617:126|
 :weight 0
 :skolemid |215|
 :pattern ( ($timestamp M2_$0 p_$32_$1@@0))
))) ($call_transition M1_$0 M2_$0))))
 :qid |BBf6slic.617:18|
 :skolemid |217|
)) (forall ((M2_$1 T@$state) (M1_$1 T@$state) ) (!  (and (=> (and (and (< ($current_timestamp M1_$1) ($current_timestamp M2_$1)) (forall ((p_$33_$3 T@$ptr) ) (! (<= ($timestamp M1_$1 p_$33_$3) ($timestamp M2_$1 p_$33_$3))
 :qid |BBf6slic.618:125|
 :weight 0
 :skolemid |218|
 :pattern ( ($timestamp M2_$1 p_$33_$3))
))) ($call_transition M1_$1 M2_$1)) (and (and (< ($current_timestamp M1_$1) ($current_timestamp M2_$1)) (forall ((p_$33 T@$ptr) ) (! (<= ($timestamp M1_$1 p_$33) ($timestamp M2_$1 p_$33))
 :qid |BBf6slic.618:357|
 :weight 0
 :skolemid |219|
 :pattern ( ($timestamp M2_$1 p_$33))
))) ($call_transition M1_$1 M2_$1))) (=> (and (and (< ($current_timestamp M1_$1) ($current_timestamp M2_$1)) (forall ((p_$33@@0 T@$ptr) ) (! (<= ($timestamp M1_$1 p_$33@@0) ($timestamp M2_$1 p_$33@@0))
 :qid |BBf6slic.618:357|
 :weight 0
 :skolemid |219|
 :pattern ( ($timestamp M2_$1 p_$33@@0))
))) ($call_transition M1_$1 M2_$1)) (and (and (< ($current_timestamp M1_$1) ($current_timestamp M2_$1)) (forall ((p_$33_$3@@0 T@$ptr) ) (! (<= ($timestamp M1_$1 p_$33_$3@@0) ($timestamp M2_$1 p_$33_$3@@0))
 :qid |BBf6slic.618:125|
 :weight 0
 :skolemid |218|
 :pattern ( ($timestamp M2_$1 p_$33_$3@@0))
))) ($call_transition M1_$1 M2_$1))))
 :qid |BBf6slic.618:18|
 :skolemid |220|
)))) (and (and (forall ((|#p_$12| T@$ptr) (|#l| T@$ptr) (S_$32 T@$state) (S0 T@$state) ) (!  (and (=> (and (and (and (and (and ($typed S0 |#p_$12|) (and (and (and (and ($closed S_$32 |#p_$12|) (= ($owner S_$32 |#p_$12|) $me)) (and ($is |#p_$12| ($typ |#p_$12|)) ($typed S_$32 |#p_$12|))) (not (= ($kind_of ($typ |#p_$12|)) $kind_primitive))) ($is_non_primitive ($typ |#p_$12|)))) (= ($timestamp S_$32 |#p_$12|) ($current_timestamp S_$32))) ($is_non_primitive ($typ |#p_$12|))) ($set_in |#p_$12| ($owns S0 |#l|))) (and (= ($owner S0 |#p_$12|) |#l|) ($closed S0 |#p_$12|))) (and (and (and (and (and ($typed S0 |#p_$12|) (and (and (and (and ($closed S_$32 |#p_$12|) (= ($owner S_$32 |#p_$12|) $me)) (and ($is |#p_$12| ($typ |#p_$12|)) ($typed S_$32 |#p_$12|))) (not (= ($kind_of ($typ |#p_$12|)) $kind_primitive))) ($is_non_primitive ($typ |#p_$12|)))) (= ($timestamp S_$32 |#p_$12|) ($current_timestamp S_$32))) ($is_non_primitive ($typ |#p_$12|))) ($set_in |#p_$12| ($owns S0 |#l|))) (and (= ($owner S0 |#p_$12|) |#l|) ($closed S0 |#p_$12|)))) (=> (and (and (and (and (and ($typed S0 |#p_$12|) (and (and (and (and ($closed S_$32 |#p_$12|) (= ($owner S_$32 |#p_$12|) $me)) (and ($is |#p_$12| ($typ |#p_$12|)) ($typed S_$32 |#p_$12|))) (not (= ($kind_of ($typ |#p_$12|)) $kind_primitive))) ($is_non_primitive ($typ |#p_$12|)))) (= ($timestamp S_$32 |#p_$12|) ($current_timestamp S_$32))) ($is_non_primitive ($typ |#p_$12|))) ($set_in |#p_$12| ($owns S0 |#l|))) (and (= ($owner S0 |#p_$12|) |#l|) ($closed S0 |#p_$12|))) (and (and (and (and (and ($typed S0 |#p_$12|) (and (and (and (and ($closed S_$32 |#p_$12|) (= ($owner S_$32 |#p_$12|) $me)) (and ($is |#p_$12| ($typ |#p_$12|)) ($typed S_$32 |#p_$12|))) (not (= ($kind_of ($typ |#p_$12|)) $kind_primitive))) ($is_non_primitive ($typ |#p_$12|)))) (= ($timestamp S_$32 |#p_$12|) ($current_timestamp S_$32))) ($is_non_primitive ($typ |#p_$12|))) ($set_in |#p_$12| ($owns S0 |#l|))) (and (= ($owner S0 |#p_$12|) |#l|) ($closed S0 |#p_$12|)))))
 :qid |BBf6slic.619:18|
 :skolemid |221|
)) (forall ((|#p_$13| T@$ptr) (|#l_$0| T@$ptr) (S_$33 T@$state) (S0_$0 T@$state) ) (!  (and (=> (and (and (and (and (and (and ($typed S0_$0 |#p_$13|) (and (and (and (and ($closed S_$33 |#p_$13|) (= ($owner S_$33 |#p_$13|) $me)) (and ($is |#p_$13| ($typ |#p_$13|)) ($typed S_$33 |#p_$13|))) (not (= ($kind_of ($typ |#p_$13|)) $kind_primitive))) ($is_non_primitive ($typ |#p_$13|)))) (= ($timestamp S_$33 |#p_$13|) ($current_timestamp S_$33))) ($is_non_primitive ($typ |#p_$13|))) ($set_in |#p_$13| ($owns S0_$0 |#l_$0|))) (and (= ($owner S0_$0 |#p_$13|) |#l_$0|) ($closed S0_$0 |#p_$13|))) (=> ($is_claimable ($typ |#p_$13|)) (= ($ref_cnt S0_$0 |#p_$13|) ($ref_cnt S_$33 |#p_$13|)))) (and (and (and (and (and (and ($typed S0_$0 |#p_$13|) (and (and (and (and ($closed S_$33 |#p_$13|) (= ($owner S_$33 |#p_$13|) $me)) (and ($is |#p_$13| ($typ |#p_$13|)) ($typed S_$33 |#p_$13|))) (not (= ($kind_of ($typ |#p_$13|)) $kind_primitive))) ($is_non_primitive ($typ |#p_$13|)))) (= ($timestamp S_$33 |#p_$13|) ($current_timestamp S_$33))) ($is_non_primitive ($typ |#p_$13|))) ($set_in |#p_$13| ($owns S0_$0 |#l_$0|))) (and (= ($owner S0_$0 |#p_$13|) |#l_$0|) ($closed S0_$0 |#p_$13|))) (=> ($is_claimable ($typ |#p_$13|)) (= ($ref_cnt S0_$0 |#p_$13|) ($ref_cnt S_$33 |#p_$13|))))) (=> (and (and (and (and (and (and ($typed S0_$0 |#p_$13|) (and (and (and (and ($closed S_$33 |#p_$13|) (= ($owner S_$33 |#p_$13|) $me)) (and ($is |#p_$13| ($typ |#p_$13|)) ($typed S_$33 |#p_$13|))) (not (= ($kind_of ($typ |#p_$13|)) $kind_primitive))) ($is_non_primitive ($typ |#p_$13|)))) (= ($timestamp S_$33 |#p_$13|) ($current_timestamp S_$33))) ($is_non_primitive ($typ |#p_$13|))) ($set_in |#p_$13| ($owns S0_$0 |#l_$0|))) (and (= ($owner S0_$0 |#p_$13|) |#l_$0|) ($closed S0_$0 |#p_$13|))) (=> ($is_claimable ($typ |#p_$13|)) (= ($ref_cnt S0_$0 |#p_$13|) ($ref_cnt S_$33 |#p_$13|)))) (and (and (and (and (and (and ($typed S0_$0 |#p_$13|) (and (and (and (and ($closed S_$33 |#p_$13|) (= ($owner S_$33 |#p_$13|) $me)) (and ($is |#p_$13| ($typ |#p_$13|)) ($typed S_$33 |#p_$13|))) (not (= ($kind_of ($typ |#p_$13|)) $kind_primitive))) ($is_non_primitive ($typ |#p_$13|)))) (= ($timestamp S_$33 |#p_$13|) ($current_timestamp S_$33))) ($is_non_primitive ($typ |#p_$13|))) ($set_in |#p_$13| ($owns S0_$0 |#l_$0|))) (and (= ($owner S0_$0 |#p_$13|) |#l_$0|) ($closed S0_$0 |#p_$13|))) (=> ($is_claimable ($typ |#p_$13|)) (= ($ref_cnt S0_$0 |#p_$13|) ($ref_cnt S_$33 |#p_$13|))))))
 :qid |BBf6slic.620:18|
 :skolemid |222|
))) (and (forall ((|#p_$14| T@$ptr) (|#l_$1| T@$ptr) (S_$34 T@$state) ) (!  (and (=> ($set_in |#p_$14| ($owns S_$34 |#l_$1|)) ($set_in |#p_$14| ($owns S_$34 |#l_$1|))) (=> ($set_in |#p_$14| ($owns S_$34 |#l_$1|)) ($set_in |#p_$14| ($owns S_$34 |#l_$1|))))
 :qid |BBf6slic.621:18|
 :skolemid |223|
)) (forall ((S_$117 T@$state) (l_$3 T@$ptr) (p_$113 T@$ptr) ) (!  (=> (not (= ($kind_of ($typ l_$3)) $kind_primitive)) (and (and (and (and (= ($statusmap ($take_over S_$117 l_$3 p_$113)) ($store.sm ($statusmap S_$117) p_$113 ($taken_over S_$117 l_$3 p_$113))) ($closed ($take_over S_$117 l_$3 p_$113) p_$113)) (= ($owner ($take_over S_$117 l_$3 p_$113) p_$113) l_$3)) (= ($ref_cnt ($take_over S_$117 l_$3 p_$113) p_$113) ($ref_cnt S_$117 p_$113))) true))
 :qid |BBf6slic.622:18|
 :skolemid |224|
 :pattern ( ($take_over S_$117 l_$3 p_$113))
))))))))) (and (and (and (and (and (and (and (forall ((S0_$2 T@$state) (S_$118 T@$state) (l_$4 T@$ptr) (p_$114 T@$ptr) ) (!  (and (and (and (and (and (= ($statusmap ($release S0_$2 S_$118 l_$4 p_$114)) ($store.sm ($statusmap S_$118) p_$114 ($released S_$118 l_$4 p_$114))) ($closed ($release S0_$2 S_$118 l_$4 p_$114) p_$114)) (= ($owner ($release S0_$2 S_$118 l_$4 p_$114) p_$114) $me)) (= ($ref_cnt ($release S0_$2 S_$118 l_$4 p_$114) p_$114) ($ref_cnt S_$118 p_$114))) (= ($timestamp ($release S0_$2 S_$118 l_$4 p_$114) p_$114) ($current_timestamp S0_$2))) true)
 :qid |BBf6slic.623:18|
 :skolemid |225|
 :pattern ( ($release S0_$2 S_$118 l_$4 p_$114))
)) (forall ((owns T@$ptrset) (o T@$ptr) (S_$35 T@$state) ) (! (= ($set_difference owns ($owns S_$35 o)) ($set_difference owns ($owns S_$35 o)))
 :qid |BBf6slic.624:18|
 :skolemid |226|
))) (and (= ($ptr_level $memory_allocator_type) 0) (forall ((S_$119 T@$state) ) (!  (=> ($program_entry_point S_$119) ($program_entry_point_ch S_$119))
 :qid |BBf6slic.626:18|
 :skolemid |227|
 :pattern ( ($program_entry_point S_$119))
)))) (and (and (forall ((t_$7 T@$ctype) (p_$34 T@$ptr) ) (!  (and (=> (and (and (and (forall ((S_$36_$1 T@$state) ) (!  (=> ($good_state S_$36_$1) (and ($typed S_$36_$1 p_$34) (= ($ts_emb ($select.tm ($typemap S_$36_$1) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:64|
 :skolemid |228|
 :pattern ( ($select.tm ($typemap S_$36_$1) p_$34))
)) (forall ((S_$37_$1 T@$state) (f_$2_$1 T@$field) ) (!  (=> ($good_state S_$37_$1) (and ($typed S_$37_$1 p_$34) (= ($ts_emb ($select.tm ($typemap S_$37_$1) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:212|
 :skolemid |229|
 :pattern ( ($select.tm ($typemap S_$37_$1) ($dot p_$34 f_$2_$1)))
))) (forall ((S_$38_$1 T@$state) (f_$3_$1 T@$field) (i_$30 Int) (tt_$1 T@$ctype) ) (!  (=> ($good_state S_$38_$1) (and ($typed S_$38_$1 p_$34) (= ($ts_emb ($select.tm ($typemap S_$38_$1) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:393|
 :skolemid |230|
 :pattern ( ($select.tm ($typemap S_$38_$1) ($idx ($dot p_$34 f_$3_$1) i_$30 tt_$1)))
))) (forall ((S_$39_$1 T@$state) ) (!  (=> ($program_entry_point S_$39_$1) (and ($extent_mutable S_$39_$1 p_$34) (= ($owns S_$39_$1 p_$34) $set_empty)))
 :qid |BBf6slic.627:625|
 :skolemid |231|
 :pattern ( ($program_entry_point S_$39_$1))
))) (and (and (and (forall ((S_$36 T@$state) ) (!  (=> ($good_state S_$36) (and ($typed S_$36 p_$34) (= ($ts_emb ($select.tm ($typemap S_$36) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:814|
 :skolemid |232|
 :pattern ( ($select.tm ($typemap S_$36) p_$34))
)) (forall ((S_$37 T@$state) (f_$2 T@$field) ) (!  (=> ($good_state S_$37) (and ($typed S_$37 p_$34) (= ($ts_emb ($select.tm ($typemap S_$37) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:987|
 :skolemid |233|
 :pattern ( ($select.tm ($typemap S_$37) ($dot p_$34 f_$2)))
))) (forall ((S_$38 T@$state) (f_$3 T@$field) (i Int) (tt T@$ctype) ) (!  (=> ($good_state S_$38) (and ($typed S_$38 p_$34) (= ($ts_emb ($select.tm ($typemap S_$38) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:1187|
 :skolemid |234|
 :pattern ( ($select.tm ($typemap S_$38) ($idx ($dot p_$34 f_$3) i tt)))
))) (forall ((S_$39 T@$state) ) (!  (=> ($program_entry_point S_$39) (and ($extent_mutable S_$39 p_$34) (= ($owns S_$39 p_$34) $set_empty)))
 :qid |BBf6slic.627:1424|
 :skolemid |235|
 :pattern ( ($program_entry_point S_$39))
)))) (=> (and (and (and (forall ((S_$36@@0 T@$state) ) (!  (=> ($good_state S_$36@@0) (and ($typed S_$36@@0 p_$34) (= ($ts_emb ($select.tm ($typemap S_$36@@0) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:814|
 :skolemid |232|
 :pattern ( ($select.tm ($typemap S_$36@@0) p_$34))
)) (forall ((S_$37@@0 T@$state) (f_$2@@0 T@$field) ) (!  (=> ($good_state S_$37@@0) (and ($typed S_$37@@0 p_$34) (= ($ts_emb ($select.tm ($typemap S_$37@@0) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:987|
 :skolemid |233|
 :pattern ( ($select.tm ($typemap S_$37@@0) ($dot p_$34 f_$2@@0)))
))) (forall ((S_$38@@0 T@$state) (f_$3@@0 T@$field) (i@@0 Int) (tt@@0 T@$ctype) ) (!  (=> ($good_state S_$38@@0) (and ($typed S_$38@@0 p_$34) (= ($ts_emb ($select.tm ($typemap S_$38@@0) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:1187|
 :skolemid |234|
 :pattern ( ($select.tm ($typemap S_$38@@0) ($idx ($dot p_$34 f_$3@@0) i@@0 tt@@0)))
))) (forall ((S_$39@@0 T@$state) ) (!  (=> ($program_entry_point S_$39@@0) (and ($extent_mutable S_$39@@0 p_$34) (= ($owns S_$39@@0 p_$34) $set_empty)))
 :qid |BBf6slic.627:1424|
 :skolemid |235|
 :pattern ( ($program_entry_point S_$39@@0))
))) (and (and (and (forall ((S_$36_$1@@0 T@$state) ) (!  (=> ($good_state S_$36_$1@@0) (and ($typed S_$36_$1@@0 p_$34) (= ($ts_emb ($select.tm ($typemap S_$36_$1@@0) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:64|
 :skolemid |228|
 :pattern ( ($select.tm ($typemap S_$36_$1@@0) p_$34))
)) (forall ((S_$37_$1@@0 T@$state) (f_$2_$1@@0 T@$field) ) (!  (=> ($good_state S_$37_$1@@0) (and ($typed S_$37_$1@@0 p_$34) (= ($ts_emb ($select.tm ($typemap S_$37_$1@@0) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:212|
 :skolemid |229|
 :pattern ( ($select.tm ($typemap S_$37_$1@@0) ($dot p_$34 f_$2_$1@@0)))
))) (forall ((S_$38_$1@@0 T@$state) (f_$3_$1@@0 T@$field) (i_$30@@0 Int) (tt_$1@@0 T@$ctype) ) (!  (=> ($good_state S_$38_$1@@0) (and ($typed S_$38_$1@@0 p_$34) (= ($ts_emb ($select.tm ($typemap S_$38_$1@@0) p_$34)) ($ptr ^^root_emb ($ref p_$34)))))
 :qid |BBf6slic.627:393|
 :skolemid |230|
 :pattern ( ($select.tm ($typemap S_$38_$1@@0) ($idx ($dot p_$34 f_$3_$1@@0) i_$30@@0 tt_$1@@0)))
))) (forall ((S_$39_$1@@0 T@$state) ) (!  (=> ($program_entry_point S_$39_$1@@0) (and ($extent_mutable S_$39_$1@@0 p_$34) (= ($owns S_$39_$1@@0 p_$34) $set_empty)))
 :qid |BBf6slic.627:625|
 :skolemid |231|
 :pattern ( ($program_entry_point S_$39_$1@@0))
)))))
 :qid |BBf6slic.627:18|
 :skolemid |236|
)) (forall ((sz_$0 Int) (T T@$ctype) (p_$35 T@$ptr) ) (!  (and (=> (and ($is p_$35 T) (forall ((S_$40_$1 T@$state) (i_$0_$1 Int) ) (!  (=> ($good_state S_$40_$1) (=> (and (<= 0 i_$0_$1) (< i_$0_$1 sz_$0)) (and (and (not ($ts_is_volatile ($select.tm ($typemap S_$40_$1) ($idx p_$35 i_$0_$1 T)))) ($typed S_$40_$1 ($idx p_$35 i_$0_$1 T))) (=> ($program_entry_point_ch S_$40_$1) ($mutable S_$40_$1 ($idx p_$35 i_$0_$1 T))))))
 :qid |BBf6slic.628:92|
 :skolemid |237|
 :pattern ( ($select.sm ($statusmap S_$40_$1) ($idx p_$35 i_$0_$1 T)))
 :pattern ( ($select.tm ($typemap S_$40_$1) ($idx p_$35 i_$0_$1 T)))
))) (and ($is p_$35 T) (forall ((S_$40 T@$state) (i_$0 Int) ) (!  (=> ($good_state S_$40) (=> (and (<= 0 i_$0) (< i_$0 sz_$0)) (and (and (not ($ts_is_volatile ($select.tm ($typemap S_$40) ($idx p_$35 i_$0 T)))) ($typed S_$40 ($idx p_$35 i_$0 T))) (=> ($program_entry_point_ch S_$40) ($mutable S_$40 ($idx p_$35 i_$0 T))))))
 :qid |BBf6slic.628:493|
 :skolemid |238|
 :pattern ( ($select.sm ($statusmap S_$40) ($idx p_$35 i_$0 T)))
 :pattern ( ($select.tm ($typemap S_$40) ($idx p_$35 i_$0 T)))
)))) (=> (and ($is p_$35 T) (forall ((S_$40@@0 T@$state) (i_$0@@0 Int) ) (!  (=> ($good_state S_$40@@0) (=> (and (<= 0 i_$0@@0) (< i_$0@@0 sz_$0)) (and (and (not ($ts_is_volatile ($select.tm ($typemap S_$40@@0) ($idx p_$35 i_$0@@0 T)))) ($typed S_$40@@0 ($idx p_$35 i_$0@@0 T))) (=> ($program_entry_point_ch S_$40@@0) ($mutable S_$40@@0 ($idx p_$35 i_$0@@0 T))))))
 :qid |BBf6slic.628:493|
 :skolemid |238|
 :pattern ( ($select.sm ($statusmap S_$40@@0) ($idx p_$35 i_$0@@0 T)))
 :pattern ( ($select.tm ($typemap S_$40@@0) ($idx p_$35 i_$0@@0 T)))
))) (and ($is p_$35 T) (forall ((S_$40_$1@@0 T@$state) (i_$0_$1@@0 Int) ) (!  (=> ($good_state S_$40_$1@@0) (=> (and (<= 0 i_$0_$1@@0) (< i_$0_$1@@0 sz_$0)) (and (and (not ($ts_is_volatile ($select.tm ($typemap S_$40_$1@@0) ($idx p_$35 i_$0_$1@@0 T)))) ($typed S_$40_$1@@0 ($idx p_$35 i_$0_$1@@0 T))) (=> ($program_entry_point_ch S_$40_$1@@0) ($mutable S_$40_$1@@0 ($idx p_$35 i_$0_$1@@0 T))))))
 :qid |BBf6slic.628:92|
 :skolemid |237|
 :pattern ( ($select.sm ($statusmap S_$40_$1@@0) ($idx p_$35 i_$0_$1@@0 T)))
 :pattern ( ($select.tm ($typemap S_$40_$1@@0) ($idx p_$35 i_$0_$1@@0 T)))
)))))
 :qid |BBf6slic.628:18|
 :skolemid |239|
))) (and (forall ((u T@$ptr) (S_$41 T@$state) ) (! (= ($ts_active_option ($select.tm ($typemap S_$41) u)) ($ts_active_option ($select.tm ($typemap S_$41) u)))
 :qid |BBf6slic.629:18|
 :skolemid |240|
)) (forall ((f_$4 T@$field) (u_$0 T@$ptr) (S_$42 T@$state) ) (!  (and (=> (= ($ts_active_option ($select.tm ($typemap S_$42) u_$0)) f_$4) (= ($ts_active_option ($select.tm ($typemap S_$42) u_$0)) f_$4)) (=> (= ($ts_active_option ($select.tm ($typemap S_$42) u_$0)) f_$4) (= ($ts_active_option ($select.tm ($typemap S_$42) u_$0)) f_$4)))
 :qid |BBf6slic.630:18|
 :skolemid |241|
))))) (and (and (and (forall ((|#x| T@$ptr) (|#s2_$1| T@$state) (|#s1_$2| T@$state) ) (!  (and (=> (forall ((|#p_$15_$0| T@$ptr) ) (!  (or (or (= |#p_$15_$0| |#x|) (and ($set_in |#p_$15_$0| ($full_extent |#x|)) (or (not ($typed |#s1_$2| |#p_$15_$0|)) (not ($typed |#s2_$1| |#p_$15_$0|))))) (= ($select.mem ($memory |#s1_$2|) |#p_$15_$0|) ($select.mem ($memory |#s2_$1|) |#p_$15_$0|)))
 :qid |BBf6slic.631:77|
 :skolemid |242|
 :pattern ( ($select.mem ($memory |#s2_$1|) |#p_$15_$0|))
)) (forall ((|#p_$15| T@$ptr) ) (!  (or (or (= |#p_$15| |#x|) (and ($set_in |#p_$15| ($full_extent |#x|)) (or (not ($typed |#s1_$2| |#p_$15|)) (not ($typed |#s2_$1| |#p_$15|))))) (= ($select.mem ($memory |#s1_$2|) |#p_$15|) ($select.mem ($memory |#s2_$1|) |#p_$15|)))
 :qid |BBf6slic.631:299|
 :skolemid |243|
 :pattern ( ($select.mem ($memory |#s2_$1|) |#p_$15|))
))) (=> (forall ((|#p_$15@@0| T@$ptr) ) (!  (or (or (= |#p_$15@@0| |#x|) (and ($set_in |#p_$15@@0| ($full_extent |#x|)) (or (not ($typed |#s1_$2| |#p_$15@@0|)) (not ($typed |#s2_$1| |#p_$15@@0|))))) (= ($select.mem ($memory |#s1_$2|) |#p_$15@@0|) ($select.mem ($memory |#s2_$1|) |#p_$15@@0|)))
 :qid |BBf6slic.631:299|
 :skolemid |243|
 :pattern ( ($select.mem ($memory |#s2_$1|) |#p_$15@@0|))
)) (forall ((|#p_$15_$0@@0| T@$ptr) ) (!  (or (or (= |#p_$15_$0@@0| |#x|) (and ($set_in |#p_$15_$0@@0| ($full_extent |#x|)) (or (not ($typed |#s1_$2| |#p_$15_$0@@0|)) (not ($typed |#s2_$1| |#p_$15_$0@@0|))))) (= ($select.mem ($memory |#s1_$2|) |#p_$15_$0@@0|) ($select.mem ($memory |#s2_$1|) |#p_$15_$0@@0|)))
 :qid |BBf6slic.631:77|
 :skolemid |242|
 :pattern ( ($select.mem ($memory |#s2_$1|) |#p_$15_$0@@0|))
))))
 :qid |BBf6slic.631:18|
 :skolemid |244|
)) (forall ((|#l_$2| T@$ptr) (|#p_$16| T@$ptr) ) (!  (and (=> ($set_in |#p_$16| ($span |#l_$2|)) ($set_in |#p_$16| ($span |#l_$2|))) (=> ($set_in |#p_$16| ($span |#l_$2|)) ($set_in |#p_$16| ($span |#l_$2|))))
 :qid |BBf6slic.632:18|
 :skolemid |245|
))) (and (forall ((|#p_$17| T@$ptr) ) (! (= ($full_extent |#p_$17|) ($full_extent |#p_$17|))
 :qid |BBf6slic.633:18|
 :skolemid |246|
)) (forall ((|#l_$3| T@$ptr) (|#p_$18| T@$ptr) ) (!  (and (=> ($set_in |#p_$18| ($full_extent |#l_$3|)) ($set_in |#p_$18| ($full_extent |#l_$3|))) (=> ($set_in |#p_$18| ($full_extent |#l_$3|)) ($set_in |#p_$18| ($full_extent |#l_$3|))))
 :qid |BBf6slic.634:18|
 :skolemid |247|
)))) (and (and (forall ((S_$120 T@$state) (p_$115 T@$ptr) (q_$20 T@$ptr) ) (!  (and (=> ($set_in p_$115 ($volatile_span S_$120 q_$20)) (or (= p_$115 q_$20) (and ($ts_is_volatile ($select.tm ($typemap S_$120) p_$115)) ($set_in p_$115 ($span q_$20))))) (=> (or (= p_$115 q_$20) (and ($ts_is_volatile ($select.tm ($typemap S_$120) p_$115)) ($set_in p_$115 ($span q_$20)))) ($set_in p_$115 ($volatile_span S_$120 q_$20))))
 :qid |BBf6slic.635:18|
 :skolemid |248|
 :pattern ( ($set_in p_$115 ($volatile_span S_$120 q_$20)))
)) (forall ((p_$36 T@$ptr) (S_$43 T@$state) ) (!  (and (=> (and (and ($extent_mutable S_$43 p_$36) (= ($ts_emb ($select.tm ($typemap S_$43) p_$36)) ($ptr ^^root_emb ($ref p_$36)))) (= ($timestamp S_$43 p_$36) ($current_timestamp S_$43))) (and (and ($extent_mutable S_$43 p_$36) (= ($ts_emb ($select.tm ($typemap S_$43) p_$36)) ($ptr ^^root_emb ($ref p_$36)))) (= ($timestamp S_$43 p_$36) ($current_timestamp S_$43)))) (=> (and (and ($extent_mutable S_$43 p_$36) (= ($ts_emb ($select.tm ($typemap S_$43) p_$36)) ($ptr ^^root_emb ($ref p_$36)))) (= ($timestamp S_$43 p_$36) ($current_timestamp S_$43))) (and (and ($extent_mutable S_$43 p_$36) (= ($ts_emb ($select.tm ($typemap S_$43) p_$36)) ($ptr ^^root_emb ($ref p_$36)))) (= ($timestamp S_$43 p_$36) ($current_timestamp S_$43)))))
 :qid |BBf6slic.636:18|
 :skolemid |249|
))) (and (forall ((|#o_$0| T@$ptr) ) (!  (not ($set_in |#o_$0| $set_empty))
 :qid |BBf6slic.637:18|
 :weight 0
 :skolemid |250|
 :pattern ( ($set_in |#o_$0| $set_empty))
)) (forall ((|#r_$7| T@$ptr) (|#o_$1| T@$ptr) ) (!  (and (=> ($set_in |#o_$1| ($set_singleton |#r_$7|)) (= |#r_$7| |#o_$1|)) (=> (= |#r_$7| |#o_$1|) ($set_in |#o_$1| ($set_singleton |#r_$7|))))
 :qid |BBf6slic.638:18|
 :weight 0
 :skolemid |251|
 :pattern ( ($set_in |#o_$1| ($set_singleton |#r_$7|)))
)))))) (and (and (and (and (forall ((|#r_$8| T@$ptr) (|#o_$2| T@$ptr) ) (!  (and (=> ($set_in |#o_$2| ($non_null_set_singleton |#r_$8|)) (and (= |#r_$8| |#o_$2|) (not (= ($ref |#r_$8|) ($ref $null))))) (=> (and (= |#r_$8| |#o_$2|) (not (= ($ref |#r_$8|) ($ref $null)))) ($set_in |#o_$2| ($non_null_set_singleton |#r_$8|))))
 :qid |BBf6slic.639:18|
 :weight 0
 :skolemid |252|
 :pattern ( ($set_in |#o_$2| ($non_null_set_singleton |#r_$8|)))
)) (forall ((|#a| T@$ptrset) (|#b_$1| T@$ptrset) (|#o_$3| T@$ptr) ) (!  (and (=> ($set_in |#o_$3| ($set_union |#a| |#b_$1|)) (or ($set_in |#o_$3| |#a|) ($set_in |#o_$3| |#b_$1|))) (=> (or ($set_in |#o_$3| |#a|) ($set_in |#o_$3| |#b_$1|)) ($set_in |#o_$3| ($set_union |#a| |#b_$1|))))
 :qid |BBf6slic.640:18|
 :weight 0
 :skolemid |253|
 :pattern ( ($set_in |#o_$3| ($set_union |#a| |#b_$1|)))
))) (and (forall ((|#a_$0| T@$ptrset) (|#b_$2| T@$ptrset) (|#o_$4| T@$ptr) ) (!  (and (=> ($set_in |#o_$4| ($set_difference |#a_$0| |#b_$2|)) (and ($set_in |#o_$4| |#a_$0|) (not ($set_in |#o_$4| |#b_$2|)))) (=> (and ($set_in |#o_$4| |#a_$0|) (not ($set_in |#o_$4| |#b_$2|))) ($set_in |#o_$4| ($set_difference |#a_$0| |#b_$2|))))
 :qid |BBf6slic.641:18|
 :weight 0
 :skolemid |254|
 :pattern ( ($set_in |#o_$4| ($set_difference |#a_$0| |#b_$2|)))
)) (forall ((|#a_$1| T@$ptrset) (|#b_$3| T@$ptrset) (|#o_$5| T@$ptr) ) (!  (and (=> ($set_in |#o_$5| ($set_intersection |#a_$1| |#b_$3|)) (and ($set_in |#o_$5| |#a_$1|) ($set_in |#o_$5| |#b_$3|))) (=> (and ($set_in |#o_$5| |#a_$1|) ($set_in |#o_$5| |#b_$3|)) ($set_in |#o_$5| ($set_intersection |#a_$1| |#b_$3|))))
 :qid |BBf6slic.642:18|
 :weight 0
 :skolemid |255|
 :pattern ( ($set_in |#o_$5| ($set_intersection |#a_$1| |#b_$3|)))
)))) (and (and (forall ((e T@$ptr) (S_$44 T@$ptrset) ) (! (= ($set_union S_$44 ($set_singleton e)) ($set_union S_$44 ($set_singleton e)))
 :qid |BBf6slic.643:18|
 :skolemid |256|
)) (forall ((e_$0 T@$ptr) (S_$45 T@$ptrset) ) (! (= ($set_difference S_$45 ($set_singleton e_$0)) ($set_difference S_$45 ($set_singleton e_$0)))
 :qid |BBf6slic.644:18|
 :skolemid |257|
))) (and (forall ((|#a_$3| T@$ptrset) (|#b_$5| T@$ptrset) ) (!  (=> (forall ((|#o_$7| T@$ptr) ) (!  (and (=> ($set_in |#o_$7| |#a_$3|) ($set_in |#o_$7| |#b_$5|)) (=> ($set_in |#o_$7| |#b_$5|) ($set_in |#o_$7| |#a_$3|)))
 :qid |BBf6slic.645:101|
 :weight 0
 :skolemid |258|
 :pattern ( ($dont_instantiate |#o_$7|))
)) ($set_eq |#a_$3| |#b_$5|))
 :qid |BBf6slic.645:18|
 :weight 0
 :skolemid |259|
 :pattern ( ($set_eq |#a_$3| |#b_$5|))
)) (forall ((|#a_$4| T@$ptrset) (|#b_$6| T@$ptrset) ) (!  (=> ($set_eq |#a_$4| |#b_$6|) (= |#a_$4| |#b_$6|))
 :qid |BBf6slic.646:18|
 :weight 0
 :skolemid |260|
 :pattern ( ($set_eq |#a_$4| |#b_$6|))
))))) (and (and (and (= ($set_cardinality $set_empty) 0) (forall ((p_$116 T@$ptr) ) (! (= ($set_cardinality ($set_singleton p_$116)) 1)
 :qid |BBf6slic.648:18|
 :weight 0
 :skolemid |261|
))) (and (forall ((|#o_$8| T@$ptr) ) (! ($set_in |#o_$8| $set_universe)
 :qid |BBf6slic.649:18|
 :weight 0
 :skolemid |262|
 :pattern ( ($set_in |#o_$8| $set_universe))
)) (forall ((p_$117 T@$ptr) (s1_$5 T@$ptrset) (s2_$5 T@$ptrset) ) (!  (=> (and ($set_disjoint s1_$5 s2_$5) ($set_in p_$117 s1_$5)) (= ($id_set_disjoint p_$117 s1_$5 s2_$5) 1))
 :qid |BBf6slic.650:18|
 :weight 0
 :skolemid |263|
 :pattern ( ($set_disjoint s1_$5 s2_$5) ($set_in p_$117 s1_$5))
)))) (and (and (forall ((p_$118 T@$ptr) (s1_$6 T@$ptrset) (s2_$6 T@$ptrset) ) (!  (=> (and ($set_disjoint s1_$6 s2_$6) ($set_in p_$118 s2_$6)) (= ($id_set_disjoint p_$118 s1_$6 s2_$6) 2))
 :qid |BBf6slic.651:18|
 :weight 0
 :skolemid |264|
 :pattern ( ($set_disjoint s1_$6 s2_$6) ($set_in p_$118 s2_$6))
)) (forall ((s1_$7 T@$ptrset) (s2_$7 T@$ptrset) ) (!  (=> (forall ((p_$119 T@$ptr) ) (!  (and (=> ($set_in p_$119 s1_$7) (not ($set_in p_$119 s2_$7))) (=> ($set_in p_$119 s2_$7) (not ($set_in p_$119 s1_$7))))
 :qid |BBf6slic.652:107|
 :skolemid |265|
 :pattern ( ($dont_instantiate p_$119))
)) ($set_disjoint s1_$7 s2_$7))
 :qid |BBf6slic.652:18|
 :weight 0
 :skolemid |266|
 :pattern ( ($set_disjoint s1_$7 s2_$7))
))) (and (forall ((p_$120 T@$ptr) (S1_$12 T@$state) (p1_$1 T@$ptr) ) (!  (=> ($set_in p_$120 ($owns S1_$12 p1_$1)) ($in_some_owns p_$120))
 :qid |BBf6slic.653:18|
 :weight 0
 :skolemid |267|
 :pattern ( ($set_in p_$120 ($owns S1_$12 p1_$1)))
)) (forall ((p_$121 T@$ptr) (S1_$13 T@$state) (p1_$2 T@$ptr) ) (!  (and (=> ($set_in p_$121 ($owns S1_$13 p1_$2)) ($set_in2 p_$121 ($owns S1_$13 p1_$2))) (=> ($set_in2 p_$121 ($owns S1_$13 p1_$2)) ($set_in p_$121 ($owns S1_$13 p1_$2))))
 :qid |BBf6slic.654:18|
 :weight 0
 :skolemid |268|
 :pattern ( ($set_in2 p_$121 ($owns S1_$13 p1_$2)) ($in_some_owns p_$121))
))))))) (and (and (and (and (and (forall ((p_$122 T@$ptr) (s_$9 T@$ptrset) ) (!  (and (=> ($set_in p_$122 s_$9) ($set_in2 p_$122 s_$9)) (=> ($set_in2 p_$122 s_$9) ($set_in p_$122 s_$9)))
 :qid |BBf6slic.655:18|
 :weight 0
 :skolemid |269|
 :pattern ( ($set_in p_$122 s_$9))
)) (forall ((p_$124 T@$ptr) (s_$11 T@$ptrset) ) (!  (and (=> ($set_in p_$124 s_$11) ($set_in0 p_$124 s_$11)) (=> ($set_in0 p_$124 s_$11) ($set_in p_$124 s_$11)))
 :qid |BBf6slic.656:18|
 :weight 0
 :skolemid |270|
 :pattern ( ($set_in0 p_$124 s_$11))
))) (and (forall ((S2_$3 T@$state) (S1_$3 T@$state) ) (!  (and (=> (and (and (and (and (forall ((p_$37_$1 T@$ptr) ) (!  (=> (not (= ($kind_of ($typ ($owner S2_$3 p_$37_$1))) $kind_thread)) (not (= ($kind_of ($typ ($owner S1_$3 p_$37_$1))) $kind_thread)))
 :qid |BBf6slic.657:68|
 :skolemid |271|
 :pattern ( ($select.sm ($statusmap S2_$3) p_$37_$1))
)) (forall ((p_$38_$1 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$38_$1) (and (= ($select.mem ($memory S1_$3) p_$38_$1) ($select.mem ($memory S2_$3) p_$38_$1)) ($thread_local S2_$3 p_$38_$1)))
 :qid |BBf6slic.657:180|
 :skolemid |272|
 :pattern ( ($select.mem ($memory S2_$3) p_$38_$1))
))) (forall ((p_$39_$1 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$39_$1) (and (= ($select.sm ($statusmap S1_$3) p_$39_$1) ($select.sm ($statusmap S2_$3) p_$39_$1)) ($thread_local S2_$3 p_$39_$1)))
 :qid |BBf6slic.657:341|
 :skolemid |273|
 :pattern ( ($select.sm ($statusmap S2_$3) p_$39_$1))
))) (forall ((p_$40_$1 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$40_$1) (and (= ($select.tm ($typemap S1_$3) p_$40_$1) ($select.tm ($typemap S2_$3) p_$40_$1)) ($thread_local S2_$3 p_$40_$1)))
 :qid |BBf6slic.657:500|
 :skolemid |274|
 :pattern ( ($select.tm ($typemap S2_$3) p_$40_$1))
))) (and (and (<= ($current_timestamp S1_$3) ($current_timestamp S2_$3)) (forall ((p_$32@@1 T@$ptr) ) (! (<= ($timestamp S1_$3 p_$32@@1) ($timestamp S2_$3 p_$32@@1))
 :qid |BBf6slic.248:148|
 :weight 0
 :skolemid |3|
 :pattern ( ($timestamp S2_$3 p_$32@@1))
))) ($call_transition S1_$3 S2_$3))) (and (and (and (and (forall ((p_$37 T@$ptr) ) (!  (=> (not (= ($kind_of ($typ ($owner S2_$3 p_$37))) $kind_thread)) (not (= ($kind_of ($typ ($owner S1_$3 p_$37))) $kind_thread)))
 :qid |BBf6slic.657:696|
 :skolemid |275|
 :pattern ( ($select.sm ($statusmap S2_$3) p_$37))
)) (forall ((p_$38 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$38) (and (= ($select.mem ($memory S1_$3) p_$38) ($select.mem ($memory S2_$3) p_$38)) ($thread_local S2_$3 p_$38)))
 :qid |BBf6slic.657:887|
 :skolemid |276|
 :pattern ( ($select.mem ($memory S2_$3) p_$38))
))) (forall ((p_$39 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$39) (and (= ($select.sm ($statusmap S1_$3) p_$39) ($select.sm ($statusmap S2_$3) p_$39)) ($thread_local S2_$3 p_$39)))
 :qid |BBf6slic.657:1063|
 :skolemid |277|
 :pattern ( ($select.sm ($statusmap S2_$3) p_$39))
))) (forall ((p_$40 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$40) (and (= ($select.tm ($typemap S1_$3) p_$40) ($select.tm ($typemap S2_$3) p_$40)) ($thread_local S2_$3 p_$40)))
 :qid |BBf6slic.657:1239|
 :skolemid |278|
 :pattern ( ($select.tm ($typemap S2_$3) p_$40))
))) (and (and (<= ($current_timestamp S1_$3) ($current_timestamp S2_$3)) (forall ((p_$32_$3 T@$ptr) ) (! (<= ($timestamp S1_$3 p_$32_$3) ($timestamp S2_$3 p_$32_$3))
 :qid |BBf6slic.657:1475|
 :weight 0
 :skolemid |279|
 :pattern ( ($timestamp S2_$3 p_$32_$3))
))) ($call_transition S1_$3 S2_$3)))) (=> (and (and (and (and (forall ((p_$37@@0 T@$ptr) ) (!  (=> (not (= ($kind_of ($typ ($owner S2_$3 p_$37@@0))) $kind_thread)) (not (= ($kind_of ($typ ($owner S1_$3 p_$37@@0))) $kind_thread)))
 :qid |BBf6slic.657:696|
 :skolemid |275|
 :pattern ( ($select.sm ($statusmap S2_$3) p_$37@@0))
)) (forall ((p_$38@@0 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$38@@0) (and (= ($select.mem ($memory S1_$3) p_$38@@0) ($select.mem ($memory S2_$3) p_$38@@0)) ($thread_local S2_$3 p_$38@@0)))
 :qid |BBf6slic.657:887|
 :skolemid |276|
 :pattern ( ($select.mem ($memory S2_$3) p_$38@@0))
))) (forall ((p_$39@@0 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$39@@0) (and (= ($select.sm ($statusmap S1_$3) p_$39@@0) ($select.sm ($statusmap S2_$3) p_$39@@0)) ($thread_local S2_$3 p_$39@@0)))
 :qid |BBf6slic.657:1063|
 :skolemid |277|
 :pattern ( ($select.sm ($statusmap S2_$3) p_$39@@0))
))) (forall ((p_$40@@0 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$40@@0) (and (= ($select.tm ($typemap S1_$3) p_$40@@0) ($select.tm ($typemap S2_$3) p_$40@@0)) ($thread_local S2_$3 p_$40@@0)))
 :qid |BBf6slic.657:1239|
 :skolemid |278|
 :pattern ( ($select.tm ($typemap S2_$3) p_$40@@0))
))) (and (and (<= ($current_timestamp S1_$3) ($current_timestamp S2_$3)) (forall ((p_$32_$3@@0 T@$ptr) ) (! (<= ($timestamp S1_$3 p_$32_$3@@0) ($timestamp S2_$3 p_$32_$3@@0))
 :qid |BBf6slic.657:1475|
 :weight 0
 :skolemid |279|
 :pattern ( ($timestamp S2_$3 p_$32_$3@@0))
))) ($call_transition S1_$3 S2_$3))) (and (and (and (and (forall ((p_$37_$1@@0 T@$ptr) ) (!  (=> (not (= ($kind_of ($typ ($owner S2_$3 p_$37_$1@@0))) $kind_thread)) (not (= ($kind_of ($typ ($owner S1_$3 p_$37_$1@@0))) $kind_thread)))
 :qid |BBf6slic.657:68|
 :skolemid |271|
 :pattern ( ($select.sm ($statusmap S2_$3) p_$37_$1@@0))
)) (forall ((p_$38_$1@@0 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$38_$1@@0) (and (= ($select.mem ($memory S1_$3) p_$38_$1@@0) ($select.mem ($memory S2_$3) p_$38_$1@@0)) ($thread_local S2_$3 p_$38_$1@@0)))
 :qid |BBf6slic.657:180|
 :skolemid |272|
 :pattern ( ($select.mem ($memory S2_$3) p_$38_$1@@0))
))) (forall ((p_$39_$1@@0 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$39_$1@@0) (and (= ($select.sm ($statusmap S1_$3) p_$39_$1@@0) ($select.sm ($statusmap S2_$3) p_$39_$1@@0)) ($thread_local S2_$3 p_$39_$1@@0)))
 :qid |BBf6slic.657:341|
 :skolemid |273|
 :pattern ( ($select.sm ($statusmap S2_$3) p_$39_$1@@0))
))) (forall ((p_$40_$1@@0 T@$ptr) ) (!  (=> ($thread_local S1_$3 p_$40_$1@@0) (and (= ($select.tm ($typemap S1_$3) p_$40_$1@@0) ($select.tm ($typemap S2_$3) p_$40_$1@@0)) ($thread_local S2_$3 p_$40_$1@@0)))
 :qid |BBf6slic.657:500|
 :skolemid |274|
 :pattern ( ($select.tm ($typemap S2_$3) p_$40_$1@@0))
))) (and (and (<= ($current_timestamp S1_$3) ($current_timestamp S2_$3)) (forall ((p_$32@@2 T@$ptr) ) (! (<= ($timestamp S1_$3 p_$32@@2) ($timestamp S2_$3 p_$32@@2))
 :qid |BBf6slic.248:148|
 :weight 0
 :skolemid |3|
 :pattern ( ($timestamp S2_$3 p_$32@@2))
))) ($call_transition S1_$3 S2_$3)))))
 :qid |BBf6slic.657:18|
 :skolemid |280|
)) (forall ((T_$16 T@$ctype) (s_$12 Int) ) (! (= ($element_type ($array T_$16 s_$12)) T_$16)
 :qid |BBf6slic.658:18|
 :skolemid |281|
 :pattern ( ($array T_$16 s_$12))
)))) (and (and (forall ((T_$17 T@$ctype) (s_$13 Int) ) (! (= ($array_length ($array T_$17 s_$13)) s_$13)
 :qid |BBf6slic.659:18|
 :skolemid |282|
 :pattern ( ($array T_$17 s_$13))
)) (forall ((T_$18 T@$ctype) (s_$14 Int) ) (! (= ($ptr_level ($array T_$18 s_$14)) 0)
 :qid |BBf6slic.660:18|
 :skolemid |283|
 :pattern ( ($array T_$18 s_$14))
))) (and (forall ((T_$19 T@$ctype) (s_$15 Int) ) (! ($is_arraytype ($array T_$19 s_$15))
 :qid |BBf6slic.661:18|
 :skolemid |284|
 :pattern ( ($array T_$19 s_$15))
)) (forall ((T_$20 T@$ctype) (s_$16 Int) ) (!  (not ($is_claimable ($array T_$20 s_$16)))
 :qid |BBf6slic.662:18|
 :skolemid |285|
 :pattern ( ($array T_$20 s_$16))
))))) (and (and (and (forall ((T_$21 T@$ctype) (s_$17 Int) ) (! (= ($sizeof ($array T_$21 s_$17)) (* ($sizeof T_$21) s_$17))
 :qid |BBf6slic.663:18|
 :skolemid |286|
 :pattern ( ($sizeof ($array T_$21 s_$17)))
)) (forall ((|#p_$32| T@$ptr) (|#i_$0| Int) (|#t_$16| T@$ctype) ) (!  (and ($extent_hint ($idx |#p_$32| |#i_$0| |#t_$16|) |#p_$32|) (= ($idx |#p_$32| |#i_$0| |#t_$16|) ($ptr |#t_$16| (+ ($ref |#p_$32|) (* |#i_$0| ($sizeof |#t_$16|))))))
 :qid |BBf6slic.664:18|
 :skolemid |287|
 :pattern ( ($idx |#p_$32| |#i_$0| |#t_$16|))
))) (and (forall ((z Int) (y Int) (x Int) ) (! (= (+ x (* y z)) (+ x (* y z)))
 :qid |BBf6slic.665:18|
 :skolemid |288|
)) (forall ((y_$0 Int) (x_$0 Int) ) (! (= (+ x_$0 y_$0) (+ x_$0 y_$0))
 :qid |BBf6slic.666:18|
 :skolemid |289|
)))) (and (and (forall ((p_$126 T@$ptr) (i_$19 Int) (j Int) (T_$23 T@$ctype) ) (!  (=> (and (not (= i_$19 0)) (not (= j 0))) (= ($idx ($idx p_$126 i_$19 T_$23) j T_$23) ($idx p_$126 (+ i_$19 j) T_$23)))
 :qid |BBf6slic.667:18|
 :skolemid |290|
 :pattern ( ($idx ($idx p_$126 i_$19 T_$23) j T_$23))
)) (forall ((S_$121 T@$state) (p_$127 T@$ptr) (T_$24 T@$ctype) (sz_$23 Int) (vol_$1 Bool) ) (!  (and (=> ($is_array_vol_or_nonvol S_$121 p_$127 T_$24 sz_$23 vol_$1) (and ($is p_$127 T_$24) (forall ((i_$20 Int) ) (!  (=> (and (<= 0 i_$20) (< i_$20 sz_$23)) (and (and (=> ($ts_is_volatile ($select.tm ($typemap S_$121) ($idx p_$127 i_$20 T_$24))) vol_$1) (=> vol_$1 ($ts_is_volatile ($select.tm ($typemap S_$121) ($idx p_$127 i_$20 T_$24))))) ($typed S_$121 ($idx p_$127 i_$20 T_$24))))
 :qid |BBf6slic.668:275|
 :skolemid |291|
 :pattern ( ($select.sm ($statusmap S_$121) ($idx p_$127 i_$20 T_$24)))
 :pattern ( ($select.tm ($typemap S_$121) ($idx p_$127 i_$20 T_$24)))
 :pattern ( ($select.mem ($memory S_$121) ($idx p_$127 i_$20 T_$24)))
)))) (=> (and ($is p_$127 T_$24) (forall ((i_$20@@0 Int) ) (!  (=> (and (<= 0 i_$20@@0) (< i_$20@@0 sz_$23)) (and (and (=> ($ts_is_volatile ($select.tm ($typemap S_$121) ($idx p_$127 i_$20@@0 T_$24))) vol_$1) (=> vol_$1 ($ts_is_volatile ($select.tm ($typemap S_$121) ($idx p_$127 i_$20@@0 T_$24))))) ($typed S_$121 ($idx p_$127 i_$20@@0 T_$24))))
 :qid |BBf6slic.668:275|
 :skolemid |291|
 :pattern ( ($select.sm ($statusmap S_$121) ($idx p_$127 i_$20@@0 T_$24)))
 :pattern ( ($select.tm ($typemap S_$121) ($idx p_$127 i_$20@@0 T_$24)))
 :pattern ( ($select.mem ($memory S_$121) ($idx p_$127 i_$20@@0 T_$24)))
))) ($is_array_vol_or_nonvol S_$121 p_$127 T_$24 sz_$23 vol_$1)))
 :qid |BBf6slic.668:18|
 :weight 0
 :skolemid |292|
 :pattern ( ($is_array_vol_or_nonvol S_$121 p_$127 T_$24 sz_$23 vol_$1))
))) (and (forall ((S_$122 T@$state) (p_$128 T@$ptr) (T_$25 T@$ctype) (sz_$24 Int) ) (!  (and (=> ($is_array S_$122 p_$128 T_$25 sz_$24) (and ($is p_$128 T_$25) (forall ((i_$21 Int) ) (!  (=> (and (<= 0 i_$21) (< i_$21 sz_$24)) ($typed S_$122 ($idx p_$128 i_$21 T_$25)))
 :qid |BBf6slic.669:215|
 :skolemid |293|
 :pattern ( ($select.sm ($statusmap S_$122) ($idx p_$128 i_$21 T_$25)))
 :pattern ( ($select.tm ($typemap S_$122) ($idx p_$128 i_$21 T_$25)))
 :pattern ( ($select.mem ($memory S_$122) ($idx p_$128 i_$21 T_$25)))
)))) (=> (and ($is p_$128 T_$25) (forall ((i_$21@@0 Int) ) (!  (=> (and (<= 0 i_$21@@0) (< i_$21@@0 sz_$24)) ($typed S_$122 ($idx p_$128 i_$21@@0 T_$25)))
 :qid |BBf6slic.669:215|
 :skolemid |293|
 :pattern ( ($select.sm ($statusmap S_$122) ($idx p_$128 i_$21@@0 T_$25)))
 :pattern ( ($select.tm ($typemap S_$122) ($idx p_$128 i_$21@@0 T_$25)))
 :pattern ( ($select.mem ($memory S_$122) ($idx p_$128 i_$21@@0 T_$25)))
))) ($is_array S_$122 p_$128 T_$25 sz_$24)))
 :qid |BBf6slic.669:18|
 :weight 0
 :skolemid |294|
 :pattern ( ($is_array S_$122 p_$128 T_$25 sz_$24))
)) (forall ((sz_$1 Int) (T_$0 T@$ctype) (p_$41 T@$ptr) (S_$46 T@$state) ) (!  (and (=> (forall ((i_$1_$0 Int) ) (!  (=> (and (<= 0 i_$1_$0) (< i_$1_$0 sz_$1)) (and ($is ($idx p_$41 i_$1_$0 T_$0) T_$0) ($thread_local S_$46 ($idx p_$41 i_$1_$0 T_$0))))
 :qid |BBf6slic.670:94|
 :skolemid |295|
 :pattern ( ($select.sm ($statusmap S_$46) ($idx p_$41 i_$1_$0 T_$0)))
 :pattern ( ($select.tm ($typemap S_$46) ($idx p_$41 i_$1_$0 T_$0)))
)) (forall ((i_$1 Int) ) (!  (=> (and (<= 0 i_$1) (< i_$1 sz_$1)) (and ($is ($idx p_$41 i_$1 T_$0) T_$0) ($thread_local S_$46 ($idx p_$41 i_$1 T_$0))))
 :qid |BBf6slic.670:304|
 :skolemid |296|
 :pattern ( ($select.sm ($statusmap S_$46) ($idx p_$41 i_$1 T_$0)))
 :pattern ( ($select.tm ($typemap S_$46) ($idx p_$41 i_$1 T_$0)))
))) (=> (forall ((i_$1@@0 Int) ) (!  (=> (and (<= 0 i_$1@@0) (< i_$1@@0 sz_$1)) (and ($is ($idx p_$41 i_$1@@0 T_$0) T_$0) ($thread_local S_$46 ($idx p_$41 i_$1@@0 T_$0))))
 :qid |BBf6slic.670:304|
 :skolemid |296|
 :pattern ( ($select.sm ($statusmap S_$46) ($idx p_$41 i_$1@@0 T_$0)))
 :pattern ( ($select.tm ($typemap S_$46) ($idx p_$41 i_$1@@0 T_$0)))
)) (forall ((i_$1_$0@@0 Int) ) (!  (=> (and (<= 0 i_$1_$0@@0) (< i_$1_$0@@0 sz_$1)) (and ($is ($idx p_$41 i_$1_$0@@0 T_$0) T_$0) ($thread_local S_$46 ($idx p_$41 i_$1_$0@@0 T_$0))))
 :qid |BBf6slic.670:94|
 :skolemid |295|
 :pattern ( ($select.sm ($statusmap S_$46) ($idx p_$41 i_$1_$0@@0 T_$0)))
 :pattern ( ($select.tm ($typemap S_$46) ($idx p_$41 i_$1_$0@@0 T_$0)))
))))
 :qid |BBf6slic.670:18|
 :skolemid |297|
)))))) (and (and (and (and (forall ((sz_$2 Int) (T_$1 T@$ctype) (p_$42 T@$ptr) (S_$47 T@$state) ) (!  (and (=> (and ($is_array S_$47 p_$42 T_$1 sz_$2) (forall ((i_$2_$1 Int) ) (!  (=> (and (<= 0 i_$2_$1) (< i_$2_$1 sz_$2)) ($mutable S_$47 ($idx p_$42 i_$2_$1 T_$1)))
 :qid |BBf6slic.671:132|
 :skolemid |298|
 :pattern ( ($select.sm ($statusmap S_$47) ($idx p_$42 i_$2_$1 T_$1)))
 :pattern ( ($select.tm ($typemap S_$47) ($idx p_$42 i_$2_$1 T_$1)))
))) (and ($is_array S_$47 p_$42 T_$1 sz_$2) (forall ((i_$2 Int) ) (!  (=> (and (<= 0 i_$2) (< i_$2 sz_$2)) ($mutable S_$47 ($idx p_$42 i_$2 T_$1)))
 :qid |BBf6slic.671:370|
 :skolemid |299|
 :pattern ( ($select.sm ($statusmap S_$47) ($idx p_$42 i_$2 T_$1)))
 :pattern ( ($select.tm ($typemap S_$47) ($idx p_$42 i_$2 T_$1)))
)))) (=> (and ($is_array S_$47 p_$42 T_$1 sz_$2) (forall ((i_$2@@0 Int) ) (!  (=> (and (<= 0 i_$2@@0) (< i_$2@@0 sz_$2)) ($mutable S_$47 ($idx p_$42 i_$2@@0 T_$1)))
 :qid |BBf6slic.671:370|
 :skolemid |299|
 :pattern ( ($select.sm ($statusmap S_$47) ($idx p_$42 i_$2@@0 T_$1)))
 :pattern ( ($select.tm ($typemap S_$47) ($idx p_$42 i_$2@@0 T_$1)))
))) (and ($is_array S_$47 p_$42 T_$1 sz_$2) (forall ((i_$2_$1@@0 Int) ) (!  (=> (and (<= 0 i_$2_$1@@0) (< i_$2_$1@@0 sz_$2)) ($mutable S_$47 ($idx p_$42 i_$2_$1@@0 T_$1)))
 :qid |BBf6slic.671:132|
 :skolemid |298|
 :pattern ( ($select.sm ($statusmap S_$47) ($idx p_$42 i_$2_$1@@0 T_$1)))
 :pattern ( ($select.tm ($typemap S_$47) ($idx p_$42 i_$2_$1@@0 T_$1)))
)))))
 :qid |BBf6slic.671:18|
 :skolemid |300|
)) (forall ((emb T@$ptr) (sz_$3 Int) (T_$2 T@$ctype) (p_$43 T@$ptr) (S_$48 T@$state) ) (!  (and (=> (and ($is_array_vol_or_nonvol S_$48 p_$43 T_$2 sz_$3 false) (forall ((i_$3_$1 Int) ) (!  (=> (and (<= 0 i_$3_$1) (< i_$3_$1 sz_$3)) (= ($ts_emb ($select.tm ($typemap S_$48) ($idx p_$43 i_$3_$1 T_$2))) emb))
 :qid |BBf6slic.672:164|
 :skolemid |301|
 :pattern ( ($select.tm ($typemap S_$48) ($idx p_$43 i_$3_$1 T_$2)))
))) (and ($is_array_vol_or_nonvol S_$48 p_$43 T_$2 sz_$3 false) (forall ((i_$3 Int) ) (!  (=> (and (<= 0 i_$3) (< i_$3 sz_$3)) (= ($ts_emb ($select.tm ($typemap S_$48) ($idx p_$43 i_$3 T_$2))) emb))
 :qid |BBf6slic.672:389|
 :skolemid |302|
 :pattern ( ($select.tm ($typemap S_$48) ($idx p_$43 i_$3 T_$2)))
)))) (=> (and ($is_array_vol_or_nonvol S_$48 p_$43 T_$2 sz_$3 false) (forall ((i_$3@@0 Int) ) (!  (=> (and (<= 0 i_$3@@0) (< i_$3@@0 sz_$3)) (= ($ts_emb ($select.tm ($typemap S_$48) ($idx p_$43 i_$3@@0 T_$2))) emb))
 :qid |BBf6slic.672:389|
 :skolemid |302|
 :pattern ( ($select.tm ($typemap S_$48) ($idx p_$43 i_$3@@0 T_$2)))
))) (and ($is_array_vol_or_nonvol S_$48 p_$43 T_$2 sz_$3 false) (forall ((i_$3_$1@@0 Int) ) (!  (=> (and (<= 0 i_$3_$1@@0) (< i_$3_$1@@0 sz_$3)) (= ($ts_emb ($select.tm ($typemap S_$48) ($idx p_$43 i_$3_$1@@0 T_$2))) emb))
 :qid |BBf6slic.672:164|
 :skolemid |301|
 :pattern ( ($select.tm ($typemap S_$48) ($idx p_$43 i_$3_$1@@0 T_$2)))
)))))
 :qid |BBf6slic.672:18|
 :skolemid |303|
))) (and (forall ((isvol Bool) (f_$5 T@$field) (emb_$0 T@$ptr) (sz_$4 Int) (T_$3 T@$ctype) (p_$44 T@$ptr) (S_$49 T@$state) ) (!  (and (=> (and ($is_array_vol_or_nonvol S_$49 p_$44 T_$3 sz_$4 isvol) (forall ((i_$4_$1 Int) ) (!  (=> (and (<= 0 i_$4_$1) (< i_$4_$1 sz_$4)) (and (= ($ts_emb ($select.tm ($typemap S_$49) ($idx p_$44 i_$4_$1 T_$3))) emb_$0) (= ($ts_path ($select.tm ($typemap S_$49) ($idx p_$44 i_$4_$1 T_$3))) ($array_path f_$5 i_$4_$1))))
 :qid |BBf6slic.673:199|
 :skolemid |304|
 :pattern ( ($select.tm ($typemap S_$49) ($idx p_$44 i_$4_$1 T_$3)))
 :pattern ( ($select.mem ($memory S_$49) ($idx p_$44 i_$4_$1 T_$3)))
))) (and ($is_array_vol_or_nonvol S_$49 p_$44 T_$3 sz_$4 isvol) (forall ((i_$4 Int) ) (!  (=> (and (<= 0 i_$4) (< i_$4 sz_$4)) (and (= ($ts_emb ($select.tm ($typemap S_$49) ($idx p_$44 i_$4 T_$3))) emb_$0) (= ($ts_path ($select.tm ($typemap S_$49) ($idx p_$44 i_$4 T_$3))) ($array_path f_$5 i_$4))))
 :qid |BBf6slic.673:540|
 :skolemid |305|
 :pattern ( ($select.tm ($typemap S_$49) ($idx p_$44 i_$4 T_$3)))
 :pattern ( ($select.mem ($memory S_$49) ($idx p_$44 i_$4 T_$3)))
)))) (=> (and ($is_array_vol_or_nonvol S_$49 p_$44 T_$3 sz_$4 isvol) (forall ((i_$4@@0 Int) ) (!  (=> (and (<= 0 i_$4@@0) (< i_$4@@0 sz_$4)) (and (= ($ts_emb ($select.tm ($typemap S_$49) ($idx p_$44 i_$4@@0 T_$3))) emb_$0) (= ($ts_path ($select.tm ($typemap S_$49) ($idx p_$44 i_$4@@0 T_$3))) ($array_path f_$5 i_$4@@0))))
 :qid |BBf6slic.673:540|
 :skolemid |305|
 :pattern ( ($select.tm ($typemap S_$49) ($idx p_$44 i_$4@@0 T_$3)))
 :pattern ( ($select.mem ($memory S_$49) ($idx p_$44 i_$4@@0 T_$3)))
))) (and ($is_array_vol_or_nonvol S_$49 p_$44 T_$3 sz_$4 isvol) (forall ((i_$4_$1@@0 Int) ) (!  (=> (and (<= 0 i_$4_$1@@0) (< i_$4_$1@@0 sz_$4)) (and (= ($ts_emb ($select.tm ($typemap S_$49) ($idx p_$44 i_$4_$1@@0 T_$3))) emb_$0) (= ($ts_path ($select.tm ($typemap S_$49) ($idx p_$44 i_$4_$1@@0 T_$3))) ($array_path f_$5 i_$4_$1@@0))))
 :qid |BBf6slic.673:199|
 :skolemid |304|
 :pattern ( ($select.tm ($typemap S_$49) ($idx p_$44 i_$4_$1@@0 T_$3)))
 :pattern ( ($select.mem ($memory S_$49) ($idx p_$44 i_$4_$1@@0 T_$3)))
)))))
 :qid |BBf6slic.673:18|
 :skolemid |306|
)) (forall ((vol Bool) (q@union Bool) (sz_$5 Int) (T_$4 T@$ctype) (f_$6 T@$field) ) (!  (and (=> (forall ((S_$50_$0 T@$state) (p_$45_$0 T@$ptr) (i_$5_$0 Int) ) (!  (=> (and (and (and (<= 0 i_$5_$0) (< i_$5_$0 sz_$5)) (or (not q@union) (= ($ts_active_option ($select.tm ($typemap S_$50_$0) p_$45_$0)) f_$6))) (and ($is p_$45_$0 ($field_parent_type f_$6)) ($typed S_$50_$0 p_$45_$0))) (and (and (and (and (=> ($ts_is_volatile ($select.tm ($typemap S_$50_$0) ($idx ($dot p_$45_$0 f_$6) i_$5_$0 T_$4))) vol) (=> vol ($ts_is_volatile ($select.tm ($typemap S_$50_$0) ($idx ($dot p_$45_$0 f_$6) i_$5_$0 T_$4))))) ($typed S_$50_$0 ($idx ($dot p_$45_$0 f_$6) i_$5_$0 T_$4))) (= ($ts_emb ($select.tm ($typemap S_$50_$0) ($idx ($dot p_$45_$0 f_$6) i_$5_$0 T_$4))) p_$45_$0)) (= ($ts_path ($select.tm ($typemap S_$50_$0) ($idx ($dot p_$45_$0 f_$6) i_$5_$0 T_$4))) ($array_path f_$6 i_$5_$0))))
 :qid |BBf6slic.674:111|
 :skolemid |307|
 :pattern ( ($select.tm ($typemap S_$50_$0) ($idx ($dot p_$45_$0 f_$6) i_$5_$0 T_$4)))
 :pattern ( ($select.sm ($statusmap S_$50_$0) ($idx ($dot p_$45_$0 f_$6) i_$5_$0 T_$4)))
 :pattern ( ($select.mem ($memory S_$50_$0) ($idx ($dot p_$45_$0 f_$6) i_$5_$0 T_$4)))
)) (forall ((S_$50 T@$state) (p_$45 T@$ptr) (i_$5 Int) ) (!  (=> (and (and (and (<= 0 i_$5) (< i_$5 sz_$5)) (or (not q@union) (= ($ts_active_option ($select.tm ($typemap S_$50) p_$45)) f_$6))) (and ($is p_$45 ($field_parent_type f_$6)) ($typed S_$50 p_$45))) (and (and (and (and (=> ($ts_is_volatile ($select.tm ($typemap S_$50) ($idx ($dot p_$45 f_$6) i_$5 T_$4))) vol) (=> vol ($ts_is_volatile ($select.tm ($typemap S_$50) ($idx ($dot p_$45 f_$6) i_$5 T_$4))))) ($typed S_$50 ($idx ($dot p_$45 f_$6) i_$5 T_$4))) (= ($ts_emb ($select.tm ($typemap S_$50) ($idx ($dot p_$45 f_$6) i_$5 T_$4))) p_$45)) (= ($ts_path ($select.tm ($typemap S_$50) ($idx ($dot p_$45 f_$6) i_$5 T_$4))) ($array_path f_$6 i_$5))))
 :qid |BBf6slic.674:813|
 :skolemid |308|
 :pattern ( ($select.tm ($typemap S_$50) ($idx ($dot p_$45 f_$6) i_$5 T_$4)))
 :pattern ( ($select.sm ($statusmap S_$50) ($idx ($dot p_$45 f_$6) i_$5 T_$4)))
 :pattern ( ($select.mem ($memory S_$50) ($idx ($dot p_$45 f_$6) i_$5 T_$4)))
))) (=> (forall ((S_$50@@0 T@$state) (p_$45@@0 T@$ptr) (i_$5@@0 Int) ) (!  (=> (and (and (and (<= 0 i_$5@@0) (< i_$5@@0 sz_$5)) (or (not q@union) (= ($ts_active_option ($select.tm ($typemap S_$50@@0) p_$45@@0)) f_$6))) (and ($is p_$45@@0 ($field_parent_type f_$6)) ($typed S_$50@@0 p_$45@@0))) (and (and (and (and (=> ($ts_is_volatile ($select.tm ($typemap S_$50@@0) ($idx ($dot p_$45@@0 f_$6) i_$5@@0 T_$4))) vol) (=> vol ($ts_is_volatile ($select.tm ($typemap S_$50@@0) ($idx ($dot p_$45@@0 f_$6) i_$5@@0 T_$4))))) ($typed S_$50@@0 ($idx ($dot p_$45@@0 f_$6) i_$5@@0 T_$4))) (= ($ts_emb ($select.tm ($typemap S_$50@@0) ($idx ($dot p_$45@@0 f_$6) i_$5@@0 T_$4))) p_$45@@0)) (= ($ts_path ($select.tm ($typemap S_$50@@0) ($idx ($dot p_$45@@0 f_$6) i_$5@@0 T_$4))) ($array_path f_$6 i_$5@@0))))
 :qid |BBf6slic.674:813|
 :skolemid |308|
 :pattern ( ($select.tm ($typemap S_$50@@0) ($idx ($dot p_$45@@0 f_$6) i_$5@@0 T_$4)))
 :pattern ( ($select.sm ($statusmap S_$50@@0) ($idx ($dot p_$45@@0 f_$6) i_$5@@0 T_$4)))
 :pattern ( ($select.mem ($memory S_$50@@0) ($idx ($dot p_$45@@0 f_$6) i_$5@@0 T_$4)))
)) (forall ((S_$50_$0@@0 T@$state) (p_$45_$0@@0 T@$ptr) (i_$5_$0@@0 Int) ) (!  (=> (and (and (and (<= 0 i_$5_$0@@0) (< i_$5_$0@@0 sz_$5)) (or (not q@union) (= ($ts_active_option ($select.tm ($typemap S_$50_$0@@0) p_$45_$0@@0)) f_$6))) (and ($is p_$45_$0@@0 ($field_parent_type f_$6)) ($typed S_$50_$0@@0 p_$45_$0@@0))) (and (and (and (and (=> ($ts_is_volatile ($select.tm ($typemap S_$50_$0@@0) ($idx ($dot p_$45_$0@@0 f_$6) i_$5_$0@@0 T_$4))) vol) (=> vol ($ts_is_volatile ($select.tm ($typemap S_$50_$0@@0) ($idx ($dot p_$45_$0@@0 f_$6) i_$5_$0@@0 T_$4))))) ($typed S_$50_$0@@0 ($idx ($dot p_$45_$0@@0 f_$6) i_$5_$0@@0 T_$4))) (= ($ts_emb ($select.tm ($typemap S_$50_$0@@0) ($idx ($dot p_$45_$0@@0 f_$6) i_$5_$0@@0 T_$4))) p_$45_$0@@0)) (= ($ts_path ($select.tm ($typemap S_$50_$0@@0) ($idx ($dot p_$45_$0@@0 f_$6) i_$5_$0@@0 T_$4))) ($array_path f_$6 i_$5_$0@@0))))
 :qid |BBf6slic.674:111|
 :skolemid |307|
 :pattern ( ($select.tm ($typemap S_$50_$0@@0) ($idx ($dot p_$45_$0@@0 f_$6) i_$5_$0@@0 T_$4)))
 :pattern ( ($select.sm ($statusmap S_$50_$0@@0) ($idx ($dot p_$45_$0@@0 f_$6) i_$5_$0@@0 T_$4)))
 :pattern ( ($select.mem ($memory S_$50_$0@@0) ($idx ($dot p_$45_$0@@0 f_$6) i_$5_$0@@0 T_$4)))
))))
 :qid |BBf6slic.674:18|
 :skolemid |309|
)))) (and (and (forall ((vol_$0 Bool) (union_$0 Bool) (sz_$6 Int) (T_$5 T@$ctype) (f_$7 T@$field) ) (!  (and (=> (and (forall ((S_$51_$1 T@$state) (p_$46_$1 T@$ptr) ) (!  (=> (and (or (not union_$0) (= ($ts_active_option ($select.tm ($typemap S_$51_$1) p_$46_$1)) f_$7)) (and ($is p_$46_$1 ($field_parent_type f_$7)) ($typed S_$51_$1 p_$46_$1))) (and (and (and ($extent_hint ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1 f_$7))) p_$46_$1) ($typed S_$51_$1 ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1 f_$7))))) (= ($ts_emb ($select.tm ($typemap S_$51_$1) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1 f_$7))))) p_$46_$1)) (= ($ts_path ($select.tm ($typemap S_$51_$1) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1 f_$7))))) f_$7)))
 :qid |BBf6slic.675:118|
 :skolemid |310|
 :pattern ( ($select.tm ($typemap S_$51_$1) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1 f_$7)))))
 :pattern ( ($select.sm ($statusmap S_$51_$1) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1 f_$7)))))
 :pattern ( ($select.mem ($memory S_$51_$1) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1 f_$7)))))
)) (forall ((p_$47_$1 T@$ptr) (i_$6_$1 Int) ) (! ($instantiate_ptr ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$47_$1 f_$7))))
 :qid |BBf6slic.675:750|
 :skolemid |311|
 :pattern ( ($idx ($dot p_$47_$1 f_$7) i_$6_$1 T_$5))
))) (and (forall ((S_$51 T@$state) (p_$46 T@$ptr) ) (!  (=> (and (or (not union_$0) (= ($ts_active_option ($select.tm ($typemap S_$51) p_$46)) f_$7)) (and ($is p_$46 ($field_parent_type f_$7)) ($typed S_$51 p_$46))) (and (and (and ($extent_hint ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46 f_$7))) p_$46) ($typed S_$51 ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46 f_$7))))) (= ($ts_emb ($select.tm ($typemap S_$51) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46 f_$7))))) p_$46)) (= ($ts_path ($select.tm ($typemap S_$51) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46 f_$7))))) f_$7)))
 :qid |BBf6slic.675:910|
 :skolemid |312|
 :pattern ( ($select.tm ($typemap S_$51) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46 f_$7)))))
 :pattern ( ($select.sm ($statusmap S_$51) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46 f_$7)))))
 :pattern ( ($select.mem ($memory S_$51) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46 f_$7)))))
)) (forall ((p_$47 T@$ptr) (i_$6 Int) ) (! ($instantiate_ptr ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$47 f_$7))))
 :qid |BBf6slic.675:1633|
 :skolemid |313|
 :pattern ( ($idx ($dot p_$47 f_$7) i_$6 T_$5))
)))) (=> (and (forall ((S_$51@@0 T@$state) (p_$46@@0 T@$ptr) ) (!  (=> (and (or (not union_$0) (= ($ts_active_option ($select.tm ($typemap S_$51@@0) p_$46@@0)) f_$7)) (and ($is p_$46@@0 ($field_parent_type f_$7)) ($typed S_$51@@0 p_$46@@0))) (and (and (and ($extent_hint ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46@@0 f_$7))) p_$46@@0) ($typed S_$51@@0 ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46@@0 f_$7))))) (= ($ts_emb ($select.tm ($typemap S_$51@@0) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46@@0 f_$7))))) p_$46@@0)) (= ($ts_path ($select.tm ($typemap S_$51@@0) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46@@0 f_$7))))) f_$7)))
 :qid |BBf6slic.675:910|
 :skolemid |312|
 :pattern ( ($select.tm ($typemap S_$51@@0) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46@@0 f_$7)))))
 :pattern ( ($select.sm ($statusmap S_$51@@0) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46@@0 f_$7)))))
 :pattern ( ($select.mem ($memory S_$51@@0) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46@@0 f_$7)))))
)) (forall ((p_$47@@0 T@$ptr) (i_$6@@0 Int) ) (! ($instantiate_ptr ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$47@@0 f_$7))))
 :qid |BBf6slic.675:1633|
 :skolemid |313|
 :pattern ( ($idx ($dot p_$47@@0 f_$7) i_$6@@0 T_$5))
))) (and (forall ((S_$51_$1@@0 T@$state) (p_$46_$1@@0 T@$ptr) ) (!  (=> (and (or (not union_$0) (= ($ts_active_option ($select.tm ($typemap S_$51_$1@@0) p_$46_$1@@0)) f_$7)) (and ($is p_$46_$1@@0 ($field_parent_type f_$7)) ($typed S_$51_$1@@0 p_$46_$1@@0))) (and (and (and ($extent_hint ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1@@0 f_$7))) p_$46_$1@@0) ($typed S_$51_$1@@0 ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1@@0 f_$7))))) (= ($ts_emb ($select.tm ($typemap S_$51_$1@@0) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1@@0 f_$7))))) p_$46_$1@@0)) (= ($ts_path ($select.tm ($typemap S_$51_$1@@0) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1@@0 f_$7))))) f_$7)))
 :qid |BBf6slic.675:118|
 :skolemid |310|
 :pattern ( ($select.tm ($typemap S_$51_$1@@0) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1@@0 f_$7)))))
 :pattern ( ($select.sm ($statusmap S_$51_$1@@0) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1@@0 f_$7)))))
 :pattern ( ($select.mem ($memory S_$51_$1@@0) ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$46_$1@@0 f_$7)))))
)) (forall ((p_$47_$1@@0 T@$ptr) (i_$6_$1@@0 Int) ) (! ($instantiate_ptr ($ptr ($array T_$5 sz_$6) ($ref ($dot p_$47_$1@@0 f_$7))))
 :qid |BBf6slic.675:750|
 :skolemid |311|
 :pattern ( ($idx ($dot p_$47_$1@@0 f_$7) i_$6_$1@@0 T_$5))
)))))
 :qid |BBf6slic.675:18|
 :skolemid |314|
)) (forall ((p_$129 T@$ptr) (|#r_$9| Int) (T_$26 T@$ctype) (sz_$25 Int) ) (!  (and (=> ($set_in p_$129 ($full_extent ($ptr ($array T_$26 sz_$25) |#r_$9|))) (or (= p_$129 ($ptr ($array T_$26 sz_$25) |#r_$9|)) (and (and (<= 0 ($index_within p_$129 ($ptr T_$26 |#r_$9|))) (<= ($index_within p_$129 ($ptr T_$26 |#r_$9|)) (- sz_$25 1))) ($set_in p_$129 ($full_extent ($idx ($ptr T_$26 |#r_$9|) ($index_within p_$129 ($ptr T_$26 |#r_$9|)) T_$26)))))) (=> (or (= p_$129 ($ptr ($array T_$26 sz_$25) |#r_$9|)) (and (and (<= 0 ($index_within p_$129 ($ptr T_$26 |#r_$9|))) (<= ($index_within p_$129 ($ptr T_$26 |#r_$9|)) (- sz_$25 1))) ($set_in p_$129 ($full_extent ($idx ($ptr T_$26 |#r_$9|) ($index_within p_$129 ($ptr T_$26 |#r_$9|)) T_$26))))) ($set_in p_$129 ($full_extent ($ptr ($array T_$26 sz_$25) |#r_$9|)))))
 :qid |BBf6slic.676:18|
 :skolemid |315|
 :pattern ( ($set_in p_$129 ($full_extent ($ptr ($array T_$26 sz_$25) |#r_$9|))))
))) (and (forall ((S_$123 T@$state) (p_$130 T@$ptr) (|#r_$10| Int) (T_$27 T@$ctype) (sz_$26 Int) ) (!  (and (=> ($set_in p_$130 ($extent S_$123 ($ptr ($array T_$27 sz_$26) |#r_$10|))) (or (= p_$130 ($ptr ($array T_$27 sz_$26) |#r_$10|)) (and (and (<= 0 ($index_within p_$130 ($ptr T_$27 |#r_$10|))) (<= ($index_within p_$130 ($ptr T_$27 |#r_$10|)) (- sz_$26 1))) ($set_in p_$130 ($extent S_$123 ($idx ($ptr T_$27 |#r_$10|) ($index_within p_$130 ($ptr T_$27 |#r_$10|)) T_$27)))))) (=> (or (= p_$130 ($ptr ($array T_$27 sz_$26) |#r_$10|)) (and (and (<= 0 ($index_within p_$130 ($ptr T_$27 |#r_$10|))) (<= ($index_within p_$130 ($ptr T_$27 |#r_$10|)) (- sz_$26 1))) ($set_in p_$130 ($extent S_$123 ($idx ($ptr T_$27 |#r_$10|) ($index_within p_$130 ($ptr T_$27 |#r_$10|)) T_$27))))) ($set_in p_$130 ($extent S_$123 ($ptr ($array T_$27 sz_$26) |#r_$10|)))))
 :qid |BBf6slic.677:18|
 :skolemid |316|
 :pattern ( ($set_in p_$130 ($extent S_$123 ($ptr ($array T_$27 sz_$26) |#r_$10|))))
)) (forall ((p_$131 T@$ptr) (|#r_$11| Int) (T_$28 T@$ctype) (sz_$27 Int) ) (!  (=> ($is_primitive T_$28) (and (=> ($set_in p_$131 ($span ($ptr ($array T_$28 sz_$27) |#r_$11|))) (and (and (<= 0 ($index_within p_$131 ($ptr T_$28 |#r_$11|))) (<= ($index_within p_$131 ($ptr T_$28 |#r_$11|)) (- sz_$27 1))) (= p_$131 ($idx ($ptr T_$28 |#r_$11|) ($index_within p_$131 ($ptr T_$28 |#r_$11|)) T_$28)))) (=> (and (and (<= 0 ($index_within p_$131 ($ptr T_$28 |#r_$11|))) (<= ($index_within p_$131 ($ptr T_$28 |#r_$11|)) (- sz_$27 1))) (= p_$131 ($idx ($ptr T_$28 |#r_$11|) ($index_within p_$131 ($ptr T_$28 |#r_$11|)) T_$28))) ($set_in p_$131 ($span ($ptr ($array T_$28 sz_$27) |#r_$11|))))))
 :qid |BBf6slic.678:18|
 :skolemid |317|
 :pattern ( ($set_in p_$131 ($span ($ptr ($array T_$28 sz_$27) |#r_$11|))) ($is_primitive T_$28))
))))) (and (and (and (forall ((emb_$1 T@$ptr) (p_$48 T@$ptr) (S_$52 T@$state) ) (!  (and (=> (and (and (= ($ts_emb ($select.tm ($typemap S_$52) p_$48)) emb_$1) (not ($ts_is_volatile ($select.tm ($typemap S_$52) p_$48)))) ($typed S_$52 p_$48)) (and (and (= ($ts_emb ($select.tm ($typemap S_$52) p_$48)) emb_$1) (not ($ts_is_volatile ($select.tm ($typemap S_$52) p_$48)))) ($typed S_$52 p_$48))) (=> (and (and (= ($ts_emb ($select.tm ($typemap S_$52) p_$48)) emb_$1) (not ($ts_is_volatile ($select.tm ($typemap S_$52) p_$48)))) ($typed S_$52 p_$48)) (and (and (= ($ts_emb ($select.tm ($typemap S_$52) p_$48)) emb_$1) (not ($ts_is_volatile ($select.tm ($typemap S_$52) p_$48)))) ($typed S_$52 p_$48))))
 :qid |BBf6slic.679:18|
 :skolemid |318|
)) (forall ((S_$124 T@$state) (|#r_$12| Int) (T_$29 T@$ctype) (sz_$28 Int) (i_$22 Int) ) (!  (=> ($typed S_$124 ($ptr ($array T_$29 sz_$28) |#r_$12|)) (=> (and (<= 0 i_$22) (< i_$22 sz_$28)) (and (and (= ($ts_emb ($select.tm ($typemap S_$124) ($idx ($ptr ($array T_$29 sz_$28) |#r_$12|) i_$22 T_$29))) ($ptr ($array T_$29 sz_$28) |#r_$12|)) (not ($ts_is_volatile ($select.tm ($typemap S_$124) ($idx ($ptr ($array T_$29 sz_$28) |#r_$12|) i_$22 T_$29))))) ($typed S_$124 ($idx ($ptr ($array T_$29 sz_$28) |#r_$12|) i_$22 T_$29)))))
 :qid |BBf6slic.680:18|
 :skolemid |319|
 :pattern ( ($select.sm ($statusmap S_$124) ($idx ($ptr T_$29 |#r_$12|) i_$22 T_$29)) ($ptr ($array T_$29 sz_$28) |#r_$12|))
 :pattern ( ($select.tm ($typemap S_$124) ($idx ($ptr T_$29 |#r_$12|) i_$22 T_$29)) ($ptr ($array T_$29 sz_$28) |#r_$12|))
))) (and (forall ((p_$132 T@$ptr) (T_$30 T@$ctype) (sz_$29 Int) (elem T@$ptr) ) (!  (and (=> ($set_in elem ($array_members p_$132 T_$30 sz_$29)) (and (and (<= 0 ($index_within elem p_$132)) (<= ($index_within elem p_$132) (- sz_$29 1))) (= elem ($idx p_$132 ($index_within elem p_$132) T_$30)))) (=> (and (and (<= 0 ($index_within elem p_$132)) (<= ($index_within elem p_$132) (- sz_$29 1))) (= elem ($idx p_$132 ($index_within elem p_$132) T_$30))) ($set_in elem ($array_members p_$132 T_$30 sz_$29))))
 :qid |BBf6slic.681:18|
 :skolemid |320|
 :pattern ( ($set_in elem ($array_members p_$132 T_$30 sz_$29)))
)) (forall ((S_$125 T@$state) (p_$133 T@$ptr) (T_$31 T@$ctype) (sz_$30 Int) ) (! (= ($array_range S_$125 p_$133 T_$31 sz_$30) ($array_range_no_state p_$133 T_$31 sz_$30))
 :qid |BBf6slic.682:18|
 :skolemid |321|
 :pattern ( ($array_range S_$125 p_$133 T_$31 sz_$30))
)))) (and (and (forall ((S_$126 T@$state) (p_$134 T@$ptr) (|#r_$13| Int) (T_$32 T@$ctype) (sz_$31 Int) ) (!  (and ($instantiate_bool ($typed S_$126 p_$134)) (and (=> ($set_in p_$134 ($array_range S_$126 ($ptr T_$32 |#r_$13|) T_$32 sz_$31)) (and (and (<= 0 ($index_within p_$134 ($ptr T_$32 |#r_$13|))) (<= ($index_within p_$134 ($ptr T_$32 |#r_$13|)) (- sz_$31 1))) ($set_in p_$134 ($full_extent ($idx ($ptr T_$32 |#r_$13|) ($index_within p_$134 ($ptr T_$32 |#r_$13|)) T_$32))))) (=> (and (and (<= 0 ($index_within p_$134 ($ptr T_$32 |#r_$13|))) (<= ($index_within p_$134 ($ptr T_$32 |#r_$13|)) (- sz_$31 1))) ($set_in p_$134 ($full_extent ($idx ($ptr T_$32 |#r_$13|) ($index_within p_$134 ($ptr T_$32 |#r_$13|)) T_$32)))) ($set_in p_$134 ($array_range S_$126 ($ptr T_$32 |#r_$13|) T_$32 sz_$31)))))
 :qid |BBf6slic.683:18|
 :skolemid |322|
 :pattern ( ($set_in p_$134 ($array_range S_$126 ($ptr T_$32 |#r_$13|) T_$32 sz_$31)))
)) (forall ((p_$135 T@$ptr) (T_$33 T@$ctype) (sz_$32 Int) (idx Int) (S_$127 T@$ptrset) ) (!  (=> ($set_disjoint ($array_range_no_state p_$135 T_$33 sz_$32) S_$127) (=> (and (<= 0 idx) (< idx sz_$32)) (= ($id_set_disjoint ($idx p_$135 idx T_$33) ($array_range_no_state p_$135 T_$33 sz_$32) S_$127) 1)))
 :qid |BBf6slic.684:18|
 :skolemid |323|
 :pattern ( ($idx p_$135 idx T_$33) ($set_disjoint ($array_range_no_state p_$135 T_$33 sz_$32) S_$127))
))) (and (forall ((p_$136 T@$ptr) (T_$34 T@$ctype) (sz_$33 Int) (idx_$0 Int) (S_$128 T@$ptrset) ) (!  (=> ($set_disjoint S_$128 ($array_range_no_state p_$136 T_$34 sz_$33)) (=> (and (<= 0 idx_$0) (< idx_$0 sz_$33)) (= ($id_set_disjoint ($idx p_$136 idx_$0 T_$34) S_$128 ($array_range_no_state p_$136 T_$34 sz_$33)) 2)))
 :qid |BBf6slic.685:18|
 :skolemid |324|
 :pattern ( ($idx p_$136 idx_$0 T_$34) ($set_disjoint S_$128 ($array_range_no_state p_$136 T_$34 sz_$33)))
)) (forall ((p_$137 T@$ptr) (|#r_$14| Int) (T_$35 T@$ctype) (sz_$34 Int) ) (!  (and (=> ($set_in p_$137 ($non_null_array_range ($ptr T_$35 |#r_$14|) T_$35 sz_$34)) (and (not (= |#r_$14| 0)) (and (and (<= 0 ($index_within p_$137 ($ptr T_$35 |#r_$14|))) (<= ($index_within p_$137 ($ptr T_$35 |#r_$14|)) (- sz_$34 1))) ($set_in p_$137 ($full_extent ($idx ($ptr T_$35 |#r_$14|) ($index_within p_$137 ($ptr T_$35 |#r_$14|)) T_$35)))))) (=> (and (not (= |#r_$14| 0)) (and (and (<= 0 ($index_within p_$137 ($ptr T_$35 |#r_$14|))) (<= ($index_within p_$137 ($ptr T_$35 |#r_$14|)) (- sz_$34 1))) ($set_in p_$137 ($full_extent ($idx ($ptr T_$35 |#r_$14|) ($index_within p_$137 ($ptr T_$35 |#r_$14|)) T_$35))))) ($set_in p_$137 ($non_null_array_range ($ptr T_$35 |#r_$14|) T_$35 sz_$34))))
 :qid |BBf6slic.686:18|
 :skolemid |325|
 :pattern ( ($set_in p_$137 ($non_null_array_range ($ptr T_$35 |#r_$14|) T_$35 sz_$34)))
)))))))) (and (and (and (and (and (and (forall ((q_$21 T@$ptr) (S_$129 T@$state) (p_$138 T@$ptr) ) (!  (and (=> ($set_in q_$21 ($non_null_extent S_$129 p_$138)) (and (not (= ($ref p_$138) ($ref $null))) ($set_in q_$21 ($extent S_$129 p_$138)))) (=> (and (not (= ($ref p_$138) ($ref $null))) ($set_in q_$21 ($extent S_$129 p_$138))) ($set_in q_$21 ($non_null_extent S_$129 p_$138))))
 :qid |BBf6slic.687:18|
 :skolemid |326|
 :pattern ( ($set_in q_$21 ($non_null_extent S_$129 p_$138)))
)) (forall ((sz_$7 Int) (T_$6 T@$ctype) (p_$49 T@$ptr) ) (! (= ($ptr ($array T_$6 sz_$7) ($ref p_$49)) ($ptr ($array T_$6 sz_$7) ($ref p_$49)))
 :qid |BBf6slic.688:18|
 :skolemid |327|
))) (and (forall ((sz_$8 Int) (T_$7 T@$ctype) (arr T@$ptr) (s2_$4 T@$state) (s1_$4 T@$state) ) (!  (and (=> (forall ((|#i_$1| Int) ) (!  (=> (and (<= 0 |#i_$1|) (< |#i_$1| sz_$8)) (= ($select.mem ($memory s1_$4) ($idx arr |#i_$1| T_$7)) ($select.mem ($memory s2_$4) ($idx arr |#i_$1| T_$7))))
 :qid |BBf6slic.689:108|
 :skolemid |328|
 :pattern ( ($idx arr |#i_$1| T_$7))
)) (forall ((|#i| Int) ) (!  (=> (and (<= 0 |#i|) (< |#i| sz_$8)) (= ($select.mem ($memory s1_$4) ($idx arr |#i| T_$7)) ($select.mem ($memory s2_$4) ($idx arr |#i| T_$7))))
 :qid |BBf6slic.689:249|
 :skolemid |329|
 :pattern ( ($idx arr |#i| T_$7))
))) (=> (forall ((|#i@@0| Int) ) (!  (=> (and (<= 0 |#i@@0|) (< |#i@@0| sz_$8)) (= ($select.mem ($memory s1_$4) ($idx arr |#i@@0| T_$7)) ($select.mem ($memory s2_$4) ($idx arr |#i@@0| T_$7))))
 :qid |BBf6slic.689:249|
 :skolemid |329|
 :pattern ( ($idx arr |#i@@0| T_$7))
)) (forall ((|#i_$1@@0| Int) ) (!  (=> (and (<= 0 |#i_$1@@0|) (< |#i_$1@@0| sz_$8)) (= ($select.mem ($memory s1_$4) ($idx arr |#i_$1@@0| T_$7)) ($select.mem ($memory s2_$4) ($idx arr |#i_$1@@0| T_$7))))
 :qid |BBf6slic.689:108|
 :skolemid |328|
 :pattern ( ($idx arr |#i_$1@@0| T_$7))
))))
 :qid |BBf6slic.689:18|
 :skolemid |330|
)) (forall ((p_$139 T@$ptr) (k Int) ) (!  (and (= ($index_within ($idx p_$139 k ($typ p_$139)) p_$139) k) ($simple_index ($idx p_$139 k ($typ p_$139)) p_$139))
 :qid |BBf6slic.690:18|
 :skolemid |331|
 :pattern ( ($idx p_$139 k ($typ p_$139)))
)))) (and (and (forall ((p_$140 T@$ptr) (q_$22 T@$ptr) (f_$30 T@$field) ) (!  (=> ($simple_index p_$140 q_$22) (and ($simple_index ($dot p_$140 f_$30) q_$22) (= ($index_within ($dot p_$140 f_$30) q_$22) ($index_within p_$140 q_$22))))
 :qid |BBf6slic.691:18|
 :skolemid |332|
 :pattern ( ($simple_index ($dot p_$140 f_$30) q_$22))
 :pattern ( ($index_within ($dot p_$140 f_$30) q_$22))
)) (forall ((p_$141 T@$ptr) (q_$23 T@$ptr) (f_$31 T@$field) (i_$23 Int) (t_$33 T@$ctype) ) (!  (=> (and (and (<= 0 i_$23) (< i_$23 ($embedded_array_size f_$31 t_$33))) ($simple_index p_$141 q_$23)) (and ($simple_index ($idx ($dot p_$141 f_$31) i_$23 t_$33) q_$23) (= ($index_within ($idx ($dot p_$141 f_$31) i_$23 t_$33) q_$23) ($index_within p_$141 q_$23))))
 :qid |BBf6slic.692:18|
 :skolemid |333|
 :pattern ( ($simple_index ($idx ($dot p_$141 f_$31) i_$23 t_$33) q_$23))
 :pattern ( ($index_within ($idx ($dot p_$141 f_$31) i_$23 t_$33) q_$23))
))) (and (forall ((sz_$9 Int) (T_$8 T@$ctype) (arr_$0 T@$ptr) (q T@$ptr) ) (!  (and (=> (and (and (<= 0 ($index_within q arr_$0)) (<= ($index_within q arr_$0) (- sz_$9 1))) (= q ($idx arr_$0 ($index_within q arr_$0) T_$8))) (and (and (<= 0 ($index_within q arr_$0)) (<= ($index_within q arr_$0) (- sz_$9 1))) (= q ($idx arr_$0 ($index_within q arr_$0) T_$8)))) (=> (and (and (<= 0 ($index_within q arr_$0)) (<= ($index_within q arr_$0) (- sz_$9 1))) (= q ($idx arr_$0 ($index_within q arr_$0) T_$8))) (and (and (<= 0 ($index_within q arr_$0)) (<= ($index_within q arr_$0) (- sz_$9 1))) (= q ($idx arr_$0 ($index_within q arr_$0) T_$8)))))
 :qid |BBf6slic.693:18|
 :skolemid |334|
)) (forall ((sz_$10 Int) (T_$9 T@$ctype) (arr_$1 T@$ptr) (q_$0 T@$ptr) ) (!  (and (=> (and (and (<= 0 ($index_within q_$0 arr_$1)) (<= ($index_within q_$0 arr_$1) (- sz_$10 1))) ($set_in q_$0 ($full_extent ($idx arr_$1 ($index_within q_$0 arr_$1) T_$9)))) (and (and (<= 0 ($index_within q_$0 arr_$1)) (<= ($index_within q_$0 arr_$1) (- sz_$10 1))) ($set_in q_$0 ($full_extent ($idx arr_$1 ($index_within q_$0 arr_$1) T_$9))))) (=> (and (and (<= 0 ($index_within q_$0 arr_$1)) (<= ($index_within q_$0 arr_$1) (- sz_$10 1))) ($set_in q_$0 ($full_extent ($idx arr_$1 ($index_within q_$0 arr_$1) T_$9)))) (and (and (<= 0 ($index_within q_$0 arr_$1)) (<= ($index_within q_$0 arr_$1) (- sz_$10 1))) ($set_in q_$0 ($full_extent ($idx arr_$1 ($index_within q_$0 arr_$1) T_$9))))))
 :qid |BBf6slic.694:18|
 :skolemid |335|
))))) (and (and (and (forall ((sz_$11 Int) (T_$10 T@$ctype) (arr_$2 T@$ptr) (q_$1 T@$ptr) (S_$53 T@$state) ) (!  (and (=> (and (and (<= 0 ($index_within q_$1 arr_$2)) (<= ($index_within q_$1 arr_$2) (- sz_$11 1))) ($set_in q_$1 ($extent S_$53 ($idx arr_$2 ($index_within q_$1 arr_$2) T_$10)))) (and (and (<= 0 ($index_within q_$1 arr_$2)) (<= ($index_within q_$1 arr_$2) (- sz_$11 1))) ($set_in q_$1 ($extent S_$53 ($idx arr_$2 ($index_within q_$1 arr_$2) T_$10))))) (=> (and (and (<= 0 ($index_within q_$1 arr_$2)) (<= ($index_within q_$1 arr_$2) (- sz_$11 1))) ($set_in q_$1 ($extent S_$53 ($idx arr_$2 ($index_within q_$1 arr_$2) T_$10)))) (and (and (<= 0 ($index_within q_$1 arr_$2)) (<= ($index_within q_$1 arr_$2) (- sz_$11 1))) ($set_in q_$1 ($extent S_$53 ($idx arr_$2 ($index_within q_$1 arr_$2) T_$10))))))
 :qid |BBf6slic.695:18|
 :skolemid |336|
)) (forall ((s1_$8 T@$state) (s2_$8 T@$state) (p_$142 T@$ptr) (t_$34 T@$ctype) (sz_$35 Int) ) (!  (=> ($is_primitive t_$34) (=> ($state_spans_the_same s1_$8 s2_$8 p_$142 ($array t_$34 sz_$35)) (forall ((i_$24 Int) ) (!  (=> (and (<= 0 i_$24) (< i_$24 sz_$35)) (= ($select.mem ($memory s1_$8) ($idx ($ptr t_$34 ($ref p_$142)) i_$24 t_$34)) ($select.mem ($memory s2_$8) ($idx ($ptr t_$34 ($ref p_$142)) i_$24 t_$34))))
 :qid |BBf6slic.696:292|
 :skolemid |337|
 :pattern ( ($select.mem ($memory s2_$8) ($idx ($ptr t_$34 ($ref p_$142)) i_$24 t_$34)))
))))
 :qid |BBf6slic.696:18|
 :skolemid |338|
 :pattern ( ($state_spans_the_same s1_$8 s2_$8 p_$142 ($array t_$34 sz_$35)) ($is_primitive t_$34))
))) (and (forall ((q@max Int) (val Int) (q@min Int) ) (!  (and (=> (and (<= q@min val) (<= val q@max)) (and (<= q@min val) (<= val q@max))) (=> (and (<= q@min val) (<= val q@max)) (and (<= q@min val) (<= val q@max))))
 :qid |BBf6slic.697:18|
 :skolemid |339|
)) (forall ((v Bool) ) (! (= (ite v 1 0) (ite v 1 0))
 :qid |BBf6slic.698:18|
 :skolemid |340|
)))) (and (and (forall ((x_$1 Int) ) (!  (and (=> (not (= x_$1 0)) (not (= x_$1 0))) (=> (not (= x_$1 0)) (not (= x_$1 0))))
 :qid |BBf6slic.699:18|
 :skolemid |341|
)) (= $min.i1 (- 0 128))) (and (= $max.i1 127) (= $min.i2 (- 0 32768)))))) (and (and (and (and (= $max.i2 32767) (= $min.i4 (- 0 (* 65536 32768)))) (and (= $max.i4 (- (* 65536 32768) 1)) (= $min.i8 (- 0 (* (* (* 65536 65536) 65536) 32768))))) (and (and (= $max.i8 (- (* (* (* 65536 65536) 65536) 32768) 1)) (= $max.u1 255)) (and (= $max.u2 65535) (= $max.u4 (- (* 65536 65536) 1))))) (and (and (and (= $max.u8 (- (* (* (* 65536 65536) 65536) 65536) 1)) (forall ((x_$2 Int) ) (!  (and (=> (and (<= $min.i1 x_$2) (<= x_$2 $max.i1)) (and (<= $min.i1 x_$2) (<= x_$2 $max.i1))) (=> (and (<= $min.i1 x_$2) (<= x_$2 $max.i1)) (and (<= $min.i1 x_$2) (<= x_$2 $max.i1))))
 :qid |BBf6slic.712:18|
 :skolemid |342|
))) (and (forall ((x_$3 Int) ) (!  (and (=> (and (<= $min.i2 x_$3) (<= x_$3 $max.i2)) (and (<= $min.i2 x_$3) (<= x_$3 $max.i2))) (=> (and (<= $min.i2 x_$3) (<= x_$3 $max.i2)) (and (<= $min.i2 x_$3) (<= x_$3 $max.i2))))
 :qid |BBf6slic.713:18|
 :skolemid |343|
)) (forall ((x_$4 Int) ) (!  (and (=> (and (<= $min.i4 x_$4) (<= x_$4 $max.i4)) (and (<= $min.i4 x_$4) (<= x_$4 $max.i4))) (=> (and (<= $min.i4 x_$4) (<= x_$4 $max.i4)) (and (<= $min.i4 x_$4) (<= x_$4 $max.i4))))
 :qid |BBf6slic.714:18|
 :skolemid |344|
)))) (and (and (forall ((x_$5 Int) ) (!  (and (=> (and (<= $min.i8 x_$5) (<= x_$5 $max.i8)) (and (<= $min.i8 x_$5) (<= x_$5 $max.i8))) (=> (and (<= $min.i8 x_$5) (<= x_$5 $max.i8)) (and (<= $min.i8 x_$5) (<= x_$5 $max.i8))))
 :qid |BBf6slic.715:18|
 :skolemid |345|
)) (forall ((x_$6 Int) ) (!  (and (=> (and (<= 0 x_$6) (<= x_$6 $max.u1)) (and (<= 0 x_$6) (<= x_$6 $max.u1))) (=> (and (<= 0 x_$6) (<= x_$6 $max.u1)) (and (<= 0 x_$6) (<= x_$6 $max.u1))))
 :qid |BBf6slic.716:18|
 :skolemid |346|
))) (and (forall ((x_$7 Int) ) (!  (and (=> (and (<= 0 x_$7) (<= x_$7 $max.u2)) (and (<= 0 x_$7) (<= x_$7 $max.u2))) (=> (and (<= 0 x_$7) (<= x_$7 $max.u2)) (and (<= 0 x_$7) (<= x_$7 $max.u2))))
 :qid |BBf6slic.717:18|
 :skolemid |347|
)) (forall ((x_$8 Int) ) (!  (and (=> (and (<= 0 x_$8) (<= x_$8 $max.u4)) (and (<= 0 x_$8) (<= x_$8 $max.u4))) (=> (and (<= 0 x_$8) (<= x_$8 $max.u4)) (and (<= 0 x_$8) (<= x_$8 $max.u4))))
 :qid |BBf6slic.718:18|
 :skolemid |348|
))))))) (and (and (and (and (and (forall ((x_$9 Int) ) (!  (and (=> (and (<= 0 x_$9) (<= x_$9 $max.u8)) (and (<= 0 x_$9) (<= x_$9 $max.u8))) (=> (and (<= 0 x_$9) (<= x_$9 $max.u8)) (and (<= 0 x_$9) (<= x_$9 $max.u8))))
 :qid |BBf6slic.719:18|
 :skolemid |349|
)) (forall ((y_$1 Int) (x_$10 Int) ) (!  (and (=> (or (not (= y_$1 (- 0 1))) (not (= x_$10 $min.i1))) (or (not (= y_$1 (- 0 1))) (not (= x_$10 $min.i1)))) (=> (or (not (= y_$1 (- 0 1))) (not (= x_$10 $min.i1))) (or (not (= y_$1 (- 0 1))) (not (= x_$10 $min.i1)))))
 :qid |BBf6slic.720:18|
 :skolemid |350|
))) (and (forall ((y_$2 Int) (x_$11 Int) ) (!  (and (=> (or (not (= y_$2 (- 0 1))) (not (= x_$11 $min.i2))) (or (not (= y_$2 (- 0 1))) (not (= x_$11 $min.i2)))) (=> (or (not (= y_$2 (- 0 1))) (not (= x_$11 $min.i2))) (or (not (= y_$2 (- 0 1))) (not (= x_$11 $min.i2)))))
 :qid |BBf6slic.721:18|
 :skolemid |351|
)) (forall ((y_$3 Int) (x_$12 Int) ) (!  (and (=> (or (not (= y_$3 (- 0 1))) (not (= x_$12 $min.i4))) (or (not (= y_$3 (- 0 1))) (not (= x_$12 $min.i4)))) (=> (or (not (= y_$3 (- 0 1))) (not (= x_$12 $min.i4))) (or (not (= y_$3 (- 0 1))) (not (= x_$12 $min.i4)))))
 :qid |BBf6slic.722:18|
 :skolemid |352|
)))) (and (and (forall ((y_$4 Int) (x_$13 Int) ) (!  (and (=> (or (not (= y_$4 (- 0 1))) (not (= x_$13 $min.i8))) (or (not (= y_$4 (- 0 1))) (not (= x_$13 $min.i8)))) (=> (or (not (= y_$4 (- 0 1))) (not (= x_$13 $min.i8))) (or (not (= y_$4 (- 0 1))) (not (= x_$13 $min.i8)))))
 :qid |BBf6slic.723:18|
 :skolemid |353|
)) (= ($ptr_to_u8 $null) 0)) (and (= ($ptr_to_i8 $null) 0) (= ($ptr_to_u4 $null) 0)))) (and (and (and (= ($ptr_to_i4 $null) 0) (= ($ptr_to_u2 $null) 0)) (and (= ($ptr_to_i2 $null) 0) (= ($ptr_to_u1 $null) 0))) (and (and (= ($ptr_to_i1 $null) 0) (forall ((x_$14 Int) ) (! (= ($ptr ^^void x_$14) ($ptr ^^void x_$14))
 :qid |BBf6slic.732:18|
 :skolemid |354|
))) (and (forall ((x_$15 Int) ) (! (= ($ptr ^^void x_$15) ($ptr ^^void x_$15))
 :qid |BBf6slic.733:18|
 :skolemid |355|
)) (forall ((x_$16 Int) ) (! (= ($ptr ^^void x_$16) ($ptr ^^void x_$16))
 :qid |BBf6slic.734:18|
 :skolemid |356|
)))))) (and (and (and (and (forall ((x_$17 Int) ) (! (= ($ptr ^^void x_$17) ($ptr ^^void x_$17))
 :qid |BBf6slic.735:18|
 :skolemid |357|
)) (forall ((x_$18 Int) ) (! (= ($ptr ^^void x_$18) ($ptr ^^void x_$18))
 :qid |BBf6slic.736:18|
 :skolemid |358|
))) (and (forall ((x_$19 Int) ) (! (= ($ptr ^^void x_$19) ($ptr ^^void x_$19))
 :qid |BBf6slic.737:18|
 :skolemid |359|
)) (forall ((x_$20 Int) ) (! (= ($ptr ^^void x_$20) ($ptr ^^void x_$20))
 :qid |BBf6slic.738:18|
 :skolemid |360|
)))) (and (and (forall ((x_$21 Int) ) (! (= ($ptr ^^void x_$21) ($ptr ^^void x_$21))
 :qid |BBf6slic.739:18|
 :skolemid |361|
)) (forall ((p_$143 T@$ptr) ) (!  (=> (and (<= 0 ($ref p_$143)) (<= ($ref p_$143) $max.u8)) (= ($ptr_to_u8 p_$143) ($ref p_$143)))
 :qid |BBf6slic.740:18|
 :skolemid |362|
 :pattern ( ($ptr_to_u8 p_$143))
))) (and (forall ((p_$144 T@$ptr) ) (!  (=> (and (<= $min.i8 ($ref p_$144)) (<= ($ref p_$144) $max.i8)) (= ($ptr_to_i8 p_$144) ($ref p_$144)))
 :qid |BBf6slic.741:18|
 :skolemid |363|
 :pattern ( ($ptr_to_i8 p_$144))
)) (forall ((p_$145 T@$ptr) ) (!  (=> (and (<= 0 ($ref p_$145)) (<= ($ref p_$145) $max.u4)) (= ($ptr_to_u4 p_$145) ($ref p_$145)))
 :qid |BBf6slic.742:18|
 :skolemid |364|
 :pattern ( ($ptr_to_u4 p_$145))
))))) (and (and (and (forall ((p_$146 T@$ptr) ) (!  (=> (and (<= $min.i4 ($ref p_$146)) (<= ($ref p_$146) $max.i4)) (= ($ptr_to_i4 p_$146) ($ref p_$146)))
 :qid |BBf6slic.743:18|
 :skolemid |365|
 :pattern ( ($ptr_to_i4 p_$146))
)) (forall ((p_$147 T@$ptr) ) (!  (=> (and (<= 0 ($ref p_$147)) (<= ($ref p_$147) $max.u2)) (= ($ptr_to_u2 p_$147) ($ref p_$147)))
 :qid |BBf6slic.744:18|
 :skolemid |366|
 :pattern ( ($ptr_to_u2 p_$147))
))) (and (forall ((p_$148 T@$ptr) ) (!  (=> (and (<= $min.i2 ($ref p_$148)) (<= ($ref p_$148) $max.i2)) (= ($ptr_to_i2 p_$148) ($ref p_$148)))
 :qid |BBf6slic.745:18|
 :skolemid |367|
 :pattern ( ($ptr_to_i2 p_$148))
)) (forall ((p_$149 T@$ptr) ) (!  (=> (and (<= 0 ($ref p_$149)) (<= ($ref p_$149) $max.u1)) (= ($ptr_to_u1 p_$149) ($ref p_$149)))
 :qid |BBf6slic.746:18|
 :skolemid |368|
 :pattern ( ($ptr_to_u1 p_$149))
)))) (and (and (forall ((p_$150 T@$ptr) ) (!  (=> (and (<= $min.i1 ($ref p_$150)) (<= ($ref p_$150) $max.i1)) (= ($ptr_to_i1 p_$150) ($ref p_$150)))
 :qid |BBf6slic.747:18|
 :skolemid |369|
 :pattern ( ($ptr_to_i1 p_$150))
)) (forall ((S_$130 T@$state) (r_$22 Int) (t_$35 T@$ctype) ) (!  (=> ($good_state S_$130) ($in_range_t t_$35 ($select.mem ($memory S_$130) ($ptr ($as_in_range_t t_$35) r_$22))))
 :qid |BBf6slic.748:18|
 :skolemid |370|
 :pattern ( ($select.mem ($memory S_$130) ($ptr ($as_in_range_t t_$35) r_$22)))
))) (and (forall ((S_$131 T@$state) (r_$23 Int) (t_$36 T@$ctype) ) (!  (=> ($good_state S_$131) ($in_range_phys_ptr ($select.mem ($memory S_$131) ($ptr ($ptr_to t_$36) r_$23))))
 :qid |BBf6slic.749:18|
 :skolemid |371|
 :pattern ( ($select.mem ($memory S_$131) ($ptr ($ptr_to t_$36) r_$23)))
)) (forall ((S_$132 T@$state) (r_$24 Int) (t_$37 T@$ctype) ) (!  (=> ($good_state S_$132) ($in_range_spec_ptr ($select.mem ($memory S_$132) ($ptr ($spec_ptr_to t_$37) r_$24))))
 :qid |BBf6slic.750:18|
 :skolemid |372|
 :pattern ( ($select.mem ($memory S_$132) ($ptr ($spec_ptr_to t_$37) r_$24)))
)))))))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= ($_pow2 0) 1) (= ($_pow2 1) 2)) (= ($_pow2 2) 4)) (= ($_pow2 3) 8)) (= ($_pow2 4) 16)) (= ($_pow2 5) 32)) (= ($_pow2 6) 64)) (= ($_pow2 7) 128)) (= ($_pow2 8) 256)) (= ($_pow2 9) 512)) (= ($_pow2 10) 1024)) (= ($_pow2 11) 2048)) (= ($_pow2 12) 4096)) (= ($_pow2 13) 8192)) (= ($_pow2 14) 16384)) (= ($_pow2 15) 32768)) (= ($_pow2 16) 65536)) (= ($_pow2 17) 131072)) (= ($_pow2 18) 262144)) (= ($_pow2 19) 524288)) (= ($_pow2 20) 1048576)) (= ($_pow2 21) 2097152)) (= ($_pow2 22) 4194304)) (= ($_pow2 23) 8388608)) (= ($_pow2 24) 16777216)) (= ($_pow2 25) 33554432)) (= ($_pow2 26) 67108864)) (= ($_pow2 27) 134217728)) (= ($_pow2 28) 268435456)) (= ($_pow2 29) 536870912)) (= ($_pow2 30) 1073741824)) (= ($_pow2 31) 2147483648)) (= ($_pow2 32) 4294967296)) (= ($_pow2 33) 8589934592)) (= ($_pow2 34) 17179869184)) (= ($_pow2 35) 34359738368)) (= ($_pow2 36) 68719476736)) (= ($_pow2 37) 137438953472)) (= ($_pow2 38) 274877906944)) (= ($_pow2 39) 549755813888)) (= ($_pow2 40) 1099511627776)) (= ($_pow2 41) 2199023255552)) (= ($_pow2 42) 4398046511104)) (= ($_pow2 43) 8796093022208)) (= ($_pow2 44) 17592186044416)) (= ($_pow2 45) 35184372088832)) (= ($_pow2 46) 70368744177664)) (= ($_pow2 47) 140737488355328)) (= ($_pow2 48) 281474976710656)) (= ($_pow2 49) 562949953421312)) (= ($_pow2 50) 1125899906842624)) (= ($_pow2 51) 2251799813685248)) (= ($_pow2 52) 4503599627370496)) (= ($_pow2 53) 9007199254740992)) (= ($_pow2 54) 18014398509481984)) (= ($_pow2 55) 36028797018963968)) (= ($_pow2 56) 72057594037927936)) (= ($_pow2 57) 144115188075855872)) (= ($_pow2 58) 288230376151711744)) (= ($_pow2 59) 576460752303423488)) (= ($_pow2 60) 1152921504606846976)) (= ($_pow2 61) 2305843009213693952)) (= ($_pow2 62) 4611686018427387904)) (= ($_pow2 63) 9223372036854775808)) (and (forall ((bits Int) (v_$10 Int) ) (!  (and (=> ($in_range_ubits bits v_$10) (and (<= 0 v_$10) (<= v_$10 (- ($_pow2 bits) 1)))) (=> (and (<= 0 v_$10) (<= v_$10 (- ($_pow2 bits) 1))) ($in_range_ubits bits v_$10)))
 :qid |BBf6slic.752:18|
 :skolemid |373|
 :pattern ( ($in_range_ubits bits v_$10))
)) (forall ((bits_$0 Int) (v_$11 Int) ) (!  (and ($in_range_sbits bits_$0 ($unchecked_sbits bits_$0 v_$11)) (=> ($in_range_sbits bits_$0 v_$11) (= ($unchecked_sbits bits_$0 v_$11) v_$11)))
 :qid |BBf6slic.753:18|
 :skolemid |374|
 :pattern ( ($unchecked_sbits bits_$0 v_$11))
)))) (and (and (forall ((bits_$1 Int) (v_$12 Int) ) (!  (and (=> ($in_range_sbits bits_$1 v_$12) (and (<= (- 0 ($_pow2 (- bits_$1 1))) v_$12) (<= v_$12 (- ($_pow2 (- bits_$1 1)) 1)))) (=> (and (<= (- 0 ($_pow2 (- bits_$1 1))) v_$12) (<= v_$12 (- ($_pow2 (- bits_$1 1)) 1))) ($in_range_sbits bits_$1 v_$12)))
 :qid |BBf6slic.754:18|
 :skolemid |375|
 :pattern ( ($in_range_sbits bits_$1 v_$12))
)) (forall ((bits_$2 Int) (v_$13 Int) ) (!  (and ($in_range_ubits bits_$2 ($unchecked_ubits bits_$2 v_$13)) (=> ($in_range_ubits bits_$2 v_$13) (= ($unchecked_ubits bits_$2 v_$13) v_$13)))
 :qid |BBf6slic.755:18|
 :skolemid |376|
 :pattern ( ($unchecked_ubits bits_$2 v_$13))
))) (and (forall ((t_$38 T@$ctype) (x_$26 Int) (y_$8 Int) ) (! (= ($unchk_add t_$38 x_$26 y_$8) ($unchecked t_$38 (+ x_$26 y_$8)))
 :qid |BBf6slic.756:18|
 :weight 0
 :skolemid |377|
 :pattern ( ($unchk_add t_$38 x_$26 y_$8))
)) (forall ((y_$5 Int) (x_$22 Int) (t_$8 T@$ctype) ) (! (= ($unchecked t_$8 (div x_$22 y_$5)) ($unchecked t_$8 (div x_$22 y_$5)))
 :qid |BBf6slic.757:18|
 :skolemid |378|
))))) (and (and (and (forall ((y_$6 Int) (x_$23 Int) (t_$9 T@$ctype) ) (! (= ($unchecked t_$9 (mod x_$23 y_$6)) ($unchecked t_$9 (mod x_$23 y_$6)))
 :qid |BBf6slic.758:18|
 :skolemid |379|
)) (forall ((x_$29 Int) (y_$11 Int) ) (!  (=> (and (and (and (<= 0 x_$29) (<= x_$29 $max.u8)) (and (<= 0 y_$11) (<= y_$11 $max.u8))) (> (+ x_$29 y_$11) $max.u8)) (= ($unchk_add ^^u8 x_$29 y_$11) (- (- (+ x_$29 y_$11) $max.u8) 1)))
 :qid |BBf6slic.759:18|
 :skolemid |380|
 :pattern ( ($unchk_add ^^u8 x_$29 y_$11))
))) (and (forall ((x_$30 Int) (y_$12 Int) ) (!  (=> (and (and (and (<= 0 x_$30) (<= x_$30 $max.u4)) (and (<= 0 y_$12) (<= y_$12 $max.u4))) (> (+ x_$30 y_$12) $max.u8)) (= ($unchk_add ^^u4 x_$30 y_$12) (- (- (+ x_$30 y_$12) $max.u4) 1)))
 :qid |BBf6slic.760:18|
 :skolemid |381|
 :pattern ( ($unchk_add ^^u4 x_$30 y_$12))
)) (forall ((x_$33 Int) (from_$0 Int) (to_$0 Int) (xs Int) (val_$0 Int) ) (!  (=> (and (and (<= 0 from_$0) (< from_$0 to_$0)) (<= to_$0 xs)) (=> (and (<= 0 val_$0) (< val_$0 ($_pow2 (- to_$0 from_$0)))) (and (<= 0 ($bv_update x_$33 xs from_$0 to_$0 val_$0)) (< ($bv_update x_$33 xs from_$0 to_$0 val_$0) ($_pow2 xs)))))
 :qid |BBf6slic.761:18|
 :skolemid |382|
 :pattern ( ($bv_update x_$33 xs from_$0 to_$0 val_$0))
)))) (and (and (forall ((from_$1 Int) (to_$1 Int) (xs_$0 Int) ) (!  (=> (and (and (<= 0 from_$1) (< from_$1 to_$1)) (<= to_$1 xs_$0)) (= ($bv_update 0 xs_$0 from_$1 to_$1 0) 0))
 :qid |BBf6slic.762:18|
 :skolemid |383|
 :pattern ( ($bv_update 0 xs_$0 from_$1 to_$1 0))
)) (forall ((from_$2 Int) (to_$2 Int) (val_$1 Int) (x_$34 Int) (xs_$1 Int) ) (!  (=> (and (and (<= 0 from_$2) (< from_$2 to_$2)) (<= to_$2 xs_$1)) (=> (and (<= (- 0 ($_pow2 (- (- to_$2 from_$2) 1))) val_$1) (< val_$1 ($_pow2 (- (- to_$2 from_$2) 1)))) (= ($bv_extract_signed ($bv_update x_$34 xs_$1 from_$2 to_$2 val_$1) xs_$1 from_$2 to_$2) val_$1)))
 :qid |BBf6slic.763:18|
 :skolemid |384|
 :pattern ( ($bv_extract_signed ($bv_update x_$34 xs_$1 from_$2 to_$2 val_$1) xs_$1 from_$2 to_$2))
))) (and (forall ((from_$3 Int) (to_$3 Int) (val_$2 Int) (x_$35 Int) (xs_$2 Int) ) (!  (=> (and (and (<= 0 from_$3) (< from_$3 to_$3)) (<= to_$3 xs_$2)) (=> (and (<= 0 val_$2) (< val_$2 ($_pow2 (- to_$3 from_$3)))) (= ($bv_extract_unsigned ($bv_update x_$35 xs_$2 from_$3 to_$3 val_$2) xs_$2 from_$3 to_$3) val_$2)))
 :qid |BBf6slic.764:18|
 :skolemid |385|
 :pattern ( ($bv_extract_unsigned ($bv_update x_$35 xs_$2 from_$3 to_$3 val_$2) xs_$2 from_$3 to_$3))
)) (forall ((from_$4 Int) (to_$4 Int) (x_$36 Int) (xs_$3 Int) ) (!  (=> (and (and (<= 0 from_$4) (< from_$4 to_$4)) (<= to_$4 xs_$3)) (and (<= (- 0 ($_pow2 (- (- to_$4 from_$4) 1))) ($bv_extract_signed x_$36 xs_$3 from_$4 to_$4)) (<= ($bv_extract_signed x_$36 xs_$3 from_$4 to_$4) (- ($_pow2 (- (- to_$4 from_$4) 1)) 1))))
 :qid |BBf6slic.765:18|
 :skolemid |386|
 :pattern ( ($bv_extract_signed x_$36 xs_$3 from_$4 to_$4))
)))))) (and (and (and (and (and (and (forall ((from_$5 Int) (to_$5 Int) (x_$37 Int) (xs_$4 Int) ) (!  (=> (and (and (<= 0 from_$5) (< from_$5 to_$5)) (<= to_$5 xs_$4)) (and (<= 0 ($bv_extract_unsigned x_$37 xs_$4 from_$5 to_$5)) (<= ($bv_extract_unsigned x_$37 xs_$4 from_$5 to_$5) (- ($_pow2 (- to_$5 from_$5)) 1))))
 :qid |BBf6slic.766:18|
 :skolemid |387|
 :pattern ( ($bv_extract_unsigned x_$37 xs_$4 from_$5 to_$5))
)) (forall ((from_$6 Int) (to_$6 Int) (val_$3 Int) (x_$38 Int) (xs_$5 Int) (from2 Int) (to2 Int) ) (!  (=> (and (and (<= 0 from_$6) (< from_$6 to_$6)) (<= to_$6 xs_$5)) (=> (and (and (<= 0 from2) (< from2 to2)) (<= to2 xs_$5)) (=> (or (<= to2 from_$6) (<= to_$6 from2)) (= ($bv_extract_signed ($bv_update x_$38 xs_$5 from_$6 to_$6 val_$3) xs_$5 from2 to2) ($bv_extract_signed x_$38 xs_$5 from2 to2)))))
 :qid |BBf6slic.767:18|
 :skolemid |388|
 :pattern ( ($bv_extract_signed ($bv_update x_$38 xs_$5 from_$6 to_$6 val_$3) xs_$5 from2 to2))
))) (and (forall ((from_$7 Int) (to_$7 Int) (val_$4 Int) (x_$39 Int) (xs_$6 Int) (from2_$0 Int) (to2_$0 Int) ) (!  (=> (and (and (<= 0 from_$7) (< from_$7 to_$7)) (<= to_$7 xs_$6)) (=> (and (and (<= 0 from2_$0) (< from2_$0 to2_$0)) (<= to2_$0 xs_$6)) (=> (or (<= to2_$0 from_$7) (<= to_$7 from2_$0)) (= ($bv_extract_unsigned ($bv_update x_$39 xs_$6 from_$7 to_$7 val_$4) xs_$6 from2_$0 to2_$0) ($bv_extract_unsigned x_$39 xs_$6 from2_$0 to2_$0)))))
 :qid |BBf6slic.768:18|
 :skolemid |389|
 :pattern ( ($bv_extract_unsigned ($bv_update x_$39 xs_$6 from_$7 to_$7 val_$4) xs_$6 from2_$0 to2_$0))
)) (forall ((from_$8 Int) (to_$8 Int) (xs_$7 Int) ) (!  (=> (and (and (<= 0 from_$8) (< from_$8 to_$8)) (<= to_$8 xs_$7)) (= ($bv_extract_signed 0 xs_$7 from_$8 to_$8) 0))
 :qid |BBf6slic.769:18|
 :skolemid |390|
 :pattern ( ($bv_extract_signed 0 xs_$7 from_$8 to_$8))
)))) (and (and (forall ((from_$9 Int) (to_$9 Int) (xs_$8 Int) ) (!  (=> (and (and (<= 0 from_$9) (< from_$9 to_$9)) (<= to_$9 xs_$8)) (= ($bv_extract_unsigned 0 xs_$8 from_$9 to_$9) 0))
 :qid |BBf6slic.770:18|
 :skolemid |391|
 :pattern ( ($bv_extract_unsigned 0 xs_$8 from_$9 to_$9))
)) (forall ((from_$10 Int) (to_$10 Int) (val_$5 Int) (xs_$9 Int) ) (!  (=> (and (and (and (<= 0 from_$10) (< from_$10 to_$10)) (<= to_$10 xs_$9)) (<= 0 val_$5)) (= ($bv_extract_unsigned val_$5 xs_$9 from_$10 to_$10) (mod (div val_$5 ($_pow2 from_$10)) ($_pow2 (- to_$10 from_$10)))))
 :qid |BBf6slic.771:18|
 :skolemid |392|
 :pattern ( ($bv_extract_unsigned val_$5 xs_$9 from_$10 to_$10))
))) (and (forall ((from_$11 Int) (to_$11 Int) (val_$6 Int) (xs_$10 Int) ) (!  (=> (and (and (and (and (<= 0 from_$11) (< from_$11 to_$11)) (<= to_$11 xs_$10)) (<= 0 val_$6)) (< (mod (div val_$6 ($_pow2 from_$11)) ($_pow2 (- to_$11 from_$11))) ($_pow2 (- (- to_$11 from_$11) 1)))) (= ($bv_extract_signed val_$6 xs_$10 from_$11 to_$11) (mod (div val_$6 ($_pow2 from_$11)) ($_pow2 (- to_$11 from_$11)))))
 :qid |BBf6slic.772:18|
 :skolemid |393|
 :pattern ( ($bv_extract_signed val_$6 xs_$10 from_$11 to_$11))
)) (forall ((from_$12 Int) (to_$12 Int) (val_$7 Int) (xs_$11 Int) ) (!  (=> (and (and (and (and (<= 0 from_$12) (< from_$12 to_$12)) (<= to_$12 xs_$11)) (<= 0 val_$7)) (>= (mod (div val_$7 ($_pow2 from_$12)) ($_pow2 (- to_$12 from_$12))) ($_pow2 (- (- to_$12 from_$12) 1)))) (= ($bv_extract_signed val_$7 xs_$11 from_$12 to_$12) (- ($_pow2 (- (- to_$12 from_$12) 1)) (mod (div val_$7 ($_pow2 from_$12)) ($_pow2 (- to_$12 from_$12))))))
 :qid |BBf6slic.773:18|
 :skolemid |394|
 :pattern ( ($bv_extract_signed val_$7 xs_$11 from_$12 to_$12))
))))) (and (and (and (forall ((val_$8 Int) ) (!  (and (=> ($in_range_t ^^i1 val_$8) (and (<= $min.i1 val_$8) (<= val_$8 $max.i1))) (=> (and (<= $min.i1 val_$8) (<= val_$8 $max.i1)) ($in_range_t ^^i1 val_$8)))
 :qid |BBf6slic.774:18|
 :skolemid |395|
 :pattern ( ($in_range_t ^^i1 val_$8))
)) (forall ((val_$9 Int) ) (!  (and (=> ($in_range_t ^^i2 val_$9) (and (<= $min.i2 val_$9) (<= val_$9 $max.i2))) (=> (and (<= $min.i2 val_$9) (<= val_$9 $max.i2)) ($in_range_t ^^i2 val_$9)))
 :qid |BBf6slic.775:18|
 :skolemid |396|
 :pattern ( ($in_range_t ^^i2 val_$9))
))) (and (forall ((val_$10 Int) ) (!  (and (=> ($in_range_t ^^i4 val_$10) (and (<= $min.i4 val_$10) (<= val_$10 $max.i4))) (=> (and (<= $min.i4 val_$10) (<= val_$10 $max.i4)) ($in_range_t ^^i4 val_$10)))
 :qid |BBf6slic.776:18|
 :skolemid |397|
 :pattern ( ($in_range_t ^^i4 val_$10))
)) (forall ((val_$11 Int) ) (!  (and (=> ($in_range_t ^^i8 val_$11) (and (<= $min.i8 val_$11) (<= val_$11 $max.i8))) (=> (and (<= $min.i8 val_$11) (<= val_$11 $max.i8)) ($in_range_t ^^i8 val_$11)))
 :qid |BBf6slic.777:18|
 :skolemid |398|
 :pattern ( ($in_range_t ^^i8 val_$11))
)))) (and (and (forall ((val_$12 Int) ) (!  (and (=> ($in_range_t ^^u1 val_$12) (and (<= 0 val_$12) (<= val_$12 $max.u1))) (=> (and (<= 0 val_$12) (<= val_$12 $max.u1)) ($in_range_t ^^u1 val_$12)))
 :qid |BBf6slic.778:18|
 :skolemid |399|
 :pattern ( ($in_range_t ^^u1 val_$12))
)) (forall ((val_$13 Int) ) (!  (and (=> ($in_range_t ^^u2 val_$13) (and (<= 0 val_$13) (<= val_$13 $max.u2))) (=> (and (<= 0 val_$13) (<= val_$13 $max.u2)) ($in_range_t ^^u2 val_$13)))
 :qid |BBf6slic.779:18|
 :skolemid |400|
 :pattern ( ($in_range_t ^^u2 val_$13))
))) (and (forall ((val_$14 Int) ) (!  (and (=> ($in_range_t ^^u4 val_$14) (and (<= 0 val_$14) (<= val_$14 $max.u4))) (=> (and (<= 0 val_$14) (<= val_$14 $max.u4)) ($in_range_t ^^u4 val_$14)))
 :qid |BBf6slic.780:18|
 :skolemid |401|
 :pattern ( ($in_range_t ^^u4 val_$14))
)) (forall ((val_$15 Int) ) (!  (and (=> ($in_range_t ^^u8 val_$15) (and (<= 0 val_$15) (<= val_$15 $max.u8))) (=> (and (<= 0 val_$15) (<= val_$15 $max.u8)) ($in_range_t ^^u8 val_$15)))
 :qid |BBf6slic.781:18|
 :skolemid |402|
 :pattern ( ($in_range_t ^^u8 val_$15))
)))))) (and (and (and (and (forall ((val_$16 Int) ) (! ($in_range_t ^^mathint val_$16)
 :qid |BBf6slic.782:18|
 :skolemid |403|
 :pattern ( ($in_range_t ^^mathint val_$16))
)) (forall ((t_$42 T@$ctype) (val_$17 Int) ) (!  (=> ($in_range_t t_$42 val_$17) (= ($unchecked t_$42 val_$17) val_$17))
 :qid |BBf6slic.783:18|
 :skolemid |404|
 :pattern ( ($unchecked t_$42 val_$17))
))) (and (forall ((t_$43 T@$ctype) (val_$18 Int) ) (! ($in_range_t t_$43 ($unchecked t_$43 val_$18))
 :qid |BBf6slic.784:18|
 :skolemid |405|
 :pattern ( ($unchecked t_$43 val_$18))
)) (forall ((val_$19 Int) ) (!  (=> (and (<= 0 val_$19) (<= val_$19 $max.u1)) (= ($unchecked ^^u1 ($unchecked ^^i1 val_$19)) val_$19))
 :qid |BBf6slic.785:18|
 :skolemid |406|
 :pattern ( ($unchecked ^^u1 ($unchecked ^^i1 val_$19)))
)))) (and (and (forall ((val_$20 Int) ) (!  (=> (and (<= 0 val_$20) (<= val_$20 $max.u2)) (= ($unchecked ^^u2 ($unchecked ^^i2 val_$20)) val_$20))
 :qid |BBf6slic.786:18|
 :skolemid |407|
 :pattern ( ($unchecked ^^u2 ($unchecked ^^i2 val_$20)))
)) (forall ((val_$21 Int) ) (!  (=> (and (<= 0 val_$21) (<= val_$21 $max.u4)) (= ($unchecked ^^u4 ($unchecked ^^i4 val_$21)) val_$21))
 :qid |BBf6slic.787:18|
 :skolemid |408|
 :pattern ( ($unchecked ^^u4 ($unchecked ^^i4 val_$21)))
))) (and (forall ((val_$22 Int) ) (!  (=> (and (<= 0 val_$22) (<= val_$22 $max.u8)) (= ($unchecked ^^u8 ($unchecked ^^i8 val_$22)) val_$22))
 :qid |BBf6slic.788:18|
 :skolemid |409|
 :pattern ( ($unchecked ^^u8 ($unchecked ^^i8 val_$22)))
)) (forall ((val_$23 Int) ) (!  (=> (and (<= $min.i1 val_$23) (<= val_$23 $max.i1)) (= ($unchecked ^^i1 ($unchecked ^^u1 val_$23)) val_$23))
 :qid |BBf6slic.789:18|
 :skolemid |410|
 :pattern ( ($unchecked ^^i1 ($unchecked ^^u1 val_$23)))
))))) (and (and (and (forall ((val_$24 Int) ) (!  (=> (and (<= $min.i2 val_$24) (<= val_$24 $max.i2)) (= ($unchecked ^^i2 ($unchecked ^^u2 val_$24)) val_$24))
 :qid |BBf6slic.790:18|
 :skolemid |411|
 :pattern ( ($unchecked ^^i2 ($unchecked ^^u2 val_$24)))
)) (forall ((val_$25 Int) ) (!  (=> (and (<= $min.i4 val_$25) (<= val_$25 $max.i4)) (= ($unchecked ^^i4 ($unchecked ^^u4 val_$25)) val_$25))
 :qid |BBf6slic.791:18|
 :skolemid |412|
 :pattern ( ($unchecked ^^i4 ($unchecked ^^u4 val_$25)))
))) (and (forall ((val_$26 Int) ) (!  (=> (and (<= $min.i8 val_$26) (<= val_$26 $max.i8)) (= ($unchecked ^^i8 ($unchecked ^^u8 val_$26)) val_$26))
 :qid |BBf6slic.792:18|
 :skolemid |413|
 :pattern ( ($unchecked ^^i8 ($unchecked ^^u8 val_$26)))
)) (= ($unchecked ^^u4 (- 0 1)) $max.u4))) (and (and (= ($unchecked ^^u4 (+ $max.u4 1)) 0) (= ($unchecked ^^u8 (- 0 1)) $max.u8)) (and (= ($unchecked ^^u8 (+ $max.u8 1)) 0) (forall ((t_$44 T@$ctype) (x_$40 Int) (y_$15 Int) (z_$0 Int) ) (!  (=> (and (and ($in_range_t t_$44 x_$40) ($in_range_t t_$44 (- ($_pow2 y_$15) 1))) (>= x_$40 0)) (= (mod x_$40 ($_pow2 y_$15)) ($_and t_$44 x_$40 (- ($_pow2 y_$15) 1))))
 :qid |BBf6slic.797:18|
 :skolemid |414|
 :pattern ( (mod x_$40 ($_pow2 y_$15)) ($_and t_$44 x_$40 z_$0))
))))))) (and (and (and (and (and (forall ((i_$25 Int) (j_$0 Int) ) (!  (=> (and (<= 0 i_$25) (< 0 j_$0)) (<= (div i_$25 j_$0) i_$25))
 :qid |BBf6slic.798:18|
 :skolemid |415|
 :pattern ( (div i_$25 j_$0))
)) (forall ((i_$26 Int) (j_$1 Int) ) (!  (=> (and (> i_$26 0) (> j_$1 0)) (and (< (- i_$26 j_$1) (* (div i_$26 j_$1) j_$1)) (<= (* (div i_$26 j_$1) j_$1) i_$26)))
 :qid |BBf6slic.799:18|
 :skolemid |416|
 :pattern ( (div i_$26 j_$1))
))) (and (forall ((i_$27 Int) ) (!  (=> (not (= i_$27 0)) (= (div i_$27 i_$27) 1))
 :qid |BBf6slic.800:18|
 :skolemid |417|
 :pattern ( (div i_$27 i_$27))
)) (forall ((i_$28 Int) ) (!  (=> (not (= i_$28 0)) (= (div 0 i_$28) 0))
 :qid |BBf6slic.801:18|
 :skolemid |418|
 :pattern ( (div 0 i_$28))
)))) (and (and (forall ((x_$41 Int) (y_$16 Int) ) (! (= (mod x_$41 y_$16) (- x_$41 (* (div x_$41 y_$16) y_$16)))
 :qid |BBf6slic.802:18|
 :skolemid |419|
 :pattern ( (mod x_$41 y_$16))
 :pattern ( (div x_$41 y_$16))
)) (forall ((x_$42 Int) (y_$17 Int) ) (!  (=> (and (<= 0 x_$42) (< 0 y_$17)) (and (<= 0 (mod x_$42 y_$17)) (< (mod x_$42 y_$17) y_$17)))
 :qid |BBf6slic.803:18|
 :skolemid |420|
 :pattern ( (mod x_$42 y_$17))
))) (and (forall ((x_$43 Int) (y_$18 Int) ) (!  (=> (and (<= 0 x_$43) (< y_$18 0)) (and (<= 0 (mod x_$43 y_$18)) (< (mod x_$43 y_$18) (- 0 y_$18))))
 :qid |BBf6slic.804:18|
 :skolemid |421|
 :pattern ( (mod x_$43 y_$18))
)) (forall ((x_$44 Int) (y_$19 Int) ) (!  (=> (and (<= x_$44 0) (< 0 y_$19)) (and (< (- 0 y_$19) (mod x_$44 y_$19)) (<= (mod x_$44 y_$19) 0)))
 :qid |BBf6slic.805:18|
 :skolemid |422|
 :pattern ( (mod x_$44 y_$19))
))))) (and (and (and (forall ((x_$45 Int) (y_$20 Int) ) (!  (=> (and (<= x_$45 0) (< y_$20 0)) (and (< y_$20 (mod x_$45 y_$20)) (<= (mod x_$45 y_$20) 0)))
 :qid |BBf6slic.806:18|
 :skolemid |423|
 :pattern ( (mod x_$45 y_$20))
)) (forall ((t_$45 T@$ctype) (x_$46 Int) (y_$21 Int) ) (!  (=> (and (<= 0 x_$46) ($in_range_t t_$45 x_$46)) (and (<= 0 ($_and t_$45 x_$46 y_$21)) (<= ($_and t_$45 x_$46 y_$21) x_$46)))
 :qid |BBf6slic.807:18|
 :skolemid |424|
 :pattern ( ($_and t_$45 x_$46 y_$21))
))) (and (forall ((t_$46 T@$ctype) (x_$47 Int) (y_$22 Int) ) (!  (=> (and (and (and (<= 0 x_$47) (<= 0 y_$22)) ($in_range_t t_$46 x_$47)) ($in_range_t t_$46 y_$22)) (and (<= ($_and t_$46 x_$47 y_$22) x_$47) (<= ($_and t_$46 x_$47 y_$22) y_$22)))
 :qid |BBf6slic.808:18|
 :skolemid |425|
 :pattern ( ($_and t_$46 x_$47 y_$22))
)) (forall ((t_$47 T@$ctype) (x_$48 Int) (y_$23 Int) ) (!  (=> (and (and (and (<= 0 x_$48) (<= 0 y_$23)) ($in_range_t t_$47 x_$48)) ($in_range_t t_$47 y_$23)) (and (<= 0 ($_or t_$47 x_$48 y_$23)) (<= ($_or t_$47 x_$48 y_$23) (+ x_$48 y_$23))))
 :qid |BBf6slic.809:18|
 :skolemid |426|
 :pattern ( ($_or t_$47 x_$48 y_$23))
)))) (and (and (forall ((t_$48 T@$ctype) (x_$49 Int) (y_$24 Int) ) (!  (=> (and (and (and (<= 0 x_$49) (<= 0 y_$24)) ($in_range_t t_$48 x_$49)) ($in_range_t t_$48 y_$24)) (and (<= x_$49 ($_or t_$48 x_$49 y_$24)) (<= y_$24 ($_or t_$48 x_$49 y_$24))))
 :qid |BBf6slic.810:18|
 :skolemid |427|
 :pattern ( ($_or t_$48 x_$49 y_$24))
)) (forall ((t_$49 T@$ctype) (x_$50 Int) (y_$25 Int) (z_$1 Int) ) (!  (=> (and (and (and (and (and (and (and (<= 0 x_$50) (<= 0 y_$25)) (<= 0 z_$1)) (< z_$1 64)) (< x_$50 ($_pow2 z_$1))) (< y_$25 ($_pow2 z_$1))) ($in_range_t t_$49 x_$50)) ($in_range_t t_$49 y_$25)) (< ($_or t_$49 x_$50 y_$25) ($_pow2 z_$1)))
 :qid |BBf6slic.811:18|
 :skolemid |428|
 :pattern ( ($_or t_$49 x_$50 y_$25) ($_pow2 z_$1))
))) (and (forall ((t_$50 T@$ctype) (x_$51 Int) (y_$26 Int) ) (!  (=> (and (and (<= 0 x_$51) (<= x_$51 $max.u1)) (and (<= 0 y_$26) (<= y_$26 $max.u1))) (and (<= 0 ($_or t_$50 x_$51 y_$26)) (<= ($_or t_$50 x_$51 y_$26) $max.u1)))
 :qid |BBf6slic.812:18|
 :skolemid |429|
 :pattern ( ($_or t_$50 x_$51 y_$26))
)) (forall ((t_$51 T@$ctype) (x_$52 Int) (y_$27 Int) ) (!  (=> (and (and (<= 0 x_$52) (<= x_$52 $max.u2)) (and (<= 0 y_$27) (<= y_$27 $max.u2))) (and (<= 0 ($_or t_$51 x_$52 y_$27)) (<= ($_or t_$51 x_$52 y_$27) $max.u2)))
 :qid |BBf6slic.813:18|
 :skolemid |430|
 :pattern ( ($_or t_$51 x_$52 y_$27))
)))))) (and (and (and (and (forall ((t_$52 T@$ctype) (x_$53 Int) (y_$28 Int) ) (!  (=> (and (and (<= 0 x_$53) (<= x_$53 $max.u4)) (and (<= 0 y_$28) (<= y_$28 $max.u4))) (and (<= 0 ($_or t_$52 x_$53 y_$28)) (<= ($_or t_$52 x_$53 y_$28) $max.u4)))
 :qid |BBf6slic.814:18|
 :skolemid |431|
 :pattern ( ($_or t_$52 x_$53 y_$28))
)) (forall ((t_$53 T@$ctype) (x_$54 Int) (y_$29 Int) ) (!  (=> (and (and (<= 0 x_$54) (<= x_$54 $max.u8)) (and (<= 0 y_$29) (<= y_$29 $max.u8))) (and (<= 0 ($_or t_$53 x_$54 y_$29)) (<= ($_or t_$53 x_$54 y_$29) $max.u8)))
 :qid |BBf6slic.815:18|
 :skolemid |432|
 :pattern ( ($_or t_$53 x_$54 y_$29))
))) (and (forall ((t_$54 T@$ctype) (x_$55 Int) (y_$30 Int) ) (!  (=> (and (and (<= 0 x_$55) (<= x_$55 $max.u1)) (and (<= 0 y_$30) (<= y_$30 $max.u1))) (and (<= 0 ($_and t_$54 x_$55 y_$30)) (<= ($_and t_$54 x_$55 y_$30) $max.u1)))
 :qid |BBf6slic.816:18|
 :skolemid |433|
 :pattern ( ($_and t_$54 x_$55 y_$30))
)) (forall ((t_$55 T@$ctype) (x_$56 Int) (y_$31 Int) ) (!  (=> (and (and (<= 0 x_$56) (<= x_$56 $max.u2)) (and (<= 0 y_$31) (<= y_$31 $max.u2))) (and (<= 0 ($_and t_$55 x_$56 y_$31)) (<= ($_and t_$55 x_$56 y_$31) $max.u2)))
 :qid |BBf6slic.817:18|
 :skolemid |434|
 :pattern ( ($_and t_$55 x_$56 y_$31))
)))) (and (and (forall ((t_$56 T@$ctype) (x_$57 Int) (y_$32 Int) ) (!  (=> (and (and (<= 0 x_$57) (<= x_$57 $max.u4)) (and (<= 0 y_$32) (<= y_$32 $max.u4))) (and (<= 0 ($_and t_$56 x_$57 y_$32)) (<= ($_and t_$56 x_$57 y_$32) $max.u4)))
 :qid |BBf6slic.818:18|
 :skolemid |435|
 :pattern ( ($_and t_$56 x_$57 y_$32))
)) (forall ((t_$57 T@$ctype) (x_$58 Int) (y_$33 Int) ) (!  (=> (and (and (<= 0 x_$58) (<= x_$58 $max.u8)) (and (<= 0 y_$33) (<= y_$33 $max.u8))) (and (<= 0 ($_and t_$57 x_$58 y_$33)) (<= ($_and t_$57 x_$58 y_$33) $max.u8)))
 :qid |BBf6slic.819:18|
 :skolemid |436|
 :pattern ( ($_and t_$57 x_$58 y_$33))
))) (and (forall ((t_$58 T@$ctype) (x_$59 Int) (y_$34 Int) ) (!  (=> (and (and (<= 0 x_$59) (<= x_$59 $max.u1)) (and (<= 0 y_$34) (<= y_$34 $max.u1))) (and (<= 0 ($_xor t_$58 x_$59 y_$34)) (<= ($_xor t_$58 x_$59 y_$34) $max.u1)))
 :qid |BBf6slic.820:18|
 :skolemid |437|
 :pattern ( ($_xor t_$58 x_$59 y_$34))
)) (forall ((t_$59 T@$ctype) (x_$60 Int) (y_$35 Int) ) (!  (=> (and (and (<= 0 x_$60) (<= x_$60 $max.u2)) (and (<= 0 y_$35) (<= y_$35 $max.u2))) (and (<= 0 ($_xor t_$59 x_$60 y_$35)) (<= ($_xor t_$59 x_$60 y_$35) $max.u2)))
 :qid |BBf6slic.821:18|
 :skolemid |438|
 :pattern ( ($_xor t_$59 x_$60 y_$35))
))))) (and (and (and (forall ((t_$60 T@$ctype) (x_$61 Int) (y_$36 Int) ) (!  (=> (and (and (<= 0 x_$61) (<= x_$61 $max.u4)) (and (<= 0 y_$36) (<= y_$36 $max.u4))) (and (<= 0 ($_xor t_$60 x_$61 y_$36)) (<= ($_xor t_$60 x_$61 y_$36) $max.u4)))
 :qid |BBf6slic.822:18|
 :skolemid |439|
 :pattern ( ($_xor t_$60 x_$61 y_$36))
)) (forall ((t_$61 T@$ctype) (x_$62 Int) (y_$37 Int) ) (!  (=> (and (and (<= 0 x_$62) (<= x_$62 $max.u8)) (and (<= 0 y_$37) (<= y_$37 $max.u8))) (and (<= 0 ($_xor t_$61 x_$62 y_$37)) (<= ($_xor t_$61 x_$62 y_$37) $max.u8)))
 :qid |BBf6slic.823:18|
 :skolemid |440|
 :pattern ( ($_xor t_$61 x_$62 y_$37))
))) (and (forall ((t_$62 T@$ctype) (x_$63 Int) ) (! ($in_range_t t_$62 ($_not t_$62 x_$63))
 :qid |BBf6slic.824:18|
 :skolemid |441|
 :pattern ( ($_not t_$62 x_$63))
)) (forall ((t_$63 T@$ctype) (x_$64 Int) ) (! (= ($_or t_$63 x_$64 ($_not t_$63 x_$64)) ($_not t_$63 0))
 :qid |BBf6slic.825:18|
 :skolemid |442|
 :pattern ( ($_or t_$63 x_$64 ($_not t_$63 x_$64)))
)))) (and (and (forall ((t_$64 T@$ctype) (x_$65 Int) ) (! (= ($_and t_$64 x_$65 ($_not t_$64 x_$65)) 0)
 :qid |BBf6slic.826:18|
 :skolemid |443|
 :pattern ( ($_and t_$64 x_$65 ($_not t_$64 x_$65)))
)) (forall ((t_$65 T@$ctype) (x_$66 Int) ) (!  (=> ($in_range_t t_$65 x_$66) (= ($_or t_$65 x_$66 0) x_$66))
 :qid |BBf6slic.827:18|
 :skolemid |444|
 :pattern ( ($_or t_$65 x_$66 0))
))) (and (forall ((t_$66 T@$ctype) (x_$67 Int) ) (! (= ($_or t_$66 x_$67 ($_not t_$66 0)) ($_not t_$66 0))
 :qid |BBf6slic.828:18|
 :skolemid |445|
 :pattern ( ($_or t_$66 x_$67 ($_not t_$66 0)))
)) (forall ((t_$67 T@$ctype) (x_$68 Int) ) (!  (=> ($in_range_t t_$67 x_$68) (= ($_or t_$67 x_$68 x_$68) x_$68))
 :qid |BBf6slic.829:18|
 :skolemid |446|
 :pattern ( ($_or t_$67 x_$68 x_$68))
))))))))) (and (and (and (and (and (and (and (forall ((t_$68 T@$ctype) (x_$69 Int) ) (! (= ($_and t_$68 x_$69 0) 0)
 :qid |BBf6slic.830:18|
 :skolemid |447|
 :pattern ( ($_and t_$68 x_$69 0))
)) (forall ((t_$69 T@$ctype) (x_$70 Int) ) (!  (=> ($in_range_t t_$69 x_$70) (= ($_and t_$69 x_$70 ($_not t_$69 0)) x_$70))
 :qid |BBf6slic.831:18|
 :skolemid |448|
 :pattern ( ($_and t_$69 x_$70 ($_not t_$69 0)))
))) (and (forall ((t_$70 T@$ctype) (x_$71 Int) ) (!  (=> ($in_range_t t_$70 x_$71) (= ($_and t_$70 x_$71 x_$71) x_$71))
 :qid |BBf6slic.832:18|
 :skolemid |449|
 :pattern ( ($_and t_$70 x_$71 x_$71))
)) (forall ((t_$71 T@$ctype) (x_$72 Int) (y_$38 Int) ) (! (= ($_and t_$71 ($_or t_$71 x_$72 y_$38) y_$38) y_$38)
 :qid |BBf6slic.833:18|
 :skolemid |450|
 :pattern ( ($_and t_$71 ($_or t_$71 x_$72 y_$38) y_$38))
)))) (and (and (forall ((t_$72 T@$ctype) (x_$73 Int) (y_$39 Int) ) (! (= ($_and t_$72 ($_or t_$72 x_$73 y_$39) x_$73) x_$73)
 :qid |BBf6slic.834:18|
 :skolemid |451|
 :pattern ( ($_and t_$72 ($_or t_$72 x_$73 y_$39) x_$73))
)) (forall ((t_$73 T@$ctype) (x_$74 Int) ) (!  (=> ($in_range_t t_$73 x_$74) (= ($_xor t_$73 x_$74 0) x_$74))
 :qid |BBf6slic.835:18|
 :skolemid |452|
 :pattern ( ($_xor t_$73 x_$74 0))
))) (and (forall ((t_$74 T@$ctype) (x_$75 Int) ) (! (= ($_xor t_$74 x_$75 x_$75) 0)
 :qid |BBf6slic.836:18|
 :skolemid |453|
 :pattern ( ($_xor t_$74 x_$75 x_$75))
)) (forall ((t_$75 T@$ctype) (x_$76 Int) ) (! (= ($_xor t_$75 x_$76 ($_not t_$75 0)) ($_not t_$75 x_$76))
 :qid |BBf6slic.837:18|
 :skolemid |454|
 :pattern ( ($_xor t_$75 x_$76 ($_not t_$75 0)))
))))) (and (and (and (forall ((t_$76 T@$ctype) (x_$77 Int) ) (!  (=> ($in_range_t t_$76 x_$77) (= ($_not t_$76 ($_not t_$76 x_$77)) x_$77))
 :qid |BBf6slic.838:18|
 :skolemid |455|
 :pattern ( ($_not t_$76 ($_not t_$76 x_$77)))
)) (forall ((t_$77 T@$ctype) (x_$78 Int) (y_$40 Int) ) (! (= ($_or t_$77 x_$78 y_$40) ($_or t_$77 y_$40 x_$78))
 :qid |BBf6slic.839:18|
 :skolemid |456|
 :pattern ( ($_or t_$77 x_$78 y_$40))
))) (and (forall ((t_$78 T@$ctype) (x_$79 Int) (y_$41 Int) ) (! (= ($_xor t_$78 x_$79 y_$41) ($_xor t_$78 y_$41 x_$79))
 :qid |BBf6slic.840:18|
 :skolemid |457|
 :pattern ( ($_xor t_$78 x_$79 y_$41))
)) (forall ((t_$79 T@$ctype) (x_$80 Int) (y_$42 Int) ) (! (= ($_and t_$79 x_$80 y_$42) ($_and t_$79 y_$42 x_$80))
 :qid |BBf6slic.841:18|
 :skolemid |458|
 :pattern ( ($_and t_$79 x_$80 y_$42))
)))) (and (and (forall ((id_$0 Int) (length Int) ) (! ($is ($get_string_literal id_$0 length) ^^u1)
 :qid |BBf6slic.842:18|
 :skolemid |459|
 :pattern ( ($get_string_literal id_$0 length))
)) (forall ((id_$1 Int) (length_$0 Int) (S_$133 T@$state) ) (!  (=> ($good_state S_$133) (and ($typed S_$133 ($get_string_literal id_$1 length_$0)) (forall ((i_$1_$1 Int) ) (!  (=> (and (<= 0 i_$1_$1) (< i_$1_$1 length_$0)) (and ($is ($idx ($get_string_literal id_$1 length_$0) i_$1_$1 ^^u1) ^^u1) ($thread_local S_$133 ($idx ($get_string_literal id_$1 length_$0) i_$1_$1 ^^u1))))
 :qid |BBf6slic.843:293|
 :skolemid |460|
 :pattern ( ($select.sm ($statusmap S_$133) ($idx ($get_string_literal id_$1 length_$0) i_$1_$1 ^^u1)))
 :pattern ( ($select.tm ($typemap S_$133) ($idx ($get_string_literal id_$1 length_$0) i_$1_$1 ^^u1)))
))))
 :qid |BBf6slic.843:18|
 :skolemid |461|
 :pattern ( ($typed S_$133 ($get_string_literal id_$1 length_$0)))
 :pattern ( ($is_array S_$133 ($get_string_literal id_$1 length_$0) ^^u1 length_$0))
))) (and (forall ((no Int) (t_$87 T@$ctype) ) (! (= ($get_fnptr no t_$87) ($ptr t_$87 ($get_fnptr_ref no)))
 :qid |BBf6slic.844:18|
 :skolemid |462|
 :pattern ( ($get_fnptr no t_$87))
)) (forall ((S_$134 T@$state) (no_$1 Int) (t_$88 T@$ctype) ) (!  (=> (and ($is_fnptr_type t_$88) ($good_state S_$134)) ($mutable S_$134 ($get_fnptr no_$1 t_$88)))
 :qid |BBf6slic.845:18|
 :skolemid |463|
 :pattern ( ($select.tm ($typemap S_$134) ($get_fnptr no_$1 t_$88)))
 :pattern ( ($select.sm ($statusmap S_$134) ($get_fnptr no_$1 t_$88)))
)))))) (and (and (and (and (forall ((t_$89 T@$ctype) ) (!  (=> ($is_math_type t_$89) ($is_primitive t_$89))
 :qid |BBf6slic.846:18|
 :skolemid |464|
 :pattern ( ($is_math_type t_$89))
)) (forall ((t_$90 T@$ctype) ) (!  (=> ($is_fnptr_type t_$90) ($is_primitive t_$90))
 :qid |BBf6slic.847:18|
 :skolemid |465|
 :pattern ( ($is_fnptr_type t_$90))
))) (and (forall ((S_$135 T@$state) (c_$7 T@$ptr) ) (!  (=> (and ($full_stop S_$135) ($closed S_$135 c_$7)) ($valid_claim S_$135 c_$7))
 :qid |BBf6slic.848:18|
 :skolemid |466|
 :pattern ( ($full_stop S_$135) ($valid_claim S_$135 c_$7))
)) (forall ((S_$136 T@$state) (c_$8 T@$ptr) ) (!  (=> ($valid_claim S_$136 c_$8) (and ($closed S_$136 c_$8) ($invok_state S_$136)))
 :qid |BBf6slic.849:18|
 :skolemid |467|
 :pattern ( ($valid_claim S_$136 c_$8))
)))) (and (and (forall ((tok T@$token) (c T@$ptr) (|#s1_$3| T@$state) ) (!  (and (=> (and (and ($good_state_ext tok |#s1_$3|) (forall ((|#p_$10@@1| T@$ptr) (|#q@@1| T@$ptr) ) (!  (=> (and (and ($good_state |#s1_$3|) ($set_in |#p_$10@@1| ($owns |#s1_$3| |#q@@1|))) ($closed |#s1_$3| |#q@@1|)) (and ($closed |#s1_$3| |#p_$10@@1|) (not (= ($ref |#p_$10@@1|) 0))))
 :qid |BBf6slic.216:79|
 :skolemid |1|
 :pattern ( ($set_in |#p_$10@@1| ($owns |#s1_$3| |#q@@1|)))
))) true) (and (and ($good_state_ext tok |#s1_$3|) (forall ((|#p_$10_$2| T@$ptr) (|#q_$8| T@$ptr) ) (!  (=> (and (and ($good_state |#s1_$3|) ($set_in |#p_$10_$2| ($owns |#s1_$3| |#q_$8|))) ($closed |#s1_$3| |#q_$8|)) (and ($closed |#s1_$3| |#p_$10_$2|) (not (= ($ref |#p_$10_$2|) 0))))
 :qid |BBf6slic.850:182|
 :skolemid |468|
 :pattern ( ($set_in |#p_$10_$2| ($owns |#s1_$3| |#q_$8|)))
))) true)) (=> (and (and ($good_state_ext tok |#s1_$3|) (forall ((|#p_$10_$2@@0| T@$ptr) (|#q_$8@@0| T@$ptr) ) (!  (=> (and (and ($good_state |#s1_$3|) ($set_in |#p_$10_$2@@0| ($owns |#s1_$3| |#q_$8@@0|))) ($closed |#s1_$3| |#q_$8@@0|)) (and ($closed |#s1_$3| |#p_$10_$2@@0|) (not (= ($ref |#p_$10_$2@@0|) 0))))
 :qid |BBf6slic.850:182|
 :skolemid |468|
 :pattern ( ($set_in |#p_$10_$2@@0| ($owns |#s1_$3| |#q_$8@@0|)))
))) true) (and (and ($good_state_ext tok |#s1_$3|) (forall ((|#p_$10@@2| T@$ptr) (|#q@@2| T@$ptr) ) (!  (=> (and (and ($good_state |#s1_$3|) ($set_in |#p_$10@@2| ($owns |#s1_$3| |#q@@2|))) ($closed |#s1_$3| |#q@@2|)) (and ($closed |#s1_$3| |#p_$10@@2|) (not (= ($ref |#p_$10@@2|) 0))))
 :qid |BBf6slic.216:79|
 :skolemid |1|
 :pattern ( ($set_in |#p_$10@@2| ($owns |#s1_$3| |#q@@2|)))
))) true)))
 :qid |BBf6slic.850:18|
 :skolemid |469|
)) (forall ((tok_$0 T@$token) (c_$0 T@$ptr) (|#s2_$2| T@$state) (|#s1_$4| T@$state) ) (!  (and (=> (and (and (and (and (and (and (and (and ($good_state_ext tok_$0 |#s1_$4|) ($full_stop |#s1_$4|)) ($good_state_ext tok_$0 |#s2_$2|)) (forall ((|#p_$10@@3| T@$ptr) (|#q@@3| T@$ptr) ) (!  (=> (and (and ($good_state |#s1_$4|) ($set_in |#p_$10@@3| ($owns |#s1_$4| |#q@@3|))) ($closed |#s1_$4| |#q@@3|)) (and ($closed |#s1_$4| |#p_$10@@3|) (not (= ($ref |#p_$10@@3|) 0))))
 :qid |BBf6slic.216:79|
 :skolemid |1|
 :pattern ( ($set_in |#p_$10@@3| ($owns |#s1_$4| |#q@@3|)))
))) (forall ((|#p_$10@@4| T@$ptr) (|#q@@4| T@$ptr) ) (!  (=> (and (and ($good_state |#s2_$2|) ($set_in |#p_$10@@4| ($owns |#s2_$2| |#q@@4|))) ($closed |#s2_$2| |#q@@4|)) (and ($closed |#s2_$2| |#p_$10@@4|) (not (= ($ref |#p_$10@@4|) 0))))
 :qid |BBf6slic.216:79|
 :skolemid |1|
 :pattern ( ($set_in |#p_$10@@4| ($owns |#s2_$2| |#q@@4|)))
))) (forall ((|#p_$9@@1| T@$ptr) ) (!  (or (and (not ($closed |#s1_$4| |#p_$9@@1|)) (not ($closed |#s2_$2| |#p_$9@@1|))) (and ($inv2 |#s1_$4| |#s2_$2| |#p_$9@@1| ($typ |#p_$9@@1|)) ($nonvolatile_spans_the_same |#s1_$4| |#s2_$2| |#p_$9@@1| ($typ |#p_$9@@1|))))
 :qid |BBf6slic.211:97|
 :skolemid |0|
 :pattern ( ($closed |#s1_$4| |#p_$9@@1|))
 :pattern ( ($closed |#s2_$2| |#p_$9@@1|))
))) ($valid_claim |#s1_$4| c_$0)) ($closed |#s2_$2| c_$0)) true) (and (and (and (and (and (and (and (and ($good_state_ext tok_$0 |#s1_$4|) ($full_stop |#s1_$4|)) ($good_state_ext tok_$0 |#s2_$2|)) (forall ((|#p_$10_$3| T@$ptr) (|#q_$9| T@$ptr) ) (!  (=> (and (and ($good_state |#s1_$4|) ($set_in |#p_$10_$3| ($owns |#s1_$4| |#q_$9|))) ($closed |#s1_$4| |#q_$9|)) (and ($closed |#s1_$4| |#p_$10_$3|) (not (= ($ref |#p_$10_$3|) 0))))
 :qid |BBf6slic.851:447|
 :skolemid |470|
 :pattern ( ($set_in |#p_$10_$3| ($owns |#s1_$4| |#q_$9|)))
))) (forall ((|#p_$10_$4| T@$ptr) (|#q_$10| T@$ptr) ) (!  (=> (and (and ($good_state |#s2_$2|) ($set_in |#p_$10_$4| ($owns |#s2_$2| |#q_$10|))) ($closed |#s2_$2| |#q_$10|)) (and ($closed |#s2_$2| |#p_$10_$4|) (not (= ($ref |#p_$10_$4|) 0))))
 :qid |BBf6slic.851:694|
 :skolemid |471|
 :pattern ( ($set_in |#p_$10_$4| ($owns |#s2_$2| |#q_$10|)))
))) (forall ((|#p_$9_$1| T@$ptr) ) (!  (or (and (not ($closed |#s1_$4| |#p_$9_$1|)) (not ($closed |#s2_$2| |#p_$9_$1|))) (and ($inv2 |#s1_$4| |#s2_$2| |#p_$9_$1| ($typ |#p_$9_$1|)) ($nonvolatile_spans_the_same |#s1_$4| |#s2_$2| |#p_$9_$1| ($typ |#p_$9_$1|))))
 :qid |BBf6slic.851:945|
 :skolemid |472|
 :pattern ( ($closed |#s1_$4| |#p_$9_$1|))
 :pattern ( ($closed |#s2_$2| |#p_$9_$1|))
))) ($valid_claim |#s1_$4| c_$0)) ($closed |#s2_$2| c_$0)) true)) (=> (and (and (and (and (and (and (and (and ($good_state_ext tok_$0 |#s1_$4|) ($full_stop |#s1_$4|)) ($good_state_ext tok_$0 |#s2_$2|)) (forall ((|#p_$10_$3@@0| T@$ptr) (|#q_$9@@0| T@$ptr) ) (!  (=> (and (and ($good_state |#s1_$4|) ($set_in |#p_$10_$3@@0| ($owns |#s1_$4| |#q_$9@@0|))) ($closed |#s1_$4| |#q_$9@@0|)) (and ($closed |#s1_$4| |#p_$10_$3@@0|) (not (= ($ref |#p_$10_$3@@0|) 0))))
 :qid |BBf6slic.851:447|
 :skolemid |470|
 :pattern ( ($set_in |#p_$10_$3@@0| ($owns |#s1_$4| |#q_$9@@0|)))
))) (forall ((|#p_$10_$4@@0| T@$ptr) (|#q_$10@@0| T@$ptr) ) (!  (=> (and (and ($good_state |#s2_$2|) ($set_in |#p_$10_$4@@0| ($owns |#s2_$2| |#q_$10@@0|))) ($closed |#s2_$2| |#q_$10@@0|)) (and ($closed |#s2_$2| |#p_$10_$4@@0|) (not (= ($ref |#p_$10_$4@@0|) 0))))
 :qid |BBf6slic.851:694|
 :skolemid |471|
 :pattern ( ($set_in |#p_$10_$4@@0| ($owns |#s2_$2| |#q_$10@@0|)))
))) (forall ((|#p_$9_$1@@0| T@$ptr) ) (!  (or (and (not ($closed |#s1_$4| |#p_$9_$1@@0|)) (not ($closed |#s2_$2| |#p_$9_$1@@0|))) (and ($inv2 |#s1_$4| |#s2_$2| |#p_$9_$1@@0| ($typ |#p_$9_$1@@0|)) ($nonvolatile_spans_the_same |#s1_$4| |#s2_$2| |#p_$9_$1@@0| ($typ |#p_$9_$1@@0|))))
 :qid |BBf6slic.851:945|
 :skolemid |472|
 :pattern ( ($closed |#s1_$4| |#p_$9_$1@@0|))
 :pattern ( ($closed |#s2_$2| |#p_$9_$1@@0|))
))) ($valid_claim |#s1_$4| c_$0)) ($closed |#s2_$2| c_$0)) true) (and (and (and (and (and (and (and (and ($good_state_ext tok_$0 |#s1_$4|) ($full_stop |#s1_$4|)) ($good_state_ext tok_$0 |#s2_$2|)) (forall ((|#p_$10@@5| T@$ptr) (|#q@@5| T@$ptr) ) (!  (=> (and (and ($good_state |#s1_$4|) ($set_in |#p_$10@@5| ($owns |#s1_$4| |#q@@5|))) ($closed |#s1_$4| |#q@@5|)) (and ($closed |#s1_$4| |#p_$10@@5|) (not (= ($ref |#p_$10@@5|) 0))))
 :qid |BBf6slic.216:79|
 :skolemid |1|
 :pattern ( ($set_in |#p_$10@@5| ($owns |#s1_$4| |#q@@5|)))
))) (forall ((|#p_$10@@6| T@$ptr) (|#q@@6| T@$ptr) ) (!  (=> (and (and ($good_state |#s2_$2|) ($set_in |#p_$10@@6| ($owns |#s2_$2| |#q@@6|))) ($closed |#s2_$2| |#q@@6|)) (and ($closed |#s2_$2| |#p_$10@@6|) (not (= ($ref |#p_$10@@6|) 0))))
 :qid |BBf6slic.216:79|
 :skolemid |1|
 :pattern ( ($set_in |#p_$10@@6| ($owns |#s2_$2| |#q@@6|)))
))) (forall ((|#p_$9@@2| T@$ptr) ) (!  (or (and (not ($closed |#s1_$4| |#p_$9@@2|)) (not ($closed |#s2_$2| |#p_$9@@2|))) (and ($inv2 |#s1_$4| |#s2_$2| |#p_$9@@2| ($typ |#p_$9@@2|)) ($nonvolatile_spans_the_same |#s1_$4| |#s2_$2| |#p_$9@@2| ($typ |#p_$9@@2|))))
 :qid |BBf6slic.211:97|
 :skolemid |0|
 :pattern ( ($closed |#s1_$4| |#p_$9@@2|))
 :pattern ( ($closed |#s2_$2| |#p_$9@@2|))
))) ($valid_claim |#s1_$4| c_$0)) ($closed |#s2_$2| c_$0)) true)))
 :qid |BBf6slic.851:18|
 :skolemid |473|
))) (and (forall ((S1_$4 T@$state) (S0_$1 T@$state) ) (!  (and (=> (forall ((r_$26 Int) ) (!  (=> (and ($closed S0_$1 ($ptr ^^claim r_$26)) ($closed S1_$4 ($ptr ^^claim r_$26))) ($valid_claim S1_$4 ($ptr ^^claim r_$26)))
 :qid |BBf6slic.852:64|
 :skolemid |474|
 :pattern ( ($closed S1_$4 ($ptr ^^claim r_$26)))
)) (forall ((r Int) ) (!  (=> (and ($closed S0_$1 ($ptr ^^claim r)) ($closed S1_$4 ($ptr ^^claim r))) ($valid_claim S1_$4 ($ptr ^^claim r)))
 :qid |BBf6slic.852:258|
 :skolemid |475|
 :pattern ( ($closed S1_$4 ($ptr ^^claim r)))
))) (=> (forall ((r@@0 Int) ) (!  (=> (and ($closed S0_$1 ($ptr ^^claim r@@0)) ($closed S1_$4 ($ptr ^^claim r@@0))) ($valid_claim S1_$4 ($ptr ^^claim r@@0)))
 :qid |BBf6slic.852:258|
 :skolemid |475|
 :pattern ( ($closed S1_$4 ($ptr ^^claim r@@0)))
)) (forall ((r_$26@@0 Int) ) (!  (=> (and ($closed S0_$1 ($ptr ^^claim r_$26@@0)) ($closed S1_$4 ($ptr ^^claim r_$26@@0))) ($valid_claim S1_$4 ($ptr ^^claim r_$26@@0)))
 :qid |BBf6slic.852:64|
 :skolemid |474|
 :pattern ( ($closed S1_$4 ($ptr ^^claim r_$26@@0)))
))))
 :qid |BBf6slic.852:18|
 :skolemid |476|
)) (forall ((c1 T@$ptr) (c2 T@$ptr) ) (!  (=> (and (and ($is c1 ^^claim) ($is c2 ^^claim)) (forall ((S_$137 T@$state) ) (!  (=> ($valid_claim S_$137 c1) ($closed S_$137 c2))
 :qid |BBf6slic.853:118|
 :skolemid |477|
))) ($claims_claim c1 c2))
 :qid |BBf6slic.853:18|
 :skolemid |478|
 :pattern ( ($claims_claim c1 c2))
))))) (and (and (and (forall ((S_$138 T@$state) (c1_$0 T@$ptr) (c2_$0 T@$ptr) ) (!  (=> (and ($valid_claim S_$138 c1_$0) ($claims_claim c1_$0 c2_$0)) ($valid_claim S_$138 c2_$0))
 :qid |BBf6slic.854:18|
 :skolemid |479|
 :pattern ( ($valid_claim S_$138 c1_$0) ($claims_claim c1_$0 c2_$0))
)) (forall ((S_$139 T@$state) (c_$9 T@$ptr) (o_$0 T@$ptr) ) (!  (=> ($good_state S_$139) (=> (and ($claims_obj c_$9 o_$0) ($closed S_$139 c_$9)) (and (and ($instantiate_ptrset ($owns S_$139 o_$0)) ($closed S_$139 o_$0)) (> ($ref_cnt S_$139 o_$0) 0))))
 :qid |BBf6slic.855:18|
 :skolemid |480|
 :pattern ( ($closed S_$139 c_$9) ($claims_obj c_$9 o_$0))
))) (and (forall ((S_$140 T@$state) (c_$10 T@$ptr) (o_$1 T@$ptr) ) (!  (=> (and ($valid_claim S_$140 c_$10) ($claims_obj c_$10 o_$1)) ($inv2 S_$140 S_$140 o_$1 ($typ o_$1)))
 :qid |BBf6slic.856:18|
 :skolemid |481|
 :pattern ( ($valid_claim S_$140 c_$10) ($claims_obj c_$10 o_$1))
)) (forall ((S_$141 T@$state) (c_$11 T@$ptr) (r_$25 Int) ) (!  (=> (and ($valid_claim S_$141 c_$11) ($claims_obj c_$11 ($ptr ^^claim r_$25))) ($valid_claim S_$141 ($ptr ^^claim r_$25)))
 :qid |BBf6slic.857:18|
 :skolemid |482|
 :pattern ( ($valid_claim S_$141 c_$11) ($claims_obj c_$11 ($ptr ^^claim r_$25)))
)))) (and (and (forall ((s_$18 T@$state) (p_$152 T@$ptr) ) (!  (and (=> ($claimed_closed s_$18 p_$152) ($closed s_$18 p_$152)) (=> ($closed s_$18 p_$152) ($claimed_closed s_$18 p_$152)))
 :qid |BBf6slic.858:18|
 :weight 0
 :skolemid |483|
 :pattern ( ($claimed_closed s_$18 p_$152))
)) (forall ((S_$143 T@$state) (p_$153 T@$ptr) ) (!  (=> (and ($invok_state S_$143) ($claimed_closed S_$143 p_$153)) ($inv2 S_$143 S_$143 p_$153 ($typ p_$153)))
 :qid |BBf6slic.859:18|
 :skolemid |484|
 :pattern ( ($invok_state S_$143) ($claimed_closed S_$143 p_$153))
))) (and (= $no_claim ($ptr ^^claim 0)) ($is_claimable ^^claim)))))) (and (and (and (and (and (forall ((S_$145 T@$state) (c_$12 T@$ptr) (o_$3 T@$ptr) ) (!  (and (=> ($account_claim S_$145 c_$12 o_$3) (and (and ($good_state S_$145) ($closed S_$145 c_$12)) ($claims_obj c_$12 o_$3))) (=> (and (and ($good_state S_$145) ($closed S_$145 c_$12)) ($claims_obj c_$12 o_$3)) ($account_claim S_$145 c_$12 o_$3)))
 :qid |BBf6slic.862:18|
 :skolemid |485|
 :pattern ( ($account_claim S_$145 c_$12 o_$3))
)) (forall ((S_$146 T@$state) (c_$13 T@$ptr) (o_$4 T@$ptr) ) (!  (=> ($account_claim S_$146 c_$13 o_$4) (and (and (= ($claim_no S_$146 o_$4 ($claim_idx o_$4 c_$13)) c_$13) (<= 0 ($claim_idx o_$4 c_$13))) (< ($claim_idx o_$4 c_$13) ($ref_cnt S_$146 o_$4))))
 :qid |BBf6slic.863:18|
 :skolemid |486|
 :pattern ( ($account_claim S_$146 c_$13 o_$4))
))) (and (forall ((s_$3 T@$state) ) (!  (and (=> (forall ((f_$8 T@$pure_function) ) (! (< ($frame_level f_$8) $current_frame_level)
 :qid |BBf6slic.864:47|
 :skolemid |487|
 :pattern ( ($frame_level f_$8))
)) (forall ((f_$8@@0 T@$pure_function) ) (! (< ($frame_level f_$8@@0) $current_frame_level)
 :qid |BBf6slic.864:154|
 :skolemid |488|
 :pattern ( ($frame_level f_$8@@0))
))) (=> (forall ((f_$8@@1 T@$pure_function) ) (! (< ($frame_level f_$8@@1) $current_frame_level)
 :qid |BBf6slic.864:154|
 :skolemid |488|
 :pattern ( ($frame_level f_$8@@1))
)) (forall ((f_$8@@2 T@$pure_function) ) (! (< ($frame_level f_$8@@2) $current_frame_level)
 :qid |BBf6slic.864:47|
 :skolemid |487|
 :pattern ( ($frame_level f_$8@@2))
))))
 :qid |BBf6slic.864:18|
 :skolemid |489|
)) (forall ((f_$9 T@$pure_function) ) (!  (and (=> (< ($frame_level f_$9) $current_frame_level) (< ($frame_level f_$9) $current_frame_level)) (=> (< ($frame_level f_$9) $current_frame_level) (< ($frame_level f_$9) $current_frame_level)))
 :qid |BBf6slic.865:18|
 :skolemid |490|
)))) (and (and (forall ((s_$4 T@$state) ) (!  (and (=> (forall ((f_$10 T@$pure_function) ) (! (< ($pure_post_level f_$10) $current_frame_level)
 :qid |BBf6slic.866:47|
 :skolemid |491|
 :pattern ( ($frame_level f_$10))
)) (forall ((f_$10@@0 T@$pure_function) ) (! (< ($pure_post_level f_$10@@0) $current_frame_level)
 :qid |BBf6slic.866:161|
 :skolemid |492|
 :pattern ( ($frame_level f_$10@@0))
))) (=> (forall ((f_$10@@1 T@$pure_function) ) (! (< ($pure_post_level f_$10@@1) $current_frame_level)
 :qid |BBf6slic.866:161|
 :skolemid |492|
 :pattern ( ($frame_level f_$10@@1))
)) (forall ((f_$10@@2 T@$pure_function) ) (! (< ($pure_post_level f_$10@@2) $current_frame_level)
 :qid |BBf6slic.866:47|
 :skolemid |491|
 :pattern ( ($frame_level f_$10@@2))
))))
 :qid |BBf6slic.866:18|
 :skolemid |493|
)) (forall ((f_$11 T@$pure_function) ) (!  (and (=> (< ($pure_post_level f_$11) $current_pure_post_level) (< ($pure_post_level f_$11) $current_pure_post_level)) (=> (< ($pure_post_level f_$11) $current_pure_post_level) (< ($pure_post_level f_$11) $current_pure_post_level)))
 :qid |BBf6slic.867:18|
 :skolemid |494|
))) (and (forall ((p_$158 T@$ptr) ) (! (= ($int_to_ptr ($ptr_to_int p_$158)) p_$158)
 :qid |BBf6slic.868:18|
 :skolemid |495|
)) (forall ((S1_$16 T@$state) (S2_$12 T@$state) (p_$161 T@$ptr) (W_$1 T@$ptrset) ) (!  (and (=> ($domain_updated_at S1_$16 S2_$12 p_$161 W_$1) (and (forall ((q_$24 T@$ptr) ) (!  (=> (and (= ($kind_of ($typ q_$24)) $kind_primitive) (not ($set_in q_$24 W_$1))) (= ($fetch_from_domain ($read_version S1_$16 p_$161) q_$24) ($fetch_from_domain ($read_version S2_$12 p_$161) q_$24)))
 :qid |BBf6slic.869:197|
 :skolemid |496|
 :pattern ( ($fetch_from_domain ($read_version S2_$12 p_$161) q_$24))
)) (= ($domain S1_$16 p_$161) ($domain S2_$12 p_$161)))) (=> (and (forall ((q_$24@@0 T@$ptr) ) (!  (=> (and (= ($kind_of ($typ q_$24@@0)) $kind_primitive) (not ($set_in q_$24@@0 W_$1))) (= ($fetch_from_domain ($read_version S1_$16 p_$161) q_$24@@0) ($fetch_from_domain ($read_version S2_$12 p_$161) q_$24@@0)))
 :qid |BBf6slic.869:197|
 :skolemid |496|
 :pattern ( ($fetch_from_domain ($read_version S2_$12 p_$161) q_$24@@0))
)) (= ($domain S1_$16 p_$161) ($domain S2_$12 p_$161))) ($domain_updated_at S1_$16 S2_$12 p_$161 W_$1)))
 :qid |BBf6slic.869:18|
 :skolemid |497|
 :pattern ( ($domain_updated_at S1_$16 S2_$12 p_$161 W_$1))
))))) (and (and (and (=> $seclbl.top true) (=> true $seclbl.top)) (and (=> $seclbl.bot false) (=> false $seclbl.bot))) (and (and (forall ((l2 Bool) (l1 Bool) ) (!  (and (=> (=> l1 l2) (=> l1 l2)) (=> (=> l1 l2) (=> l1 l2)))
 :qid |BBf6slic.872:18|
 :skolemid |498|
)) (forall ((l2_$0 Bool) (l1_$0 Bool) ) (!  (and (=> (and l1_$0 l2_$0) (and l1_$0 l2_$0)) (=> (and l1_$0 l2_$0) (and l1_$0 l2_$0)))
 :qid |BBf6slic.873:18|
 :skolemid |499|
))) (and (forall ((l2_$1 Bool) (l1_$1 Bool) ) (!  (and (=> (or l1_$1 l2_$1) (or l1_$1 l2_$1)) (=> (or l1_$1 l2_$1) (or l1_$1 l2_$1)))
 :qid |BBf6slic.874:18|
 :skolemid |500|
)) (forall ((p_$162 T@$ptr) ) (!  (and (=> (|Select_[$ptr]$bool| $lblset.top p_$162) $seclbl.top) (=> $seclbl.top (|Select_[$ptr]$bool| $lblset.top p_$162)))
 :qid |BBf6slic.875:18|
 :skolemid |501|
)))))) (and (and (and (and (forall ((p_$163 T@$ptr) ) (!  (and (=> (|Select_[$ptr]$bool| $lblset.bot p_$163) $seclbl.bot) (=> $seclbl.bot (|Select_[$ptr]$bool| $lblset.bot p_$163)))
 :qid |BBf6slic.876:18|
 :skolemid |502|
)) (forall ((l2_$2 |T@[$ptr]Bool|) (l1_$2 |T@[$ptr]Bool|) ) (!  (and (=> (forall ((p_$52_$0 T@$ptr) ) (!  (=> (|Select_[$ptr]$bool| l1_$2 p_$52_$0) (|Select_[$ptr]$bool| l2_$2 p_$52_$0))
 :qid |BBf6slic.877:70|
 :skolemid |503|
)) (forall ((p_$52 T@$ptr) ) (!  (=> (|Select_[$ptr]$bool| l1_$2 p_$52) (|Select_[$ptr]$bool| l2_$2 p_$52))
 :qid |BBf6slic.877:153|
 :skolemid |504|
))) (=> (forall ((p_$52@@0 T@$ptr) ) (!  (=> (|Select_[$ptr]$bool| l1_$2 p_$52@@0) (|Select_[$ptr]$bool| l2_$2 p_$52@@0))
 :qid |BBf6slic.877:153|
 :skolemid |504|
)) (forall ((p_$52_$0@@0 T@$ptr) ) (!  (=> (|Select_[$ptr]$bool| l1_$2 p_$52_$0@@0) (|Select_[$ptr]$bool| l2_$2 p_$52_$0@@0))
 :qid |BBf6slic.877:70|
 :skolemid |503|
))))
 :qid |BBf6slic.877:18|
 :skolemid |505|
))) (and (forall ((fd T@$flowdata) (l_$5 |T@[$ptr]Bool|) ) (! (= ($select.flow.label ($store.flow.label fd l_$5)) l_$5)
 :qid |BBf6slic.878:18|
 :weight 0
 :skolemid |506|
)) (forall ((fd_$0 T@$flowdata) (l_$6 |T@[$ptr]Bool|) ) (! (= ($select.flow.meta ($store.flow.meta fd_$0 l_$6)) l_$6)
 :qid |BBf6slic.879:18|
 :weight 0
 :skolemid |507|
)))) (and (and (forall ((fd_$1 T@$flowdata) (l_$7 |T@[$ptr]Bool|) ) (! (= ($select.flow.label ($store.flow.meta fd_$1 l_$7)) ($select.flow.label fd_$1))
 :qid |BBf6slic.880:18|
 :weight 0
 :skolemid |508|
)) (forall ((fd_$2 T@$flowdata) (l_$8 |T@[$ptr]Bool|) ) (! (= ($select.flow.meta ($store.flow.label fd_$2 l_$8)) ($select.flow.meta fd_$2))
 :qid |BBf6slic.881:18|
 :weight 0
 :skolemid |509|
))) (and (forall ((M_$6 T@$memory_t) (p_$166 T@$ptr) (q_$25 T@$ptr) (fd_$3 T@$flowdata) ) (!  (=> ($set_in q_$25 ($full_extent p_$166)) (= ($select.flow.data ($store.flow.data M_$6 p_$166 fd_$3) q_$25) fd_$3))
 :qid |BBf6slic.882:18|
 :weight 0
 :skolemid |510|
)) (forall ((M_$7 T@$memory_t) (p_$167 T@$ptr) (q_$26 T@$ptr) (fd_$4 T@$flowdata) ) (!  (or ($set_in q_$26 ($full_extent p_$167)) (= ($select.flow.data ($store.flow.data M_$7 p_$167 fd_$4) q_$26) ($select.flow.data M_$7 q_$26)))
 :qid |BBf6slic.883:18|
 :weight 0
 :skolemid |511|
))))) (and (and (and (forall ((M_$8 T@$map_t..$ptr_to..^^void.^^bool) (p_$168 T@$ptr) (v_$14 Bool) ) (!  (and (=> ($select.$map_t..$ptr_to..^^void.^^bool ($store.$map_t..$ptr_to..^^void.^^bool M_$8 p_$168 v_$14) p_$168) v_$14) (=> v_$14 ($select.$map_t..$ptr_to..^^void.^^bool ($store.$map_t..$ptr_to..^^void.^^bool M_$8 p_$168 v_$14) p_$168)))
 :qid |BBf6slic.884:18|
 :weight 0
 :skolemid |512|
)) (forall ((M_$9 T@$map_t..$ptr_to..^^void.^^bool) (p_$169 T@$ptr) (v_$15 Bool) (q_$27 T@$ptr) ) (!  (=> (not (= p_$169 q_$27)) (and (=> ($select.$map_t..$ptr_to..^^void.^^bool ($store.$map_t..$ptr_to..^^void.^^bool M_$9 q_$27 v_$15) p_$169) ($select.$map_t..$ptr_to..^^void.^^bool M_$9 p_$169)) (=> ($select.$map_t..$ptr_to..^^void.^^bool M_$9 p_$169) ($select.$map_t..$ptr_to..^^void.^^bool ($store.$map_t..$ptr_to..^^void.^^bool M_$9 q_$27 v_$15) p_$169))))
 :qid |BBf6slic.885:18|
 :weight 0
 :skolemid |513|
))) (and (forall ((M1_$2 T@$map_t..$ptr_to..^^void.^^bool) (M2_$2 T@$map_t..$ptr_to..^^void.^^bool) ) (!  (=> (forall ((p_$170 T@$ptr) ) (!  (and (=> ($select.$map_t..$ptr_to..^^void.^^bool M1_$2 p_$170) ($select.$map_t..$ptr_to..^^void.^^bool M2_$2 p_$170)) (=> ($select.$map_t..$ptr_to..^^void.^^bool M2_$2 p_$170) ($select.$map_t..$ptr_to..^^void.^^bool M1_$2 p_$170)))
 :qid |BBf6slic.886:174|
 :weight 0
 :skolemid |514|
)) ($eq.$map_t..$ptr_to..^^void.^^bool M1_$2 M2_$2))
 :qid |BBf6slic.886:18|
 :weight 0
 :skolemid |515|
 :pattern ( ($eq.$map_t..$ptr_to..^^void.^^bool M1_$2 M2_$2))
)) (forall ((M1_$3 T@$map_t..$ptr_to..^^void.^^bool) (M2_$3 T@$map_t..$ptr_to..^^void.^^bool) ) (!  (=> ($eq.$map_t..$ptr_to..^^void.^^bool M1_$3 M2_$3) (= M1_$3 M2_$3))
 :qid |BBf6slic.887:18|
 :weight 0
 :skolemid |516|
 :pattern ( ($eq.$map_t..$ptr_to..^^void.^^bool M1_$3 M2_$3))
)))) (and (and (= ($int_to_map_t..ptr_to..^^void.^^bool 0) $zero.$map_t..$ptr_to..^^void.^^bool) (forall ((p_$171 T@$ptr) ) (!  (and (=> ($select.$map_t..$ptr_to..^^void.^^bool $zero.$map_t..$ptr_to..^^void.^^bool p_$171) false) (=> false ($select.$map_t..$ptr_to..^^void.^^bool $zero.$map_t..$ptr_to..^^void.^^bool p_$171)))
 :qid |BBf6slic.889:18|
 :weight 0
 :skolemid |517|
))) (and (forall ((r1_$2 T@$record) (r2_$2 T@$record) (f_$32 T@$field) (R T@$ctype) ) (!  (=> ($eq.$map_t..$ptr_to..^^void.^^bool ($int_to_map_t..ptr_to..^^void.^^bool ($rec_fetch r1_$2 f_$32)) ($int_to_map_t..ptr_to..^^void.^^bool ($rec_fetch r2_$2 f_$32))) ($rec_base_eq ($rec_fetch r1_$2 f_$32) ($rec_fetch r2_$2 f_$32)))
 :qid |BBf6slic.890:18|
 :weight 0
 :skolemid |518|
 :pattern ( ($rec_base_eq ($rec_fetch r1_$2 f_$32) ($rec_fetch r2_$2 f_$32)) ($is_record_field R f_$32 ($map_t ($ptr_to ^^void) ^^bool)))
)) ($function_arg_type |cf#classifier#default| 0 ($map_t ($ptr_to ^^void) ^^bool)))))))) (and (and (and (and (and (and (forall ((p_$172 T@$ptr) ) (!  (and (=> ($select.$map_t..$ptr_to..^^void.^^bool |#classifier#default| p_$172) false) (=> false ($select.$map_t..$ptr_to..^^void.^^bool |#classifier#default| p_$172)))
 :qid |BBf6slic.892:18|
 :skolemid |519|
 :pattern ( ($select.$map_t..$ptr_to..^^void.^^bool |#classifier#default| p_$172))
)) (forall ((p_$173 T@$ptr) ) (!  (and (=> (|Select_[$ptr]$bool| $ptrclub.empty p_$173) false) (=> false (|Select_[$ptr]$bool| $ptrclub.empty p_$173)))
 :qid |BBf6slic.893:18|
 :skolemid |520|
))) (and (forall ((c_$1 T@$ptrclub) (p_$53 T@$ptr) ) (!  (and (=> (|Select_[$ptr]$bool| ($ptrclub.members c_$1) p_$53) (|Select_[$ptr]$bool| ($ptrclub.members c_$1) p_$53)) (=> (|Select_[$ptr]$bool| ($ptrclub.members c_$1) p_$53) (|Select_[$ptr]$bool| ($ptrclub.members c_$1) p_$53)))
 :qid |BBf6slic.894:18|
 :skolemid |521|
)) (forall ((c_$14 |T@[$ptr]Bool|) (l_$9 |T@[$ptr]Bool|) ) (! (= ($ptrclub.members ($ptrclub.construct c_$14 l_$9)) c_$14)
 :qid |BBf6slic.895:18|
 :weight 0
 :skolemid |522|
)))) (and (and (forall ((c_$15 |T@[$ptr]Bool|) (l_$10 |T@[$ptr]Bool|) ) (! (= ($ptrclub.bound ($ptrclub.construct c_$15 l_$10)) l_$10)
 :qid |BBf6slic.896:18|
 :weight 0
 :skolemid |523|
)) (forall ((c_$16 T@$ptrclub) (p_$174 T@$ptr) ) (! (= ($ptrclub.members ($ptrclub.addMember p_$174 c_$16)) (|Store_[$ptr]$bool| ($ptrclub.members c_$16) p_$174 true))
 :qid |BBf6slic.897:18|
 :weight 0
 :skolemid |524|
))) (and (forall ((c_$17 T@$ptrclub) (p_$175 T@$ptr) ) (! (= ($ptrclub.bound ($ptrclub.addMember p_$175 c_$17)) ($ptrclub.bound c_$17))
 :qid |BBf6slic.898:18|
 :weight 0
 :skolemid |525|
)) (forall ((p1_$4 T@$ptr) (p2_$2 T@$ptr) ) (!  (=> (= ($ref p1_$4) ($ref p2_$2)) (forall ((p_$52_$1 T@$ptr) ) (!  (=> (|Select_[$ptr]$bool| ($ptrclub.compare p1_$4 p2_$2) p_$52_$1) (|Select_[$ptr]$bool| $lblset.bot p_$52_$1))
 :qid |BBf6slic.899:93|
 :skolemid |526|
)))
 :qid |BBf6slic.899:18|
 :skolemid |527|
))))) (and (and (and (forall ((p1_$5 T@$ptr) (p2_$3 T@$ptr) (c_$18 T@$ptrclub) ) (!  (=> (and (and (|Select_[$ptr]$bool| ($ptrclub.members c_$18) p1_$5) (|Select_[$ptr]$bool| ($ptrclub.members c_$18) p2_$3)) (is_active_ptrclub c_$18)) (forall ((p_$52_$2 T@$ptr) ) (!  (=> (|Select_[$ptr]$bool| ($ptrclub.compare p1_$5 p2_$3) p_$52_$2) (|Select_[$ptr]$bool| ($ptrclub.bound c_$18) p_$52_$2))
 :qid |BBf6slic.900:179|
 :skolemid |528|
)))
 :qid |BBf6slic.900:18|
 :skolemid |529|
)) (forall ((M_$10 T@$memory_t) (p_$176 T@$ptr) (q_$28 T@$ptr) (v_$16 Int) ) (! (= ($select.flow.data ($store.mem M_$10 q_$28 v_$16) p_$176) ($select.flow.data M_$10 p_$176))
 :qid |BBf6slic.901:18|
 :weight 0
 :skolemid |530|
))) (and (forall ((M_$11 T@$memory_t) (p_$177 T@$ptr) (q_$29 T@$ptr) (fd_$5 T@$flowdata) ) (! (= ($select.mem ($store.flow.data M_$11 q_$29 fd_$5) p_$177) ($select.mem M_$11 p_$177))
 :qid |BBf6slic.902:18|
 :weight 0
 :skolemid |531|
)) (= $arch_ptr_size 8))) (and (and (= $arch_spec_ptr_start $max.u8) ($is_math_type |^$#thread_id|)) (and ($is_composite ^A) (= ($ptr_level ^A) 0))))) (and (and (and (and (= ($sizeof ^A) 4) (forall ((|#s1_$11| T@$state) (|#s2_$8| T@$state) (|#p_$33| T@$ptr) ) (!  (and (=> ($inv2 |#s1_$11| |#s2_$8| |#p_$33| ^A) (and (and ($typed |#s2_$8| |#p_$33|) ($set_eq ($owns |#s2_$8| |#p_$33|) $set_empty)) (or (= ($select.mem ($memory |#s1_$11|) ($dot |#p_$33| A.x)) ($select.mem ($memory |#s2_$8|) ($dot |#p_$33| A.x))) (= (+ ($select.mem ($memory |#s1_$11|) ($dot |#p_$33| A.x)) 1) ($select.mem ($memory |#s2_$8|) ($dot |#p_$33| A.x)))))) (=> (and (and ($typed |#s2_$8| |#p_$33|) ($set_eq ($owns |#s2_$8| |#p_$33|) $set_empty)) (or (= ($select.mem ($memory |#s1_$11|) ($dot |#p_$33| A.x)) ($select.mem ($memory |#s2_$8|) ($dot |#p_$33| A.x))) (= (+ ($select.mem ($memory |#s1_$11|) ($dot |#p_$33| A.x)) 1) ($select.mem ($memory |#s2_$8|) ($dot |#p_$33| A.x))))) ($inv2 |#s1_$11| |#s2_$8| |#p_$33| ^A)))
 :qid |BBf6slic.909:18|
 :skolemid |532|
 :pattern ( ($inv2 |#s1_$11| |#s2_$8| |#p_$33| ^A))
))) (and (forall ((|#s2_$9| T@$state) (|#r_$15| Int) ) (!  (and (=> ($inv_lab |#s2_$9| ($ptr ^A |#r_$15|) |l#public|) (and (and ($typed |#s2_$9| ($ptr ^A |#r_$15|)) ($set_eq ($owns |#s2_$9| ($ptr ^A |#r_$15|)) $set_empty)) (or true (= (+ ($select.mem ($memory |#s2_$9|) ($dot ($ptr ^A |#r_$15|) A.x)) 1) ($select.mem ($memory |#s2_$9|) ($dot ($ptr ^A |#r_$15|) A.x)))))) (=> (and (and ($typed |#s2_$9| ($ptr ^A |#r_$15|)) ($set_eq ($owns |#s2_$9| ($ptr ^A |#r_$15|)) $set_empty)) (or true (= (+ ($select.mem ($memory |#s2_$9|) ($dot ($ptr ^A |#r_$15|) A.x)) 1) ($select.mem ($memory |#s2_$9|) ($dot ($ptr ^A |#r_$15|) A.x))))) ($inv_lab |#s2_$9| ($ptr ^A |#r_$15|) |l#public|)))
 :qid |BBf6slic.910:18|
 :skolemid |533|
 :pattern ( ($inv_lab |#s2_$9| ($ptr ^A |#r_$15|) |l#public|))
)) (forall ((|#q_$2| T@$ptr) (|#r_$16| Int) ) (!  (and (=> ($set_in |#q_$2| ($full_extent ($ptr ^A |#r_$16|))) (or (or (= |#q_$2| ($ptr ^A |#r_$16|)) (= |#q_$2| ($dot ($ptr ^A |#r_$16|) A.$owns))) (= |#q_$2| ($dot ($ptr ^A |#r_$16|) A.x)))) (=> (or (or (= |#q_$2| ($ptr ^A |#r_$16|)) (= |#q_$2| ($dot ($ptr ^A |#r_$16|) A.$owns))) (= |#q_$2| ($dot ($ptr ^A |#r_$16|) A.x))) ($set_in |#q_$2| ($full_extent ($ptr ^A |#r_$16|)))))
 :qid |BBf6slic.911:18|
 :skolemid |534|
 :pattern ( ($set_in |#q_$2| ($full_extent ($ptr ^A |#r_$16|))))
)))) (and (and (forall ((|#s| T@$state) (|#q_$3| T@$ptr) (|#r_$17| Int) ) (!  (and (=> ($set_in |#q_$3| ($extent |#s| ($ptr ^A |#r_$17|))) ($set_in |#q_$3| ($full_extent ($ptr ^A |#r_$17|)))) (=> ($set_in |#q_$3| ($full_extent ($ptr ^A |#r_$17|))) ($set_in |#q_$3| ($extent |#s| ($ptr ^A |#r_$17|)))))
 :qid |BBf6slic.912:19|
 :skolemid |535|
 :pattern ( ($set_in |#q_$3| ($extent |#s| ($ptr ^A |#r_$17|))))
)) (forall ((|#s_$0| T@$state) (|#q_$4| T@$ptr) (|#r_$18| Int) ) (!  (=> ($typed |#s_$0| ($ptr ^A |#r_$18|)) (and (=> ($set_in |#q_$4| ($extent |#s_$0| ($ptr ^A |#r_$18|))) (or (= |#q_$4| ($ptr ^A |#r_$18|)) (= ($ts_emb ($select.tm ($typemap |#s_$0|) |#q_$4|)) ($ptr ^A |#r_$18|)))) (=> (or (= |#q_$4| ($ptr ^A |#r_$18|)) (= ($ts_emb ($select.tm ($typemap |#s_$0|) |#q_$4|)) ($ptr ^A |#r_$18|))) ($set_in |#q_$4| ($extent |#s_$0| ($ptr ^A |#r_$18|))))))
 :qid |BBf6slic.912:225|
 :skolemid |536|
 :pattern ( ($set_in |#q_$4| ($extent |#s_$0| ($ptr ^A |#r_$18|))))
))) (forall ((|#q_$5| T@$ptr) (|#r_$19| Int) ) (!  (and (=> ($set_in |#q_$5| ($span ($ptr ^A |#r_$19|))) (or (or (= |#q_$5| ($ptr ^A |#r_$19|)) (= |#q_$5| ($dot ($ptr ^A |#r_$19|) A.$owns))) (= |#q_$5| ($dot ($ptr ^A |#r_$19|) A.x)))) (=> (or (or (= |#q_$5| ($ptr ^A |#r_$19|)) (= |#q_$5| ($dot ($ptr ^A |#r_$19|) A.$owns))) (= |#q_$5| ($dot ($ptr ^A |#r_$19|) A.x))) ($set_in |#q_$5| ($span ($ptr ^A |#r_$19|)))))
 :qid |BBf6slic.913:18|
 :skolemid |537|
 :pattern ( ($set_in |#q_$5| ($span ($ptr ^A |#r_$19|))))
)))) (and (and (and (forall ((|#p_$34| T@$ptr) (|#s1_$12| T@$state) (|#s2_$10| T@$state) ) (!  (and (=> ($state_spans_the_same |#s1_$12| |#s2_$10| |#p_$34| ^A) (and (= ($select.mem ($memory |#s1_$12|) ($dot |#p_$34| A.$owns)) ($select.mem ($memory |#s2_$10|) ($dot |#p_$34| A.$owns))) (= ($select.mem ($memory |#s1_$12|) ($dot |#p_$34| A.x)) ($select.mem ($memory |#s2_$10|) ($dot |#p_$34| A.x))))) (=> (and (= ($select.mem ($memory |#s1_$12|) ($dot |#p_$34| A.$owns)) ($select.mem ($memory |#s2_$10|) ($dot |#p_$34| A.$owns))) (= ($select.mem ($memory |#s1_$12|) ($dot |#p_$34| A.x)) ($select.mem ($memory |#s2_$10|) ($dot |#p_$34| A.x)))) ($state_spans_the_same |#s1_$12| |#s2_$10| |#p_$34| ^A)))
 :qid |BBf6slic.914:18|
 :skolemid |538|
 :pattern ( ($state_spans_the_same |#s1_$12| |#s2_$10| |#p_$34| ^A))
)) (forall ((|#p_$35| T@$ptr) (|#s1_$13| T@$state) (|#s2_$11| T@$state) ) (!  (and (=> ($state_nonvolatile_spans_the_same |#s1_$13| |#s2_$11| |#p_$35| ^A) (= ($select.mem ($memory |#s1_$13|) ($dot |#p_$35| A.$owns)) ($select.mem ($memory |#s2_$11|) ($dot |#p_$35| A.$owns)))) (=> (= ($select.mem ($memory |#s1_$13|) ($dot |#p_$35| A.$owns)) ($select.mem ($memory |#s2_$11|) ($dot |#p_$35| A.$owns))) ($state_nonvolatile_spans_the_same |#s1_$13| |#s2_$11| |#p_$35| ^A)))
 :qid |BBf6slic.915:18|
 :skolemid |539|
 :pattern ( ($state_nonvolatile_spans_the_same |#s1_$13| |#s2_$11| |#p_$35| ^A))
))) (and (=> ($is_claimable ^A) false) (=> false ($is_claimable ^A)))) (and (and (=> ($has_volatile_owns_set ^A) false) (=> false ($has_volatile_owns_set ^A))) (and (forall ((|#s1_$14| T@$state) (|#r_$20| Int) ) (!  (and (=> ($extent_mutable |#s1_$14| ($ptr ^A |#r_$20|)) ($mutable |#s1_$14| ($ptr ^A |#r_$20|))) (=> ($mutable |#s1_$14| ($ptr ^A |#r_$20|)) ($extent_mutable |#s1_$14| ($ptr ^A |#r_$20|))))
 :qid |BBf6slic.918:18|
 :skolemid |540|
 :pattern ( ($extent_mutable |#s1_$14| ($ptr ^A |#r_$20|)))
)) (forall ((|#s1_$16| T@$state) (|#r_$22| Int) ) (!  (and (=> ($extent_zero |#s1_$16| ($ptr ^A |#r_$22|)) (= ($select.mem ($memory |#s1_$16|) ($dot ($ptr ^A |#r_$22|) A.x)) 0)) (=> (= ($select.mem ($memory |#s1_$16|) ($dot ($ptr ^A |#r_$22|) A.x)) 0) ($extent_zero |#s1_$16| ($ptr ^A |#r_$22|))))
 :qid |BBf6slic.919:18|
 :skolemid |541|
 :pattern ( ($extent_zero |#s1_$16| ($ptr ^A |#r_$22|)))
))))))) (and (and (and (and (and ($is_base_field A.$owns) (= ($field_parent_type A.$owns) ^A)) (and ($is_primitive_non_volatile_field A.$owns) (forall ((|#p_$36| T@$ptr) ) (!  (=> ($is |#p_$36| ^A) (and (= ($dot |#p_$36| A.$owns) ($ptr |^$#ptrset| ($ghost_ref |#p_$36| A.$owns))) ($extent_hint ($dot |#p_$36| A.$owns) |#p_$36|)))
 :qid |BBf6slic.922:18|
 :skolemid |542|
 :pattern ( ($dot |#p_$36| A.$owns))
)))) (and (and (forall ((|#p_$37| T@$ptr) (|#s_$1| T@$state) ) (!  (=> (and ($is |#p_$37| ^A) ($typed |#s_$1| |#p_$37|)) (and (and (and (and ($is ($dot |#p_$37| A.$owns) |^$#ptrset|) ($typed |#s_$1| ($dot |#p_$37| A.$owns))) (= ($ts_emb ($select.tm ($typemap |#s_$1|) ($dot |#p_$37| A.$owns))) |#p_$37|)) (= ($ts_path ($select.tm ($typemap |#s_$1|) ($dot |#p_$37| A.$owns))) A.$owns)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s_$1|) ($dot |#p_$37| A.$owns))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s_$1|) ($dot |#p_$37| A.$owns)))))))
 :qid |BBf6slic.923:18|
 :skolemid |543|
 :pattern ( ($select.tm ($typemap |#s_$1|) ($dot |#p_$37| A.$owns)))
 :pattern ( ($select.sm ($statusmap |#s_$1|) ($dot |#p_$37| A.$owns)))
)) (= ($owns_set_field ^A) A.$owns)) (and ($is_base_field A.x) (= ($field_parent_type A.x) ^A)))) (and (and (and ($is_primitive_volatile_field A.x) (forall ((|#p_$38| T@$ptr) ) (!  (=> ($is |#p_$38| ^A) (and (= ($dot |#p_$38| A.x) ($ptr ^^i4 (+ ($ref |#p_$38|) 0))) ($extent_hint ($dot |#p_$38| A.x) |#p_$38|)))
 :qid |BBf6slic.927:18|
 :skolemid |544|
 :pattern ( ($dot |#p_$38| A.x))
))) (and (forall ((|#p_$39| T@$ptr) (|#s_$2| T@$state) ) (!  (=> (and ($is |#p_$39| ^A) ($typed |#s_$2| |#p_$39|)) (and (and (and (and ($is ($dot |#p_$39| A.x) ^^i4) ($typed |#s_$2| ($dot |#p_$39| A.x))) (= ($ts_emb ($select.tm ($typemap |#s_$2|) ($dot |#p_$39| A.x))) |#p_$39|)) (= ($ts_path ($select.tm ($typemap |#s_$2|) ($dot |#p_$39| A.x))) A.x)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s_$2|) ($dot |#p_$39| A.x))) true) (=> true ($ts_is_volatile ($select.tm ($typemap |#s_$2|) ($dot |#p_$39| A.x)))))))
 :qid |BBf6slic.928:18|
 :skolemid |545|
 :pattern ( ($select.tm ($typemap |#s_$2|) ($dot |#p_$39| A.x)))
 :pattern ( ($select.sm ($statusmap |#s_$2|) ($dot |#p_$39| A.x)))
)) (= |#distTp3| ($ptr_to ^^i4)))) (and (and (= |#distTp2| ($spec_ptr_to ^^claim)) (= |#distTp1| ($ptr_to ^A))) (and ($file_name_is 1 |#file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cexamples?5CLockFreeIncr.c|) ($function_entry $s))))) (and (and (and (and ($good_state_ext |#tok$1^13.1| $s) ($full_stop $s)) (forall ((f_$8@@3 T@$pure_function) ) (! (< ($frame_level f_$8@@3) $current_frame_level)
 :qid |BBf6slic.941:18|
 :skolemid |546|
 :pattern ( ($frame_level f_$8@@3))
))) (and ($local_value_is $s |#tok$1^13.1| |#loc._this_| ($ptr_to_int ($ptr ^A |P#_this_|)) ($ptr_to ^A)) ($local_value_is_ptr $s |#tok$1^13.1| |#loc._this_| ($ptr ^A |P#_this_|) ($ptr_to ^A)))) (and (and (= |#wrTime$1^13.1| ($current_timestamp $s)) (forall ((|#p_$40| T@$ptr) ) (!  (and (=> ($in_writes_at |#wrTime$1^13.1| |#p_$40|) false) (=> false ($in_writes_at |#wrTime$1^13.1| |#p_$40|)))
 :qid |BBf6slic.944:18|
 :skolemid |547|
 :pattern ( ($in_writes_at |#wrTime$1^13.1| |#p_$40|))
))) (and $is_unwrap_check (not $is_stuttering_check)))))))) (and (and (and (and (and (and (and (and (and ($closed $s ($ptr ^A |P#_this_|)) (= ($owner $s ($ptr ^A |P#_this_|)) $me)) (and ($is ($ptr ^A |P#_this_|) ($typ ($ptr ^A |P#_this_|))) ($typed $s ($ptr ^A |P#_this_|)))) (not (= ($kind_of ($typ ($ptr ^A |P#_this_|))) $kind_primitive))) ($is_non_primitive ($typ ($ptr ^A |P#_this_|)))) (or (not ($is_claimable ($typ ($ptr ^A |P#_this_|)))) (= ($ref_cnt $s ($ptr ^A |P#_this_|)) 0))) ($inv2 $s $s ($ptr ^A |P#_this_|) ($typ ($ptr ^A |P#_this_|)))) (forall ((|#q_$1_$3| T@$ptr) ) (!  (=> ($closed $s |#q_$1_$3|) ($inv2 $s $s |#q_$1_$3| ($typ |#q_$1_$3|)))
 :qid |BBf6slic.948:224|
 :skolemid |548|
 :pattern ( ($select.sm ($statusmap $s) |#q_$1_$3|))
))) ($good_for_pre_can_unwrap $s)) (= |call0formal_$_#l_$_0| ($ptr ^A |P#_this_|)))) (and (! (or %lbl%@52143 ($good_for_pre_can_unwrap $s)) :lblneg @52143) (=> ($good_for_pre_can_unwrap $s) (=> (= ($select.sec.pc $s_$_0) ($select.sec.pc $s)) (=> (and ($good_state $s_$_0) ($good_for_post_can_unwrap $s_$_0)) (=> (and (and (and (and ($mutable $s_$_0 |call0formal_$_#l_$_0|) ($spans_the_same $s $s_$_0 |call0formal_$_#l_$_0| ($typ |call0formal_$_#l_$_0|))) (and (forall ((|#p_$41| T@$ptr) ) (!  (=> ($set_in |#p_$41| ($owns $s |call0formal_$_#l_$_0|)) (and (and (and ($typed $s |#p_$41|) (and (and (and (and ($closed $s_$_0 |#p_$41|) (= ($owner $s_$_0 |#p_$41|) $me)) (and ($is |#p_$41| ($typ |#p_$41|)) ($typed $s_$_0 |#p_$41|))) (not (= ($kind_of ($typ |#p_$41|)) $kind_primitive))) ($is_non_primitive ($typ |#p_$41|)))) (= ($timestamp $s_$_0 |#p_$41|) ($current_timestamp $s_$_0))) ($is_non_primitive ($typ |#p_$41|))))
 :qid |BBf6slic.956:18|
 :skolemid |549|
 :pattern ( ($set_in |#p_$41| ($owns $s |call0formal_$_#l_$_0|)))
)) (forall ((|#p_$42| T@$ptr) ) (!  (=> ($set_in |#p_$42| ($owns $s |call0formal_$_#l_$_0|)) (=> ($is_claimable ($typ |#p_$42|)) (= ($ref_cnt $s |#p_$42|) ($ref_cnt $s_$_0 |#p_$42|))))
 :qid |BBf6slic.957:18|
 :skolemid |550|
 :pattern ( ($set_in |#p_$42| ($owns $s |call0formal_$_#l_$_0|)) ($is_claimable ($typ |#p_$42|)))
)))) (and (and (= ($timestamp $s_$_0 |call0formal_$_#l_$_0|) ($current_timestamp $s_$_0)) (= ($typemap $s) ($typemap $s_$_0))) (and (forall ((|#p_$43| T@$ptr) ) (!  (or (or (= |#p_$43| |call0formal_$_#l_$_0|) (and (not (= ($kind_of ($typ ($owner $s |#p_$43|))) $kind_thread)) ($set_in |#p_$43| ($owns $s |call0formal_$_#l_$_0|)))) (= ($select.sm ($statusmap $s_$_0) |#p_$43|) ($select.sm ($statusmap $s) |#p_$43|)))
 :qid |BBf6slic.960:18|
 :skolemid |551|
 :pattern ( ($select.sm ($statusmap $s_$_0) |#p_$43|))
)) (exists ((|#x_$1| Int) ) (! (= ($memory $s_$_0) ($store.mem ($memory $s) |call0formal_$_#l_$_0| |#x_$1|))
 :qid |BBf6slic.961:18|
 :skolemid |552|
))))) (and (and (and (< ($current_timestamp $s) ($current_timestamp $s_$_0)) (forall ((p_$33_$5 T@$ptr) ) (! (<= ($timestamp $s p_$33_$5) ($timestamp $s_$_0 p_$33_$5))
 :qid |BBf6slic.962:77|
 :weight 0
 :skolemid |553|
 :pattern ( ($timestamp $s_$_0 p_$33_$5))
))) ($call_transition $s $s_$_0)) ($good_state_ext |#tok$1^13.1| $s_$_0))) (and (! (or %lbl%@52506  (=> (and (not $is_stuttering_check) (not $is_unwrap_check)) ($set_eq ($owns $s_$_0 ($ptr ^A |P#_this_|)) $set_empty))) :lblneg @52506) (=> (=> (and (not $is_stuttering_check) (not $is_unwrap_check)) ($set_eq ($owns $s_$_0 ($ptr ^A |P#_this_|)) $set_empty)) (and (! (or %lbl%@52532  (=> (and (not $is_stuttering_check) (not $is_unwrap_check)) (or (= ($select.mem ($memory $s) ($dot ($ptr ^A |P#_this_|) A.x)) ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x))) (= (+ ($select.mem ($memory $s) ($dot ($ptr ^A |P#_this_|) A.x)) 1) ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x)))))) :lblneg @52532) (=> (=> (and (not $is_stuttering_check) (not $is_unwrap_check)) (or (= ($select.mem ($memory $s) ($dot ($ptr ^A |P#_this_|) A.x)) ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x))) (= (+ ($select.mem ($memory $s) ($dot ($ptr ^A |P#_this_|) A.x)) 1) ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x))))) (and (! (or %lbl%@52618  (=> $is_stuttering_check (or (= ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x)) ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x))) (= (+ ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x)) 1) ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x)))))) :lblneg @52618) (=> (=> $is_stuttering_check (or (= ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x)) ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x))) (= (+ ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x)) 1) ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x))))) (and (! (or %lbl%@52696  (=> $is_unwrap_check ($set_eq ($owns $s_$_0 ($ptr ^A |P#_this_|)) $set_empty))) :lblneg @52696) (=> (=> $is_unwrap_check ($set_eq ($owns $s_$_0 ($ptr ^A |P#_this_|)) $set_empty)) (! (or %lbl%@52714  (=> $is_unwrap_check (or (= ($select.mem ($memory $s) ($dot ($ptr ^A |P#_this_|) A.x)) ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x))) (= (+ ($select.mem ($memory $s) ($dot ($ptr ^A |P#_this_|) A.x)) 1) ($select.mem ($memory $s_$_0) ($dot ($ptr ^A |P#_this_|) A.x)))))) :lblneg @52714))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (! (and %lbl%+26501 true) :lblpos +26501) $start_correct)))
PreconditionGeneratedEntry_correct))
))
(check-sat)
(pop 1)
; Valid
