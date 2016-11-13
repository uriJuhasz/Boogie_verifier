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
(declare-sort T@cf_event 0)
(declare-fun conditional_moment () T@cf_event)
(declare-fun took_then_branch () T@cf_event)
(declare-fun took_else_branch () T@cf_event)
(declare-fun loop_register () T@cf_event)
(declare-fun loop_entered () T@cf_event)
(declare-fun loop_exited () T@cf_event)
(declare-sort T@var_locglob 0)
(declare-fun cev_local () T@var_locglob)
(declare-fun cev_global () T@var_locglob)
(declare-fun cev_parameter () T@var_locglob)
(declare-fun cev_implicit () T@var_locglob)
(declare-fun |^$#thread_id| () T@$ctype)
(declare-fun ^Node () T@$ctype)
(declare-sort T@$field 0)
(declare-fun Node.$owns () T@$field)
(declare-fun Node.next () T@$field)
(declare-fun Node.data () T@$field)
(declare-fun ^List () T@$ctype)
(declare-fun List.$owns () T@$field)
(declare-fun List.head () T@$field)
(declare-fun List.seq () T@$field)
(declare-fun List.idx () T@$field)
(declare-fun List.followers () T@$field)
(declare-fun List.length_acc () T@$field)
(declare-fun List.length () T@$field)
(declare-fun |cf#lambda#1| () T@$pure_function)
(declare-sort T@$label 0)
(declare-fun |l#public| () T@$label)
(declare-sort T@$token 0)
(declare-fun |#tok$1^38.44| () T@$token)
(declare-fun |#tok$1^38.31| () T@$token)
(declare-fun |#tok$1^38.3| () T@$token)
(declare-fun |#tok$1^38.21| () T@$token)
(declare-fun |#tok$1^38.8| () T@$token)
(declare-fun |#loc.n| () T@$token)
(declare-fun |#tok$1^35.10| () T@$token)
(declare-fun |#loc.i| () T@$token)
(declare-fun |#tok$1^36.3| () T@$token)
(declare-fun |#loc.l| () T@$token)
(declare-fun |#tok$1^30.1| () T@$token)
(declare-fun |#distTp6| () T@$ctype)
(declare-fun |#loc._this_| () T@$token)
(declare-fun |#tok$1^9.31| () T@$token)
(declare-fun |#distTp5| () T@$ctype)
(declare-fun |#distTp4| () T@$ctype)
(declare-fun |#file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cvscomp2010?5Cvscomp2010_p3_v0.c| () T@$token)
(declare-fun |#distTp3| () T@$ctype)
(declare-fun |#distTp2| () T@$ctype)
(declare-fun |#distTp1| () T@$ctype)
(declare-fun $sizeof (T@$ctype) Int)
(declare-fun $as_in_range_t (T@$ctype) T@$ctype)
(declare-fun $ptr_level (T@$ctype) Int)
(declare-fun $is_composite (T@$ctype) Bool)
(declare-fun $ptr_to (T@$ctype) T@$ctype)
(declare-fun $unptr_to (T@$ctype) T@$ctype)
(declare-fun $spec_ptr_to (T@$ctype) T@$ctype)
(declare-fun $arch_ptr_size () Int)
(declare-fun $map_t (T@$ctype T@$ctype) T@$ctype)
(declare-fun $map_domain (T@$ctype) T@$ctype)
(declare-fun $map_range (T@$ctype) T@$ctype)
(declare-fun $is_primitive (T@$ctype) Bool)
(declare-fun $kind_of (T@$ctype) T@$kind)
(declare-fun $is_arraytype (T@$ctype) Bool)
(declare-fun $is_threadtype (T@$ctype) Bool)
(declare-fun $is_non_primitive (T@$ctype) Bool)
(declare-fun $is_claimable (T@$ctype) Bool)
(declare-fun $in_range_spec_ptr (Int) Bool)
(declare-fun $me_ref () Int)
(declare-fun $me () T@$ptr)
(declare-fun $ptr (T@$ctype Int) T@$ptr)
(declare-sort T@$memory_t 0)
(declare-fun $select.mem (T@$memory_t T@$ptr) Int)
(declare-fun $store.mem (T@$memory_t T@$ptr Int) T@$memory_t)
(declare-fun $typ (T@$ptr) T@$ctype)
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
(declare-sort T@$state 0)
(declare-fun $call_transition (T@$state T@$state) Bool)
(declare-fun $memory (T@$state) T@$memory_t)
(declare-fun $extent_hint (T@$ptr T@$ptr) Bool)
(declare-fun $is_nested_range (T@$ctype T@$ctype Int Int) Bool)
(declare-fun $is_nested (T@$ctype T@$ctype) Bool)
(declare-fun $nesting_min (T@$ctype T@$ctype) Int)
(declare-fun $nesting_max (T@$ctype T@$ctype) Int)
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
(declare-fun $simple_emb (T@$ptr) T@$ptr)
(declare-fun $dot (T@$ptr T@$field) T@$ptr)
(declare-fun $typed (T@$state T@$ptr) Bool)
(declare-fun $typemap (T@$state) T@$typemap_t)
(declare-fun $ts_is_volatile (T@$type_state) Bool)
(declare-fun $good_state (T@$state) Bool)
(declare-fun $statusmap (T@$state) T@$statusmap_t)
(declare-fun $timestamp (T@$state T@$ptr) Int)
(declare-fun $current_timestamp (T@$state) Int)
(declare-fun $ts_typed (T@$type_state) Bool)
(declare-sort T@$struct 0)
(declare-fun $vs_state (T@$struct) T@$state)
(declare-fun $struct_zero () T@$struct)
(declare-fun $vs_ctor (T@$state T@$ptr) T@$struct)
(declare-fun $vs_base_ref (T@$struct) Int)
(declare-sort T@$record 0)
(declare-fun $rec_update_bv (T@$record T@$field Int Int Int Int) T@$record)
(declare-fun $rec_update (T@$record T@$field Int) T@$record)
(declare-fun $bv_update (Int Int Int Int Int) Int)
(declare-fun $rec_fetch (T@$record T@$field) Int)
(declare-fun $rec_zero () T@$record)
(declare-fun $unchecked (T@$ctype Int) Int)
(declare-fun $record_field_int_kind (T@$field) T@$ctype)
(declare-fun $in_range_t (T@$ctype Int) Bool)
(declare-fun $is_record_type (T@$ctype) Bool)
(declare-fun $is_record_field (T@$ctype T@$field T@$ctype) Bool)
(declare-fun $as_record_record_field (T@$field) T@$field)
(declare-fun $rec_eq (T@$record T@$record) Bool)
(declare-fun $rec_base_eq (Int Int) Bool)
(declare-fun $int_to_record (Int) T@$record)
(declare-fun $record_to_int (T@$record) Int)
(declare-fun $has_volatile_owns_set (T@$ctype) Bool)
(declare-fun $owns_set_field (T@$ctype) T@$field)
(declare-fun $owner (T@$state T@$ptr) T@$ptr)
(declare-fun $st_owner (T@$status) T@$ptr)
(declare-fun $closed (T@$state T@$ptr) Bool)
(declare-fun $st_closed (T@$status) Bool)
(declare-fun $st_timestamp (T@$status) Int)
(declare-fun $position_marker () Bool)
(declare-sort T@$ptrset 0)
(declare-fun $owns (T@$state T@$ptr) T@$ptrset)
(declare-fun $int_to_ptrset (Int) T@$ptrset)
(declare-fun $mutable (T@$state T@$ptr) Bool)
(declare-fun $in_range_phys_ptr (Int) Bool)
(declare-fun $arch_spec_ptr_start () Int)
(declare-fun $instantiate_st (T@$status) Bool)
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
(declare-fun $imply_inv (T@$state T@$ptr T@$ctype) Bool)
(declare-fun $sequential (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $spans_the_same (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $depends (T@$state T@$state T@$ptr T@$ptr) Bool)
(declare-fun $nonvolatile_spans_the_same (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $state_spans_the_same (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $state_nonvolatile_spans_the_same (T@$state T@$state T@$ptr T@$ctype) Bool)
(declare-fun $full_extent (T@$ptr) T@$ptrset)
(declare-fun $extent_mutable (T@$state T@$ptr) Bool)
(declare-fun $extent (T@$state T@$ptr) T@$ptrset)
(declare-fun $array (T@$ctype Int) T@$ctype)
(declare-fun $extent_zero (T@$state T@$ptr) Bool)
(declare-fun $full_stop (T@$state) Bool)
(declare-fun $invok_state (T@$state) Bool)
(declare-fun $good_state_ext (T@$token T@$state) Bool)
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
(declare-fun $is_approved_by (T@$ctype T@$field T@$field) Bool)
(declare-fun $int_to_ptr (Int) T@$ptr)
(declare-fun $fetch_from_vv (T@$vol_version T@$ptr) Int)
(declare-fun $is_owner_approved (T@$ctype T@$field) Bool)
(declare-fun $post_unwrap (T@$state T@$state) Bool)
(declare-fun $set_empty () T@$ptrset)
(declare-fun $update_int (T@$state T@$ptr Int) T@$state)
(declare-fun $take_over (T@$state T@$ptr T@$ptr) T@$state)
(declare-fun $taken_over (T@$state T@$ptr T@$ptr) T@$status)
(declare-fun $ref_cnt (T@$state T@$ptr) Int)
(declare-fun $release (T@$state T@$state T@$ptr T@$ptr) T@$state)
(declare-fun $released (T@$state T@$ptr T@$ptr) T@$status)
(declare-fun $get_memory_allocator () T@$ptr)
(declare-fun $memory_allocator_ref () Int)
(declare-fun $program_entry_point (T@$state) Bool)
(declare-fun $program_entry_point_ch (T@$state) Bool)
(declare-fun $volatile_span (T@$state T@$ptr) T@$ptrset)
(declare-fun $span (T@$ptr) T@$ptrset)
(declare-fun $left_split (T@$ptr Int) T@$ptr)
(declare-fun $element_type (T@$ctype) T@$ctype)
(declare-fun $right_split (T@$ptr Int) T@$ptr)
(declare-fun $array_length (T@$ctype) Int)
(declare-fun $joined_array (T@$ptr T@$ptr) T@$ptr)
(declare-fun $set_singleton (T@$ptr) T@$ptrset)
(declare-fun $non_null_set_singleton (T@$ptr) T@$ptrset)
(declare-fun $set_union (T@$ptrset T@$ptrset) T@$ptrset)
(declare-fun $set_difference (T@$ptrset T@$ptrset) T@$ptrset)
(declare-fun $set_intersection (T@$ptrset T@$ptrset) T@$ptrset)
(declare-fun $set_subset (T@$ptrset T@$ptrset) Bool)
(declare-fun $set_eq (T@$ptrset T@$ptrset) Bool)
(declare-fun $dont_instantiate (T@$ptr) Bool)
(declare-fun $set_cardinality (T@$ptrset) Int)
(declare-fun $set_universe () T@$ptrset)
(declare-fun $set_disjoint (T@$ptrset T@$ptrset) Bool)
(declare-fun $id_set_disjoint (T@$ptr T@$ptrset T@$ptrset) Int)
(declare-fun $in_some_owns (T@$ptr) Bool)
(declare-fun $set_in3 (T@$ptr T@$ptrset) Bool)
(declare-fun $inlined_array (T@$ptr T@$ctype) T@$ptr)
(declare-fun $is_array_vol_or_nonvol (T@$state T@$ptr T@$ctype Int Bool) Bool)
(declare-fun $index_within (T@$ptr T@$ptr) Int)
(declare-fun $array_members (T@$ptr T@$ctype Int) T@$ptrset)
(declare-fun $array_range (T@$state T@$ptr T@$ctype Int) T@$ptrset)
(declare-fun $array_range_no_state (T@$ptr T@$ctype Int) T@$ptrset)
(declare-fun $non_null_array_range (T@$ptr T@$ctype Int) T@$ptrset)
(declare-fun $non_null_extent (T@$state T@$ptr) T@$ptrset)
(declare-fun $simple_index (T@$ptr T@$ptr) Bool)
(declare-fun $embedded_array_size (T@$field T@$ctype) Int)
(declare-fun $bool_id (Bool) Bool)
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
(declare-fun $byte_ptr_subtraction (T@$ptr T@$ptr) Int)
(declare-fun $_pow2 (Int) Int)
(declare-fun $in_range_ubits (Int Int) Bool)
(declare-fun $unchecked_sbits (Int Int) Int)
(declare-fun $in_range_sbits (Int Int) Bool)
(declare-fun $unchecked_ubits (Int Int) Int)
(declare-fun $unchk_add (T@$ctype Int Int) Int)
(declare-fun $unchk_sub (T@$ctype Int Int) Int)
(declare-fun $unchk_mul (T@$ctype Int Int) Int)
(declare-fun $_shl (T@$ctype Int Int) Int)
(declare-fun $_shr (Int Int) Int)
(declare-fun $bv_extract_signed (Int Int Int Int) Int)
(declare-fun $bv_extract_unsigned (Int Int Int Int) Int)
(declare-fun $_and (T@$ctype Int Int) Int)
(declare-fun $_or (T@$ctype Int Int) Int)
(declare-fun $_xor (T@$ctype Int Int) Int)
(declare-fun $_not (T@$ctype Int) Int)
(declare-fun $op_mul (Int Int) Int)
(declare-fun $op_add (T@$ctype Int Int) Int)
(declare-fun $op_sub (T@$ctype Int Int) Int)
(declare-fun $op_div (T@$ctype Int Int) Int)
(declare-fun $op_lt (T@$ctype Int Int) Bool)
(declare-fun $op_le (T@$ctype Int Int) Bool)
(declare-fun $op_gt (T@$ctype Int Int) Bool)
(declare-fun $op_ge (T@$ctype Int Int) Bool)
(declare-fun $get_string_literal (Int Int) T@$ptr)
(declare-fun $get_fnptr (Int T@$ctype) T@$ptr)
(declare-fun $get_fnptr_ref (Int) Int)
(declare-fun $get_fnptr_inv (Int) Int)
(declare-fun $is_fnptr_type (T@$ctype) Bool)
(declare-fun $is_math_type (T@$ctype) Bool)
(declare-fun $claims_claim (T@$ptr T@$ptr) Bool)
(declare-fun $claims_obj (T@$ptr T@$ptr) Bool)
(declare-fun $instantiate_ptrset (T@$ptrset) Bool)
(declare-fun $not_shared (T@$state T@$ptr) Bool)
(declare-fun $claimed_closed (T@$state T@$ptr) Bool)
(declare-fun $claims_upgrade (T@$ptr T@$ptr) Bool)
(declare-fun $st_ref_cnt (T@$status) Int)
(declare-fun $account_claim (T@$state T@$ptr T@$ptr) Bool)
(declare-fun $claim_no (T@$state T@$ptr Int) T@$ptr)
(declare-fun $claim_idx (T@$ptr T@$ptr) Int)
(declare-fun $ptrset_to_int (T@$ptrset) Int)
(declare-fun $version_to_int (T@$version) Int)
(declare-fun $vol_version_to_int (T@$vol_version) Int)
(declare-fun $ptr_to_int (T@$ptr) Int)
(declare-fun $updated_only_values (T@$state T@$state T@$ptrset) Bool)
(declare-fun $updated_only_domains (T@$state T@$state T@$ptrset) Bool)
(declare-fun $domain_updated_at (T@$state T@$state T@$ptr T@$ptrset) Bool)
(declare-fun $seclbl.top () Bool)
(declare-fun $seclbl.bot () Bool)
(declare-sort |T@[$ptr]Bool| 0)
(declare-fun |Select_[$ptr]$bool| (|T@[$ptr]Bool| T@$ptr) Bool)
(declare-fun $lblset.top () |T@[$ptr]Bool|)
(declare-fun $lblset.bot () |T@[$ptr]Bool|)
(declare-fun $lblset.meet (|T@[$ptr]Bool| |T@[$ptr]Bool|) |T@[$ptr]Bool|)
(declare-fun $lblset.join (|T@[$ptr]Bool| |T@[$ptr]Bool|) |T@[$ptr]Bool|)
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
(declare-fun $map_t..ptr_to..^^void.^^bool_to_int (T@$map_t..$ptr_to..^^void.^^bool) Int)
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
(declare-fun $extent_is_fresh (T@$state T@$state T@$ptr) Bool)
(declare-fun $field_parent_type (T@$field) T@$ctype)
(declare-fun $ts_path (T@$type_state) T@$field)
(declare-fun $field_offset (T@$field) Int)
(declare-sort T@$map_t..^^i4.^^bool 0)
(declare-fun $eq.$map_t..^^i4.^^bool (T@$map_t..^^i4.^^bool T@$map_t..^^i4.^^bool) Bool)
(declare-sort T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool 0)
(declare-fun $select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool (T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool Int) T@$map_t..^^i4.^^bool)
(declare-fun $int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool (Int) T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool)
(declare-fun |F#lambda#1| () T@$map_t..^^i4.^^bool)
(declare-fun $select.$map_t..^^i4.^^bool (T@$map_t..^^i4.^^bool Int) Bool)
(declare-sort T@$map_t..$ptr_to..^Node.^^u4 0)
(declare-fun $select.$map_t..$ptr_to..^Node.^^u4 (T@$map_t..$ptr_to..^Node.^^u4 Int) Int)
(declare-fun $int_to_map_t..ptr_to..^Node.^^u4 (Int) T@$map_t..$ptr_to..^Node.^^u4)
(declare-sort T@$map_t..^^u4.$ptr_to..^Node 0)
(declare-fun $select.$map_t..^^u4.$ptr_to..^Node (T@$map_t..^^u4.$ptr_to..^Node Int) Int)
(declare-fun $int_to_map_t..^^u4.ptr_to..^Node (Int) T@$map_t..^^u4.$ptr_to..^Node)
(declare-fun sk_hack (Bool) Bool)
(declare-fun $store.$map_t..^^i4.^^bool (T@$map_t..^^i4.^^bool Int Bool) T@$map_t..^^i4.^^bool)
(declare-fun $int_to_map_t..^^i4.^^bool (Int) T@$map_t..^^i4.^^bool)
(declare-fun $zero.$map_t..^^i4.^^bool () T@$map_t..^^i4.^^bool)
(declare-fun $store.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool (T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool Int T@$map_t..^^i4.^^bool) T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool)
(declare-fun $eq.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool (T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool) Bool)
(declare-fun $zero.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool () T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool)
(declare-fun $store.$map_t..$ptr_to..^Node.^^u4 (T@$map_t..$ptr_to..^Node.^^u4 Int Int) T@$map_t..$ptr_to..^Node.^^u4)
(declare-fun $eq.$map_t..$ptr_to..^Node.^^u4 (T@$map_t..$ptr_to..^Node.^^u4 T@$map_t..$ptr_to..^Node.^^u4) Bool)
(declare-fun $zero.$map_t..$ptr_to..^Node.^^u4 () T@$map_t..$ptr_to..^Node.^^u4)
(declare-fun $store.$map_t..^^u4.$ptr_to..^Node (T@$map_t..^^u4.$ptr_to..^Node Int Int) T@$map_t..^^u4.$ptr_to..^Node)
(declare-fun $eq.$map_t..^^u4.$ptr_to..^Node (T@$map_t..^^u4.$ptr_to..^Node T@$map_t..^^u4.$ptr_to..^Node) Bool)
(declare-fun $zero.$map_t..^^u4.$ptr_to..^Node () T@$map_t..^^u4.$ptr_to..^Node)
(declare-fun $map_t..^^i4.^^bool_to_int (T@$map_t..^^i4.^^bool) Int)
(declare-fun $type_code_is (Int T@$ctype) Bool)
(declare-fun $map_t..^^u4.ptr_to..^Node_to_int (T@$map_t..^^u4.$ptr_to..^Node) Int)
(declare-fun $map_t..ptr_to..^Node.^^u4_to_int (T@$map_t..$ptr_to..^Node.^^u4) Int)
(declare-fun $file_name_is (Int T@$token) Bool)
(declare-fun $map_t..ptr_to..^Node.map_t..^^i4.^^bool_to_int (T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool) Int)
(declare-fun %lbl%+31980 () Bool)
(declare-fun $s () T@$state)
(declare-fun |L#n@1| () Int)
(declare-fun %lbl%@36178 () Bool)
(declare-fun %lbl%@36195 () Bool)
(declare-fun |L#n@2| () Int)
(declare-fun $local_value_is (T@$state T@$token T@$token Int T@$ctype) Bool)
(declare-fun $local_value_is_ptr (T@$state T@$token T@$token T@$ptr T@$ctype) Bool)
(declare-fun %lbl%@36273 () Bool)
(declare-fun |L#i@0| () Int)
(declare-fun |L#i@1| () Int)
(declare-fun %lbl%@36304 () Bool)
(declare-fun |P#l| () Int)
(declare-fun %lbl%@36332 () Bool)
(declare-fun %lbl%@36376 () Bool)
(declare-fun %lbl%+35210 () Bool)
(declare-fun %lbl%@36429 () Bool)
(declare-fun $result@0 () Int)
(declare-fun %lbl%@36500 () Bool)
(declare-fun %lbl%+31992 () Bool)
(declare-fun %lbl%@36159 () Bool)
(declare-fun %lbl%+31977 () Bool)
(declare-fun %lbl%+31968 () Bool)
(declare-fun %lbl%@36097 () Bool)
(declare-fun %lbl%@36112 () Bool)
(declare-fun %lbl%+31984 () Bool)
(declare-fun %lbl%+31959 () Bool)
(declare-fun %lbl%+31989 () Bool)
(declare-fun %lbl%+31957 () Bool)
(declare-fun %lbl%+31955 () Bool)
(declare-fun $function_entry (T@$state) Bool)
(declare-fun $frame_level (T@$pure_function) Int)
(declare-fun $current_frame_level () Int)
(declare-fun |#wrTime$1^30.1| () Int)
(declare-fun $in_writes_at (Int T@$ptr) Bool)
(declare-fun %lbl%@35484 () Bool)
(declare-fun |L#i| () Int)
(declare-fun |L#n| () Int)
(declare-fun %lbl%@35554 () Bool)
(declare-fun %lbl%@35572 () Bool)
(declare-fun |L#n@0| () Int)
(declare-fun %lbl%@35669 () Bool)
(declare-fun %lbl%@35697 () Bool)
(declare-fun %lbl%@35741 () Bool)
(declare-fun %lbl%+35216 () Bool)
(assert (and (distinct $kind_composite $kind_primitive $kind_array $kind_thread)(distinct ^^i1 ^^i2 ^^i4 ^^i8 ^^u1 ^^u2 ^^u4 ^^u8 ^^void ^^bool ^^f4 ^^f8 ^^claim ^^root_emb ^^mathint |^$#thread_id_t| |^$#ptrset| |^$#state_t| |^$#struct| $memory_allocator_type |^$#thread_id| ^Node ^List |#distTp6| |#distTp5| |#distTp4| |#distTp3| |#distTp2| |#distTp1|)(distinct |cf#classifier#default| |cf#lambda#1|)(distinct conditional_moment took_then_branch took_else_branch loop_register loop_entered loop_exited)(distinct cev_local cev_global cev_parameter cev_implicit)(distinct Node.$owns Node.next Node.data List.$owns List.head List.seq List.idx List.followers List.length_acc List.length)(distinct |#tok$1^38.44| |#tok$1^38.31| |#tok$1^38.3| |#tok$1^38.21| |#tok$1^38.8| |#loc.n| |#tok$1^35.10| |#loc.i| |#tok$1^36.3| |#loc.l| |#tok$1^30.1| |#loc._this_| |#tok$1^9.31| |#file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cvscomp2010?5Cvscomp2010_p3_v0.c|))
)
(assert (= ($sizeof ^^i1) 1))
(assert (= ($sizeof ^^i2) 2))
(assert (= ($sizeof ^^i4) 4))
(assert (= ($sizeof ^^i8) 8))
(assert (= ($sizeof ^^u1) 1))
(assert (= ($sizeof ^^u2) 2))
(assert (= ($sizeof ^^u4) 4))
(assert (= ($sizeof ^^u8) 8))
(assert (= ($sizeof ^^f4) 4))
(assert (= ($sizeof ^^f8) 8))
(assert (= ($as_in_range_t ^^i1) ^^i1))
(assert (= ($as_in_range_t ^^i2) ^^i2))
(assert (= ($as_in_range_t ^^i4) ^^i4))
(assert (= ($as_in_range_t ^^i8) ^^i8))
(assert (= ($as_in_range_t ^^u1) ^^u1))
(assert (= ($as_in_range_t ^^u2) ^^u2))
(assert (= ($as_in_range_t ^^u4) ^^u4))
(assert (= ($as_in_range_t ^^u8) ^^u8))
(assert (= ($as_in_range_t ^^f4) ^^f4))
(assert (= ($as_in_range_t ^^f8) ^^f8))
(assert (= ($sizeof |^$#thread_id_t|) 1))
(assert (= ($sizeof |^$#ptrset|) 1))
(assert (= ($ptr_level ^^i1) 0))
(assert (= ($ptr_level ^^i2) 0))
(assert (= ($ptr_level ^^i4) 0))
(assert (= ($ptr_level ^^i8) 0))
(assert (= ($ptr_level ^^u1) 0))
(assert (= ($ptr_level ^^u2) 0))
(assert (= ($ptr_level ^^u4) 0))
(assert (= ($ptr_level ^^u8) 0))
(assert (= ($ptr_level ^^f4) 0))
(assert (= ($ptr_level ^^f8) 0))
(assert (= ($ptr_level ^^mathint) 0))
(assert (= ($ptr_level ^^bool) 0))
(assert (= ($ptr_level ^^void) 0))
(assert (= ($ptr_level ^^claim) 0))
(assert (= ($ptr_level ^^root_emb) 0))
(assert (= ($ptr_level |^$#ptrset|) 0))
(assert (= ($ptr_level |^$#thread_id_t|) 0))
(assert (= ($ptr_level |^$#state_t|) 0))
(assert (= ($ptr_level |^$#struct|) 0))
(assert ($is_composite ^^claim))
(assert ($is_composite ^^root_emb))
(assert (forall ((|#n| T@$ctype) ) (! (= ($unptr_to ($ptr_to |#n|)) |#n|)
 :qid |vcc2comp.162:15|
 :skolemid |0|
 :pattern ( ($ptr_to |#n|))
)))
(assert (forall ((|#n@@0| T@$ctype) ) (! (= ($unptr_to ($spec_ptr_to |#n@@0|)) |#n@@0|)
 :qid |vcc2comp.163:15|
 :skolemid |1|
 :pattern ( ($spec_ptr_to |#n@@0|))
)))
(assert (forall ((|#n@@1| T@$ctype) ) (! (= ($sizeof ($ptr_to |#n@@1|)) $arch_ptr_size)
 :qid |vcc2comp.164:15|
 :skolemid |2|
 :pattern ( ($ptr_to |#n@@1|))
)))
(assert (forall ((|#n@@2| T@$ctype) ) (! (= ($sizeof ($ptr_to |#n@@2|)) $arch_ptr_size)
 :qid |vcc2comp.165:15|
 :skolemid |3|
 :pattern ( ($spec_ptr_to |#n@@2|))
)))
(assert (forall ((|#r| T@$ctype) (|#d| T@$ctype) ) (! (= ($map_domain ($map_t |#r| |#d|)) |#d|)
 :qid |vcc2comp.171:15|
 :skolemid |4|
 :pattern ( ($map_t |#r| |#d|))
)))
(assert (forall ((|#r@@0| T@$ctype) (|#d@@0| T@$ctype) ) (! (= ($map_range ($map_t |#r@@0| |#d@@0|)) |#r@@0|)
 :qid |vcc2comp.172:15|
 :skolemid |5|
 :pattern ( ($map_t |#r@@0| |#d@@0|))
)))
(assert (forall ((|#n@@3| T@$ctype) ) (! (= ($ptr_level ($ptr_to |#n@@3|)) (+ ($ptr_level |#n@@3|) 17))
 :qid |vcc2comp.177:15|
 :skolemid |6|
 :pattern ( ($ptr_to |#n@@3|))
)))
(assert (forall ((|#n@@4| T@$ctype) ) (! (= ($ptr_level ($spec_ptr_to |#n@@4|)) (+ ($ptr_level |#n@@4|) 31))
 :qid |vcc2comp.178:15|
 :skolemid |7|
 :pattern ( ($spec_ptr_to |#n@@4|))
)))
(assert (forall ((|#r@@1| T@$ctype) (|#d@@1| T@$ctype) ) (! (= ($ptr_level ($map_t |#r@@1| |#d@@1|)) (+ ($ptr_level |#r@@1|) 23))
 :qid |vcc2comp.179:15|
 :skolemid |8|
 :pattern ( ($map_t |#r@@1| |#d@@1|))
)))
(assert (forall ((t T@$ctype) ) (!  (and (=> ($is_primitive t) (= ($kind_of t) $kind_primitive)) (=> (= ($kind_of t) $kind_primitive) ($is_primitive t)))
 :qid |vcc2comp.187:36|
 :weight 0
 :skolemid |9|
 :pattern ( ($is_primitive t))
)))
(assert (forall ((t@@0 T@$ctype) ) (!  (and (=> ($is_composite t@@0) (= ($kind_of t@@0) $kind_composite)) (=> (= ($kind_of t@@0) $kind_composite) ($is_composite t@@0)))
 :qid |vcc2comp.193:36|
 :weight 0
 :skolemid |10|
 :pattern ( ($is_composite t@@0))
)))
(assert (forall ((t@@1 T@$ctype) ) (!  (and (=> ($is_arraytype t@@1) (= ($kind_of t@@1) $kind_array)) (=> (= ($kind_of t@@1) $kind_array) ($is_arraytype t@@1)))
 :qid |vcc2comp.199:36|
 :weight 0
 :skolemid |11|
 :pattern ( ($is_arraytype t@@1))
)))
(assert (forall ((t@@2 T@$ctype) ) (!  (and (=> ($is_threadtype t@@2) (= ($kind_of t@@2) $kind_thread)) (=> (= ($kind_of t@@2) $kind_thread) ($is_threadtype t@@2)))
 :qid |vcc2comp.205:37|
 :weight 0
 :skolemid |12|
 :pattern ( ($is_threadtype t@@2))
)))
(assert (forall ((t@@3 T@$ctype) ) (!  (=> ($is_composite t@@3) ($is_non_primitive t@@3))
 :qid |vcc2comp.218:15|
 :weight 0
 :skolemid |13|
 :pattern ( ($is_composite t@@3))
)))
(assert (forall ((t@@4 T@$ctype) ) (!  (=> ($is_arraytype t@@4) ($is_non_primitive t@@4))
 :qid |vcc2comp.219:15|
 :weight 0
 :skolemid |14|
 :pattern ( ($is_arraytype t@@4))
)))
(assert (forall ((t@@5 T@$ctype) ) (!  (=> ($is_threadtype t@@5) ($is_non_primitive t@@5))
 :qid |vcc2comp.220:15|
 :weight 0
 :skolemid |15|
 :pattern ( ($is_threadtype t@@5))
)))
(assert (forall ((|#r@@2| T@$ctype) (|#d@@2| T@$ctype) ) (! ($is_primitive ($map_t |#r@@2| |#d@@2|))
 :qid |vcc2comp.228:15|
 :skolemid |16|
 :pattern ( ($map_t |#r@@2| |#d@@2|))
)))
(assert (forall ((|#n@@5| T@$ctype) ) (! ($is_primitive ($ptr_to |#n@@5|))
 :qid |vcc2comp.229:15|
 :skolemid |17|
 :pattern ( ($ptr_to |#n@@5|))
)))
(assert (forall ((|#n@@6| T@$ctype) ) (! ($is_primitive ($spec_ptr_to |#n@@6|))
 :qid |vcc2comp.230:15|
 :skolemid |18|
 :pattern ( ($spec_ptr_to |#n@@6|))
)))
(assert (forall ((|#n@@7| T@$ctype) ) (!  (=> ($is_primitive |#n@@7|) (not ($is_claimable |#n@@7|)))
 :qid |vcc2comp.231:15|
 :skolemid |19|
 :pattern ( ($is_primitive |#n@@7|))
)))
(assert (forall ((|#n@@8| T@$ctype) ) (!  (=> ($is_claimable |#n@@8|) ($is_composite |#n@@8|))
 :qid |vcc2comp.232:15|
 :skolemid |20|
 :pattern ( ($is_claimable |#n@@8|))
)))
(assert ($is_primitive ^^void))
(assert ($is_primitive ^^bool))
(assert ($is_primitive ^^mathint))
(assert ($is_primitive |^$#ptrset|))
(assert ($is_primitive |^$#state_t|))
(assert ($is_threadtype |^$#thread_id_t|))
(assert ($is_primitive ^^i1))
(assert ($is_primitive ^^i2))
(assert ($is_primitive ^^i4))
(assert ($is_primitive ^^i8))
(assert ($is_primitive ^^u1))
(assert ($is_primitive ^^u2))
(assert ($is_primitive ^^u4))
(assert ($is_primitive ^^u8))
(assert ($is_primitive ^^f4))
(assert ($is_primitive ^^f8))
(assert ($in_range_spec_ptr $me_ref))
(assert (not (= $me_ref 0)))
(assert (= $me ($ptr |^$#thread_id_t| $me_ref)))
(assert (forall ((M T@$memory_t) (p T@$ptr) (v Int) ) (! (= ($select.mem ($store.mem M p v) p) v)
 :qid |vcc2comp.262:15|
 :weight 0
 :skolemid |21|
)))
(assert (forall ((M@@0 T@$memory_t) (p@@0 T@$ptr) (q T@$ptr) (v@@0 Int) ) (!  (or (= p@@0 q) (= ($select.mem ($store.mem M@@0 p@@0 v@@0) q) ($select.mem M@@0 q)))
 :qid |vcc2comp.264:15|
 :weight 0
 :skolemid |22|
)))
(assert (forall ((M@@1 T@$memory_t) (p@@1 T@$ptr) (q@@0 T@$ptr) (sz Int) (v@@1 Int) ) (!  (or (and (and (= ($typ p@@1) ($typ q@@0)) (<= ($ref q@@0) ($ref p@@1))) (< ($ref p@@1) ($ref ($idx q@@0 sz ($typ q@@0))))) (= ($select_range.mem ($store.mem M@@1 p@@1 v@@1) q@@0 sz) ($select_range.mem M@@1 q@@0 sz)))
 :qid |vcc2comp.269:15|
 :weight 0
 :skolemid |23|
)))
(assert (forall ((M@@2 T@$typemap_t) (p@@2 T@$ptr) (v@@2 T@$type_state) ) (! (= ($select.tm ($store.tm M@@2 p@@2 v@@2) p@@2) v@@2)
 :qid |vcc2comp.278:15|
 :weight 0
 :skolemid |24|
)))
(assert (forall ((M@@3 T@$typemap_t) (p@@3 T@$ptr) (q@@1 T@$ptr) (v@@3 T@$type_state) ) (!  (or (= p@@3 q@@1) (= ($select.tm ($store.tm M@@3 p@@3 v@@3) q@@1) ($select.tm M@@3 q@@1)))
 :qid |vcc2comp.280:15|
 :weight 0
 :skolemid |25|
)))
(assert (forall ((M@@4 T@$statusmap_t) (p@@4 T@$ptr) (v@@4 T@$status) ) (! (= ($select.sm ($store.sm M@@4 p@@4 v@@4) p@@4) v@@4)
 :qid |vcc2comp.289:15|
 :weight 0
 :skolemid |26|
)))
(assert (forall ((M@@5 T@$statusmap_t) (p@@5 T@$ptr) (q@@2 T@$ptr) (v@@5 T@$status) ) (!  (or (= p@@5 q@@2) (= ($select.sm ($store.sm M@@5 p@@5 v@@5) q@@2) ($select.sm M@@5 q@@2)))
 :qid |vcc2comp.291:15|
 :weight 0
 :skolemid |27|
)))
(assert (forall ((S1 T@$state) (S2 T@$state) (p@@6 T@$ptr) (sz@@0 Int) ) (!  (=> (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i sz@@0)) (= ($select.mem ($memory S1) ($idx p@@6 i ($typ p@@6))) ($select.mem ($memory S2) ($idx p@@6 i ($typ p@@6)))))
 :qid |vcc2comp.313:11|
 :skolemid |28|
)) (= ($select_range.mem ($memory S1) p@@6 sz@@0) ($select_range.mem ($memory S2) p@@6 sz@@0)))
 :qid |vcc2comp.311:15|
 :skolemid |29|
 :pattern ( ($call_transition S1 S2) ($select_range.mem ($memory S2) p@@6 sz@@0))
)))
(assert (forall ((p@@7 T@$ptr) (q@@3 T@$ptr) (r T@$ptr) ) (!  (=> (and ($extent_hint p@@7 q@@3) ($extent_hint q@@3 r)) ($extent_hint p@@7 r))
 :qid |vcc2comp.320:15|
 :skolemid |30|
 :pattern ( ($extent_hint p@@7 q@@3) ($extent_hint q@@3 r))
)))
(assert (forall ((p@@8 T@$ptr) ) (! ($extent_hint p@@8 p@@8)
 :qid |vcc2comp.322:15|
 :skolemid |31|
 :pattern ( ($typ p@@8))
)))
(assert (forall ((t@@6 T@$ctype) (s T@$ctype) (q@min Int) (q@max Int) ) (!  (and (=> ($is_nested_range t@@6 s q@min q@max) (and (and ($is_nested t@@6 s) (= ($nesting_min t@@6 s) q@min)) (= ($nesting_max t@@6 s) q@max))) (=> (and (and ($is_nested t@@6 s) (= ($nesting_min t@@6 s) q@min)) (= ($nesting_max t@@6 s) q@max)) ($is_nested_range t@@6 s q@min q@max)))
 :qid |vcc2comp.329:27|
 :skolemid |32|
 :pattern ( ($is_nested_range t@@6 s q@min q@max))
)))
(assert (forall ((|#t| T@$ctype) (|#b| Int) ) (! (= ($typ ($ptr |#t| |#b|)) |#t|)
 :qid |vcc2comp.366:15|
 :weight 0
 :skolemid |33|
)))
(assert (forall ((|#t@@0| T@$ctype) (|#b@@0| Int) ) (! (= ($ref ($ptr |#t@@0| |#b@@0|)) |#b@@0|)
 :qid |vcc2comp.367:15|
 :weight 0
 :skolemid |34|
)))
(assert (forall ((p@@9 T@$ptr) (f T@$field) ) (!  (and (= ($ghost_emb ($ghost_ref p@@9 f)) p@@9) (= ($ghost_path ($ghost_ref p@@9 f)) f))
 :qid |vcc2comp.376:15|
 :weight 0
 :skolemid |35|
 :pattern ( ($ghost_ref p@@9 f))
)))
(assert (forall ((p@@10 T@$ptr) (f@@0 T@$field) ) (! ($in_range_spec_ptr ($ghost_ref p@@10 f@@0))
 :qid |vcc2comp.379:15|
 :skolemid |36|
 :pattern ( ($ghost_ref p@@10 f@@0))
)))
(assert (forall ((fld T@$field) (off Int) ) (!  (and (and (not ($is_base_field ($array_path fld off))) (= ($array_path_1 ($array_path fld off)) fld)) (= ($array_path_2 ($array_path fld off)) off))
 :qid |vcc2comp.394:15|
 :weight 0
 :skolemid |37|
 :pattern ( ($array_path fld off))
)))
(assert (= $null ($ptr ^^void 0)))
(assert (forall ((|#p| T@$ptr) (|#t@@1| T@$ctype) ) (!  (and (=> ($is |#p| |#t@@1|) (= ($typ |#p|) |#t@@1|)) (=> (= ($typ |#p|) |#t@@1|) ($is |#p| |#t@@1|)))
 :qid |vcc2comp.407:15|
 :weight 0
 :skolemid |38|
)))
(assert (forall ((|#p@@0| T@$ptr) (|#t@@2| T@$ctype) ) (!  (=> ($is |#p@@0| |#t@@2|) (= |#p@@0| ($ptr |#t@@2| ($ref |#p@@0|))))
 :qid |vcc2comp.409:15|
 :skolemid |39|
 :pattern ( ($is |#p@@0| |#t@@2|))
)))
(assert (forall ((ts T@$type_state) ) (!  (and (not (= ($kind_of ($typ ($ts_emb ts))) $kind_primitive)) ($is_non_primitive ($typ ($ts_emb ts))))
 :qid |vcc2comp.447:15|
 :skolemid |40|
 :pattern ( ($ts_emb ts))
)))
(assert (forall ((p@@11 T@$ptr) (f@@1 T@$field) ) (! (= ($simple_emb ($dot p@@11 f@@1)) p@@11)
 :qid |vcc2comp.451:15|
 :skolemid |41|
 :pattern ( ($simple_emb ($dot p@@11 f@@1)))
)))
(assert (forall ((S T@$state) (p@@12 T@$ptr) ) (!  (=> ($typed S p@@12) ($typed S ($ts_emb ($select.tm ($typemap S) p@@12))))
 :qid |vcc2comp.454:15|
 :skolemid |42|
 :pattern ( ($typed S p@@12) ($select.tm ($typemap S) ($ts_emb ($select.tm ($typemap S) p@@12))))
)))
(assert (forall ((S@@0 T@$state) (p@@13 T@$ptr) ) (!  (=> (and ($good_state S@@0) ($ts_is_volatile ($select.tm ($typemap S@@0) p@@13))) (= ($kind_of ($typ p@@13)) $kind_primitive))
 :qid |vcc2comp.464:15|
 :skolemid |43|
 :pattern ( ($ts_is_volatile ($select.tm ($typemap S@@0) p@@13)))
)))
(assert (forall ((S@@1 T@$state) (p@@14 T@$ptr) ) (!  (or (<= ($timestamp S@@1 p@@14) ($current_timestamp S@@1)) (not ($ts_typed ($select.tm ($typemap S@@1) p@@14))))
 :qid |vcc2comp.480:15|
 :weight 0
 :skolemid |44|
 :pattern ( ($select.sm ($statusmap S@@1) p@@14))
)))
(assert ($good_state ($vs_state $struct_zero)))
(assert (forall ((s@@0 T@$struct) ) (! ($good_state ($vs_state s@@0))
 :qid |vcc2comp.510:15|
 :skolemid |45|
)))
(assert (forall ((S@@2 T@$state) (p@@15 T@$ptr) ) (!  (=> ($good_state S@@2) (and (= ($vs_base_ref ($vs_ctor S@@2 p@@15)) ($ref p@@15)) (= ($vs_state ($vs_ctor S@@2 p@@15)) S@@2)))
 :qid |vcc2comp.513:15|
 :skolemid |46|
 :pattern ( ($vs_ctor S@@2 p@@15))
)))
(assert (forall ((f@@2 T@$field) (t@@7 T@$ctype) ) (! (= ($select.mem ($memory ($vs_state $struct_zero)) ($dot ($ptr t@@7 ($vs_base_ref $struct_zero)) f@@2)) 0)
 :qid |vcc2comp.517:15|
 :skolemid |47|
 :pattern ( ($select.mem ($memory ($vs_state $struct_zero)) ($dot ($ptr t@@7 ($vs_base_ref $struct_zero)) f@@2)))
)))
(assert (forall ((r@@0 T@$record) (f@@3 T@$field) (val_bitsize Int) (from Int) (to Int) (repl Int) ) (! (= ($rec_update_bv r@@0 f@@3 val_bitsize from to repl) ($rec_update r@@0 f@@3 ($bv_update ($rec_fetch r@@0 f@@3) val_bitsize from to repl)))
 :qid |vcc2comp.529:25|
 :skolemid |48|
 :pattern ( ($rec_update_bv r@@0 f@@3 val_bitsize from to repl))
)))
(assert (forall ((f@@4 T@$field) ) (! (= ($rec_fetch $rec_zero f@@4) 0)
 :qid |vcc2comp.532:15|
 :skolemid |49|
)))
(assert (forall ((r@@1 T@$record) (f@@5 T@$field) (v@@6 Int) ) (! (= ($rec_fetch ($rec_update r@@1 f@@5 v@@6) f@@5) ($unchecked ($record_field_int_kind f@@5) v@@6))
 :qid |vcc2comp.534:15|
 :skolemid |50|
 :pattern ( ($rec_fetch ($rec_update r@@1 f@@5 v@@6) f@@5))
)))
(assert (forall ((r@@2 T@$record) (f@@6 T@$field) ) (! ($in_range_t ($record_field_int_kind f@@6) ($rec_fetch r@@2 f@@6))
 :qid |vcc2comp.537:15|
 :skolemid |51|
 :pattern ( ($rec_fetch r@@2 f@@6))
)))
(assert (forall ((r@@3 T@$record) (f1 T@$field) (f2 T@$field) (v@@7 Int) ) (!  (or (= ($rec_fetch ($rec_update r@@3 f1 v@@7) f2) ($rec_fetch r@@3 f2)) (= f1 f2))
 :qid |vcc2comp.540:15|
 :skolemid |52|
 :pattern ( ($rec_fetch ($rec_update r@@3 f1 v@@7) f2))
)))
(assert (forall ((t@@8 T@$ctype) ) (!  (=> ($is_record_type t@@8) ($is_primitive t@@8))
 :qid |vcc2comp.546:15|
 :skolemid |53|
 :pattern ( ($is_record_type t@@8))
)))
(assert (forall ((p@@16 T@$ctype) (f@@7 T@$field) (ft T@$ctype) ) (!  (=> (and ($is_record_field p@@16 f@@7 ft) ($is_record_type ft)) (= ($as_record_record_field f@@7) f@@7))
 :qid |vcc2comp.549:15|
 :skolemid |54|
 :pattern ( ($is_record_field p@@16 f@@7 ft) ($is_record_type ft))
)))
(assert (forall ((r1 T@$record) (r2 T@$record) ) (!  (and (=> ($rec_eq r1 r2) (= r1 r2)) (=> (= r1 r2) ($rec_eq r1 r2)))
 :qid |vcc2comp.554:18|
 :skolemid |55|
 :pattern ( ($rec_eq r1 r2))
)))
(assert (forall ((x Int) (y Int) ) (!  (and (=> ($rec_base_eq x y) (= x y)) (=> (= x y) ($rec_base_eq x y)))
 :qid |vcc2comp.556:23|
 :skolemid |56|
 :pattern ( ($rec_base_eq x y))
)))
(assert (forall ((r@@4 T@$record) ) (! (= ($int_to_record ($record_to_int r@@4)) r@@4)
 :qid |vcc2comp.562:15|
 :skolemid |57|
)))
(assert (forall ((r1@@0 T@$record) (r2@@0 T@$record) ) (!  (=> (forall ((f@@8 T@$field) ) (! ($rec_base_eq ($rec_fetch r1@@0 f@@8) ($rec_fetch r2@@0 f@@8))
 :qid |vcc2comp.566:11|
 :skolemid |58|
)) ($rec_eq r1@@0 r2@@0))
 :qid |vcc2comp.564:15|
 :skolemid |59|
 :pattern ( ($rec_eq r1@@0 r2@@0))
)))
(assert (forall ((r1@@1 T@$record) (r2@@1 T@$record) (f@@9 T@$field) ) (!  (=> ($rec_eq ($int_to_record ($rec_fetch r1@@1 f@@9)) ($int_to_record ($rec_fetch r2@@1 f@@9))) ($rec_base_eq ($rec_fetch r1@@1 f@@9) ($rec_fetch r2@@1 f@@9)))
 :qid |vcc2comp.568:15|
 :skolemid |60|
 :pattern ( ($rec_base_eq ($rec_fetch r1@@1 f@@9) ($rec_fetch r2@@1 ($as_record_record_field f@@9))))
)))
(assert ($has_volatile_owns_set ^^claim))
(assert (forall ((|#p@@1| T@$ptr) (t@@9 T@$ctype) ) (! (= ($dot |#p@@1| ($owns_set_field t@@9)) ($ptr |^$#ptrset| ($ghost_ref |#p@@1| ($owns_set_field t@@9))))
 :qid |vcc2comp.589:15|
 :skolemid |61|
 :pattern ( ($dot |#p@@1| ($owns_set_field t@@9)))
)))
(assert (forall ((S@@3 T@$state) (p@@17 T@$ptr) ) (!  (=> ($is_primitive ($typ p@@17)) (= ($owner S@@3 p@@17) ($owner S@@3 ($ts_emb ($select.tm ($typemap S@@3) p@@17)))))
 :qid |vcc2comp.601:15|
 :weight 0
 :skolemid |62|
 :pattern ( ($is_primitive ($typ p@@17)) ($owner S@@3 p@@17))
)))
(assert (forall ((S@@4 T@$state) (p@@18 T@$ptr) ) (!  (=> ($is_non_primitive ($typ p@@18)) (= ($owner S@@4 p@@18) ($st_owner ($select.sm ($statusmap S@@4) p@@18))))
 :qid |vcc2comp.603:15|
 :weight 0
 :skolemid |63|
 :pattern ( ($is_non_primitive ($typ p@@18)) ($owner S@@4 p@@18))
)))
(assert (forall ((S@@5 T@$state) (p@@19 T@$ptr) ) (!  (=> ($is_primitive ($typ p@@19)) (and (=> ($closed S@@5 p@@19) ($st_closed ($select.sm ($statusmap S@@5) ($ts_emb ($select.tm ($typemap S@@5) p@@19))))) (=> ($st_closed ($select.sm ($statusmap S@@5) ($ts_emb ($select.tm ($typemap S@@5) p@@19)))) ($closed S@@5 p@@19))))
 :qid |vcc2comp.606:15|
 :weight 0
 :skolemid |64|
 :pattern ( ($is_primitive ($typ p@@19)) ($closed S@@5 p@@19))
)))
(assert (forall ((S@@6 T@$state) (p@@20 T@$ptr) ) (!  (=> ($is_non_primitive ($typ p@@20)) (and (=> ($closed S@@6 p@@20) ($st_closed ($select.sm ($statusmap S@@6) p@@20))) (=> ($st_closed ($select.sm ($statusmap S@@6) p@@20)) ($closed S@@6 p@@20))))
 :qid |vcc2comp.608:15|
 :weight 0
 :skolemid |65|
 :pattern ( ($is_non_primitive ($typ p@@20)) ($closed S@@6 p@@20))
)))
(assert (forall ((S@@7 T@$state) (p@@21 T@$ptr) ) (!  (=> ($is_primitive ($typ p@@21)) (= ($timestamp S@@7 p@@21) ($st_timestamp ($select.sm ($statusmap S@@7) ($ts_emb ($select.tm ($typemap S@@7) p@@21))))))
 :qid |vcc2comp.611:15|
 :weight 0
 :skolemid |66|
 :pattern ( ($is_primitive ($typ p@@21)) ($timestamp S@@7 p@@21))
)))
(assert (forall ((S@@8 T@$state) (p@@22 T@$ptr) ) (!  (=> ($is_non_primitive ($typ p@@22)) (= ($timestamp S@@8 p@@22) ($st_timestamp ($select.sm ($statusmap S@@8) p@@22))))
 :qid |vcc2comp.613:15|
 :weight 0
 :skolemid |67|
 :pattern ( ($is_non_primitive ($typ p@@22)) ($timestamp S@@8 p@@22))
)))
(assert $position_marker)
(assert (forall ((s@@1 T@$status) ) (!  (and (not (= ($kind_of ($typ ($st_owner s@@1))) $kind_primitive)) ($is_non_primitive ($typ ($st_owner s@@1))))
 :qid |vcc2comp.619:15|
 :skolemid |68|
 :pattern ( ($st_owner s@@1))
)))
(assert (forall ((S@@9 T@$state) (|#p@@2| T@$ptr) ) (! (= ($owns S@@9 |#p@@2|) ($int_to_ptrset ($select.mem ($memory S@@9) ($dot |#p@@2| ($owns_set_field ($typ |#p@@2|))))))
 :qid |vcc2comp.627:28|
 :weight 0
 :skolemid |69|
 :pattern ( ($owns S@@9 |#p@@2|))
)))
(assert (forall ((S@@10 T@$state) (p@@23 T@$ptr) ) (!  (and (=> ($mutable S@@10 p@@23) (and (and ($typed S@@10 p@@23) (= ($owner S@@10 p@@23) $me)) (not ($closed S@@10 p@@23)))) (=> (and (and ($typed S@@10 p@@23) (= ($owner S@@10 p@@23) $me)) (not ($closed S@@10 p@@23))) ($mutable S@@10 p@@23)))
 :qid |vcc2comp.642:31|
 :weight 0
 :skolemid |70|
 :pattern ( ($mutable S@@10 p@@23))
)))
(assert (forall ((S@@11 T@$state) (|#p@@3| T@$ptr) ) (!  (=> ($good_state S@@11) (and (=> ($typed S@@11 |#p@@3|) ($ts_typed ($select.tm ($typemap S@@11) |#p@@3|))) (=> ($ts_typed ($select.tm ($typemap S@@11) |#p@@3|)) ($typed S@@11 |#p@@3|))))
 :qid |vcc2comp.653:11|
 :weight 0
 :skolemid |71|
 :pattern ( ($typed S@@11 |#p@@3|))
)))
(assert (forall ((S@@12 T@$state) (|#p@@4| T@$ptr) ) (!  (=> (and ($good_state S@@12) ($typed S@@12 |#p@@4|)) (> ($ref |#p@@4|) 0))
 :qid |vcc2comp.655:11|
 :skolemid |72|
 :pattern ( ($typed S@@12 |#p@@4|))
)))
(assert (forall ((|#r@@3| Int) ) (!  (and (=> ($in_range_phys_ptr |#r@@3|) (and (<= 0 |#r@@3|) (<= |#r@@3| $arch_spec_ptr_start))) (=> (and (<= 0 |#r@@3|) (<= |#r@@3| $arch_spec_ptr_start)) ($in_range_phys_ptr |#r@@3|)))
 :qid |vcc2comp.660:29|
 :skolemid |73|
 :pattern ( ($in_range_phys_ptr |#r@@3|))
)))
(assert (forall ((|#r@@4| Int) ) (!  (and (=> ($in_range_spec_ptr |#r@@4|) (or (= 0 |#r@@4|) (> |#r@@4| $arch_spec_ptr_start))) (=> (or (= 0 |#r@@4|) (> |#r@@4| $arch_spec_ptr_start)) ($in_range_spec_ptr |#r@@4|)))
 :qid |vcc2comp.662:29|
 :skolemid |74|
 :pattern ( ($in_range_spec_ptr |#r@@4|))
)))
(assert (forall ((S@@13 T@$state) (|#r@@5| Int) (|#t@@3| T@$ctype) ) (!  (=> (and ($typed S@@13 ($ptr |#t@@3| |#r@@5|)) ($in_range_phys_ptr |#r@@5|)) ($in_range_phys_ptr (- (+ |#r@@5| ($sizeof |#t@@3|)) 1)))
 :qid |vcc2comp.669:15|
 :skolemid |75|
 :pattern ( ($typed S@@13 ($ptr |#t@@3| |#r@@5|)))
)))
(assert (forall ((S1@@0 T@$state) (S2@@0 T@$state) (p@@24 T@$ptr) ) (!  (=> ($call_transition S1@@0 S2@@0) ($instantiate_st ($select.sm ($statusmap S1@@0) p@@24)))
 :qid |vcc2comp.736:15|
 :skolemid |76|
 :pattern ( ($select.sm ($statusmap S2@@0) p@@24) ($call_transition S1@@0 S2@@0))
)))
(assert (forall ((S1@@1 T@$state) (S2@@1 T@$state) (p@@25 T@$ptr) ) (!  (=> ($call_transition S1@@1 S2@@1) ($instantiate_int ($select.mem ($memory S1@@1) p@@25)))
 :qid |vcc2comp.740:15|
 :skolemid |77|
 :pattern ( ($select.mem ($memory S2@@1) p@@25) ($call_transition S1@@1 S2@@1))
)))
(assert (forall ((S@@14 T@$state) (p@@26 T@$ptr) ) (!  (and (=> ($is_domain_root S@@14 p@@26) true) (=> true ($is_domain_root S@@14 p@@26)))
 :qid |vcc2comp.766:26|
 :skolemid |78|
 :pattern ( ($is_domain_root S@@14 p@@26))
)))
(assert (forall ((S@@15 T@$state) (p@@27 T@$ptr) ) (!  (and (=> ($in_wrapped_domain S@@15 p@@27) (exists ((q@@4 T@$ptr) ) (!  (and (and ($set_in p@@27 ($ver_domain ($read_version S@@15 q@@4))) (and (and (and (and ($closed S@@15 q@@4) (= ($owner S@@15 q@@4) $me)) (and ($is q@@4 ($typ q@@4)) ($typed S@@15 q@@4))) (not (= ($kind_of ($typ q@@4)) $kind_primitive))) ($is_non_primitive ($typ q@@4)))) ($is_domain_root S@@15 q@@4))
 :qid |vcc2comp.770:13|
 :skolemid |79|
 :pattern ( ($set_in2 p@@27 ($ver_domain ($read_version S@@15 q@@4))))
))) (=> (exists ((q@@5 T@$ptr) ) (!  (and (and ($set_in p@@27 ($ver_domain ($read_version S@@15 q@@5))) (and (and (and (and ($closed S@@15 q@@5) (= ($owner S@@15 q@@5) $me)) (and ($is q@@5 ($typ q@@5)) ($typed S@@15 q@@5))) (not (= ($kind_of ($typ q@@5)) $kind_primitive))) ($is_non_primitive ($typ q@@5)))) ($is_domain_root S@@15 q@@5))
 :qid |vcc2comp.770:13|
 :skolemid |79|
 :pattern ( ($set_in2 p@@27 ($ver_domain ($read_version S@@15 q@@5))))
)) ($in_wrapped_domain S@@15 p@@27)))
 :qid |vcc2comp.769:29|
 :skolemid |80|
 :pattern ( ($in_wrapped_domain S@@15 p@@27))
)))
(assert (forall ((S@@16 T@$state) (p@@28 T@$ptr) ) (!  (and (=> ($thread_local S@@16 p@@28) (and ($typed S@@16 p@@28) (or (and (and (= ($kind_of ($typ p@@28)) $kind_primitive) (or (not ($ts_is_volatile ($select.tm ($typemap S@@16) p@@28))) (not ($closed S@@16 ($ts_emb ($select.tm ($typemap S@@16) p@@28)))))) (and (not (= ($kind_of ($typ ($ts_emb ($select.tm ($typemap S@@16) p@@28)))) $kind_primitive)) (or (= ($owner S@@16 ($ts_emb ($select.tm ($typemap S@@16) p@@28))) $me) ($in_wrapped_domain S@@16 ($ts_emb ($select.tm ($typemap S@@16) p@@28)))))) (and (not (= ($kind_of ($typ p@@28)) $kind_primitive)) (or (= ($owner S@@16 p@@28) $me) ($in_wrapped_domain S@@16 p@@28)))))) (=> (and ($typed S@@16 p@@28) (or (and (and (= ($kind_of ($typ p@@28)) $kind_primitive) (or (not ($ts_is_volatile ($select.tm ($typemap S@@16) p@@28))) (not ($closed S@@16 ($ts_emb ($select.tm ($typemap S@@16) p@@28)))))) (and (not (= ($kind_of ($typ ($ts_emb ($select.tm ($typemap S@@16) p@@28)))) $kind_primitive)) (or (= ($owner S@@16 ($ts_emb ($select.tm ($typemap S@@16) p@@28))) $me) ($in_wrapped_domain S@@16 ($ts_emb ($select.tm ($typemap S@@16) p@@28)))))) (and (not (= ($kind_of ($typ p@@28)) $kind_primitive)) (or (= ($owner S@@16 p@@28) $me) ($in_wrapped_domain S@@16 p@@28))))) ($thread_local S@@16 p@@28)))
 :qid |vcc2comp.783:24|
 :skolemid |81|
 :pattern ( ($thread_local S@@16 p@@28))
)))
(assert (forall ((|#s1| T@$state) (|#p@@5| T@$ptr) (typ T@$ctype) ) (!  (=> ($imply_inv |#s1| |#p@@5| typ) ($inv2 |#s1| |#s1| |#p@@5| typ))
 :qid |vcc2comp.821:15|
 :skolemid |82|
 :pattern ( ($inv2 |#s1| |#s1| |#p@@5| typ))
)))
(assert (forall ((|#s1@@0| T@$state) (|#s2| T@$state) (|#p@@6| T@$ptr) (|#t@@4| T@$ctype) ) (!  (and (=> ($sequential |#s1@@0| |#s2| |#p@@6| |#t@@4|) (=> (and ($closed |#s1@@0| |#p@@6|) ($closed |#s2| |#p@@6|)) ($spans_the_same |#s1@@0| |#s2| |#p@@6| |#t@@4|))) (=> (=> (and ($closed |#s1@@0| |#p@@6|) ($closed |#s2| |#p@@6|)) ($spans_the_same |#s1@@0| |#s2| |#p@@6| |#t@@4|)) ($sequential |#s1@@0| |#s2| |#p@@6| |#t@@4|)))
 :qid |vcc2comp.833:34|
 :weight 0
 :skolemid |83|
 :pattern ( ($sequential |#s1@@0| |#s2| |#p@@6| |#t@@4|))
)))
(assert (forall ((|#s1@@1| T@$state) (|#s2@@0| T@$state) (|#dependant| T@$ptr) (|#this| T@$ptr) ) (!  (and (=> ($depends |#s1@@1| |#s2@@0| |#dependant| |#this|) (or (or ($spans_the_same |#s1@@1| |#s2@@0| |#this| ($typ |#this|)) (or (and (not ($closed |#s1@@1| |#dependant|)) (not ($closed |#s2@@0| |#dependant|))) (and ($inv2 |#s1@@1| |#s2@@0| |#dependant| ($typ |#dependant|)) ($nonvolatile_spans_the_same |#s1@@1| |#s2@@0| |#dependant| ($typ |#dependant|))))) ($is_threadtype ($typ |#dependant|)))) (=> (or (or ($spans_the_same |#s1@@1| |#s2@@0| |#this| ($typ |#this|)) (or (and (not ($closed |#s1@@1| |#dependant|)) (not ($closed |#s2@@0| |#dependant|))) (and ($inv2 |#s1@@1| |#s2@@0| |#dependant| ($typ |#dependant|)) ($nonvolatile_spans_the_same |#s1@@1| |#s2@@0| |#dependant| ($typ |#dependant|))))) ($is_threadtype ($typ |#dependant|))) ($depends |#s1@@1| |#s2@@0| |#dependant| |#this|)))
 :qid |vcc2comp.836:31|
 :weight 0
 :skolemid |84|
 :pattern ( ($depends |#s1@@1| |#s2@@0| |#dependant| |#this|))
)))
(assert (forall ((|#s1@@2| T@$state) (|#s2@@1| T@$state) (|#p@@7| T@$ptr) (|#t@@5| T@$ctype) ) (!  (and (=> ($spans_the_same |#s1@@2| |#s2@@1| |#p@@7| |#t@@5|) (and (and (and (= ($read_version |#s1@@2| |#p@@7|) ($read_version |#s2@@1| |#p@@7|)) (= ($owns |#s1@@2| |#p@@7|) ($owns |#s2@@1| |#p@@7|))) (= ($select.tm ($typemap |#s1@@2|) |#p@@7|) ($select.tm ($typemap |#s2@@1|) |#p@@7|))) ($state_spans_the_same |#s1@@2| |#s2@@1| |#p@@7| |#t@@5|))) (=> (and (and (and (= ($read_version |#s1@@2| |#p@@7|) ($read_version |#s2@@1| |#p@@7|)) (= ($owns |#s1@@2| |#p@@7|) ($owns |#s2@@1| |#p@@7|))) (= ($select.tm ($typemap |#s1@@2|) |#p@@7|) ($select.tm ($typemap |#s2@@1|) |#p@@7|))) ($state_spans_the_same |#s1@@2| |#s2@@1| |#p@@7| |#t@@5|)) ($spans_the_same |#s1@@2| |#s2@@1| |#p@@7| |#t@@5|)))
 :qid |vcc2comp.841:38|
 :weight 0
 :skolemid |85|
 :pattern ( ($spans_the_same |#s1@@2| |#s2@@1| |#p@@7| |#t@@5|))
)))
(assert (forall ((|#s1@@3| T@$state) (|#s2@@2| T@$state) (|#p@@8| T@$ptr) (|#t@@6| T@$ctype) ) (!  (and (=> ($nonvolatile_spans_the_same |#s1@@3| |#s2@@2| |#p@@8| |#t@@6|) (and (and (= ($read_version |#s1@@3| |#p@@8|) ($read_version |#s2@@2| |#p@@8|)) (= ($select.tm ($typemap |#s1@@3|) |#p@@8|) ($select.tm ($typemap |#s2@@2|) |#p@@8|))) ($state_nonvolatile_spans_the_same |#s1@@3| |#s2@@2| |#p@@8| |#t@@6|))) (=> (and (and (= ($read_version |#s1@@3| |#p@@8|) ($read_version |#s2@@2| |#p@@8|)) (= ($select.tm ($typemap |#s1@@3|) |#p@@8|) ($select.tm ($typemap |#s2@@2|) |#p@@8|))) ($state_nonvolatile_spans_the_same |#s1@@3| |#s2@@2| |#p@@8| |#t@@6|)) ($nonvolatile_spans_the_same |#s1@@3| |#s2@@2| |#p@@8| |#t@@6|)))
 :qid |vcc2comp.850:50|
 :weight 0
 :skolemid |86|
 :pattern ( ($nonvolatile_spans_the_same |#s1@@3| |#s2@@2| |#p@@8| |#t@@6|))
)))
(assert (forall ((T T@$ctype) ) (!  (=> ($is_primitive T) (and (forall ((r@@5 Int) (p@@29 T@$ptr) ) (!  (and (=> ($set_in p@@29 ($full_extent ($ptr T r@@5))) (= p@@29 ($ptr T r@@5))) (=> (= p@@29 ($ptr T r@@5)) ($set_in p@@29 ($full_extent ($ptr T r@@5)))))
 :qid |vcc2comp.871:13|
 :skolemid |87|
 :pattern ( ($set_in p@@29 ($full_extent ($ptr T r@@5))))
)) (forall ((r@@6 Int) (S@@17 T@$state) ) (!  (and (=> ($extent_mutable S@@17 ($ptr T r@@6)) ($mutable S@@17 ($ptr T r@@6))) (=> ($mutable S@@17 ($ptr T r@@6)) ($extent_mutable S@@17 ($ptr T r@@6))))
 :qid |vcc2comp.873:13|
 :skolemid |88|
 :pattern ( ($extent_mutable S@@17 ($ptr T r@@6)))
))))
 :qid |vcc2comp.869:15|
 :skolemid |89|
 :pattern ( ($is_primitive T))
)))
(assert (forall ((T@@0 T@$ctype) ) (!  (=> ($is_primitive T@@0) (forall ((S@@18 T@$state) (r@@7 Int) (p@@30 T@$ptr) ) (!  (and (=> ($set_in p@@30 ($extent S@@18 ($ptr T@@0 r@@7))) (= p@@30 ($ptr T@@0 r@@7))) (=> (= p@@30 ($ptr T@@0 r@@7)) ($set_in p@@30 ($extent S@@18 ($ptr T@@0 r@@7)))))
 :qid |vcc2comp.878:13|
 :skolemid |90|
 :pattern ( ($set_in p@@30 ($extent S@@18 ($ptr T@@0 r@@7))))
)))
 :qid |vcc2comp.876:15|
 :skolemid |91|
 :pattern ( ($is_primitive T@@0))
)))
(assert (forall ((S@@19 T@$state) (T@@1 T@$ctype) (sz@@1 Int) (r@@8 Int) ) (!  (and (=> ($extent_mutable S@@19 ($ptr ($array T@@1 sz@@1) r@@8)) (and ($mutable S@@19 ($ptr ($array T@@1 sz@@1) r@@8)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 sz@@1)) ($extent_mutable S@@19 ($idx ($ptr T@@1 r@@8) i@@0 T@@1)))
 :qid |vcc2comp.884:13|
 :skolemid |92|
 :pattern ( ($extent_mutable S@@19 ($idx ($ptr T@@1 r@@8) i@@0 T@@1)))
)))) (=> (and ($mutable S@@19 ($ptr ($array T@@1 sz@@1) r@@8)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 sz@@1)) ($extent_mutable S@@19 ($idx ($ptr T@@1 r@@8) i@@1 T@@1)))
 :qid |vcc2comp.884:13|
 :skolemid |92|
 :pattern ( ($extent_mutable S@@19 ($idx ($ptr T@@1 r@@8) i@@1 T@@1)))
))) ($extent_mutable S@@19 ($ptr ($array T@@1 sz@@1) r@@8))))
 :qid |vcc2comp.881:15|
 :skolemid |93|
 :pattern ( ($extent_mutable S@@19 ($ptr ($array T@@1 sz@@1) r@@8)))
)))
(assert (forall ((T@@2 T@$ctype) ) (!  (=> ($is_primitive T@@2) (forall ((S@@20 T@$state) (r@@9 Int) ) (!  (and (=> ($extent_zero S@@20 ($ptr T@@2 r@@9)) (= ($select.mem ($memory S@@20) ($ptr T@@2 r@@9)) 0)) (=> (= ($select.mem ($memory S@@20) ($ptr T@@2 r@@9)) 0) ($extent_zero S@@20 ($ptr T@@2 r@@9))))
 :qid |vcc2comp.890:15|
 :skolemid |94|
 :pattern ( ($extent_zero S@@20 ($ptr T@@2 r@@9)))
)))
 :qid |vcc2comp.888:15|
 :skolemid |95|
 :pattern ( ($is_primitive T@@2))
)))
(assert (forall ((S@@21 T@$state) (T@@3 T@$ctype) (sz@@2 Int) (r@@10 Int) ) (!  (and (=> ($extent_zero S@@21 ($ptr ($array T@@3 sz@@2) r@@10)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 sz@@2)) ($extent_zero S@@21 ($idx ($ptr T@@3 r@@10) i@@2 T@@3)))
 :qid |vcc2comp.895:13|
 :skolemid |96|
 :pattern ( ($idx ($ptr T@@3 r@@10) i@@2 T@@3))
))) (=> (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 sz@@2)) ($extent_zero S@@21 ($idx ($ptr T@@3 r@@10) i@@3 T@@3)))
 :qid |vcc2comp.895:13|
 :skolemid |96|
 :pattern ( ($idx ($ptr T@@3 r@@10) i@@3 T@@3))
)) ($extent_zero S@@21 ($ptr ($array T@@3 sz@@2) r@@10))))
 :qid |vcc2comp.893:15|
 :skolemid |97|
 :pattern ( ($extent_zero S@@21 ($ptr ($array T@@3 sz@@2) r@@10)))
)))
(assert (forall ((S@@22 T@$state) ) (!  (=> ($full_stop S@@22) (and ($good_state S@@22) ($invok_state S@@22)))
 :qid |vcc2comp.912:15|
 :skolemid |99|
 :pattern ( ($full_stop S@@22))
)))
(assert (forall ((S@@23 T@$state) ) (!  (=> ($invok_state S@@23) ($good_state S@@23))
 :qid |vcc2comp.915:15|
 :skolemid |100|
 :pattern ( ($invok_state S@@23))
)))
(assert (forall ((id T@$token) (S@@24 T@$state) ) (!  (=> ($good_state_ext id S@@24) ($good_state S@@24))
 :qid |vcc2comp.934:15|
 :skolemid |102|
 :pattern ( ($good_state_ext id S@@24))
)))
(assert (forall ((S@@25 T@$state) (r@@11 Int) (t@@10 T@$ctype) ) (! (= ($ptr t@@10 ($select.mem ($memory S@@25) ($ptr ($ptr_to t@@10) r@@11))) ($read_ptr_m S@@25 ($ptr ($ptr_to t@@10) r@@11) t@@10))
 :qid |vcc2comp.946:15|
 :skolemid |103|
 :pattern ( ($ptr t@@10 ($select.mem ($memory S@@25) ($ptr ($ptr_to t@@10) r@@11))))
)))
(assert (forall ((S@@26 T@$state) (r@@12 Int) (t@@11 T@$ctype) ) (! (= ($ptr t@@11 ($select.mem ($memory S@@26) ($ptr ($spec_ptr_to t@@11) r@@12))) ($read_ptr_m S@@26 ($ptr ($spec_ptr_to t@@11) r@@12) t@@11))
 :qid |vcc2comp.949:15|
 :skolemid |104|
 :pattern ( ($ptr t@@11 ($select.mem ($memory S@@26) ($ptr ($spec_ptr_to t@@11) r@@12))))
)))
(assert (forall ((S@@27 T@$state) (p@@31 T@$ptr) ) (! (= ($read_version S@@27 p@@31) ($int_to_version ($select.mem ($memory S@@27) p@@31)))
 :qid |vcc2comp.963:36|
 :weight 0
 :skolemid |105|
 :pattern ( ($read_version S@@27 p@@31))
)))
(assert (forall ((S@@28 T@$state) (p@@32 T@$ptr) ) (! (= ($domain S@@28 p@@32) ($ver_domain ($read_version S@@28 p@@32)))
 :qid |vcc2comp.966:30|
 :weight 0
 :skolemid |106|
 :pattern ( ($domain S@@28 p@@32))
)))
(assert (forall ((S@@29 T@$state) (p@@33 T@$ptr) (q@@6 T@$ptr) (l T@$label) ) (!  (=> ($in_domain_lab S@@29 p@@33 q@@6 l) ($inv_lab S@@29 p@@33 l))
 :qid |vcc2comp.976:15|
 :weight 0
 :skolemid |107|
 :pattern ( ($in_domain_lab S@@29 p@@33 q@@6 l))
)))
(assert (forall ((S@@30 T@$state) (p@@34 T@$ptr) (q@@7 T@$ptr) (l@@0 T@$label) ) (!  (and (=> ($in_domain_lab S@@30 p@@34 q@@7 l@@0) ($in_domain S@@30 p@@34 q@@7)) (=> ($in_domain S@@30 p@@34 q@@7) ($in_domain_lab S@@30 p@@34 q@@7 l@@0)))
 :qid |vcc2comp.980:17|
 :weight 0
 :skolemid |108|
 :pattern ( ($in_domain_lab S@@30 p@@34 q@@7 l@@0))
)))
(assert (forall ((S@@31 T@$state) (p@@35 T@$ptr) (q@@8 T@$ptr) (l@@1 T@$label) ) (!  (=> ($in_vdomain_lab S@@31 p@@35 q@@8 l@@1) ($inv_lab S@@31 p@@35 l@@1))
 :qid |vcc2comp.983:15|
 :weight 0
 :skolemid |109|
 :pattern ( ($in_vdomain_lab S@@31 p@@35 q@@8 l@@1))
)))
(assert (forall ((S@@32 T@$state) (p@@36 T@$ptr) (q@@9 T@$ptr) (l@@2 T@$label) ) (!  (and (=> ($in_vdomain_lab S@@32 p@@36 q@@9 l@@2) ($in_vdomain S@@32 p@@36 q@@9)) (=> ($in_vdomain S@@32 p@@36 q@@9) ($in_vdomain_lab S@@32 p@@36 q@@9 l@@2)))
 :qid |vcc2comp.986:15|
 :weight 0
 :skolemid |110|
 :pattern ( ($in_vdomain_lab S@@32 p@@36 q@@9 l@@2))
)))
(assert (forall ((S@@33 T@$state) (p@@37 T@$ptr) (q@@10 T@$ptr) ) (!  (=> ($in_domain S@@33 p@@37 q@@10) (and (and ($set_in p@@37 ($domain S@@33 q@@10)) ($closed S@@33 p@@37)) (forall ((r@@13 T@$ptr) ) (!  (=> (and (not ($has_volatile_owns_set ($typ p@@37))) ($set_in r@@13 ($owns S@@33 p@@37))) ($set_in2 r@@13 ($ver_domain ($read_version S@@33 q@@10))))
 :qid |vcc2comp.996:16|
 :skolemid |111|
 :pattern ( ($set_in r@@13 ($owns S@@33 p@@37)))
))))
 :qid |vcc2comp.992:15|
 :weight 0
 :skolemid |112|
 :pattern ( ($in_domain S@@33 p@@37 q@@10))
)))
(assert (forall ((S@@34 T@$state) (p@@38 T@$ptr) ) (!  (=> (and ($full_stop S@@34) (and (and (and (and ($closed S@@34 p@@38) (= ($owner S@@34 p@@38) $me)) (and ($is p@@38 ($typ p@@38)) ($typed S@@34 p@@38))) (not (= ($kind_of ($typ p@@38)) $kind_primitive))) ($is_non_primitive ($typ p@@38)))) ($in_domain S@@34 p@@38 p@@38))
 :qid |vcc2comp.1001:15|
 :skolemid |113|
 :pattern ( ($in_domain S@@34 p@@38 p@@38))
)))
(assert (forall ((S@@35 T@$state) (p@@39 T@$ptr) (q@@11 T@$ptr) (r@@14 T@$ptr) ) (!  (=> (and (and ($has_volatile_owns_set ($typ q@@11)) ($set_in q@@11 ($domain S@@35 p@@39))) (forall ((S1@@2 T@$state) ) (!  (=> (and (and ($inv2 S1@@2 S1@@2 q@@11 ($typ q@@11)) (= ($read_version S1@@2 p@@39) ($read_version S@@35 p@@39))) (= ($domain S1@@2 p@@39) ($domain S@@35 p@@39))) ($set_in0 r@@14 ($owns S1@@2 q@@11)))
 :qid |vcc2comp.1008:11|
 :skolemid |114|
))) (and ($in_vdomain S@@35 r@@14 p@@39) ($set_in0 r@@14 ($owns S@@35 q@@11))))
 :qid |vcc2comp.1004:15|
 :weight 0
 :skolemid |115|
 :pattern ( ($set_in q@@11 ($domain S@@35 p@@39)) ($in_vdomain S@@35 r@@14 p@@39))
)))
(assert (forall ((S@@36 T@$state) (p@@40 T@$ptr) (d T@$ptr) (f@@10 T@$field) ) (!  (=> (and ($set_in p@@40 ($domain S@@36 d)) ($is_primitive_non_volatile_field f@@10)) (= ($select.mem ($memory S@@36) ($dot p@@40 f@@10)) ($fetch_from_domain ($read_version S@@36 d) ($dot p@@40 f@@10))))
 :qid |vcc2comp.1017:15|
 :skolemid |116|
 :pattern ( ($set_in p@@40 ($domain S@@36 d)) ($is_primitive_non_volatile_field f@@10) ($select.mem ($memory S@@36) ($dot p@@40 f@@10)))
)))
(assert (forall ((S@@37 T@$state) (p@@41 T@$ptr) (d@@0 T@$ptr) ) (!  (=> (and ($full_stop S@@37) ($set_in p@@41 ($domain S@@37 d@@0))) (and ($typed S@@37 p@@41) (not ($ts_is_volatile ($select.tm ($typemap S@@37) p@@41)))))
 :qid |vcc2comp.1022:15|
 :skolemid |117|
 :pattern ( ($full_stop S@@37) ($set_in p@@41 ($domain S@@37 d@@0)) ($select.sm ($statusmap S@@37) p@@41))
 :pattern ( ($full_stop S@@37) ($set_in p@@41 ($domain S@@37 d@@0)) ($select.tm ($typemap S@@37) p@@41))
)))
(assert (forall ((S@@38 T@$state) (p@@42 T@$ptr) (d@@1 T@$ptr) (f@@11 T@$field) ) (!  (=> (and (and ($full_stop S@@38) ($set_in p@@42 ($domain S@@38 d@@1))) ($is_primitive_non_volatile_field f@@11)) (and ($typed S@@38 ($dot p@@42 f@@11)) (not ($ts_is_volatile ($select.tm ($typemap S@@38) ($dot p@@42 f@@11))))))
 :qid |vcc2comp.1028:15|
 :skolemid |118|
 :pattern ( ($set_in p@@42 ($domain S@@38 d@@1)) ($is_primitive_non_volatile_field f@@11) ($owner S@@38 ($dot p@@42 f@@11)))
 :pattern ( ($set_in p@@42 ($domain S@@38 d@@1)) ($is_primitive_non_volatile_field f@@11) ($select.tm ($typemap S@@38) ($dot p@@42 f@@11)))
)))
(assert (forall ((S@@39 T@$state) (p@@43 T@$ptr) (d@@2 T@$ptr) (f@@12 T@$field) (sz@@3 Int) (i@@4 Int) (t@@12 T@$ctype) ) (!  (=> (and (and (and (and ($full_stop S@@39) ($set_in p@@43 ($domain S@@39 d@@2))) ($is_primitive_embedded_array f@@12 sz@@3)) (<= 0 i@@4)) (< i@@4 sz@@3)) (= ($select.mem ($memory S@@39) ($idx ($dot p@@43 f@@12) i@@4 t@@12)) ($fetch_from_domain ($read_version S@@39 d@@2) ($idx ($dot p@@43 f@@12) i@@4 t@@12))))
 :qid |vcc2comp.1034:15|
 :skolemid |119|
 :pattern ( ($set_in p@@43 ($domain S@@39 d@@2)) ($is_primitive_embedded_array f@@12 sz@@3) ($select.mem ($memory S@@39) ($idx ($dot p@@43 f@@12) i@@4 t@@12)))
)))
(assert (forall ((S@@40 T@$state) (p@@44 T@$ptr) (d@@3 T@$ptr) (f@@13 T@$field) (sz@@4 Int) (i@@5 Int) (t@@13 T@$ctype) ) (!  (=> (and (and (and (and ($full_stop S@@40) ($set_in p@@44 ($domain S@@40 d@@3))) ($is_primitive_embedded_array f@@13 sz@@4)) (<= 0 i@@5)) (< i@@5 sz@@4)) (and ($typed S@@40 ($idx ($dot p@@44 f@@13) i@@5 t@@13)) (not ($ts_is_volatile ($select.tm ($typemap S@@40) ($idx ($dot p@@44 f@@13) i@@5 t@@13))))))
 :qid |vcc2comp.1039:15|
 :skolemid |120|
 :pattern ( ($set_in p@@44 ($domain S@@40 d@@3)) ($is_primitive_embedded_array f@@13 sz@@4) ($select.tm ($typemap S@@40) ($idx ($dot p@@44 f@@13) i@@5 t@@13)))
 :pattern ( ($set_in p@@44 ($domain S@@40 d@@3)) ($is_primitive_embedded_array f@@13 sz@@4) ($owner S@@40 ($idx ($dot p@@44 f@@13) i@@5 t@@13)))
)))
(assert (forall ((S@@41 T@$state) (r@@15 Int) (d@@4 T@$ptr) (sz@@5 Int) (i@@6 Int) (t@@14 T@$ctype) ) (!  (=> (and (and (and (and ($full_stop S@@41) ($is_primitive t@@14)) ($set_in ($ptr ($array t@@14 sz@@5) r@@15) ($domain S@@41 d@@4))) (<= 0 i@@6)) (< i@@6 sz@@5)) (and ($typed S@@41 ($idx ($ptr t@@14 r@@15) i@@6 t@@14)) (not ($ts_is_volatile ($select.tm ($typemap S@@41) ($idx ($ptr t@@14 r@@15) i@@6 t@@14))))))
 :qid |vcc2comp.1045:15|
 :skolemid |121|
 :pattern ( ($set_in ($ptr ($array t@@14 sz@@5) r@@15) ($domain S@@41 d@@4)) ($select.tm ($typemap S@@41) ($idx ($ptr t@@14 r@@15) i@@6 t@@14)) ($is_primitive t@@14))
 :pattern ( ($set_in ($ptr ($array t@@14 sz@@5) r@@15) ($domain S@@41 d@@4)) ($owner S@@41 ($idx ($ptr t@@14 r@@15) i@@6 t@@14)) ($is_primitive t@@14))
)))
(assert (forall ((S@@42 T@$state) (r@@16 Int) (d@@5 T@$ptr) (sz@@6 Int) (i@@7 Int) (t@@15 T@$ctype) ) (!  (=> (and (and (and (and ($full_stop S@@42) ($is_primitive t@@15)) ($set_in ($ptr ($array t@@15 sz@@6) r@@16) ($domain S@@42 d@@5))) (<= 0 i@@7)) (< i@@7 sz@@6)) (= ($select.mem ($memory S@@42) ($idx ($ptr t@@15 r@@16) i@@7 t@@15)) ($fetch_from_domain ($read_version S@@42 d@@5) ($idx ($ptr t@@15 r@@16) i@@7 t@@15))))
 :qid |vcc2comp.1054:15|
 :skolemid |122|
 :pattern ( ($set_in ($ptr ($array t@@15 sz@@6) r@@16) ($domain S@@42 d@@5)) ($select.mem ($memory S@@42) ($idx ($ptr t@@15 r@@16) i@@7 t@@15)) ($is_primitive t@@15))
)))
(assert (forall ((S@@43 T@$state) (p@@45 T@$ptr) (f@@14 T@$field) (sz@@7 Int) (i@@8 Int) (t@@16 T@$ctype) ) (!  (=> (and (and (and ($good_state S@@43) ($is_primitive_embedded_volatile_array f@@14 sz@@7 t@@16)) (<= 0 i@@8)) (< i@@8 sz@@7)) ($ts_is_volatile ($select.tm ($typemap S@@43) ($idx ($dot p@@45 f@@14) i@@8 t@@16))))
 :qid |vcc2comp.1062:15|
 :skolemid |123|
 :pattern ( ($is_primitive_embedded_volatile_array f@@14 sz@@7 t@@16) ($ts_is_volatile ($select.tm ($typemap S@@43) ($idx ($dot p@@45 f@@14) i@@8 t@@16))))
)))
(assert (forall ((p@@46 T@$ptr) (S1@@3 T@$state) (S2@@2 T@$state) (q@@12 T@$ptr) ) (! ($instantiate_bool ($set_in q@@12 ($domain S2@@2 p@@46)))
 :qid |vcc2comp.1073:15|
 :weight 0
 :skolemid |124|
 :pattern ( ($set_in q@@12 ($domain S1@@3 p@@46)) ($call_transition S1@@3 S2@@2))
)))
(assert (forall ((p@@47 T@$ptr) (S1@@4 T@$state) (S2@@3 T@$state) (q@@13 T@$ptr) ) (! ($instantiate_bool ($set_in q@@13 ($ver_domain ($read_version S2@@3 p@@47))))
 :qid |vcc2comp.1077:15|
 :weight 0
 :skolemid |125|
 :pattern ( ($set_in q@@13 ($ver_domain ($read_version S1@@4 p@@47))) ($call_transition S1@@4 S2@@3))
)))
(assert (forall ((p@@48 T@$ptr) (c T@$ptr) ) (!  (=> (forall ((s@@2 T@$state) ) (!  (=> ($valid_claim s@@2 c) ($closed s@@2 p@@48))
 :qid |vcc2comp.1083:11|
 :skolemid |126|
 :pattern ( ($dont_instantiate_state s@@2))
)) ($in_claim_domain p@@48 c))
 :qid |vcc2comp.1082:15|
 :skolemid |127|
 :pattern ( ($in_claim_domain p@@48 c))
)))
(assert (forall ((S@@44 T@$state) (c@@0 T@$ptr) (obj T@$ptr) (ptr T@$ptr) ) (! (= ($by_claim S@@44 c@@0 obj ptr) ptr)
 :qid |vcc2comp.1086:32|
 :weight 0
 :skolemid |128|
 :pattern ( ($by_claim S@@44 c@@0 obj ptr))
)))
(assert (forall ((S@@45 T@$state) (p@@49 T@$ptr) (c@@1 T@$ptr) (f@@15 T@$field) ) (!  (=> (and (and (and ($good_state S@@45) ($closed S@@45 c@@1)) ($in_claim_domain p@@49 c@@1)) ($is_primitive_non_volatile_field f@@15)) (and ($in_claim_domain p@@49 c@@1) (= ($select.mem ($memory S@@45) ($dot p@@49 f@@15)) ($fetch_from_domain ($claim_version c@@1) ($dot p@@49 f@@15)))))
 :qid |vcc2comp.1091:15|
 :skolemid |129|
 :pattern ( ($in_claim_domain p@@49 c@@1) ($select.mem ($memory S@@45) ($dot p@@49 f@@15)))
 :pattern ( ($by_claim S@@45 c@@1 p@@49 ($dot p@@49 f@@15)))
)))
(assert (forall ((S@@46 T@$state) (p@@50 T@$ptr) (c@@2 T@$ptr) (f@@16 T@$field) (i@@9 Int) (sz@@8 Int) (t@@17 T@$ctype) ) (!  (=> (and (and (and (and (and ($good_state S@@46) ($closed S@@46 c@@2)) ($in_claim_domain p@@50 c@@2)) ($is_primitive_embedded_array f@@16 sz@@8)) (<= 0 i@@9)) (< i@@9 sz@@8)) (= ($select.mem ($memory S@@46) ($idx ($dot p@@50 f@@16) i@@9 t@@17)) ($fetch_from_domain ($claim_version c@@2) ($idx ($dot p@@50 f@@16) i@@9 t@@17))))
 :qid |vcc2comp.1100:15|
 :skolemid |130|
 :pattern ( ($valid_claim S@@46 c@@2) ($in_claim_domain p@@50 c@@2) ($select.mem ($memory S@@46) ($idx ($dot p@@50 f@@16) i@@9 t@@17)) ($is_primitive_embedded_array f@@16 sz@@8))
 :pattern ( ($by_claim S@@46 c@@2 p@@50 ($idx ($dot p@@50 f@@16) i@@9 t@@17)) ($is_primitive_embedded_array f@@16 sz@@8))
)))
(assert (forall ((S@@47 T@$state) (p@@51 T@$ptr) (c@@3 T@$ptr) (i@@10 Int) (sz@@9 Int) (t@@18 T@$ctype) ) (!  (=> (and (and (and (and (and ($good_state S@@47) ($closed S@@47 c@@3)) ($in_claim_domain ($ptr ($array t@@18 sz@@9) ($ref p@@51)) c@@3)) ($is_primitive t@@18)) (<= 0 i@@10)) (< i@@10 sz@@9)) (= ($select.mem ($memory S@@47) ($idx p@@51 i@@10 t@@18)) ($fetch_from_domain ($claim_version c@@3) ($idx p@@51 i@@10 t@@18))))
 :qid |vcc2comp.1108:15|
 :skolemid |131|
 :pattern ( ($valid_claim S@@47 c@@3) ($in_claim_domain ($ptr ($array t@@18 sz@@9) ($ref p@@51)) c@@3) ($select.mem ($memory S@@47) ($idx p@@51 i@@10 t@@18)) ($is_primitive t@@18))
 :pattern ( ($by_claim S@@47 c@@3 p@@51 ($idx p@@51 i@@10 t@@18)) ($is_primitive t@@18) ($is_array S@@47 p@@51 t@@18 sz@@9))
)))
(assert (forall ((S@@48 T@$state) (p@@52 T@$ptr) ) (! (= ($read_vol_version S@@48 p@@52) ($int_to_vol_version ($select.mem ($memory S@@48) p@@52)))
 :qid |vcc2comp.1136:40|
 :weight 0
 :skolemid |133|
 :pattern ( ($read_vol_version S@@48 p@@52))
)))
(assert (forall ((S@@49 T@$state) (r@@17 Int) (t@@19 T@$ctype) (approver T@$field) (subject T@$field) ) (!  (=> (and (and (and ($full_stop S@@49) ($is_approved_by t@@19 approver subject)) ($closed S@@49 ($ptr t@@19 r@@17))) (or (= ($int_to_ptr ($select.mem ($memory S@@49) ($dot ($ptr t@@19 r@@17) approver))) $me) (= ($int_to_ptr ($fetch_from_vv ($read_vol_version S@@49 ($ptr t@@19 r@@17)) ($dot ($ptr t@@19 r@@17) approver))) $me))) (= ($select.mem ($memory S@@49) ($dot ($ptr t@@19 r@@17) subject)) ($fetch_from_vv ($read_vol_version S@@49 ($ptr t@@19 r@@17)) ($dot ($ptr t@@19 r@@17) subject))))
 :qid |vcc2comp.1147:15|
 :skolemid |134|
 :pattern ( ($is_approved_by t@@19 approver subject) ($select.mem ($memory S@@49) ($dot ($ptr t@@19 r@@17) subject)))
)))
(assert (forall ((S@@50 T@$state) (r@@18 Int) (t@@20 T@$ctype) (subject@@0 T@$field) ) (!  (=> (and (and (and ($full_stop S@@50) ($closed S@@50 ($ptr t@@20 r@@18))) ($is_owner_approved t@@20 subject@@0)) (= ($owner S@@50 ($ptr t@@20 r@@18)) $me)) (= ($select.mem ($memory S@@50) ($dot ($ptr t@@20 r@@18) subject@@0)) ($fetch_from_vv ($read_vol_version S@@50 ($ptr t@@20 r@@18)) ($dot ($ptr t@@20 r@@18) subject@@0))))
 :qid |vcc2comp.1172:15|
 :skolemid |135|
 :pattern ( ($is_owner_approved t@@20 subject@@0) ($select.mem ($memory S@@50) ($dot ($ptr t@@20 r@@18) subject@@0)))
)))
(assert (forall ((S1@@5 T@$state) (S2@@4 T@$state) (r@@19 Int) (t@@21 T@$ctype) (subject@@1 T@$field) ) (! ($instantiate_int ($select.mem ($memory S2@@4) ($dot ($ptr t@@21 r@@19) subject@@1)))
 :qid |vcc2comp.1180:15|
 :skolemid |136|
 :pattern ( ($is_owner_approved t@@21 subject@@1) ($post_unwrap S1@@5 S2@@4) ($select.mem ($memory S1@@5) ($dot ($ptr t@@21 r@@19) subject@@1)))
)))
(assert (forall ((S@@51 T@$state) (p@@53 T@$ptr) (q@@14 T@$ptr) ) (!  (=> (and (and ($good_state S@@51) ($closed S@@51 q@@14)) ($is_non_primitive ($typ p@@53))) (and (=> ($set_in p@@53 ($owns S@@51 q@@14)) (= ($owner S@@51 p@@53) q@@14)) (=> (= ($owner S@@51 p@@53) q@@14) ($set_in p@@53 ($owns S@@51 q@@14)))))
 :qid |vcc2comp.1203:15|
 :skolemid |138|
 :pattern ( ($set_in p@@53 ($owns S@@51 q@@14)) ($is_non_primitive ($typ p@@53)))
)))
(assert (forall ((|#s1@@4| T@$state) (|#s2@@3| T@$state) (|#p@@9| T@$ptr) (|#t@@7| T@$ctype) ) (!  (=> (and ($is_arraytype |#t@@7|) (= ($typ |#p@@9|) |#t@@7|)) (and (and (=> ($inv2 |#s1@@4| |#s2@@3| |#p@@9| |#t@@7|) ($typed |#s2@@3| |#p@@9|)) (=> ($typed |#s2@@3| |#p@@9|) ($inv2 |#s1@@4| |#s2@@3| |#p@@9| |#t@@7|))) ($sequential |#s1@@4| |#s2@@3| |#p@@9| |#t@@7|)))
 :qid |vcc2comp.1210:15|
 :skolemid |139|
 :pattern ( ($is_arraytype |#t@@7|) ($inv2 |#s1@@4| |#s2@@3| |#p@@9| |#t@@7|))
)))
(assert (forall ((S@@52 T@$state) (|#r@@6| Int) (|#t@@8| T@$ctype) ) (!  (=> ($good_state S@@52) (=> ($is_arraytype |#t@@8|) (= ($owns S@@52 ($ptr |#t@@8| |#r@@6|)) $set_empty)))
 :qid |vcc2comp.1215:15|
 :skolemid |140|
 :pattern ( ($owns S@@52 ($ptr |#t@@8| |#r@@6|)) ($is_arraytype |#t@@8|))
)))
(assert (forall ((S@@53 T@$state) (|#p@@10| T@$ptr) (|#t@@9| T@$ctype) ) (!  (=> (and ($invok_state S@@53) ($closed S@@53 |#p@@10|)) ($inv2 S@@53 S@@53 |#p@@10| |#t@@9|))
 :qid |vcc2comp.1219:15|
 :skolemid |141|
 :pattern ( ($inv2 S@@53 S@@53 |#p@@10| |#t@@9|))
)))
(assert (forall ((S@@54 T@$state) ) (!  (=> ($good_state S@@54) (forall ((|#p@@11| T@$ptr) (|#q| T@$ptr) ) (!  (=> (and (and ($good_state S@@54) ($set_in |#p@@11| ($owns S@@54 |#q|))) ($closed S@@54 |#q|)) (and ($closed S@@54 |#p@@11|) (not (= ($ref |#p@@11|) 0))))
 :qid |vcc2comp.920:13|
 :skolemid |101|
 :pattern ( ($set_in |#p@@11| ($owns S@@54 |#q|)))
)))
 :qid |vcc2comp.1222:15|
 :skolemid |142|
 :pattern ( ($good_state S@@54))
)))
(assert (forall ((S@@55 T@$state) (|#p@@12| T@$ptr) ) (!  (=> ($closed S@@55 |#p@@12|) ($typed S@@55 |#p@@12|))
 :qid |vcc2comp.1225:15|
 :skolemid |143|
 :pattern ( ($closed S@@55 |#p@@12|))
)))
(assert (forall ((S@@56 T@$state) (p@@54 T@$ptr) (v@@8 Int) ) (!  (and (and (and (= ($typemap ($update_int S@@56 p@@54 v@@8)) ($typemap S@@56)) (= ($statusmap ($update_int S@@56 p@@54 v@@8)) ($statusmap S@@56))) (= ($memory ($update_int S@@56 p@@54 v@@8)) ($store.mem ($memory S@@56) p@@54 v@@8))) (and (and (< ($current_timestamp S@@56) ($current_timestamp ($update_int S@@56 p@@54 v@@8))) (forall ((p@@55 T@$ptr) ) (! (<= ($timestamp S@@56 p@@55) ($timestamp ($update_int S@@56 p@@54 v@@8) p@@55))
 :qid |vcc2comp.1355:13|
 :weight 0
 :skolemid |155|
 :pattern ( ($timestamp ($update_int S@@56 p@@54 v@@8) p@@55))
))) ($call_transition S@@56 ($update_int S@@56 p@@54 v@@8))))
 :qid |vcc2comp.1335:15|
 :skolemid |153|
 :pattern ( ($update_int S@@56 p@@54 v@@8))
)))
(assert (forall ((S@@57 T@$state) (l@@3 T@$ptr) (p@@56 T@$ptr) ) (!  (=> (not (= ($kind_of ($typ l@@3)) $kind_primitive)) (and (and (and (and (= ($statusmap ($take_over S@@57 l@@3 p@@56)) ($store.sm ($statusmap S@@57) p@@56 ($taken_over S@@57 l@@3 p@@56))) ($closed ($take_over S@@57 l@@3 p@@56) p@@56)) (= ($owner ($take_over S@@57 l@@3 p@@56) p@@56) l@@3)) (= ($ref_cnt ($take_over S@@57 l@@3 p@@56) p@@56) ($ref_cnt S@@57 p@@56))) true))
 :qid |vcc2comp.1386:15|
 :skolemid |156|
 :pattern ( ($take_over S@@57 l@@3 p@@56))
)))
(assert (forall ((S0 T@$state) (S@@58 T@$state) (l@@4 T@$ptr) (p@@57 T@$ptr) ) (!  (and (and (and (and (and (= ($statusmap ($release S0 S@@58 l@@4 p@@57)) ($store.sm ($statusmap S@@58) p@@57 ($released S@@58 l@@4 p@@57))) ($closed ($release S0 S@@58 l@@4 p@@57) p@@57)) (= ($owner ($release S0 S@@58 l@@4 p@@57) p@@57) $me)) (= ($ref_cnt ($release S0 S@@58 l@@4 p@@57) p@@57) ($ref_cnt S@@58 p@@57))) (= ($timestamp ($release S0 S@@58 l@@4 p@@57) p@@57) ($current_timestamp S0))) true)
 :qid |vcc2comp.1402:15|
 :skolemid |157|
 :pattern ( ($release S0 S@@58 l@@4 p@@57))
)))
(assert (= $get_memory_allocator ($ptr $memory_allocator_type $memory_allocator_ref)))
(assert (= ($ptr_level $memory_allocator_type) 0))
(assert (forall ((S@@59 T@$state) ) (!  (=> ($program_entry_point S@@59) ($program_entry_point_ch S@@59))
 :qid |vcc2comp.1901:15|
 :skolemid |212|
 :pattern ( ($program_entry_point S@@59))
)))
(assert (forall ((S@@60 T@$state) (p@@58 T@$ptr) (q@@15 T@$ptr) ) (!  (and (=> ($set_in p@@58 ($volatile_span S@@60 q@@15)) (or (= p@@58 q@@15) (and ($ts_is_volatile ($select.tm ($typemap S@@60) p@@58)) ($set_in p@@58 ($span q@@15))))) (=> (or (= p@@58 q@@15) (and ($ts_is_volatile ($select.tm ($typemap S@@60) p@@58)) ($set_in p@@58 ($span q@@15)))) ($set_in p@@58 ($volatile_span S@@60 q@@15))))
 :qid |vcc2comp.1986:15|
 :skolemid |223|
 :pattern ( ($set_in p@@58 ($volatile_span S@@60 q@@15)))
)))
(assert (forall ((a T@$ptr) (i@@11 Int) ) (! (= ($left_split a i@@11) ($ptr ($array ($element_type ($typ a)) i@@11) ($ref a)))
 :qid |vcc2comp.1993:22|
 :skolemid |224|
 :pattern ( ($left_split a i@@11))
)))
(assert (forall ((a@@0 T@$ptr) (i@@12 Int) ) (! (= ($right_split a@@0 i@@12) ($ptr ($array ($element_type ($typ a@@0)) (- ($array_length ($typ a@@0)) i@@12)) ($ref ($idx ($ptr ($element_type ($typ a@@0)) ($ref a@@0)) i@@12 ($element_type ($typ a@@0))))))
 :qid |vcc2comp.1995:23|
 :skolemid |225|
 :pattern ( ($right_split a@@0 i@@12))
)))
(assert (forall ((a1 T@$ptr) (a2 T@$ptr) ) (! (= ($joined_array a1 a2) ($ptr ($array ($element_type ($typ a1)) (+ ($array_length ($typ a1)) ($array_length ($typ a2)))) ($ref a1)))
 :qid |vcc2comp.1998:24|
 :skolemid |226|
 :pattern ( ($joined_array a1 a2))
)))
(assert (forall ((|#o| T@$ptr) ) (!  (not ($set_in |#o| $set_empty))
 :qid |vcc2comp.2102:15|
 :weight 0
 :skolemid |235|
 :pattern ( ($set_in |#o| $set_empty))
)))
(assert (forall ((|#r@@7| T@$ptr) (|#o@@0| T@$ptr) ) (!  (and (=> ($set_in |#o@@0| ($set_singleton |#r@@7|)) (= |#r@@7| |#o@@0|)) (=> (= |#r@@7| |#o@@0|) ($set_in |#o@@0| ($set_singleton |#r@@7|))))
 :qid |vcc2comp.2105:15|
 :weight 0
 :skolemid |236|
 :pattern ( ($set_in |#o@@0| ($set_singleton |#r@@7|)))
)))
(assert (forall ((|#r@@8| T@$ptr) (|#o@@1| T@$ptr) ) (!  (and (=> ($set_in |#o@@1| ($non_null_set_singleton |#r@@8|)) (and (= |#r@@8| |#o@@1|) (not (= ($ref |#r@@8|) ($ref $null))))) (=> (and (= |#r@@8| |#o@@1|) (not (= ($ref |#r@@8|) ($ref $null)))) ($set_in |#o@@1| ($non_null_set_singleton |#r@@8|))))
 :qid |vcc2comp.2108:15|
 :weight 0
 :skolemid |237|
 :pattern ( ($set_in |#o@@1| ($non_null_set_singleton |#r@@8|)))
)))
(assert (forall ((|#a| T@$ptrset) (|#b@@1| T@$ptrset) (|#o@@2| T@$ptr) ) (!  (and (=> ($set_in |#o@@2| ($set_union |#a| |#b@@1|)) (or ($set_in |#o@@2| |#a|) ($set_in |#o@@2| |#b@@1|))) (=> (or ($set_in |#o@@2| |#a|) ($set_in |#o@@2| |#b@@1|)) ($set_in |#o@@2| ($set_union |#a| |#b@@1|))))
 :qid |vcc2comp.2111:15|
 :weight 0
 :skolemid |238|
 :pattern ( ($set_in |#o@@2| ($set_union |#a| |#b@@1|)))
)))
(assert (forall ((|#a@@0| T@$ptrset) (|#b@@2| T@$ptrset) (|#o@@3| T@$ptr) ) (!  (and (=> ($set_in |#o@@3| ($set_difference |#a@@0| |#b@@2|)) (and ($set_in |#o@@3| |#a@@0|) (not ($set_in |#o@@3| |#b@@2|)))) (=> (and ($set_in |#o@@3| |#a@@0|) (not ($set_in |#o@@3| |#b@@2|))) ($set_in |#o@@3| ($set_difference |#a@@0| |#b@@2|))))
 :qid |vcc2comp.2115:15|
 :weight 0
 :skolemid |239|
 :pattern ( ($set_in |#o@@3| ($set_difference |#a@@0| |#b@@2|)))
)))
(assert (forall ((|#a@@1| T@$ptrset) (|#b@@3| T@$ptrset) (|#o@@4| T@$ptr) ) (!  (and (=> ($set_in |#o@@4| ($set_intersection |#a@@1| |#b@@3|)) (and ($set_in |#o@@4| |#a@@1|) ($set_in |#o@@4| |#b@@3|))) (=> (and ($set_in |#o@@4| |#a@@1|) ($set_in |#o@@4| |#b@@3|)) ($set_in |#o@@4| ($set_intersection |#a@@1| |#b@@3|))))
 :qid |vcc2comp.2119:15|
 :weight 0
 :skolemid |240|
 :pattern ( ($set_in |#o@@4| ($set_intersection |#a@@1| |#b@@3|)))
)))
(assert (forall ((|#a@@2| T@$ptrset) (|#b@@4| T@$ptrset) ) (!  (and (=> ($set_subset |#a@@2| |#b@@4|) (forall ((|#o@@5| T@$ptr) ) (!  (=> ($set_in |#o@@5| |#a@@2|) ($set_in |#o@@5| |#b@@4|))
 :qid |vcc2comp.2124:35|
 :weight 0
 :skolemid |241|
 :pattern ( ($set_in |#o@@5| |#a@@2|))
 :pattern ( ($set_in |#o@@5| |#b@@4|))
))) (=> (forall ((|#o@@6| T@$ptr) ) (!  (=> ($set_in |#o@@6| |#a@@2|) ($set_in |#o@@6| |#b@@4|))
 :qid |vcc2comp.2124:35|
 :weight 0
 :skolemid |241|
 :pattern ( ($set_in |#o@@6| |#a@@2|))
 :pattern ( ($set_in |#o@@6| |#b@@4|))
)) ($set_subset |#a@@2| |#b@@4|)))
 :qid |vcc2comp.2123:14|
 :weight 0
 :skolemid |242|
 :pattern ( ($set_subset |#a@@2| |#b@@4|))
)))
(assert (forall ((|#a@@3| T@$ptrset) (|#b@@5| T@$ptrset) ) (!  (=> (forall ((|#o@@7| T@$ptr) ) (!  (and (=> ($set_in |#o@@7| |#a@@3|) ($set_in |#o@@7| |#b@@5|)) (=> ($set_in |#o@@7| |#b@@5|) ($set_in |#o@@7| |#a@@3|)))
 :qid |vcc2comp.2135:11|
 :weight 0
 :skolemid |243|
 :pattern ( ($dont_instantiate |#o@@7|))
)) ($set_eq |#a@@3| |#b@@5|))
 :qid |vcc2comp.2134:15|
 :weight 0
 :skolemid |244|
 :pattern ( ($set_eq |#a@@3| |#b@@5|))
)))
(assert (forall ((|#a@@4| T@$ptrset) (|#b@@6| T@$ptrset) ) (!  (=> ($set_eq |#a@@4| |#b@@6|) (= |#a@@4| |#b@@6|))
 :qid |vcc2comp.2136:15|
 :weight 0
 :skolemid |245|
 :pattern ( ($set_eq |#a@@4| |#b@@6|))
)))
(assert (= ($set_cardinality $set_empty) 0))
(assert (forall ((p@@59 T@$ptr) ) (! (= ($set_cardinality ($set_singleton p@@59)) 1)
 :qid |vcc2comp.2142:15|
 :weight 0
 :skolemid |246|
)))
(assert (forall ((|#o@@8| T@$ptr) ) (! ($set_in |#o@@8| $set_universe)
 :qid |vcc2comp.2145:15|
 :weight 0
 :skolemid |247|
 :pattern ( ($set_in |#o@@8| $set_universe))
)))
(assert (forall ((p@@60 T@$ptr) (s1 T@$ptrset) (s2 T@$ptrset) ) (!  (=> (and ($set_disjoint s1 s2) ($set_in p@@60 s1)) (= ($id_set_disjoint p@@60 s1 s2) 1))
 :qid |vcc2comp.2150:15|
 :weight 0
 :skolemid |248|
 :pattern ( ($set_disjoint s1 s2) ($set_in p@@60 s1))
)))
(assert (forall ((p@@61 T@$ptr) (s1@@0 T@$ptrset) (s2@@0 T@$ptrset) ) (!  (=> (and ($set_disjoint s1@@0 s2@@0) ($set_in p@@61 s2@@0)) (= ($id_set_disjoint p@@61 s1@@0 s2@@0) 2))
 :qid |vcc2comp.2153:15|
 :weight 0
 :skolemid |249|
 :pattern ( ($set_disjoint s1@@0 s2@@0) ($set_in p@@61 s2@@0))
)))
(assert (forall ((s1@@1 T@$ptrset) (s2@@1 T@$ptrset) ) (!  (=> (forall ((p@@62 T@$ptr) ) (!  (and (=> ($set_in p@@62 s1@@1) (not ($set_in p@@62 s2@@1))) (=> ($set_in p@@62 s2@@1) (not ($set_in p@@62 s1@@1))))
 :qid |vcc2comp.2158:11|
 :skolemid |250|
 :pattern ( ($dont_instantiate p@@62))
)) ($set_disjoint s1@@1 s2@@1))
 :qid |vcc2comp.2157:15|
 :weight 0
 :skolemid |251|
 :pattern ( ($set_disjoint s1@@1 s2@@1))
)))
(assert (forall ((p@@63 T@$ptr) (S1@@6 T@$state) (p1 T@$ptr) ) (!  (=> ($set_in p@@63 ($owns S1@@6 p1)) ($in_some_owns p@@63))
 :qid |vcc2comp.2168:15|
 :weight 0
 :skolemid |252|
 :pattern ( ($set_in p@@63 ($owns S1@@6 p1)))
)))
(assert (forall ((p@@64 T@$ptr) (S1@@7 T@$state) (p1@@0 T@$ptr) ) (!  (and (=> ($set_in p@@64 ($owns S1@@7 p1@@0)) ($set_in2 p@@64 ($owns S1@@7 p1@@0))) (=> ($set_in2 p@@64 ($owns S1@@7 p1@@0)) ($set_in p@@64 ($owns S1@@7 p1@@0))))
 :qid |vcc2comp.2172:15|
 :weight 0
 :skolemid |253|
 :pattern ( ($set_in2 p@@64 ($owns S1@@7 p1@@0)) ($in_some_owns p@@64))
)))
(assert (forall ((p@@65 T@$ptr) (s@@3 T@$ptrset) ) (!  (and (=> ($set_in p@@65 s@@3) ($set_in2 p@@65 s@@3)) (=> ($set_in2 p@@65 s@@3) ($set_in p@@65 s@@3)))
 :qid |vcc2comp.2176:15|
 :weight 0
 :skolemid |254|
 :pattern ( ($set_in p@@65 s@@3))
)))
(assert (forall ((p@@66 T@$ptr) (s@@4 T@$ptrset) ) (!  (and (=> ($set_in p@@66 s@@4) ($set_in3 p@@66 s@@4)) (=> ($set_in3 p@@66 s@@4) ($set_in p@@66 s@@4)))
 :qid |vcc2comp.2178:15|
 :weight 0
 :skolemid |255|
 :pattern ( ($set_in p@@66 s@@4))
)))
(assert (forall ((p@@67 T@$ptr) (s@@5 T@$ptrset) ) (!  (and (=> ($set_in p@@67 s@@5) ($set_in0 p@@67 s@@5)) (=> ($set_in0 p@@67 s@@5) ($set_in p@@67 s@@5)))
 :qid |vcc2comp.2182:15|
 :weight 0
 :skolemid |256|
 :pattern ( ($set_in0 p@@67 s@@5))
)))
(assert (forall ((T@@4 T@$ctype) (s@@6 Int) ) (! (= ($element_type ($array T@@4 s@@6)) T@@4)
 :qid |vcc2comp.2243:15|
 :skolemid |261|
 :pattern ( ($array T@@4 s@@6))
)))
(assert (forall ((T@@5 T@$ctype) (s@@7 Int) ) (! (= ($array_length ($array T@@5 s@@7)) s@@7)
 :qid |vcc2comp.2244:15|
 :skolemid |262|
 :pattern ( ($array T@@5 s@@7))
)))
(assert (forall ((T@@6 T@$ctype) (s@@8 Int) ) (! (= ($ptr_level ($array T@@6 s@@8)) 0)
 :qid |vcc2comp.2245:15|
 :skolemid |263|
 :pattern ( ($array T@@6 s@@8))
)))
(assert (forall ((T@@7 T@$ctype) (s@@9 Int) ) (! ($is_arraytype ($array T@@7 s@@9))
 :qid |vcc2comp.2246:15|
 :skolemid |264|
 :pattern ( ($array T@@7 s@@9))
)))
(assert (forall ((T@@8 T@$ctype) (s@@10 Int) ) (!  (not ($is_claimable ($array T@@8 s@@10)))
 :qid |vcc2comp.2247:15|
 :skolemid |265|
 :pattern ( ($array T@@8 s@@10))
)))
(assert (forall ((T@@9 T@$ctype) (s@@11 Int) ) (! (= ($sizeof ($array T@@9 s@@11)) (* ($sizeof T@@9) s@@11))
 :qid |vcc2comp.2248:15|
 :skolemid |266|
 :pattern ( ($sizeof ($array T@@9 s@@11)))
)))
(assert (forall ((p@@68 T@$ptr) (T@@10 T@$ctype) ) (! (= ($inlined_array p@@68 T@@10) p@@68)
 :qid |vcc2comp.2250:37|
 :weight 0
 :skolemid |267|
 :pattern ( ($inlined_array p@@68 T@@10))
)))
(assert (forall ((|#p@@13| T@$ptr) (|#i| Int) (|#t@@10| T@$ctype) ) (!  (and ($extent_hint ($idx |#p@@13| |#i| |#t@@10|) |#p@@13|) (= ($idx |#p@@13| |#i| |#t@@10|) ($ptr |#t@@10| (+ ($ref |#p@@13|) (* |#i| ($sizeof |#t@@10|))))))
 :qid |vcc2comp.2254:15|
 :skolemid |268|
 :pattern ( ($idx |#p@@13| |#i| |#t@@10|))
)))
(assert (forall ((p@@69 T@$ptr) (i@@13 Int) (j Int) (T@@11 T@$ctype) ) (!  (=> (and (not (= i@@13 0)) (not (= j 0))) (= ($idx ($idx p@@69 i@@13 T@@11) j T@@11) ($idx p@@69 (+ i@@13 j) T@@11)))
 :qid |vcc2comp.2268:15|
 :skolemid |269|
 :pattern ( ($idx ($idx p@@69 i@@13 T@@11) j T@@11))
)))
(assert (forall ((S@@61 T@$state) (p@@70 T@$ptr) (T@@12 T@$ctype) (sz@@10 Int) (vol Bool) ) (!  (and (=> ($is_array_vol_or_nonvol S@@61 p@@70 T@@12 sz@@10 vol) (and ($is p@@70 T@@12) (forall ((i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 sz@@10)) (and (and (=> ($ts_is_volatile ($select.tm ($typemap S@@61) ($idx p@@70 i@@14 T@@12))) vol) (=> vol ($ts_is_volatile ($select.tm ($typemap S@@61) ($idx p@@70 i@@14 T@@12))))) ($typed S@@61 ($idx p@@70 i@@14 T@@12))))
 :qid |vcc2comp.2274:13|
 :skolemid |270|
 :pattern ( ($select.sm ($statusmap S@@61) ($idx p@@70 i@@14 T@@12)))
 :pattern ( ($select.tm ($typemap S@@61) ($idx p@@70 i@@14 T@@12)))
 :pattern ( ($select.mem ($memory S@@61) ($idx p@@70 i@@14 T@@12)))
)))) (=> (and ($is p@@70 T@@12) (forall ((i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 sz@@10)) (and (and (=> ($ts_is_volatile ($select.tm ($typemap S@@61) ($idx p@@70 i@@15 T@@12))) vol) (=> vol ($ts_is_volatile ($select.tm ($typemap S@@61) ($idx p@@70 i@@15 T@@12))))) ($typed S@@61 ($idx p@@70 i@@15 T@@12))))
 :qid |vcc2comp.2274:13|
 :skolemid |270|
 :pattern ( ($select.sm ($statusmap S@@61) ($idx p@@70 i@@15 T@@12)))
 :pattern ( ($select.tm ($typemap S@@61) ($idx p@@70 i@@15 T@@12)))
 :pattern ( ($select.mem ($memory S@@61) ($idx p@@70 i@@15 T@@12)))
))) ($is_array_vol_or_nonvol S@@61 p@@70 T@@12 sz@@10 vol)))
 :qid |vcc2comp.2272:46|
 :weight 0
 :skolemid |271|
 :pattern ( ($is_array_vol_or_nonvol S@@61 p@@70 T@@12 sz@@10 vol))
)))
(assert (forall ((S@@62 T@$state) (p@@71 T@$ptr) (T@@13 T@$ctype) (sz@@11 Int) ) (!  (and (=> ($is_array S@@62 p@@71 T@@13 sz@@11) (and ($is p@@71 T@@13) (forall ((i@@16 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 sz@@11)) ($typed S@@62 ($idx p@@71 i@@16 T@@13)))
 :qid |vcc2comp.2280:13|
 :skolemid |272|
 :pattern ( ($select.sm ($statusmap S@@62) ($idx p@@71 i@@16 T@@13)))
 :pattern ( ($select.tm ($typemap S@@62) ($idx p@@71 i@@16 T@@13)))
 :pattern ( ($select.mem ($memory S@@62) ($idx p@@71 i@@16 T@@13)))
)))) (=> (and ($is p@@71 T@@13) (forall ((i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 sz@@11)) ($typed S@@62 ($idx p@@71 i@@17 T@@13)))
 :qid |vcc2comp.2280:13|
 :skolemid |272|
 :pattern ( ($select.sm ($statusmap S@@62) ($idx p@@71 i@@17 T@@13)))
 :pattern ( ($select.tm ($typemap S@@62) ($idx p@@71 i@@17 T@@13)))
 :pattern ( ($select.mem ($memory S@@62) ($idx p@@71 i@@17 T@@13)))
))) ($is_array S@@62 p@@71 T@@13 sz@@11)))
 :qid |vcc2comp.2278:32|
 :weight 0
 :skolemid |273|
 :pattern ( ($is_array S@@62 p@@71 T@@13 sz@@11))
)))
(assert (forall ((p@@72 T@$ptr) (|#r@@9| Int) (T@@14 T@$ctype) (sz@@12 Int) ) (!  (and (=> ($set_in p@@72 ($full_extent ($ptr ($array T@@14 sz@@12) |#r@@9|))) (or (= p@@72 ($ptr ($array T@@14 sz@@12) |#r@@9|)) (and (and (<= 0 ($index_within p@@72 ($ptr T@@14 |#r@@9|))) (<= ($index_within p@@72 ($ptr T@@14 |#r@@9|)) (- sz@@12 1))) ($set_in p@@72 ($full_extent ($idx ($ptr T@@14 |#r@@9|) ($index_within p@@72 ($ptr T@@14 |#r@@9|)) T@@14)))))) (=> (or (= p@@72 ($ptr ($array T@@14 sz@@12) |#r@@9|)) (and (and (<= 0 ($index_within p@@72 ($ptr T@@14 |#r@@9|))) (<= ($index_within p@@72 ($ptr T@@14 |#r@@9|)) (- sz@@12 1))) ($set_in p@@72 ($full_extent ($idx ($ptr T@@14 |#r@@9|) ($index_within p@@72 ($ptr T@@14 |#r@@9|)) T@@14))))) ($set_in p@@72 ($full_extent ($ptr ($array T@@14 sz@@12) |#r@@9|)))))
 :qid |vcc2comp.2344:15|
 :skolemid |281|
 :pattern ( ($set_in p@@72 ($full_extent ($ptr ($array T@@14 sz@@12) |#r@@9|))))
)))
(assert (forall ((S@@63 T@$state) (p@@73 T@$ptr) (|#r@@10| Int) (T@@15 T@$ctype) (sz@@13 Int) ) (!  (and (=> ($set_in p@@73 ($extent S@@63 ($ptr ($array T@@15 sz@@13) |#r@@10|))) (or (= p@@73 ($ptr ($array T@@15 sz@@13) |#r@@10|)) (and (and (<= 0 ($index_within p@@73 ($ptr T@@15 |#r@@10|))) (<= ($index_within p@@73 ($ptr T@@15 |#r@@10|)) (- sz@@13 1))) ($set_in p@@73 ($extent S@@63 ($idx ($ptr T@@15 |#r@@10|) ($index_within p@@73 ($ptr T@@15 |#r@@10|)) T@@15)))))) (=> (or (= p@@73 ($ptr ($array T@@15 sz@@13) |#r@@10|)) (and (and (<= 0 ($index_within p@@73 ($ptr T@@15 |#r@@10|))) (<= ($index_within p@@73 ($ptr T@@15 |#r@@10|)) (- sz@@13 1))) ($set_in p@@73 ($extent S@@63 ($idx ($ptr T@@15 |#r@@10|) ($index_within p@@73 ($ptr T@@15 |#r@@10|)) T@@15))))) ($set_in p@@73 ($extent S@@63 ($ptr ($array T@@15 sz@@13) |#r@@10|)))))
 :qid |vcc2comp.2349:15|
 :skolemid |282|
 :pattern ( ($set_in p@@73 ($extent S@@63 ($ptr ($array T@@15 sz@@13) |#r@@10|))))
)))
(assert (forall ((p@@74 T@$ptr) (|#r@@11| Int) (T@@16 T@$ctype) (sz@@14 Int) ) (!  (=> ($is_primitive T@@16) (and (=> ($set_in p@@74 ($span ($ptr ($array T@@16 sz@@14) |#r@@11|))) (and (and (<= 0 ($index_within p@@74 ($ptr T@@16 |#r@@11|))) (<= ($index_within p@@74 ($ptr T@@16 |#r@@11|)) (- sz@@14 1))) (= p@@74 ($idx ($ptr T@@16 |#r@@11|) ($index_within p@@74 ($ptr T@@16 |#r@@11|)) T@@16)))) (=> (and (and (<= 0 ($index_within p@@74 ($ptr T@@16 |#r@@11|))) (<= ($index_within p@@74 ($ptr T@@16 |#r@@11|)) (- sz@@14 1))) (= p@@74 ($idx ($ptr T@@16 |#r@@11|) ($index_within p@@74 ($ptr T@@16 |#r@@11|)) T@@16))) ($set_in p@@74 ($span ($ptr ($array T@@16 sz@@14) |#r@@11|))))))
 :qid |vcc2comp.2354:15|
 :skolemid |283|
 :pattern ( ($set_in p@@74 ($span ($ptr ($array T@@16 sz@@14) |#r@@11|))) ($is_primitive T@@16))
)))
(assert (forall ((S@@64 T@$state) (|#r@@12| Int) (T@@17 T@$ctype) (sz@@15 Int) (i@@18 Int) ) (!  (=> ($typed S@@64 ($ptr ($array T@@17 sz@@15) |#r@@12|)) (=> (and (<= 0 i@@18) (< i@@18 sz@@15)) (and (and (= ($ts_emb ($select.tm ($typemap S@@64) ($idx ($ptr ($array T@@17 sz@@15) |#r@@12|) i@@18 T@@17))) ($ptr ($array T@@17 sz@@15) |#r@@12|)) (not ($ts_is_volatile ($select.tm ($typemap S@@64) ($idx ($ptr ($array T@@17 sz@@15) |#r@@12|) i@@18 T@@17))))) ($typed S@@64 ($idx ($ptr ($array T@@17 sz@@15) |#r@@12|) i@@18 T@@17)))))
 :qid |vcc2comp.2362:15|
 :skolemid |284|
 :pattern ( ($select.sm ($statusmap S@@64) ($idx ($ptr T@@17 |#r@@12|) i@@18 T@@17)) ($ptr ($array T@@17 sz@@15) |#r@@12|))
 :pattern ( ($select.tm ($typemap S@@64) ($idx ($ptr T@@17 |#r@@12|) i@@18 T@@17)) ($ptr ($array T@@17 sz@@15) |#r@@12|))
)))
(assert (forall ((p@@75 T@$ptr) (T@@18 T@$ctype) (sz@@16 Int) (elem T@$ptr) ) (!  (and (=> ($set_in elem ($array_members p@@75 T@@18 sz@@16)) (and (and (<= 0 ($index_within elem p@@75)) (<= ($index_within elem p@@75) (- sz@@16 1))) (= elem ($idx p@@75 ($index_within elem p@@75) T@@18)))) (=> (and (and (<= 0 ($index_within elem p@@75)) (<= ($index_within elem p@@75) (- sz@@16 1))) (= elem ($idx p@@75 ($index_within elem p@@75) T@@18))) ($set_in elem ($array_members p@@75 T@@18 sz@@16))))
 :qid |vcc2comp.2371:15|
 :skolemid |285|
 :pattern ( ($set_in elem ($array_members p@@75 T@@18 sz@@16)))
)))
(assert (forall ((S@@65 T@$state) (p@@76 T@$ptr) (T@@19 T@$ctype) (sz@@17 Int) ) (! (= ($array_range S@@65 p@@76 T@@19 sz@@17) ($array_range_no_state p@@76 T@@19 sz@@17))
 :qid |vcc2comp.2376:23|
 :skolemid |286|
 :pattern ( ($array_range S@@65 p@@76 T@@19 sz@@17))
)))
(assert (forall ((S@@66 T@$state) (p@@77 T@$ptr) (|#r@@13| Int) (T@@20 T@$ctype) (sz@@18 Int) ) (!  (and ($instantiate_bool ($typed S@@66 p@@77)) (and (=> ($set_in p@@77 ($array_range S@@66 ($ptr T@@20 |#r@@13|) T@@20 sz@@18)) (and (and (<= 0 ($index_within p@@77 ($ptr T@@20 |#r@@13|))) (<= ($index_within p@@77 ($ptr T@@20 |#r@@13|)) (- sz@@18 1))) ($set_in p@@77 ($full_extent ($idx ($ptr T@@20 |#r@@13|) ($index_within p@@77 ($ptr T@@20 |#r@@13|)) T@@20))))) (=> (and (and (<= 0 ($index_within p@@77 ($ptr T@@20 |#r@@13|))) (<= ($index_within p@@77 ($ptr T@@20 |#r@@13|)) (- sz@@18 1))) ($set_in p@@77 ($full_extent ($idx ($ptr T@@20 |#r@@13|) ($index_within p@@77 ($ptr T@@20 |#r@@13|)) T@@20)))) ($set_in p@@77 ($array_range S@@66 ($ptr T@@20 |#r@@13|) T@@20 sz@@18)))))
 :qid |vcc2comp.2379:15|
 :skolemid |287|
 :pattern ( ($set_in p@@77 ($array_range S@@66 ($ptr T@@20 |#r@@13|) T@@20 sz@@18)))
)))
(assert (forall ((p@@78 T@$ptr) (T@@21 T@$ctype) (sz@@19 Int) (idx Int) (S@@67 T@$ptrset) ) (!  (=> ($set_disjoint ($array_range_no_state p@@78 T@@21 sz@@19) S@@67) (=> (and (<= 0 idx) (< idx sz@@19)) (= ($id_set_disjoint ($idx p@@78 idx T@@21) ($array_range_no_state p@@78 T@@21 sz@@19) S@@67) 1)))
 :qid |vcc2comp.2384:15|
 :skolemid |288|
 :pattern ( ($idx p@@78 idx T@@21) ($set_disjoint ($array_range_no_state p@@78 T@@21 sz@@19) S@@67))
)))
(assert (forall ((p@@79 T@$ptr) (T@@22 T@$ctype) (sz@@20 Int) (idx@@0 Int) (S@@68 T@$ptrset) ) (!  (=> ($set_disjoint S@@68 ($array_range_no_state p@@79 T@@22 sz@@20)) (=> (and (<= 0 idx@@0) (< idx@@0 sz@@20)) (= ($id_set_disjoint ($idx p@@79 idx@@0 T@@22) S@@68 ($array_range_no_state p@@79 T@@22 sz@@20)) 2)))
 :qid |vcc2comp.2389:15|
 :skolemid |289|
 :pattern ( ($idx p@@79 idx@@0 T@@22) ($set_disjoint S@@68 ($array_range_no_state p@@79 T@@22 sz@@20)))
)))
(assert (forall ((p@@80 T@$ptr) (|#r@@14| Int) (T@@23 T@$ctype) (sz@@21 Int) ) (!  (and (=> ($set_in p@@80 ($non_null_array_range ($ptr T@@23 |#r@@14|) T@@23 sz@@21)) (and (not (= |#r@@14| 0)) (and (and (<= 0 ($index_within p@@80 ($ptr T@@23 |#r@@14|))) (<= ($index_within p@@80 ($ptr T@@23 |#r@@14|)) (- sz@@21 1))) ($set_in p@@80 ($full_extent ($idx ($ptr T@@23 |#r@@14|) ($index_within p@@80 ($ptr T@@23 |#r@@14|)) T@@23)))))) (=> (and (not (= |#r@@14| 0)) (and (and (<= 0 ($index_within p@@80 ($ptr T@@23 |#r@@14|))) (<= ($index_within p@@80 ($ptr T@@23 |#r@@14|)) (- sz@@21 1))) ($set_in p@@80 ($full_extent ($idx ($ptr T@@23 |#r@@14|) ($index_within p@@80 ($ptr T@@23 |#r@@14|)) T@@23))))) ($set_in p@@80 ($non_null_array_range ($ptr T@@23 |#r@@14|) T@@23 sz@@21))))
 :qid |vcc2comp.2395:15|
 :skolemid |290|
 :pattern ( ($set_in p@@80 ($non_null_array_range ($ptr T@@23 |#r@@14|) T@@23 sz@@21)))
)))
(assert (forall ((q@@16 T@$ptr) (S@@69 T@$state) (p@@81 T@$ptr) ) (!  (and (=> ($set_in q@@16 ($non_null_extent S@@69 p@@81)) (and (not (= ($ref p@@81) ($ref $null))) ($set_in q@@16 ($extent S@@69 p@@81)))) (=> (and (not (= ($ref p@@81) ($ref $null))) ($set_in q@@16 ($extent S@@69 p@@81))) ($set_in q@@16 ($non_null_extent S@@69 p@@81))))
 :qid |vcc2comp.2402:15|
 :skolemid |291|
 :pattern ( ($set_in q@@16 ($non_null_extent S@@69 p@@81)))
)))
(assert (forall ((p@@82 T@$ptr) (k Int) ) (!  (and (= ($index_within ($idx p@@82 k ($typ p@@82)) p@@82) k) ($simple_index ($idx p@@82 k ($typ p@@82)) p@@82))
 :qid |vcc2comp.2420:15|
 :skolemid |293|
 :pattern ( ($idx p@@82 k ($typ p@@82)))
)))
(assert (forall ((p@@83 T@$ptr) (q@@17 T@$ptr) (f@@17 T@$field) ) (!  (=> ($simple_index p@@83 q@@17) (and ($simple_index ($dot p@@83 f@@17) q@@17) (= ($index_within ($dot p@@83 f@@17) q@@17) ($index_within p@@83 q@@17))))
 :qid |vcc2comp.2423:15|
 :skolemid |294|
 :pattern ( ($simple_index ($dot p@@83 f@@17) q@@17))
 :pattern ( ($index_within ($dot p@@83 f@@17) q@@17))
)))
(assert (forall ((p@@84 T@$ptr) (q@@18 T@$ptr) (f@@18 T@$field) (i@@19 Int) (t@@22 T@$ctype) ) (!  (=> (and (and (<= 0 i@@19) (< i@@19 ($embedded_array_size f@@18 t@@22))) ($simple_index p@@84 q@@18)) (and ($simple_index ($idx ($dot p@@84 f@@18) i@@19 t@@22) q@@18) (= ($index_within ($idx ($dot p@@84 f@@18) i@@19 t@@22) q@@18) ($index_within p@@84 q@@18))))
 :qid |vcc2comp.2426:15|
 :skolemid |295|
 :pattern ( ($simple_index ($idx ($dot p@@84 f@@18) i@@19 t@@22) q@@18))
 :pattern ( ($index_within ($idx ($dot p@@84 f@@18) i@@19 t@@22) q@@18))
)))
(assert (forall ((s1@@2 T@$state) (s2@@2 T@$state) (p@@85 T@$ptr) (t@@23 T@$ctype) (sz@@22 Int) ) (!  (=> ($is_primitive t@@23) (=> ($state_spans_the_same s1@@2 s2@@2 p@@85 ($array t@@23 sz@@22)) (forall ((i@@20 Int) ) (!  (=> (and (<= 0 i@@20) (< i@@20 sz@@22)) (= ($select.mem ($memory s1@@2) ($idx ($ptr t@@23 ($ref p@@85)) i@@20 t@@23)) ($select.mem ($memory s2@@2) ($idx ($ptr t@@23 ($ref p@@85)) i@@20 t@@23))))
 :qid |vcc2comp.2446:15|
 :skolemid |296|
 :pattern ( ($select.mem ($memory s2@@2) ($idx ($ptr t@@23 ($ref p@@85)) i@@20 t@@23)))
))))
 :qid |vcc2comp.2443:15|
 :skolemid |297|
 :pattern ( ($state_spans_the_same s1@@2 s2@@2 p@@85 ($array t@@23 sz@@22)) ($is_primitive t@@23))
)))
(assert (forall ((x@@0 Bool) ) (!  (and (=> ($bool_id x@@0) x@@0) (=> x@@0 ($bool_id x@@0)))
 :qid |vcc2comp.2478:31|
 :weight 0
 :skolemid |298|
 :pattern ( ($bool_id x@@0))
)))
(assert (= $min.i1 (- 0 128)))
(assert (= $max.i1 127))
(assert (= $min.i2 (- 0 32768)))
(assert (= $max.i2 32767))
(assert (= $min.i4 (- 0 (* 65536 32768))))
(assert (= $max.i4 (- (* 65536 32768) 1)))
(assert (= $min.i8 (- 0 (* (* (* 65536 65536) 65536) 32768))))
(assert (= $max.i8 (- (* (* (* 65536 65536) 65536) 32768) 1)))
(assert (= $max.u1 255))
(assert (= $max.u2 65535))
(assert (= $max.u4 (- (* 65536 65536) 1)))
(assert (= $max.u8 (- (* (* (* 65536 65536) 65536) 65536) 1)))
(assert (= ($ptr_to_u8 $null) 0))
(assert (= ($ptr_to_i8 $null) 0))
(assert (= ($ptr_to_u4 $null) 0))
(assert (= ($ptr_to_i4 $null) 0))
(assert (= ($ptr_to_u2 $null) 0))
(assert (= ($ptr_to_i2 $null) 0))
(assert (= ($ptr_to_u1 $null) 0))
(assert (= ($ptr_to_i1 $null) 0))
(assert (forall ((p@@86 T@$ptr) ) (!  (=> (and (<= 0 ($ref p@@86)) (<= ($ref p@@86) $max.u8)) (= ($ptr_to_u8 p@@86) ($ref p@@86)))
 :qid |vcc2comp.2548:15|
 :skolemid |299|
 :pattern ( ($ptr_to_u8 p@@86))
)))
(assert (forall ((p@@87 T@$ptr) ) (!  (=> (and (<= $min.i8 ($ref p@@87)) (<= ($ref p@@87) $max.i8)) (= ($ptr_to_i8 p@@87) ($ref p@@87)))
 :qid |vcc2comp.2549:15|
 :skolemid |300|
 :pattern ( ($ptr_to_i8 p@@87))
)))
(assert (forall ((p@@88 T@$ptr) ) (!  (=> (and (<= 0 ($ref p@@88)) (<= ($ref p@@88) $max.u4)) (= ($ptr_to_u4 p@@88) ($ref p@@88)))
 :qid |vcc2comp.2550:15|
 :skolemid |301|
 :pattern ( ($ptr_to_u4 p@@88))
)))
(assert (forall ((p@@89 T@$ptr) ) (!  (=> (and (<= $min.i4 ($ref p@@89)) (<= ($ref p@@89) $max.i4)) (= ($ptr_to_i4 p@@89) ($ref p@@89)))
 :qid |vcc2comp.2551:15|
 :skolemid |302|
 :pattern ( ($ptr_to_i4 p@@89))
)))
(assert (forall ((p@@90 T@$ptr) ) (!  (=> (and (<= 0 ($ref p@@90)) (<= ($ref p@@90) $max.u2)) (= ($ptr_to_u2 p@@90) ($ref p@@90)))
 :qid |vcc2comp.2552:15|
 :skolemid |303|
 :pattern ( ($ptr_to_u2 p@@90))
)))
(assert (forall ((p@@91 T@$ptr) ) (!  (=> (and (<= $min.i2 ($ref p@@91)) (<= ($ref p@@91) $max.i2)) (= ($ptr_to_i2 p@@91) ($ref p@@91)))
 :qid |vcc2comp.2553:15|
 :skolemid |304|
 :pattern ( ($ptr_to_i2 p@@91))
)))
(assert (forall ((p@@92 T@$ptr) ) (!  (=> (and (<= 0 ($ref p@@92)) (<= ($ref p@@92) $max.u1)) (= ($ptr_to_u1 p@@92) ($ref p@@92)))
 :qid |vcc2comp.2554:15|
 :skolemid |305|
 :pattern ( ($ptr_to_u1 p@@92))
)))
(assert (forall ((p@@93 T@$ptr) ) (!  (=> (and (<= $min.i1 ($ref p@@93)) (<= ($ref p@@93) $max.i1)) (= ($ptr_to_i1 p@@93) ($ref p@@93)))
 :qid |vcc2comp.2555:15|
 :skolemid |306|
 :pattern ( ($ptr_to_i1 p@@93))
)))
(assert (forall ((p1@@1 T@$ptr) (p2 T@$ptr) ) (! (= ($byte_ptr_subtraction p1@@1 p2) (- ($ref p1@@1) ($ref p2)))
 :qid |vcc2comp.2557:44|
 :weight 0
 :skolemid |307|
 :pattern ( ($byte_ptr_subtraction p1@@1 p2))
)))
(assert (forall ((S@@70 T@$state) (r@@20 Int) (t@@24 T@$ctype) ) (!  (=> ($good_state S@@70) ($in_range_t t@@24 ($select.mem ($memory S@@70) ($ptr ($as_in_range_t t@@24) r@@20))))
 :qid |vcc2comp.2560:15|
 :skolemid |308|
 :pattern ( ($select.mem ($memory S@@70) ($ptr ($as_in_range_t t@@24) r@@20)))
)))
(assert (forall ((S@@71 T@$state) (r@@21 Int) (t@@25 T@$ctype) ) (!  (=> ($good_state S@@71) ($in_range_phys_ptr ($select.mem ($memory S@@71) ($ptr ($ptr_to t@@25) r@@21))))
 :qid |vcc2comp.2563:15|
 :skolemid |309|
 :pattern ( ($select.mem ($memory S@@71) ($ptr ($ptr_to t@@25) r@@21)))
)))
(assert (forall ((S@@72 T@$state) (r@@22 Int) (t@@26 T@$ctype) ) (!  (=> ($good_state S@@72) ($in_range_spec_ptr ($select.mem ($memory S@@72) ($ptr ($spec_ptr_to t@@26) r@@22))))
 :qid |vcc2comp.2566:15|
 :skolemid |310|
 :pattern ( ($select.mem ($memory S@@72) ($ptr ($spec_ptr_to t@@26) r@@22)))
)))
(assert (= ($_pow2 0) 1))
(assert (= ($_pow2 1) 2))
(assert (= ($_pow2 2) 4))
(assert (= ($_pow2 3) 8))
(assert (= ($_pow2 4) 16))
(assert (= ($_pow2 5) 32))
(assert (= ($_pow2 6) 64))
(assert (= ($_pow2 7) 128))
(assert (= ($_pow2 8) 256))
(assert (= ($_pow2 9) 512))
(assert (= ($_pow2 10) 1024))
(assert (= ($_pow2 11) 2048))
(assert (= ($_pow2 12) 4096))
(assert (= ($_pow2 13) 8192))
(assert (= ($_pow2 14) 16384))
(assert (= ($_pow2 15) 32768))
(assert (= ($_pow2 16) 65536))
(assert (= ($_pow2 17) 131072))
(assert (= ($_pow2 18) 262144))
(assert (= ($_pow2 19) 524288))
(assert (= ($_pow2 20) 1048576))
(assert (= ($_pow2 21) 2097152))
(assert (= ($_pow2 22) 4194304))
(assert (= ($_pow2 23) 8388608))
(assert (= ($_pow2 24) 16777216))
(assert (= ($_pow2 25) 33554432))
(assert (= ($_pow2 26) 67108864))
(assert (= ($_pow2 27) 134217728))
(assert (= ($_pow2 28) 268435456))
(assert (= ($_pow2 29) 536870912))
(assert (= ($_pow2 30) 1073741824))
(assert (= ($_pow2 31) 2147483648))
(assert (= ($_pow2 32) 4294967296))
(assert (= ($_pow2 33) 8589934592))
(assert (= ($_pow2 34) 17179869184))
(assert (= ($_pow2 35) 34359738368))
(assert (= ($_pow2 36) 68719476736))
(assert (= ($_pow2 37) 137438953472))
(assert (= ($_pow2 38) 274877906944))
(assert (= ($_pow2 39) 549755813888))
(assert (= ($_pow2 40) 1099511627776))
(assert (= ($_pow2 41) 2199023255552))
(assert (= ($_pow2 42) 4398046511104))
(assert (= ($_pow2 43) 8796093022208))
(assert (= ($_pow2 44) 17592186044416))
(assert (= ($_pow2 45) 35184372088832))
(assert (= ($_pow2 46) 70368744177664))
(assert (= ($_pow2 47) 140737488355328))
(assert (= ($_pow2 48) 281474976710656))
(assert (= ($_pow2 49) 562949953421312))
(assert (= ($_pow2 50) 1125899906842624))
(assert (= ($_pow2 51) 2251799813685248))
(assert (= ($_pow2 52) 4503599627370496))
(assert (= ($_pow2 53) 9007199254740992))
(assert (= ($_pow2 54) 18014398509481984))
(assert (= ($_pow2 55) 36028797018963968))
(assert (= ($_pow2 56) 72057594037927936))
(assert (= ($_pow2 57) 144115188075855872))
(assert (= ($_pow2 58) 288230376151711744))
(assert (= ($_pow2 59) 576460752303423488))
(assert (= ($_pow2 60) 1152921504606846976))
(assert (= ($_pow2 61) 2305843009213693952))
(assert (= ($_pow2 62) 4611686018427387904))
(assert (= ($_pow2 63) 9223372036854775808))
(assert (forall ((bits Int) (v@@9 Int) ) (!  (and (=> ($in_range_ubits bits v@@9) (and (<= 0 v@@9) (<= v@@9 (- ($_pow2 bits) 1)))) (=> (and (<= 0 v@@9) (<= v@@9 (- ($_pow2 bits) 1))) ($in_range_ubits bits v@@9)))
 :qid |vcc2comp.2588:26|
 :skolemid |311|
 :pattern ( ($in_range_ubits bits v@@9))
)))
(assert (forall ((bits@@0 Int) (v@@10 Int) ) (!  (and ($in_range_sbits bits@@0 ($unchecked_sbits bits@@0 v@@10)) (=> ($in_range_sbits bits@@0 v@@10) (= ($unchecked_sbits bits@@0 v@@10) v@@10)))
 :qid |vcc2comp.2592:15|
 :skolemid |312|
 :pattern ( ($unchecked_sbits bits@@0 v@@10))
)))
(assert (forall ((bits@@1 Int) (v@@11 Int) ) (!  (and (=> ($in_range_sbits bits@@1 v@@11) (and (<= (- 0 ($_pow2 (- bits@@1 1))) v@@11) (<= v@@11 (- ($_pow2 (- bits@@1 1)) 1)))) (=> (and (<= (- 0 ($_pow2 (- bits@@1 1))) v@@11) (<= v@@11 (- ($_pow2 (- bits@@1 1)) 1))) ($in_range_sbits bits@@1 v@@11)))
 :qid |vcc2comp.2596:26|
 :skolemid |313|
 :pattern ( ($in_range_sbits bits@@1 v@@11))
)))
(assert (forall ((bits@@2 Int) (v@@12 Int) ) (!  (and ($in_range_ubits bits@@2 ($unchecked_ubits bits@@2 v@@12)) (=> ($in_range_ubits bits@@2 v@@12) (= ($unchecked_ubits bits@@2 v@@12) v@@12)))
 :qid |vcc2comp.2600:15|
 :skolemid |314|
 :pattern ( ($unchecked_ubits bits@@2 v@@12))
)))
(assert (forall ((t@@27 T@$ctype) (x@@1 Int) (y@@0 Int) ) (! (= ($unchk_add t@@27 x@@1 y@@0) ($unchecked t@@27 (+ x@@1 y@@0)))
 :qid |vcc2comp.2609:33|
 :weight 0
 :skolemid |315|
 :pattern ( ($unchk_add t@@27 x@@1 y@@0))
)))
(assert (forall ((t@@28 T@$ctype) (x@@2 Int) (y@@1 Int) ) (! (= ($unchk_sub t@@28 x@@2 y@@1) ($unchecked t@@28 (- x@@2 y@@1)))
 :qid |vcc2comp.2610:33|
 :weight 0
 :skolemid |316|
 :pattern ( ($unchk_sub t@@28 x@@2 y@@1))
)))
(assert (forall ((t@@29 T@$ctype) (x@@3 Int) (y@@2 Int) ) (! (= ($unchk_mul t@@29 x@@3 y@@2) ($unchecked t@@29 (* x@@3 y@@2)))
 :qid |vcc2comp.2611:33|
 :weight 0
 :skolemid |317|
 :pattern ( ($unchk_mul t@@29 x@@3 y@@2))
)))
(assert (forall ((x@@4 Int) (y@@3 Int) ) (!  (=> (and (and (and (<= 0 x@@4) (<= x@@4 $max.u8)) (and (<= 0 y@@3) (<= y@@3 $max.u8))) (> (+ x@@4 y@@3) $max.u8)) (= ($unchk_add ^^u8 x@@4 y@@3) (- (- (+ x@@4 y@@3) $max.u8) 1)))
 :qid |vcc2comp.2615:14|
 :skolemid |318|
 :pattern ( ($unchk_add ^^u8 x@@4 y@@3))
)))
(assert (forall ((x@@5 Int) (y@@4 Int) ) (!  (=> (and (and (and (<= 0 x@@5) (<= x@@5 $max.u4)) (and (<= 0 y@@4) (<= y@@4 $max.u4))) (> (+ x@@5 y@@4) $max.u8)) (= ($unchk_add ^^u4 x@@5 y@@4) (- (- (+ x@@5 y@@4) $max.u4) 1)))
 :qid |vcc2comp.2619:14|
 :skolemid |319|
 :pattern ( ($unchk_add ^^u4 x@@5 y@@4))
)))
(assert (forall ((t@@30 T@$ctype) (x@@6 Int) (y@@5 Int) ) (! (= ($_shl t@@30 x@@6 y@@5) ($unchecked t@@30 (* x@@6 ($_pow2 y@@5))))
 :qid |vcc2comp.2624:28|
 :weight 0
 :skolemid |320|
 :pattern ( ($_shl t@@30 x@@6 y@@5))
)))
(assert (forall ((x@@7 Int) (y@@6 Int) ) (! (= ($_shr x@@7 y@@6) (div x@@7 ($_pow2 y@@6)))
 :qid |vcc2comp.2626:28|
 :weight 0
 :skolemid |321|
 :pattern ( ($_shr x@@7 y@@6))
)))
(assert (forall ((x@@8 Int) (from@@0 Int) (to@@0 Int) (xs Int) (val Int) ) (!  (=> (and (and (<= 0 from@@0) (< from@@0 to@@0)) (<= to@@0 xs)) (=> (and (<= 0 val) (< val ($_pow2 (- to@@0 from@@0)))) (and (<= 0 ($bv_update x@@8 xs from@@0 to@@0 val)) (< ($bv_update x@@8 xs from@@0 to@@0 val) ($_pow2 xs)))))
 :qid |vcc2comp.2633:15|
 :skolemid |322|
 :pattern ( ($bv_update x@@8 xs from@@0 to@@0 val))
)))
(assert (forall ((from@@1 Int) (to@@1 Int) (xs@@0 Int) ) (!  (=> (and (and (<= 0 from@@1) (< from@@1 to@@1)) (<= to@@1 xs@@0)) (= ($bv_update 0 xs@@0 from@@1 to@@1 0) 0))
 :qid |vcc2comp.2639:15|
 :skolemid |323|
 :pattern ( ($bv_update 0 xs@@0 from@@1 to@@1 0))
)))
(assert (forall ((from@@2 Int) (to@@2 Int) (val@@0 Int) (x@@9 Int) (xs@@1 Int) ) (!  (=> (and (and (<= 0 from@@2) (< from@@2 to@@2)) (<= to@@2 xs@@1)) (=> (and (<= (- 0 ($_pow2 (- (- to@@2 from@@2) 1))) val@@0) (< val@@0 ($_pow2 (- (- to@@2 from@@2) 1)))) (= ($bv_extract_signed ($bv_update x@@9 xs@@1 from@@2 to@@2 val@@0) xs@@1 from@@2 to@@2) val@@0)))
 :qid |vcc2comp.2643:15|
 :skolemid |324|
 :pattern ( ($bv_extract_signed ($bv_update x@@9 xs@@1 from@@2 to@@2 val@@0) xs@@1 from@@2 to@@2))
)))
(assert (forall ((from@@3 Int) (to@@3 Int) (val@@1 Int) (x@@10 Int) (xs@@2 Int) ) (!  (=> (and (and (<= 0 from@@3) (< from@@3 to@@3)) (<= to@@3 xs@@2)) (=> (and (<= 0 val@@1) (< val@@1 ($_pow2 (- to@@3 from@@3)))) (= ($bv_extract_unsigned ($bv_update x@@10 xs@@2 from@@3 to@@3 val@@1) xs@@2 from@@3 to@@3) val@@1)))
 :qid |vcc2comp.2649:15|
 :skolemid |325|
 :pattern ( ($bv_extract_unsigned ($bv_update x@@10 xs@@2 from@@3 to@@3 val@@1) xs@@2 from@@3 to@@3))
)))
(assert (forall ((from@@4 Int) (to@@4 Int) (x@@11 Int) (xs@@3 Int) ) (!  (=> (and (and (<= 0 from@@4) (< from@@4 to@@4)) (<= to@@4 xs@@3)) (and (<= (- 0 ($_pow2 (- (- to@@4 from@@4) 1))) ($bv_extract_signed x@@11 xs@@3 from@@4 to@@4)) (<= ($bv_extract_signed x@@11 xs@@3 from@@4 to@@4) (- ($_pow2 (- (- to@@4 from@@4) 1)) 1))))
 :qid |vcc2comp.2655:15|
 :skolemid |326|
 :pattern ( ($bv_extract_signed x@@11 xs@@3 from@@4 to@@4))
)))
(assert (forall ((from@@5 Int) (to@@5 Int) (x@@12 Int) (xs@@4 Int) ) (!  (=> (and (and (<= 0 from@@5) (< from@@5 to@@5)) (<= to@@5 xs@@4)) (and (<= 0 ($bv_extract_unsigned x@@12 xs@@4 from@@5 to@@5)) (<= ($bv_extract_unsigned x@@12 xs@@4 from@@5 to@@5) (- ($_pow2 (- to@@5 from@@5)) 1))))
 :qid |vcc2comp.2660:15|
 :skolemid |327|
 :pattern ( ($bv_extract_unsigned x@@12 xs@@4 from@@5 to@@5))
)))
(assert (forall ((from@@6 Int) (to@@6 Int) (val@@2 Int) (x@@13 Int) (xs@@5 Int) (from2 Int) (to2 Int) ) (!  (=> (and (and (<= 0 from@@6) (< from@@6 to@@6)) (<= to@@6 xs@@5)) (=> (and (and (<= 0 from2) (< from2 to2)) (<= to2 xs@@5)) (=> (or (<= to2 from@@6) (<= to@@6 from2)) (= ($bv_extract_signed ($bv_update x@@13 xs@@5 from@@6 to@@6 val@@2) xs@@5 from2 to2) ($bv_extract_signed x@@13 xs@@5 from2 to2)))))
 :qid |vcc2comp.2665:15|
 :skolemid |328|
 :pattern ( ($bv_extract_signed ($bv_update x@@13 xs@@5 from@@6 to@@6 val@@2) xs@@5 from2 to2))
)))
(assert (forall ((from@@7 Int) (to@@7 Int) (val@@3 Int) (x@@14 Int) (xs@@6 Int) (from2@@0 Int) (to2@@0 Int) ) (!  (=> (and (and (<= 0 from@@7) (< from@@7 to@@7)) (<= to@@7 xs@@6)) (=> (and (and (<= 0 from2@@0) (< from2@@0 to2@@0)) (<= to2@@0 xs@@6)) (=> (or (<= to2@@0 from@@7) (<= to@@7 from2@@0)) (= ($bv_extract_unsigned ($bv_update x@@14 xs@@6 from@@7 to@@7 val@@3) xs@@6 from2@@0 to2@@0) ($bv_extract_unsigned x@@14 xs@@6 from2@@0 to2@@0)))))
 :qid |vcc2comp.2672:15|
 :skolemid |329|
 :pattern ( ($bv_extract_unsigned ($bv_update x@@14 xs@@6 from@@7 to@@7 val@@3) xs@@6 from2@@0 to2@@0))
)))
(assert (forall ((from@@8 Int) (to@@8 Int) (xs@@7 Int) ) (!  (=> (and (and (<= 0 from@@8) (< from@@8 to@@8)) (<= to@@8 xs@@7)) (= ($bv_extract_signed 0 xs@@7 from@@8 to@@8) 0))
 :qid |vcc2comp.2679:15|
 :skolemid |330|
 :pattern ( ($bv_extract_signed 0 xs@@7 from@@8 to@@8))
)))
(assert (forall ((from@@9 Int) (to@@9 Int) (xs@@8 Int) ) (!  (=> (and (and (<= 0 from@@9) (< from@@9 to@@9)) (<= to@@9 xs@@8)) (= ($bv_extract_unsigned 0 xs@@8 from@@9 to@@9) 0))
 :qid |vcc2comp.2684:15|
 :skolemid |331|
 :pattern ( ($bv_extract_unsigned 0 xs@@8 from@@9 to@@9))
)))
(assert (forall ((from@@10 Int) (to@@10 Int) (val@@4 Int) (xs@@9 Int) ) (!  (=> (and (and (and (<= 0 from@@10) (< from@@10 to@@10)) (<= to@@10 xs@@9)) (<= 0 val@@4)) (= ($bv_extract_unsigned val@@4 xs@@9 from@@10 to@@10) (mod (div val@@4 ($_pow2 from@@10)) ($_pow2 (- to@@10 from@@10)))))
 :qid |vcc2comp.2689:15|
 :skolemid |332|
 :pattern ( ($bv_extract_unsigned val@@4 xs@@9 from@@10 to@@10))
)))
(assert (forall ((from@@11 Int) (to@@11 Int) (val@@5 Int) (xs@@10 Int) ) (!  (=> (and (and (and (and (<= 0 from@@11) (< from@@11 to@@11)) (<= to@@11 xs@@10)) (<= 0 val@@5)) (< (mod (div val@@5 ($_pow2 from@@11)) ($_pow2 (- to@@11 from@@11))) ($_pow2 (- (- to@@11 from@@11) 1)))) (= ($bv_extract_signed val@@5 xs@@10 from@@11 to@@11) (mod (div val@@5 ($_pow2 from@@11)) ($_pow2 (- to@@11 from@@11)))))
 :qid |vcc2comp.2694:15|
 :skolemid |333|
 :pattern ( ($bv_extract_signed val@@5 xs@@10 from@@11 to@@11))
)))
(assert (forall ((from@@12 Int) (to@@12 Int) (val@@6 Int) (xs@@11 Int) ) (!  (=> (and (and (and (and (<= 0 from@@12) (< from@@12 to@@12)) (<= to@@12 xs@@11)) (<= 0 val@@6)) (>= (mod (div val@@6 ($_pow2 from@@12)) ($_pow2 (- to@@12 from@@12))) ($_pow2 (- (- to@@12 from@@12) 1)))) (= ($bv_extract_signed val@@6 xs@@11 from@@12 to@@12) (- ($_pow2 (- (- to@@12 from@@12) 1)) (mod (div val@@6 ($_pow2 from@@12)) ($_pow2 (- to@@12 from@@12))))))
 :qid |vcc2comp.2699:15|
 :skolemid |334|
 :pattern ( ($bv_extract_signed val@@6 xs@@11 from@@12 to@@12))
)))
(assert (forall ((val@@7 Int) ) (!  (and (=> ($in_range_t ^^i1 val@@7) (and (<= $min.i1 val@@7) (<= val@@7 $max.i1))) (=> (and (<= $min.i1 val@@7) (<= val@@7 $max.i1)) ($in_range_t ^^i1 val@@7)))
 :qid |vcc2comp.2727:15|
 :skolemid |335|
 :pattern ( ($in_range_t ^^i1 val@@7))
)))
(assert (forall ((val@@8 Int) ) (!  (and (=> ($in_range_t ^^i2 val@@8) (and (<= $min.i2 val@@8) (<= val@@8 $max.i2))) (=> (and (<= $min.i2 val@@8) (<= val@@8 $max.i2)) ($in_range_t ^^i2 val@@8)))
 :qid |vcc2comp.2728:15|
 :skolemid |336|
 :pattern ( ($in_range_t ^^i2 val@@8))
)))
(assert (forall ((val@@9 Int) ) (!  (and (=> ($in_range_t ^^i4 val@@9) (and (<= $min.i4 val@@9) (<= val@@9 $max.i4))) (=> (and (<= $min.i4 val@@9) (<= val@@9 $max.i4)) ($in_range_t ^^i4 val@@9)))
 :qid |vcc2comp.2729:15|
 :skolemid |337|
 :pattern ( ($in_range_t ^^i4 val@@9))
)))
(assert (forall ((val@@10 Int) ) (!  (and (=> ($in_range_t ^^i8 val@@10) (and (<= $min.i8 val@@10) (<= val@@10 $max.i8))) (=> (and (<= $min.i8 val@@10) (<= val@@10 $max.i8)) ($in_range_t ^^i8 val@@10)))
 :qid |vcc2comp.2730:15|
 :skolemid |338|
 :pattern ( ($in_range_t ^^i8 val@@10))
)))
(assert (forall ((val@@11 Int) ) (!  (and (=> ($in_range_t ^^u1 val@@11) (and (<= 0 val@@11) (<= val@@11 $max.u1))) (=> (and (<= 0 val@@11) (<= val@@11 $max.u1)) ($in_range_t ^^u1 val@@11)))
 :qid |vcc2comp.2731:15|
 :skolemid |339|
 :pattern ( ($in_range_t ^^u1 val@@11))
)))
(assert (forall ((val@@12 Int) ) (!  (and (=> ($in_range_t ^^u2 val@@12) (and (<= 0 val@@12) (<= val@@12 $max.u2))) (=> (and (<= 0 val@@12) (<= val@@12 $max.u2)) ($in_range_t ^^u2 val@@12)))
 :qid |vcc2comp.2732:15|
 :skolemid |340|
 :pattern ( ($in_range_t ^^u2 val@@12))
)))
(assert (forall ((val@@13 Int) ) (!  (and (=> ($in_range_t ^^u4 val@@13) (and (<= 0 val@@13) (<= val@@13 $max.u4))) (=> (and (<= 0 val@@13) (<= val@@13 $max.u4)) ($in_range_t ^^u4 val@@13)))
 :qid |vcc2comp.2733:15|
 :skolemid |341|
 :pattern ( ($in_range_t ^^u4 val@@13))
)))
(assert (forall ((val@@14 Int) ) (!  (and (=> ($in_range_t ^^u8 val@@14) (and (<= 0 val@@14) (<= val@@14 $max.u8))) (=> (and (<= 0 val@@14) (<= val@@14 $max.u8)) ($in_range_t ^^u8 val@@14)))
 :qid |vcc2comp.2734:15|
 :skolemid |342|
 :pattern ( ($in_range_t ^^u8 val@@14))
)))
(assert (forall ((val@@15 Int) ) (! ($in_range_t ^^mathint val@@15)
 :qid |vcc2comp.2735:15|
 :skolemid |343|
 :pattern ( ($in_range_t ^^mathint val@@15))
)))
(assert (forall ((t@@31 T@$ctype) (val@@16 Int) ) (!  (=> ($in_range_t t@@31 val@@16) (= ($unchecked t@@31 val@@16) val@@16))
 :qid |vcc2comp.2737:15|
 :skolemid |344|
 :pattern ( ($unchecked t@@31 val@@16))
)))
(assert (forall ((t@@32 T@$ctype) (val@@17 Int) ) (! ($in_range_t t@@32 ($unchecked t@@32 val@@17))
 :qid |vcc2comp.2738:15|
 :skolemid |345|
 :pattern ( ($unchecked t@@32 val@@17))
)))
(assert (forall ((val@@18 Int) ) (!  (=> (and (<= 0 val@@18) (<= val@@18 $max.u1)) (= ($unchecked ^^u1 ($unchecked ^^i1 val@@18)) val@@18))
 :qid |vcc2comp.2740:15|
 :skolemid |346|
 :pattern ( ($unchecked ^^u1 ($unchecked ^^i1 val@@18)))
)))
(assert (forall ((val@@19 Int) ) (!  (=> (and (<= 0 val@@19) (<= val@@19 $max.u2)) (= ($unchecked ^^u2 ($unchecked ^^i2 val@@19)) val@@19))
 :qid |vcc2comp.2741:15|
 :skolemid |347|
 :pattern ( ($unchecked ^^u2 ($unchecked ^^i2 val@@19)))
)))
(assert (forall ((val@@20 Int) ) (!  (=> (and (<= 0 val@@20) (<= val@@20 $max.u4)) (= ($unchecked ^^u4 ($unchecked ^^i4 val@@20)) val@@20))
 :qid |vcc2comp.2742:15|
 :skolemid |348|
 :pattern ( ($unchecked ^^u4 ($unchecked ^^i4 val@@20)))
)))
(assert (forall ((val@@21 Int) ) (!  (=> (and (<= 0 val@@21) (<= val@@21 $max.u8)) (= ($unchecked ^^u8 ($unchecked ^^i8 val@@21)) val@@21))
 :qid |vcc2comp.2743:15|
 :skolemid |349|
 :pattern ( ($unchecked ^^u8 ($unchecked ^^i8 val@@21)))
)))
(assert (forall ((val@@22 Int) ) (!  (=> (and (<= $min.i1 val@@22) (<= val@@22 $max.i1)) (= ($unchecked ^^i1 ($unchecked ^^u1 val@@22)) val@@22))
 :qid |vcc2comp.2744:15|
 :skolemid |350|
 :pattern ( ($unchecked ^^i1 ($unchecked ^^u1 val@@22)))
)))
(assert (forall ((val@@23 Int) ) (!  (=> (and (<= $min.i2 val@@23) (<= val@@23 $max.i2)) (= ($unchecked ^^i2 ($unchecked ^^u2 val@@23)) val@@23))
 :qid |vcc2comp.2745:15|
 :skolemid |351|
 :pattern ( ($unchecked ^^i2 ($unchecked ^^u2 val@@23)))
)))
(assert (forall ((val@@24 Int) ) (!  (=> (and (<= $min.i4 val@@24) (<= val@@24 $max.i4)) (= ($unchecked ^^i4 ($unchecked ^^u4 val@@24)) val@@24))
 :qid |vcc2comp.2746:15|
 :skolemid |352|
 :pattern ( ($unchecked ^^i4 ($unchecked ^^u4 val@@24)))
)))
(assert (forall ((val@@25 Int) ) (!  (=> (and (<= $min.i8 val@@25) (<= val@@25 $max.i8)) (= ($unchecked ^^i8 ($unchecked ^^u8 val@@25)) val@@25))
 :qid |vcc2comp.2747:15|
 :skolemid |353|
 :pattern ( ($unchecked ^^i8 ($unchecked ^^u8 val@@25)))
)))
(assert (= ($unchecked ^^u4 (- 0 1)) $max.u4))
(assert (= ($unchecked ^^u4 (+ $max.u4 1)) 0))
(assert (= ($unchecked ^^u8 (- 0 1)) $max.u8))
(assert (= ($unchecked ^^u8 (+ $max.u8 1)) 0))
(assert (forall ((t@@33 T@$ctype) (x@@15 Int) (y@@7 Int) (z Int) ) (!  (=> (and (and ($in_range_t t@@33 x@@15) ($in_range_t t@@33 (- ($_pow2 y@@7) 1))) (>= x@@15 0)) (= (mod x@@15 ($_pow2 y@@7)) ($_and t@@33 x@@15 (- ($_pow2 y@@7) 1))))
 :qid |vcc2comp.2758:15|
 :skolemid |354|
 :pattern ( (mod x@@15 ($_pow2 y@@7)) ($_and t@@33 x@@15 z))
)))
(assert (forall ((i@@21 Int) (j@@0 Int) ) (!  (=> (and (<= 0 i@@21) (< 0 j@@0)) (<= (div i@@21 j@@0) i@@21))
 :qid |vcc2comp.2764:15|
 :skolemid |355|
 :pattern ( (div i@@21 j@@0))
)))
(assert (forall ((i@@22 Int) (j@@1 Int) ) (!  (=> (and (> i@@22 0) (> j@@1 0)) (and (< (- i@@22 j@@1) (* (div i@@22 j@@1) j@@1)) (<= (* (div i@@22 j@@1) j@@1) i@@22)))
 :qid |vcc2comp.2766:15|
 :skolemid |356|
 :pattern ( (div i@@22 j@@1))
)))
(assert (forall ((i@@23 Int) ) (!  (=> (not (= i@@23 0)) (= (div i@@23 i@@23) 1))
 :qid |vcc2comp.2767:15|
 :skolemid |357|
 :pattern ( (div i@@23 i@@23))
)))
(assert (forall ((i@@24 Int) ) (!  (=> (not (= i@@24 0)) (= (div 0 i@@24) 0))
 :qid |vcc2comp.2768:15|
 :skolemid |358|
 :pattern ( (div 0 i@@24))
)))
(assert (forall ((x@@16 Int) (y@@8 Int) ) (! (= (mod x@@16 y@@8) (- x@@16 (* (div x@@16 y@@8) y@@8)))
 :qid |vcc2comp.2771:15|
 :skolemid |359|
 :pattern ( (mod x@@16 y@@8))
 :pattern ( (div x@@16 y@@8))
)))
(assert (forall ((x@@17 Int) (y@@9 Int) ) (!  (=> (and (<= 0 x@@17) (< 0 y@@9)) (and (<= 0 (mod x@@17 y@@9)) (< (mod x@@17 y@@9) y@@9)))
 :qid |vcc2comp.2772:15|
 :skolemid |360|
 :pattern ( (mod x@@17 y@@9))
)))
(assert (forall ((x@@18 Int) (y@@10 Int) ) (!  (=> (and (<= 0 x@@18) (< y@@10 0)) (and (<= 0 (mod x@@18 y@@10)) (< (mod x@@18 y@@10) (- 0 y@@10))))
 :qid |vcc2comp.2773:15|
 :skolemid |361|
 :pattern ( (mod x@@18 y@@10))
)))
(assert (forall ((x@@19 Int) (y@@11 Int) ) (!  (=> (and (<= x@@19 0) (< 0 y@@11)) (and (< (- 0 y@@11) (mod x@@19 y@@11)) (<= (mod x@@19 y@@11) 0)))
 :qid |vcc2comp.2774:15|
 :skolemid |362|
 :pattern ( (mod x@@19 y@@11))
)))
(assert (forall ((x@@20 Int) (y@@12 Int) ) (!  (=> (and (<= x@@20 0) (< y@@12 0)) (and (< y@@12 (mod x@@20 y@@12)) (<= (mod x@@20 y@@12) 0)))
 :qid |vcc2comp.2775:15|
 :skolemid |363|
 :pattern ( (mod x@@20 y@@12))
)))
(assert (forall ((t@@34 T@$ctype) (x@@21 Int) (y@@13 Int) ) (!  (=> (and (<= 0 x@@21) ($in_range_t t@@34 x@@21)) (and (<= 0 ($_and t@@34 x@@21 y@@13)) (<= ($_and t@@34 x@@21 y@@13) x@@21)))
 :qid |vcc2comp.2784:15|
 :skolemid |364|
 :pattern ( ($_and t@@34 x@@21 y@@13))
)))
(assert (forall ((t@@35 T@$ctype) (x@@22 Int) (y@@14 Int) ) (!  (=> (and (and (and (<= 0 x@@22) (<= 0 y@@14)) ($in_range_t t@@35 x@@22)) ($in_range_t t@@35 y@@14)) (and (<= ($_and t@@35 x@@22 y@@14) x@@22) (<= ($_and t@@35 x@@22 y@@14) y@@14)))
 :qid |vcc2comp.2785:15|
 :skolemid |365|
 :pattern ( ($_and t@@35 x@@22 y@@14))
)))
(assert (forall ((t@@36 T@$ctype) (x@@23 Int) (y@@15 Int) ) (!  (=> (and (and (and (<= 0 x@@23) (<= 0 y@@15)) ($in_range_t t@@36 x@@23)) ($in_range_t t@@36 y@@15)) (and (<= 0 ($_or t@@36 x@@23 y@@15)) (<= ($_or t@@36 x@@23 y@@15) (+ x@@23 y@@15))))
 :qid |vcc2comp.2786:15|
 :skolemid |366|
 :pattern ( ($_or t@@36 x@@23 y@@15))
)))
(assert (forall ((t@@37 T@$ctype) (x@@24 Int) (y@@16 Int) ) (!  (=> (and (and (and (<= 0 x@@24) (<= 0 y@@16)) ($in_range_t t@@37 x@@24)) ($in_range_t t@@37 y@@16)) (and (<= x@@24 ($_or t@@37 x@@24 y@@16)) (<= y@@16 ($_or t@@37 x@@24 y@@16))))
 :qid |vcc2comp.2787:15|
 :skolemid |367|
 :pattern ( ($_or t@@37 x@@24 y@@16))
)))
(assert (forall ((t@@38 T@$ctype) (x@@25 Int) (y@@17 Int) (z@@0 Int) ) (!  (=> (and (and (and (and (and (and (and (<= 0 x@@25) (<= 0 y@@17)) (<= 0 z@@0)) (< z@@0 64)) (< x@@25 ($_pow2 z@@0))) (< y@@17 ($_pow2 z@@0))) ($in_range_t t@@38 x@@25)) ($in_range_t t@@38 y@@17)) (< ($_or t@@38 x@@25 y@@17) ($_pow2 z@@0)))
 :qid |vcc2comp.2788:15|
 :skolemid |368|
 :pattern ( ($_or t@@38 x@@25 y@@17) ($_pow2 z@@0))
)))
(assert (forall ((t@@39 T@$ctype) (x@@26 Int) (y@@18 Int) ) (!  (=> (and (and (<= 0 x@@26) (<= x@@26 $max.u1)) (and (<= 0 y@@18) (<= y@@18 $max.u1))) (and (<= 0 ($_or t@@39 x@@26 y@@18)) (<= ($_or t@@39 x@@26 y@@18) $max.u1)))
 :qid |vcc2comp.2791:15|
 :skolemid |369|
 :pattern ( ($_or t@@39 x@@26 y@@18))
)))
(assert (forall ((t@@40 T@$ctype) (x@@27 Int) (y@@19 Int) ) (!  (=> (and (and (<= 0 x@@27) (<= x@@27 $max.u2)) (and (<= 0 y@@19) (<= y@@19 $max.u2))) (and (<= 0 ($_or t@@40 x@@27 y@@19)) (<= ($_or t@@40 x@@27 y@@19) $max.u2)))
 :qid |vcc2comp.2792:15|
 :skolemid |370|
 :pattern ( ($_or t@@40 x@@27 y@@19))
)))
(assert (forall ((t@@41 T@$ctype) (x@@28 Int) (y@@20 Int) ) (!  (=> (and (and (<= 0 x@@28) (<= x@@28 $max.u4)) (and (<= 0 y@@20) (<= y@@20 $max.u4))) (and (<= 0 ($_or t@@41 x@@28 y@@20)) (<= ($_or t@@41 x@@28 y@@20) $max.u4)))
 :qid |vcc2comp.2793:15|
 :skolemid |371|
 :pattern ( ($_or t@@41 x@@28 y@@20))
)))
(assert (forall ((t@@42 T@$ctype) (x@@29 Int) (y@@21 Int) ) (!  (=> (and (and (<= 0 x@@29) (<= x@@29 $max.u8)) (and (<= 0 y@@21) (<= y@@21 $max.u8))) (and (<= 0 ($_or t@@42 x@@29 y@@21)) (<= ($_or t@@42 x@@29 y@@21) $max.u8)))
 :qid |vcc2comp.2794:15|
 :skolemid |372|
 :pattern ( ($_or t@@42 x@@29 y@@21))
)))
(assert (forall ((t@@43 T@$ctype) (x@@30 Int) (y@@22 Int) ) (!  (=> (and (and (<= 0 x@@30) (<= x@@30 $max.u1)) (and (<= 0 y@@22) (<= y@@22 $max.u1))) (and (<= 0 ($_and t@@43 x@@30 y@@22)) (<= ($_and t@@43 x@@30 y@@22) $max.u1)))
 :qid |vcc2comp.2796:15|
 :skolemid |373|
 :pattern ( ($_and t@@43 x@@30 y@@22))
)))
(assert (forall ((t@@44 T@$ctype) (x@@31 Int) (y@@23 Int) ) (!  (=> (and (and (<= 0 x@@31) (<= x@@31 $max.u2)) (and (<= 0 y@@23) (<= y@@23 $max.u2))) (and (<= 0 ($_and t@@44 x@@31 y@@23)) (<= ($_and t@@44 x@@31 y@@23) $max.u2)))
 :qid |vcc2comp.2797:15|
 :skolemid |374|
 :pattern ( ($_and t@@44 x@@31 y@@23))
)))
(assert (forall ((t@@45 T@$ctype) (x@@32 Int) (y@@24 Int) ) (!  (=> (and (and (<= 0 x@@32) (<= x@@32 $max.u4)) (and (<= 0 y@@24) (<= y@@24 $max.u4))) (and (<= 0 ($_and t@@45 x@@32 y@@24)) (<= ($_and t@@45 x@@32 y@@24) $max.u4)))
 :qid |vcc2comp.2798:15|
 :skolemid |375|
 :pattern ( ($_and t@@45 x@@32 y@@24))
)))
(assert (forall ((t@@46 T@$ctype) (x@@33 Int) (y@@25 Int) ) (!  (=> (and (and (<= 0 x@@33) (<= x@@33 $max.u8)) (and (<= 0 y@@25) (<= y@@25 $max.u8))) (and (<= 0 ($_and t@@46 x@@33 y@@25)) (<= ($_and t@@46 x@@33 y@@25) $max.u8)))
 :qid |vcc2comp.2799:15|
 :skolemid |376|
 :pattern ( ($_and t@@46 x@@33 y@@25))
)))
(assert (forall ((t@@47 T@$ctype) (x@@34 Int) (y@@26 Int) ) (!  (=> (and (and (<= 0 x@@34) (<= x@@34 $max.u1)) (and (<= 0 y@@26) (<= y@@26 $max.u1))) (and (<= 0 ($_xor t@@47 x@@34 y@@26)) (<= ($_xor t@@47 x@@34 y@@26) $max.u1)))
 :qid |vcc2comp.2801:15|
 :skolemid |377|
 :pattern ( ($_xor t@@47 x@@34 y@@26))
)))
(assert (forall ((t@@48 T@$ctype) (x@@35 Int) (y@@27 Int) ) (!  (=> (and (and (<= 0 x@@35) (<= x@@35 $max.u2)) (and (<= 0 y@@27) (<= y@@27 $max.u2))) (and (<= 0 ($_xor t@@48 x@@35 y@@27)) (<= ($_xor t@@48 x@@35 y@@27) $max.u2)))
 :qid |vcc2comp.2802:15|
 :skolemid |378|
 :pattern ( ($_xor t@@48 x@@35 y@@27))
)))
(assert (forall ((t@@49 T@$ctype) (x@@36 Int) (y@@28 Int) ) (!  (=> (and (and (<= 0 x@@36) (<= x@@36 $max.u4)) (and (<= 0 y@@28) (<= y@@28 $max.u4))) (and (<= 0 ($_xor t@@49 x@@36 y@@28)) (<= ($_xor t@@49 x@@36 y@@28) $max.u4)))
 :qid |vcc2comp.2803:15|
 :skolemid |379|
 :pattern ( ($_xor t@@49 x@@36 y@@28))
)))
(assert (forall ((t@@50 T@$ctype) (x@@37 Int) (y@@29 Int) ) (!  (=> (and (and (<= 0 x@@37) (<= x@@37 $max.u8)) (and (<= 0 y@@29) (<= y@@29 $max.u8))) (and (<= 0 ($_xor t@@50 x@@37 y@@29)) (<= ($_xor t@@50 x@@37 y@@29) $max.u8)))
 :qid |vcc2comp.2804:15|
 :skolemid |380|
 :pattern ( ($_xor t@@50 x@@37 y@@29))
)))
(assert (forall ((t@@51 T@$ctype) (x@@38 Int) ) (! ($in_range_t t@@51 ($_not t@@51 x@@38))
 :qid |vcc2comp.2806:15|
 :skolemid |381|
 :pattern ( ($_not t@@51 x@@38))
)))
(assert (forall ((t@@52 T@$ctype) (x@@39 Int) ) (! (= ($_or t@@52 x@@39 ($_not t@@52 x@@39)) ($_not t@@52 0))
 :qid |vcc2comp.2811:15|
 :skolemid |382|
 :pattern ( ($_or t@@52 x@@39 ($_not t@@52 x@@39)))
)))
(assert (forall ((t@@53 T@$ctype) (x@@40 Int) ) (! (= ($_and t@@53 x@@40 ($_not t@@53 x@@40)) 0)
 :qid |vcc2comp.2812:15|
 :skolemid |383|
 :pattern ( ($_and t@@53 x@@40 ($_not t@@53 x@@40)))
)))
(assert (forall ((t@@54 T@$ctype) (x@@41 Int) ) (!  (=> ($in_range_t t@@54 x@@41) (= ($_or t@@54 x@@41 0) x@@41))
 :qid |vcc2comp.2813:15|
 :skolemid |384|
 :pattern ( ($_or t@@54 x@@41 0))
)))
(assert (forall ((t@@55 T@$ctype) (x@@42 Int) ) (! (= ($_or t@@55 x@@42 ($_not t@@55 0)) ($_not t@@55 0))
 :qid |vcc2comp.2814:15|
 :skolemid |385|
 :pattern ( ($_or t@@55 x@@42 ($_not t@@55 0)))
)))
(assert (forall ((t@@56 T@$ctype) (x@@43 Int) ) (!  (=> ($in_range_t t@@56 x@@43) (= ($_or t@@56 x@@43 x@@43) x@@43))
 :qid |vcc2comp.2815:15|
 :skolemid |386|
 :pattern ( ($_or t@@56 x@@43 x@@43))
)))
(assert (forall ((t@@57 T@$ctype) (x@@44 Int) ) (! (= ($_and t@@57 x@@44 0) 0)
 :qid |vcc2comp.2816:15|
 :skolemid |387|
 :pattern ( ($_and t@@57 x@@44 0))
)))
(assert (forall ((t@@58 T@$ctype) (x@@45 Int) ) (!  (=> ($in_range_t t@@58 x@@45) (= ($_and t@@58 x@@45 ($_not t@@58 0)) x@@45))
 :qid |vcc2comp.2817:15|
 :skolemid |388|
 :pattern ( ($_and t@@58 x@@45 ($_not t@@58 0)))
)))
(assert (forall ((t@@59 T@$ctype) (x@@46 Int) ) (!  (=> ($in_range_t t@@59 x@@46) (= ($_and t@@59 x@@46 x@@46) x@@46))
 :qid |vcc2comp.2818:15|
 :skolemid |389|
 :pattern ( ($_and t@@59 x@@46 x@@46))
)))
(assert (forall ((t@@60 T@$ctype) (x@@47 Int) (y@@30 Int) ) (! (= ($_and t@@60 ($_or t@@60 x@@47 y@@30) y@@30) y@@30)
 :qid |vcc2comp.2819:15|
 :skolemid |390|
 :pattern ( ($_and t@@60 ($_or t@@60 x@@47 y@@30) y@@30))
)))
(assert (forall ((t@@61 T@$ctype) (x@@48 Int) (y@@31 Int) ) (! (= ($_and t@@61 ($_or t@@61 x@@48 y@@31) x@@48) x@@48)
 :qid |vcc2comp.2820:15|
 :skolemid |391|
 :pattern ( ($_and t@@61 ($_or t@@61 x@@48 y@@31) x@@48))
)))
(assert (forall ((t@@62 T@$ctype) (x@@49 Int) ) (!  (=> ($in_range_t t@@62 x@@49) (= ($_xor t@@62 x@@49 0) x@@49))
 :qid |vcc2comp.2821:15|
 :skolemid |392|
 :pattern ( ($_xor t@@62 x@@49 0))
)))
(assert (forall ((t@@63 T@$ctype) (x@@50 Int) ) (! (= ($_xor t@@63 x@@50 x@@50) 0)
 :qid |vcc2comp.2822:15|
 :skolemid |393|
 :pattern ( ($_xor t@@63 x@@50 x@@50))
)))
(assert (forall ((t@@64 T@$ctype) (x@@51 Int) ) (! (= ($_xor t@@64 x@@51 ($_not t@@64 0)) ($_not t@@64 x@@51))
 :qid |vcc2comp.2823:15|
 :skolemid |394|
 :pattern ( ($_xor t@@64 x@@51 ($_not t@@64 0)))
)))
(assert (forall ((t@@65 T@$ctype) (x@@52 Int) ) (!  (=> ($in_range_t t@@65 x@@52) (= ($_not t@@65 ($_not t@@65 x@@52)) x@@52))
 :qid |vcc2comp.2824:15|
 :skolemid |395|
 :pattern ( ($_not t@@65 ($_not t@@65 x@@52)))
)))
(assert (forall ((t@@66 T@$ctype) (x@@53 Int) (y@@32 Int) ) (! (= ($_or t@@66 x@@53 y@@32) ($_or t@@66 y@@32 x@@53))
 :qid |vcc2comp.2825:15|
 :skolemid |396|
 :pattern ( ($_or t@@66 x@@53 y@@32))
)))
(assert (forall ((t@@67 T@$ctype) (x@@54 Int) (y@@33 Int) ) (! (= ($_xor t@@67 x@@54 y@@33) ($_xor t@@67 y@@33 x@@54))
 :qid |vcc2comp.2826:15|
 :skolemid |397|
 :pattern ( ($_xor t@@67 x@@54 y@@33))
)))
(assert (forall ((t@@68 T@$ctype) (x@@55 Int) (y@@34 Int) ) (! (= ($_and t@@68 x@@55 y@@34) ($_and t@@68 y@@34 x@@55))
 :qid |vcc2comp.2827:15|
 :skolemid |398|
 :pattern ( ($_and t@@68 x@@55 y@@34))
)))
(assert (forall ((x@@56 Int) (y@@35 Int) ) (! (= ($op_mul x@@56 y@@35) (* x@@56 y@@35))
 :qid |vcc2comp.2831:30|
 :weight 0
 :skolemid |399|
 :pattern ( ($op_mul x@@56 y@@35))
)))
(assert (forall ((t@@69 T@$ctype) (x@@57 Int) (y@@36 Int) ) (! (= ($op_add t@@69 x@@57 y@@36) (+ x@@57 y@@36))
 :qid |vcc2comp.2836:30|
 :weight 0
 :skolemid |400|
 :pattern ( ($op_add t@@69 x@@57 y@@36))
)))
(assert (forall ((t@@70 T@$ctype) (x@@58 Int) (y@@37 Int) ) (! (= ($op_sub t@@70 x@@58 y@@37) (- x@@58 y@@37))
 :qid |vcc2comp.2837:30|
 :weight 0
 :skolemid |401|
 :pattern ( ($op_sub t@@70 x@@58 y@@37))
)))
(assert (forall ((t@@71 T@$ctype) (x@@59 Int) (y@@38 Int) ) (! (= ($op_div t@@71 x@@59 y@@38) (div x@@59 y@@38))
 :qid |vcc2comp.2838:30|
 :weight 0
 :skolemid |402|
 :pattern ( ($op_div t@@71 x@@59 y@@38))
)))
(assert (forall ((t@@72 T@$ctype) (x@@60 Int) (y@@39 Int) ) (!  (and (=> ($op_lt t@@72 x@@60 y@@39) (< x@@60 y@@39)) (=> (< x@@60 y@@39) ($op_lt t@@72 x@@60 y@@39)))
 :qid |vcc2comp.2839:29|
 :weight 0
 :skolemid |403|
 :pattern ( ($op_lt t@@72 x@@60 y@@39))
)))
(assert (forall ((t@@73 T@$ctype) (x@@61 Int) (y@@40 Int) ) (!  (and (=> ($op_le t@@73 x@@61 y@@40) (<= x@@61 y@@40)) (=> (<= x@@61 y@@40) ($op_le t@@73 x@@61 y@@40)))
 :qid |vcc2comp.2840:29|
 :weight 0
 :skolemid |404|
 :pattern ( ($op_le t@@73 x@@61 y@@40))
)))
(assert (forall ((t@@74 T@$ctype) (x@@62 Int) (y@@41 Int) ) (!  (and (=> ($op_gt t@@74 x@@62 y@@41) (> x@@62 y@@41)) (=> (> x@@62 y@@41) ($op_gt t@@74 x@@62 y@@41)))
 :qid |vcc2comp.2841:29|
 :weight 0
 :skolemid |405|
 :pattern ( ($op_gt t@@74 x@@62 y@@41))
)))
(assert (forall ((t@@75 T@$ctype) (x@@63 Int) (y@@42 Int) ) (!  (and (=> ($op_ge t@@75 x@@63 y@@42) (>= x@@63 y@@42)) (=> (>= x@@63 y@@42) ($op_ge t@@75 x@@63 y@@42)))
 :qid |vcc2comp.2842:29|
 :weight 0
 :skolemid |406|
 :pattern ( ($op_ge t@@75 x@@63 y@@42))
)))
(assert (forall ((id@@0 Int) (length Int) ) (! ($is ($get_string_literal id@@0 length) ^^u1)
 :qid |vcc2comp.2849:15|
 :skolemid |407|
 :pattern ( ($get_string_literal id@@0 length))
)))
(assert (forall ((id@@1 Int) (length@@0 Int) (S@@73 T@$state) ) (!  (=> ($good_state S@@73) (and ($typed S@@73 ($get_string_literal id@@1 length@@0)) (forall ((i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 length@@0)) (and ($is ($idx ($get_string_literal id@@1 length@@0) i@@25 ^^u1) ^^u1) ($thread_local S@@73 ($idx ($get_string_literal id@@1 length@@0) i@@25 ^^u1))))
 :qid |vcc2comp.2295:13|
 :skolemid |274|
 :pattern ( ($select.sm ($statusmap S@@73) ($idx ($get_string_literal id@@1 length@@0) i@@25 ^^u1)))
 :pattern ( ($select.tm ($typemap S@@73) ($idx ($get_string_literal id@@1 length@@0) i@@25 ^^u1)))
))))
 :qid |vcc2comp.2850:15|
 :skolemid |408|
 :pattern ( ($typed S@@73 ($get_string_literal id@@1 length@@0)))
 :pattern ( ($is_array S@@73 ($get_string_literal id@@1 length@@0) ^^u1 length@@0))
)))
(assert (forall ((no Int) (t@@76 T@$ctype) ) (! (= ($get_fnptr no t@@76) ($ptr t@@76 ($get_fnptr_ref no)))
 :qid |vcc2comp.2861:21|
 :skolemid |409|
 :pattern ( ($get_fnptr no t@@76))
)))
(assert (forall ((no@@0 Int) ) (! (= ($get_fnptr_inv ($get_fnptr_ref no@@0)) no@@0)
 :qid |vcc2comp.2868:15|
 :skolemid |410|
)))
(assert (forall ((S@@74 T@$state) (no@@1 Int) (t@@77 T@$ctype) ) (!  (=> (and ($is_fnptr_type t@@77) ($good_state S@@74)) ($mutable S@@74 ($get_fnptr no@@1 t@@77)))
 :qid |vcc2comp.2871:15|
 :skolemid |411|
 :pattern ( ($select.tm ($typemap S@@74) ($get_fnptr no@@1 t@@77)))
 :pattern ( ($select.sm ($statusmap S@@74) ($get_fnptr no@@1 t@@77)))
)))
(assert (forall ((t@@78 T@$ctype) ) (!  (=> ($is_math_type t@@78) ($is_primitive t@@78))
 :qid |vcc2comp.2878:15|
 :skolemid |412|
 :pattern ( ($is_math_type t@@78))
)))
(assert (forall ((t@@79 T@$ctype) ) (!  (=> ($is_fnptr_type t@@79) ($is_primitive t@@79))
 :qid |vcc2comp.2879:15|
 :skolemid |413|
 :pattern ( ($is_fnptr_type t@@79))
)))
(assert (forall ((S@@75 T@$state) (c@@4 T@$ptr) ) (!  (=> (and ($full_stop S@@75) ($closed S@@75 c@@4)) ($valid_claim S@@75 c@@4))
 :qid |vcc2comp.2890:15|
 :skolemid |414|
 :pattern ( ($full_stop S@@75) ($valid_claim S@@75 c@@4))
)))
(assert (forall ((S@@76 T@$state) (c@@5 T@$ptr) ) (!  (=> ($valid_claim S@@76 c@@5) (and ($closed S@@76 c@@5) ($invok_state S@@76)))
 :qid |vcc2comp.2893:15|
 :skolemid |415|
 :pattern ( ($valid_claim S@@76 c@@5))
)))
(assert (forall ((c1 T@$ptr) (c2 T@$ptr) ) (!  (=> (and (and ($is c1 ^^claim) ($is c2 ^^claim)) (forall ((S@@77 T@$state) ) (!  (=> ($valid_claim S@@77 c1) ($closed S@@77 c2))
 :qid |vcc2comp.2920:11|
 :skolemid |417|
))) ($claims_claim c1 c2))
 :qid |vcc2comp.2918:15|
 :skolemid |418|
 :pattern ( ($claims_claim c1 c2))
)))
(assert (forall ((S@@78 T@$state) (c1@@0 T@$ptr) (c2@@0 T@$ptr) ) (!  (=> (and ($valid_claim S@@78 c1@@0) ($claims_claim c1@@0 c2@@0)) ($valid_claim S@@78 c2@@0))
 :qid |vcc2comp.2924:15|
 :skolemid |419|
 :pattern ( ($valid_claim S@@78 c1@@0) ($claims_claim c1@@0 c2@@0))
)))
(assert (forall ((S@@79 T@$state) (c@@6 T@$ptr) (o T@$ptr) ) (!  (=> ($good_state S@@79) (=> (and ($claims_obj c@@6 o) ($closed S@@79 c@@6)) (and (and ($instantiate_ptrset ($owns S@@79 o)) ($closed S@@79 o)) (> ($ref_cnt S@@79 o) 0))))
 :qid |vcc2comp.2927:15|
 :skolemid |420|
 :pattern ( ($closed S@@79 c@@6) ($claims_obj c@@6 o))
)))
(assert (forall ((S@@80 T@$state) (c@@7 T@$ptr) (o@@0 T@$ptr) ) (!  (=> (and ($valid_claim S@@80 c@@7) ($claims_obj c@@7 o@@0)) ($inv2 S@@80 S@@80 o@@0 ($typ o@@0)))
 :qid |vcc2comp.2932:15|
 :skolemid |421|
 :pattern ( ($valid_claim S@@80 c@@7) ($claims_obj c@@7 o@@0))
)))
(assert (forall ((S@@81 T@$state) (c@@8 T@$ptr) (r@@23 Int) ) (!  (=> (and ($valid_claim S@@81 c@@8) ($claims_obj c@@8 ($ptr ^^claim r@@23))) ($valid_claim S@@81 ($ptr ^^claim r@@23)))
 :qid |vcc2comp.2936:15|
 :skolemid |422|
 :pattern ( ($valid_claim S@@81 c@@8) ($claims_obj c@@8 ($ptr ^^claim r@@23)))
)))
(assert (forall ((S@@82 T@$state) (p@@94 T@$ptr) ) (!  (and (=> ($not_shared S@@82 p@@94) (and (and (and (and (and ($closed S@@82 p@@94) (= ($owner S@@82 p@@94) $me)) (and ($is p@@94 ($typ p@@94)) ($typed S@@82 p@@94))) (not (= ($kind_of ($typ p@@94)) $kind_primitive))) ($is_non_primitive ($typ p@@94))) (or (not ($is_claimable ($typ p@@94))) (= ($ref_cnt S@@82 p@@94) 0)))) (=> (and (and (and (and (and ($closed S@@82 p@@94) (= ($owner S@@82 p@@94) $me)) (and ($is p@@94 ($typ p@@94)) ($typed S@@82 p@@94))) (not (= ($kind_of ($typ p@@94)) $kind_primitive))) ($is_non_primitive ($typ p@@94))) (or (not ($is_claimable ($typ p@@94))) (= ($ref_cnt S@@82 p@@94) 0))) ($not_shared S@@82 p@@94)))
 :qid |vcc2comp.2941:34|
 :weight 0
 :skolemid |423|
 :pattern ( ($not_shared S@@82 p@@94))
)))
(assert (forall ((s@@12 T@$state) (p@@95 T@$ptr) ) (!  (and (=> ($claimed_closed s@@12 p@@95) ($closed s@@12 p@@95)) (=> ($closed s@@12 p@@95) ($claimed_closed s@@12 p@@95)))
 :qid |vcc2comp.2944:38|
 :weight 0
 :skolemid |424|
 :pattern ( ($claimed_closed s@@12 p@@95))
)))
(assert (forall ((S@@83 T@$state) (p@@96 T@$ptr) ) (!  (=> (and ($invok_state S@@83) ($claimed_closed S@@83 p@@96)) ($inv2 S@@83 S@@83 p@@96 ($typ p@@96)))
 :qid |vcc2comp.2947:15|
 :skolemid |425|
 :pattern ( ($invok_state S@@83) ($claimed_closed S@@83 p@@96))
)))
(assert (= $no_claim ($ptr ^^claim 0)))
(assert (forall ((the_new T@$ptr) (the_old T@$ptr) ) (!  (and (=> ($claims_upgrade the_new the_old) (forall ((o@@1 T@$ptr) ) (!  (=> ($claims_obj the_old o@@1) ($claims_obj the_new o@@1))
 :qid |vcc2comp.3006:13|
 :skolemid |430|
))) (=> (forall ((o@@2 T@$ptr) ) (!  (=> ($claims_obj the_old o@@2) ($claims_obj the_new o@@2))
 :qid |vcc2comp.3006:13|
 :skolemid |430|
)) ($claims_upgrade the_new the_old)))
 :qid |vcc2comp.3005:26|
 :skolemid |431|
 :pattern ( ($claims_upgrade the_new the_old))
)))
(assert (forall ((S@@84 T@$state) (p@@97 T@$ptr) ) (! (= ($ref_cnt S@@84 p@@97) ($st_ref_cnt ($select.sm ($statusmap S@@84) p@@97)))
 :qid |vcc2comp.3008:31|
 :weight 0
 :skolemid |432|
 :pattern ( ($ref_cnt S@@84 p@@97))
)))
(assert ($is_claimable ^^claim))
(assert (forall ((S@@85 T@$state) (c@@9 T@$ptr) (o@@3 T@$ptr) ) (!  (and (=> ($account_claim S@@85 c@@9 o@@3) (and (and ($good_state S@@85) ($closed S@@85 c@@9)) ($claims_obj c@@9 o@@3))) (=> (and (and ($good_state S@@85) ($closed S@@85 c@@9)) ($claims_obj c@@9 o@@3)) ($account_claim S@@85 c@@9 o@@3)))
 :qid |vcc2comp.3014:25|
 :skolemid |433|
 :pattern ( ($account_claim S@@85 c@@9 o@@3))
)))
(assert (forall ((S@@86 T@$state) (c@@10 T@$ptr) (o@@4 T@$ptr) ) (!  (=> ($account_claim S@@86 c@@10 o@@4) (and (and (= ($claim_no S@@86 o@@4 ($claim_idx o@@4 c@@10)) c@@10) (<= 0 ($claim_idx o@@4 c@@10))) (< ($claim_idx o@@4 c@@10) ($ref_cnt S@@86 o@@4))))
 :qid |vcc2comp.3020:15|
 :skolemid |434|
 :pattern ( ($account_claim S@@86 c@@10 o@@4))
)))
(assert (forall ((p@@98 T@$ptrset) ) (! (= ($int_to_ptrset ($ptrset_to_int p@@98)) p@@98)
 :qid |vcc2comp.3074:15|
 :skolemid |437|
)))
(assert (forall ((p@@99 T@$version) ) (! (= ($int_to_version ($version_to_int p@@99)) p@@99)
 :qid |vcc2comp.3078:15|
 :skolemid |438|
)))
(assert (forall ((p@@100 T@$vol_version) ) (! (= ($int_to_vol_version ($vol_version_to_int p@@100)) p@@100)
 :qid |vcc2comp.3082:15|
 :skolemid |439|
)))
(assert (forall ((p@@101 T@$ptr) ) (! (= ($int_to_ptr ($ptr_to_int p@@101)) p@@101)
 :qid |vcc2comp.3086:15|
 :skolemid |440|
)))
(assert (forall ((S1@@8 T@$state) (S2@@5 T@$state) (W T@$ptrset) ) (!  (=> (forall ((p@@102 T@$ptr) ) (!  (=> (or ($is_primitive ($typ p@@102)) ($is_non_primitive ($typ p@@102))) (=> (and ($typed S1@@8 p@@102) (not (or (not (= ($owner S1@@8 p@@102) $me)) (and (= ($kind_of ($typ p@@102)) $kind_primitive) ($closed S1@@8 p@@102))))) (or (= ($select.mem ($memory S1@@8) p@@102) ($select.mem ($memory S2@@5) p@@102)) ($set_in p@@102 W))))
 :qid |vcc2comp.3099:11|
 :skolemid |441|
 :pattern ( ($dont_instantiate p@@102))
)) ($updated_only_values S1@@8 S2@@5 W))
 :qid |vcc2comp.3097:15|
 :skolemid |442|
 :pattern ( ($updated_only_values S1@@8 S2@@5 W))
)))
(assert (forall ((S1@@9 T@$state) (S2@@6 T@$state) (W@@0 T@$ptrset) ) (!  (=> (forall ((p@@103 T@$ptr) ) (!  (=> (and ($set_in p@@103 W@@0) (not (= ($kind_of ($typ p@@103)) $kind_primitive))) (or (= ($select.mem ($memory S1@@9) p@@103) ($select.mem ($memory S2@@6) p@@103)) ($domain_updated_at S1@@9 S2@@6 p@@103 W@@0)))
 :qid |vcc2comp.3106:11|
 :skolemid |443|
 :pattern ( ($dont_instantiate p@@103))
)) ($updated_only_domains S1@@9 S2@@6 W@@0))
 :qid |vcc2comp.3104:15|
 :skolemid |444|
 :pattern ( ($updated_only_domains S1@@9 S2@@6 W@@0))
)))
(assert (forall ((S1@@10 T@$state) (S2@@7 T@$state) (p@@104 T@$ptr) (W@@1 T@$ptrset) ) (!  (and (=> ($domain_updated_at S1@@10 S2@@7 p@@104 W@@1) (and (forall ((q@@19 T@$ptr) ) (!  (=> (and (= ($kind_of ($typ q@@19)) $kind_primitive) (not ($set_in q@@19 W@@1))) (= ($fetch_from_domain ($read_version S1@@10 p@@104) q@@19) ($fetch_from_domain ($read_version S2@@7 p@@104) q@@19)))
 :qid |vcc2comp.3123:13|
 :skolemid |445|
 :pattern ( ($fetch_from_domain ($read_version S2@@7 p@@104) q@@19))
)) (= ($domain S1@@10 p@@104) ($domain S2@@7 p@@104)))) (=> (and (forall ((q@@20 T@$ptr) ) (!  (=> (and (= ($kind_of ($typ q@@20)) $kind_primitive) (not ($set_in q@@20 W@@1))) (= ($fetch_from_domain ($read_version S1@@10 p@@104) q@@20) ($fetch_from_domain ($read_version S2@@7 p@@104) q@@20)))
 :qid |vcc2comp.3123:13|
 :skolemid |445|
 :pattern ( ($fetch_from_domain ($read_version S2@@7 p@@104) q@@20))
)) (= ($domain S1@@10 p@@104) ($domain S2@@7 p@@104))) ($domain_updated_at S1@@10 S2@@7 p@@104 W@@1)))
 :qid |vcc2comp.3122:29|
 :skolemid |446|
 :pattern ( ($domain_updated_at S1@@10 S2@@7 p@@104 W@@1))
)))
(assert  (=> $seclbl.top true))
(assert  (=> true $seclbl.top))
(assert  (=> $seclbl.bot false))
(assert  (=> false $seclbl.bot))
(assert (forall ((p@@105 T@$ptr) ) (!  (and (=> (|Select_[$ptr]$bool| $lblset.top p@@105) $seclbl.top) (=> $seclbl.top (|Select_[$ptr]$bool| $lblset.top p@@105)))
 :qid |vcc2comp.3178:16|
 :skolemid |447|
)))
(assert (forall ((p@@106 T@$ptr) ) (!  (and (=> (|Select_[$ptr]$bool| $lblset.bot p@@106) $seclbl.bot) (=> $seclbl.bot (|Select_[$ptr]$bool| $lblset.bot p@@106)))
 :qid |vcc2comp.3180:16|
 :skolemid |448|
)))
(assert (forall ((l1 |T@[$ptr]Bool|) (l2 |T@[$ptr]Bool|) (p@@107 T@$ptr) ) (!  (and (=> (|Select_[$ptr]$bool| ($lblset.meet l1 l2) p@@107) (and (|Select_[$ptr]$bool| l1 p@@107) (|Select_[$ptr]$bool| l2 p@@107))) (=> (and (|Select_[$ptr]$bool| l1 p@@107) (|Select_[$ptr]$bool| l2 p@@107)) (|Select_[$ptr]$bool| ($lblset.meet l1 l2) p@@107)))
 :qid |vcc2comp.3186:16|
 :skolemid |450|
)))
(assert (forall ((l1@@0 |T@[$ptr]Bool|) (l2@@0 |T@[$ptr]Bool|) (p@@108 T@$ptr) ) (!  (and (=> (|Select_[$ptr]$bool| ($lblset.join l1@@0 l2@@0) p@@108) (or (|Select_[$ptr]$bool| l1@@0 p@@108) (|Select_[$ptr]$bool| l2@@0 p@@108))) (=> (or (|Select_[$ptr]$bool| l1@@0 p@@108) (|Select_[$ptr]$bool| l2@@0 p@@108)) (|Select_[$ptr]$bool| ($lblset.join l1@@0 l2@@0) p@@108)))
 :qid |vcc2comp.3189:16|
 :skolemid |451|
)))
(assert (forall ((fd T@$flowdata) (l@@5 |T@[$ptr]Bool|) ) (! (= ($select.flow.label ($store.flow.label fd l@@5)) l@@5)
 :qid |vcc2comp.3199:16|
 :weight 0
 :skolemid |452|
)))
(assert (forall ((fd@@0 T@$flowdata) (l@@6 |T@[$ptr]Bool|) ) (! (= ($select.flow.meta ($store.flow.meta fd@@0 l@@6)) l@@6)
 :qid |vcc2comp.3201:16|
 :weight 0
 :skolemid |453|
)))
(assert (forall ((fd@@1 T@$flowdata) (l@@7 |T@[$ptr]Bool|) ) (! (= ($select.flow.label ($store.flow.meta fd@@1 l@@7)) ($select.flow.label fd@@1))
 :qid |vcc2comp.3203:16|
 :weight 0
 :skolemid |454|
)))
(assert (forall ((fd@@2 T@$flowdata) (l@@8 |T@[$ptr]Bool|) ) (! (= ($select.flow.meta ($store.flow.label fd@@2 l@@8)) ($select.flow.meta fd@@2))
 :qid |vcc2comp.3205:16|
 :weight 0
 :skolemid |455|
)))
(assert (forall ((M@@6 T@$memory_t) (p@@109 T@$ptr) (q@@21 T@$ptr) (fd@@3 T@$flowdata) ) (!  (=> ($set_in q@@21 ($full_extent p@@109)) (= ($select.flow.data ($store.flow.data M@@6 p@@109 fd@@3) q@@21) fd@@3))
 :qid |vcc2comp.3211:16|
 :weight 0
 :skolemid |456|
)))
(assert (forall ((M@@7 T@$memory_t) (p@@110 T@$ptr) (q@@22 T@$ptr) (fd@@4 T@$flowdata) ) (!  (or ($set_in q@@22 ($full_extent p@@110)) (= ($select.flow.data ($store.flow.data M@@7 p@@110 fd@@4) q@@22) ($select.flow.data M@@7 q@@22)))
 :qid |vcc2comp.3213:16|
 :weight 0
 :skolemid |457|
)))
(assert (forall ((M@@8 T@$map_t..$ptr_to..^^void.^^bool) (p@@111 T@$ptr) (v@@13 Bool) ) (!  (and (=> ($select.$map_t..$ptr_to..^^void.^^bool ($store.$map_t..$ptr_to..^^void.^^bool M@@8 p@@111 v@@13) p@@111) v@@13) (=> v@@13 ($select.$map_t..$ptr_to..^^void.^^bool ($store.$map_t..$ptr_to..^^void.^^bool M@@8 p@@111 v@@13) p@@111)))
 :qid |vcc2comp.3231:17|
 :weight 0
 :skolemid |458|
)))
(assert (forall ((M@@9 T@$map_t..$ptr_to..^^void.^^bool) (p@@112 T@$ptr) (v@@14 Bool) (q@@23 T@$ptr) ) (!  (=> (not (= p@@112 q@@23)) (and (=> ($select.$map_t..$ptr_to..^^void.^^bool ($store.$map_t..$ptr_to..^^void.^^bool M@@9 q@@23 v@@14) p@@112) ($select.$map_t..$ptr_to..^^void.^^bool M@@9 p@@112)) (=> ($select.$map_t..$ptr_to..^^void.^^bool M@@9 p@@112) ($select.$map_t..$ptr_to..^^void.^^bool ($store.$map_t..$ptr_to..^^void.^^bool M@@9 q@@23 v@@14) p@@112))))
 :qid |vcc2comp.3232:17|
 :weight 0
 :skolemid |459|
)))
(assert (forall ((M1 T@$map_t..$ptr_to..^^void.^^bool) (M2 T@$map_t..$ptr_to..^^void.^^bool) ) (!  (=> (forall ((p@@113 T@$ptr) ) (!  (and (=> ($select.$map_t..$ptr_to..^^void.^^bool M1 p@@113) ($select.$map_t..$ptr_to..^^void.^^bool M2 p@@113)) (=> ($select.$map_t..$ptr_to..^^void.^^bool M2 p@@113) ($select.$map_t..$ptr_to..^^void.^^bool M1 p@@113)))
 :qid |vcc2comp.3233:158|
 :weight 0
 :skolemid |460|
)) ($eq.$map_t..$ptr_to..^^void.^^bool M1 M2))
 :qid |vcc2comp.3233:17|
 :weight 0
 :skolemid |461|
 :pattern ( ($eq.$map_t..$ptr_to..^^void.^^bool M1 M2))
)))
(assert (forall ((M1@@0 T@$map_t..$ptr_to..^^void.^^bool) (M2@@0 T@$map_t..$ptr_to..^^void.^^bool) ) (!  (=> ($eq.$map_t..$ptr_to..^^void.^^bool M1@@0 M2@@0) (= M1@@0 M2@@0))
 :qid |vcc2comp.3234:17|
 :weight 0
 :skolemid |462|
 :pattern ( ($eq.$map_t..$ptr_to..^^void.^^bool M1@@0 M2@@0))
)))
(assert (= ($int_to_map_t..ptr_to..^^void.^^bool 0) $zero.$map_t..$ptr_to..^^void.^^bool))
(assert (forall ((p@@114 T@$ptr) ) (!  (and (=> ($select.$map_t..$ptr_to..^^void.^^bool $zero.$map_t..$ptr_to..^^void.^^bool p@@114) false) (=> false ($select.$map_t..$ptr_to..^^void.^^bool $zero.$map_t..$ptr_to..^^void.^^bool p@@114)))
 :qid |vcc2comp.3236:17|
 :weight 0
 :skolemid |463|
)))
(assert (forall ((r1@@2 T@$record) (r2@@2 T@$record) (f@@19 T@$field) (R T@$ctype) ) (!  (=> ($eq.$map_t..$ptr_to..^^void.^^bool ($int_to_map_t..ptr_to..^^void.^^bool ($rec_fetch r1@@2 f@@19)) ($int_to_map_t..ptr_to..^^void.^^bool ($rec_fetch r2@@2 f@@19))) ($rec_base_eq ($rec_fetch r1@@2 f@@19) ($rec_fetch r2@@2 f@@19)))
 :qid |vcc2comp.3237:17|
 :weight 0
 :skolemid |464|
 :pattern ( ($rec_base_eq ($rec_fetch r1@@2 f@@19) ($rec_fetch r2@@2 f@@19)) ($is_record_field R f@@19 ($map_t ($ptr_to ^^void) ^^bool)))
)))
(assert (forall ((|#x| T@$map_t..$ptr_to..^^void.^^bool) ) (! (= |#x| ($int_to_map_t..ptr_to..^^void.^^bool ($map_t..ptr_to..^^void.^^bool_to_int |#x|)))
 :qid |vcc2comp.3241:17|
 :skolemid |465|
)))
(assert ($function_arg_type |cf#classifier#default| 0 ($map_t ($ptr_to ^^void) ^^bool)))
(assert (forall ((p@@115 T@$ptr) ) (!  (and (=> ($select.$map_t..$ptr_to..^^void.^^bool |#classifier#default| p@@115) false) (=> false ($select.$map_t..$ptr_to..^^void.^^bool |#classifier#default| p@@115)))
 :qid |vcc2comp.3247:17|
 :skolemid |466|
 :pattern ( ($select.$map_t..$ptr_to..^^void.^^bool |#classifier#default| p@@115))
)))
(assert (forall ((p@@116 T@$ptr) ) (!  (and (=> (|Select_[$ptr]$bool| $ptrclub.empty p@@116) false) (=> false (|Select_[$ptr]$bool| $ptrclub.empty p@@116)))
 :qid |vcc2comp.3257:16|
 :skolemid |467|
)))
(assert (forall ((c@@11 |T@[$ptr]Bool|) (l@@9 |T@[$ptr]Bool|) ) (! (= ($ptrclub.members ($ptrclub.construct c@@11 l@@9)) c@@11)
 :qid |vcc2comp.3268:16|
 :weight 0
 :skolemid |468|
)))
(assert (forall ((c@@12 |T@[$ptr]Bool|) (l@@10 |T@[$ptr]Bool|) ) (! (= ($ptrclub.bound ($ptrclub.construct c@@12 l@@10)) l@@10)
 :qid |vcc2comp.3270:16|
 :weight 0
 :skolemid |469|
)))
(assert (forall ((c@@13 T@$ptrclub) (p@@117 T@$ptr) ) (! (= ($ptrclub.members ($ptrclub.addMember p@@117 c@@13)) (|Store_[$ptr]$bool| ($ptrclub.members c@@13) p@@117 true))
 :qid |vcc2comp.3273:16|
 :weight 0
 :skolemid |470|
)))
(assert (forall ((c@@14 T@$ptrclub) (p@@118 T@$ptr) ) (! (= ($ptrclub.bound ($ptrclub.addMember p@@118 c@@14)) ($ptrclub.bound c@@14))
 :qid |vcc2comp.3276:16|
 :weight 0
 :skolemid |471|
)))
(assert (forall ((p1@@2 T@$ptr) (p2@@0 T@$ptr) ) (!  (=> (= ($ref p1@@2) ($ref p2@@0)) (forall ((p@@119 T@$ptr) ) (!  (=> (|Select_[$ptr]$bool| ($ptrclub.compare p1@@2 p2@@0) p@@119) (|Select_[$ptr]$bool| $lblset.bot p@@119))
 :qid |vcc2comp.3183:15|
 :skolemid |449|
)))
 :qid |vcc2comp.3280:16|
 :skolemid |472|
)))
(assert (forall ((p1@@3 T@$ptr) (p2@@1 T@$ptr) (c@@15 T@$ptrclub) ) (!  (=> (and (and (|Select_[$ptr]$bool| ($ptrclub.members c@@15) p1@@3) (|Select_[$ptr]$bool| ($ptrclub.members c@@15) p2@@1)) (is_active_ptrclub c@@15)) (forall ((p@@120 T@$ptr) ) (!  (=> (|Select_[$ptr]$bool| ($ptrclub.compare p1@@3 p2@@1) p@@120) (|Select_[$ptr]$bool| ($ptrclub.bound c@@15) p@@120))
 :qid |vcc2comp.3183:15|
 :skolemid |449|
)))
 :qid |vcc2comp.3281:16|
 :skolemid |473|
)))
(assert (forall ((M@@10 T@$memory_t) (p@@121 T@$ptr) (q@@24 T@$ptr) (v@@15 Int) ) (! (= ($select.flow.data ($store.mem M@@10 q@@24 v@@15) p@@121) ($select.flow.data M@@10 p@@121))
 :qid |vcc2comp.3286:15|
 :weight 0
 :skolemid |474|
)))
(assert (forall ((M@@11 T@$memory_t) (p@@122 T@$ptr) (q@@25 T@$ptr) (fd@@5 T@$flowdata) ) (! (= ($select.mem ($store.flow.data M@@11 q@@25 fd@@5) p@@122) ($select.mem M@@11 p@@122))
 :qid |vcc2comp.3288:15|
 :weight 0
 :skolemid |475|
)))
(assert (= $arch_ptr_size 8))
(assert (= $arch_spec_ptr_start $max.u8))
(assert ($is_math_type |^$#thread_id|))
(assert ($is_composite ^Node))
(assert (= ($ptr_level ^Node) 0))
(assert (= ($sizeof ^Node) 16))
(assert (forall ((|#s1@@5| T@$state) (|#s2@@4| T@$state) (|#p@@14| T@$ptr) ) (!  (and (=> ($inv2 |#s1@@5| |#s2@@4| |#p@@14| ^Node) (and ($typed |#s2@@4| |#p@@14|) ($set_eq ($owns |#s2@@4| |#p@@14|) $set_empty))) (=> (and ($typed |#s2@@4| |#p@@14|) ($set_eq ($owns |#s2@@4| |#p@@14|) $set_empty)) ($inv2 |#s1@@5| |#s2@@4| |#p@@14| ^Node)))
 :qid |vcc2comp.3369:15|
 :skolemid |476|
 :pattern ( ($inv2 |#s1@@5| |#s2@@4| |#p@@14| ^Node))
)))
(assert (forall ((|#s2@@5| T@$state) (|#r@@15| Int) ) (!  (and (=> ($inv_lab |#s2@@5| ($ptr ^Node |#r@@15|) |l#public|) (and ($typed |#s2@@5| ($ptr ^Node |#r@@15|)) ($set_eq ($owns |#s2@@5| ($ptr ^Node |#r@@15|)) $set_empty))) (=> (and ($typed |#s2@@5| ($ptr ^Node |#r@@15|)) ($set_eq ($owns |#s2@@5| ($ptr ^Node |#r@@15|)) $set_empty)) ($inv_lab |#s2@@5| ($ptr ^Node |#r@@15|) |l#public|)))
 :qid |vcc2comp.3371:15|
 :skolemid |477|
 :pattern ( ($inv_lab |#s2@@5| ($ptr ^Node |#r@@15|) |l#public|))
)))
(assert (forall ((|#q@@0| T@$ptr) (|#r@@16| Int) ) (!  (and (=> ($set_in |#q@@0| ($full_extent ($ptr ^Node |#r@@16|))) (or (or (or (= |#q@@0| ($ptr ^Node |#r@@16|)) (= |#q@@0| ($dot ($ptr ^Node |#r@@16|) Node.$owns))) (= |#q@@0| ($dot ($ptr ^Node |#r@@16|) Node.next))) (= |#q@@0| ($dot ($ptr ^Node |#r@@16|) Node.data)))) (=> (or (or (or (= |#q@@0| ($ptr ^Node |#r@@16|)) (= |#q@@0| ($dot ($ptr ^Node |#r@@16|) Node.$owns))) (= |#q@@0| ($dot ($ptr ^Node |#r@@16|) Node.next))) (= |#q@@0| ($dot ($ptr ^Node |#r@@16|) Node.data))) ($set_in |#q@@0| ($full_extent ($ptr ^Node |#r@@16|)))))
 :qid |vcc2comp.3373:15|
 :skolemid |478|
 :pattern ( ($set_in |#q@@0| ($full_extent ($ptr ^Node |#r@@16|))))
)))
(assert (forall ((|#s| T@$state) (|#q@@1| T@$ptr) (|#r@@17| Int) ) (!  (and (=> ($set_in |#q@@1| ($extent |#s| ($ptr ^Node |#r@@17|))) ($set_in |#q@@1| ($full_extent ($ptr ^Node |#r@@17|)))) (=> ($set_in |#q@@1| ($full_extent ($ptr ^Node |#r@@17|))) ($set_in |#q@@1| ($extent |#s| ($ptr ^Node |#r@@17|)))))
 :qid |vcc2comp.3375:15|
 :skolemid |479|
 :pattern ( ($set_in |#q@@1| ($extent |#s| ($ptr ^Node |#r@@17|))))
)))
(assert (forall ((|#s@@0| T@$state) (|#q@@2| T@$ptr) (|#r@@18| Int) ) (!  (=> ($typed |#s@@0| ($ptr ^Node |#r@@18|)) (and (=> ($set_in |#q@@2| ($extent |#s@@0| ($ptr ^Node |#r@@18|))) (or (= |#q@@2| ($ptr ^Node |#r@@18|)) (= ($ts_emb ($select.tm ($typemap |#s@@0|) |#q@@2|)) ($ptr ^Node |#r@@18|)))) (=> (or (= |#q@@2| ($ptr ^Node |#r@@18|)) (= ($ts_emb ($select.tm ($typemap |#s@@0|) |#q@@2|)) ($ptr ^Node |#r@@18|))) ($set_in |#q@@2| ($extent |#s@@0| ($ptr ^Node |#r@@18|))))))
 :qid |vcc2comp.3375:187|
 :skolemid |480|
 :pattern ( ($set_in |#q@@2| ($extent |#s@@0| ($ptr ^Node |#r@@18|))))
)))
(assert (forall ((|#q@@3| T@$ptr) (|#r@@19| Int) ) (!  (and (=> ($set_in |#q@@3| ($span ($ptr ^Node |#r@@19|))) (or (or (or (= |#q@@3| ($ptr ^Node |#r@@19|)) (= |#q@@3| ($dot ($ptr ^Node |#r@@19|) Node.$owns))) (= |#q@@3| ($dot ($ptr ^Node |#r@@19|) Node.next))) (= |#q@@3| ($dot ($ptr ^Node |#r@@19|) Node.data)))) (=> (or (or (or (= |#q@@3| ($ptr ^Node |#r@@19|)) (= |#q@@3| ($dot ($ptr ^Node |#r@@19|) Node.$owns))) (= |#q@@3| ($dot ($ptr ^Node |#r@@19|) Node.next))) (= |#q@@3| ($dot ($ptr ^Node |#r@@19|) Node.data))) ($set_in |#q@@3| ($span ($ptr ^Node |#r@@19|)))))
 :qid |vcc2comp.3377:15|
 :skolemid |481|
 :pattern ( ($set_in |#q@@3| ($span ($ptr ^Node |#r@@19|))))
)))
(assert (forall ((|#p@@15| T@$ptr) (|#s1@@6| T@$state) (|#s2@@6| T@$state) ) (!  (and (=> ($state_spans_the_same |#s1@@6| |#s2@@6| |#p@@15| ^Node) (and (and (= ($select.mem ($memory |#s1@@6|) ($dot |#p@@15| Node.$owns)) ($select.mem ($memory |#s2@@6|) ($dot |#p@@15| Node.$owns))) (= ($select.mem ($memory |#s1@@6|) ($dot |#p@@15| Node.next)) ($select.mem ($memory |#s2@@6|) ($dot |#p@@15| Node.next)))) (= ($select.mem ($memory |#s1@@6|) ($dot |#p@@15| Node.data)) ($select.mem ($memory |#s2@@6|) ($dot |#p@@15| Node.data))))) (=> (and (and (= ($select.mem ($memory |#s1@@6|) ($dot |#p@@15| Node.$owns)) ($select.mem ($memory |#s2@@6|) ($dot |#p@@15| Node.$owns))) (= ($select.mem ($memory |#s1@@6|) ($dot |#p@@15| Node.next)) ($select.mem ($memory |#s2@@6|) ($dot |#p@@15| Node.next)))) (= ($select.mem ($memory |#s1@@6|) ($dot |#p@@15| Node.data)) ($select.mem ($memory |#s2@@6|) ($dot |#p@@15| Node.data)))) ($state_spans_the_same |#s1@@6| |#s2@@6| |#p@@15| ^Node)))
 :qid |vcc2comp.3379:15|
 :skolemid |482|
 :pattern ( ($state_spans_the_same |#s1@@6| |#s2@@6| |#p@@15| ^Node))
)))
(assert (forall ((|#p@@16| T@$ptr) (|#s1@@7| T@$state) (|#s2@@7| T@$state) ) (!  (and (=> ($state_nonvolatile_spans_the_same |#s1@@7| |#s2@@7| |#p@@16| ^Node) (and (and (= ($select.mem ($memory |#s1@@7|) ($dot |#p@@16| Node.$owns)) ($select.mem ($memory |#s2@@7|) ($dot |#p@@16| Node.$owns))) (= ($select.mem ($memory |#s1@@7|) ($dot |#p@@16| Node.next)) ($select.mem ($memory |#s2@@7|) ($dot |#p@@16| Node.next)))) (= ($select.mem ($memory |#s1@@7|) ($dot |#p@@16| Node.data)) ($select.mem ($memory |#s2@@7|) ($dot |#p@@16| Node.data))))) (=> (and (and (= ($select.mem ($memory |#s1@@7|) ($dot |#p@@16| Node.$owns)) ($select.mem ($memory |#s2@@7|) ($dot |#p@@16| Node.$owns))) (= ($select.mem ($memory |#s1@@7|) ($dot |#p@@16| Node.next)) ($select.mem ($memory |#s2@@7|) ($dot |#p@@16| Node.next)))) (= ($select.mem ($memory |#s1@@7|) ($dot |#p@@16| Node.data)) ($select.mem ($memory |#s2@@7|) ($dot |#p@@16| Node.data)))) ($state_nonvolatile_spans_the_same |#s1@@7| |#s2@@7| |#p@@16| ^Node)))
 :qid |vcc2comp.3381:15|
 :skolemid |483|
 :pattern ( ($state_nonvolatile_spans_the_same |#s1@@7| |#s2@@7| |#p@@16| ^Node))
)))
(assert  (=> ($is_claimable ^Node) false))
(assert  (=> false ($is_claimable ^Node)))
(assert  (=> ($has_volatile_owns_set ^Node) false))
(assert  (=> false ($has_volatile_owns_set ^Node)))
(assert (forall ((|#s1@@8| T@$state) (|#r@@20| Int) ) (!  (and (=> ($extent_mutable |#s1@@8| ($ptr ^Node |#r@@20|)) ($mutable |#s1@@8| ($ptr ^Node |#r@@20|))) (=> ($mutable |#s1@@8| ($ptr ^Node |#r@@20|)) ($extent_mutable |#s1@@8| ($ptr ^Node |#r@@20|))))
 :qid |vcc2comp.3387:15|
 :skolemid |484|
 :pattern ( ($extent_mutable |#s1@@8| ($ptr ^Node |#r@@20|)))
)))
(assert (forall ((|#s1@@9| T@$state) (|#s2@@8| T@$state) (|#r@@21| Int) ) (!  (and (=> ($extent_is_fresh |#s1@@9| |#s2@@8| ($ptr ^Node |#r@@21|)) (and (< ($current_timestamp |#s1@@9|) ($timestamp |#s2@@8| ($ptr ^Node |#r@@21|))) (<= ($timestamp |#s2@@8| ($ptr ^Node |#r@@21|)) ($current_timestamp |#s2@@8|)))) (=> (and (< ($current_timestamp |#s1@@9|) ($timestamp |#s2@@8| ($ptr ^Node |#r@@21|))) (<= ($timestamp |#s2@@8| ($ptr ^Node |#r@@21|)) ($current_timestamp |#s2@@8|))) ($extent_is_fresh |#s1@@9| |#s2@@8| ($ptr ^Node |#r@@21|))))
 :qid |vcc2comp.3389:15|
 :skolemid |485|
 :pattern ( ($extent_is_fresh |#s1@@9| |#s2@@8| ($ptr ^Node |#r@@21|)))
)))
(assert (forall ((|#s1@@10| T@$state) (|#r@@22| Int) ) (!  (and (=> ($extent_zero |#s1@@10| ($ptr ^Node |#r@@22|)) (and (= ($select.mem ($memory |#s1@@10|) ($dot ($ptr ^Node |#r@@22|) Node.next)) 0) (= ($select.mem ($memory |#s1@@10|) ($dot ($ptr ^Node |#r@@22|) Node.data)) 0))) (=> (and (= ($select.mem ($memory |#s1@@10|) ($dot ($ptr ^Node |#r@@22|) Node.next)) 0) (= ($select.mem ($memory |#s1@@10|) ($dot ($ptr ^Node |#r@@22|) Node.data)) 0)) ($extent_zero |#s1@@10| ($ptr ^Node |#r@@22|))))
 :qid |vcc2comp.3391:15|
 :skolemid |486|
 :pattern ( ($extent_zero |#s1@@10| ($ptr ^Node |#r@@22|)))
)))
(assert ($is_base_field Node.$owns))
(assert (= ($field_parent_type Node.$owns) ^Node))
(assert ($is_primitive_non_volatile_field Node.$owns))
(assert (forall ((|#p@@17| T@$ptr) ) (!  (=> ($is |#p@@17| ^Node) (and (= ($dot |#p@@17| Node.$owns) ($ptr |^$#ptrset| ($ghost_ref |#p@@17| Node.$owns))) ($extent_hint ($dot |#p@@17| Node.$owns) |#p@@17|)))
 :qid |vcc2comp.3399:15|
 :skolemid |487|
 :pattern ( ($dot |#p@@17| Node.$owns))
)))
(assert (forall ((|#p@@18| T@$ptr) (|#s@@1| T@$state) ) (!  (=> (and ($is |#p@@18| ^Node) ($typed |#s@@1| |#p@@18|)) (and (and (and (and ($is ($dot |#p@@18| Node.$owns) |^$#ptrset|) ($typed |#s@@1| ($dot |#p@@18| Node.$owns))) (= ($ts_emb ($select.tm ($typemap |#s@@1|) ($dot |#p@@18| Node.$owns))) |#p@@18|)) (= ($ts_path ($select.tm ($typemap |#s@@1|) ($dot |#p@@18| Node.$owns))) Node.$owns)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s@@1|) ($dot |#p@@18| Node.$owns))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s@@1|) ($dot |#p@@18| Node.$owns)))))))
 :qid |vcc2comp.3401:15|
 :skolemid |488|
 :pattern ( ($select.tm ($typemap |#s@@1|) ($dot |#p@@18| Node.$owns)))
 :pattern ( ($select.sm ($statusmap |#s@@1|) ($dot |#p@@18| Node.$owns)))
)))
(assert (= ($owns_set_field ^Node) Node.$owns))
(assert ($is_base_field Node.next))
(assert (= ($field_parent_type Node.next) ^Node))
(assert ($is_primitive_non_volatile_field Node.next))
(assert (= ($field_offset Node.next) 0))
(assert (forall ((|#p@@19| T@$ptr) ) (!  (=> ($is |#p@@19| ^Node) (and (= ($dot |#p@@19| Node.next) ($ptr ($ptr_to ^Node) (+ ($ref |#p@@19|) 0))) ($extent_hint ($dot |#p@@19| Node.next) |#p@@19|)))
 :qid |vcc2comp.3413:15|
 :skolemid |489|
 :pattern ( ($dot |#p@@19| Node.next))
)))
(assert (forall ((|#p@@20| T@$ptr) (|#s@@2| T@$state) ) (!  (=> (and ($is |#p@@20| ^Node) ($typed |#s@@2| |#p@@20|)) (and (and (and (and ($is ($dot |#p@@20| Node.next) ($ptr_to ^Node)) ($typed |#s@@2| ($dot |#p@@20| Node.next))) (= ($ts_emb ($select.tm ($typemap |#s@@2|) ($dot |#p@@20| Node.next))) |#p@@20|)) (= ($ts_path ($select.tm ($typemap |#s@@2|) ($dot |#p@@20| Node.next))) Node.next)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s@@2|) ($dot |#p@@20| Node.next))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s@@2|) ($dot |#p@@20| Node.next)))))))
 :qid |vcc2comp.3415:15|
 :skolemid |490|
 :pattern ( ($select.tm ($typemap |#s@@2|) ($dot |#p@@20| Node.next)))
 :pattern ( ($select.sm ($statusmap |#s@@2|) ($dot |#p@@20| Node.next)))
)))
(assert ($is_base_field Node.data))
(assert (= ($field_parent_type Node.data) ^Node))
(assert ($is_primitive_non_volatile_field Node.data))
(assert (= ($field_offset Node.data) 8))
(assert (forall ((|#p@@21| T@$ptr) ) (!  (=> ($is |#p@@21| ^Node) (and (= ($dot |#p@@21| Node.data) ($ptr ^^i4 (+ ($ref |#p@@21|) 8))) ($extent_hint ($dot |#p@@21| Node.data) |#p@@21|)))
 :qid |vcc2comp.3425:15|
 :skolemid |491|
 :pattern ( ($dot |#p@@21| Node.data))
)))
(assert (forall ((|#p@@22| T@$ptr) (|#s@@3| T@$state) ) (!  (=> (and ($is |#p@@22| ^Node) ($typed |#s@@3| |#p@@22|)) (and (and (and (and ($is ($dot |#p@@22| Node.data) ^^i4) ($typed |#s@@3| ($dot |#p@@22| Node.data))) (= ($ts_emb ($select.tm ($typemap |#s@@3|) ($dot |#p@@22| Node.data))) |#p@@22|)) (= ($ts_path ($select.tm ($typemap |#s@@3|) ($dot |#p@@22| Node.data))) Node.data)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s@@3|) ($dot |#p@@22| Node.data))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s@@3|) ($dot |#p@@22| Node.data)))))))
 :qid |vcc2comp.3427:15|
 :skolemid |492|
 :pattern ( ($select.tm ($typemap |#s@@3|) ($dot |#p@@22| Node.data)))
 :pattern ( ($select.sm ($statusmap |#s@@3|) ($dot |#p@@22| Node.data)))
)))
(assert ($is_composite ^List))
(assert (= ($ptr_level ^List) 0))
(assert (= ($sizeof ^List) 8))
(assert (forall ((|#s1@@11| T@$state) (|#s2@@9| T@$state) (|#p@@23| T@$ptr) ) (!  (and (=> ($inv2 |#s1@@11| |#s2@@9| |#p@@23| ^List) (and (and (and (and (and (and (and (and (and (and (and (and (and ($typed |#s2@@9| |#p@@23|) (=> (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head)))) ($ref $null))) ($set_in ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head))) ($owns |#s2@@9| |#p@@23|)))) ($eq.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.followers))) ($ref ($ptr ^Node ($ref $null)))) |F#lambda#1|)) (forall ((|Q#n$1^18.29#dt1| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^18.29#dt1|))) (=> ($set_in ($ptr ^Node |Q#n$1^18.29#dt1|) ($owns |#s2@@9| |#p@@23|)) (or (not (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^18.29#dt1|) Node.next)))) ($ref $null)))) ($set_in ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^18.29#dt1|) Node.next))) ($owns |#s2@@9| |#p@@23|)))))
 :qid |vcc2comp.3437:481|
 :skolemid |493|
))) (forall ((|Q#n$1^19.29#dt1| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^19.29#dt1|))) (=> ($set_in ($ptr ^Node |Q#n$1^19.29#dt1|) ($owns |#s2@@9| |#p@@23|)) (forall ((|Q#e$1^20.5#tc2| Int) ) (!  (=> (and (<= $min.i4 |Q#e$1^20.5#tc2|) (<= |Q#e$1^20.5#tc2| $max.i4)) (and (=> ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.followers))) ($ref ($ptr ^Node |Q#n$1^19.29#dt1|))) |Q#e$1^20.5#tc2|) (or ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.followers))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1|) Node.next))))) |Q#e$1^20.5#tc2|) (= |Q#e$1^20.5#tc2| ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1|) Node.data))))) (=> (or ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.followers))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1|) Node.next))))) |Q#e$1^20.5#tc2|) (= |Q#e$1^20.5#tc2| ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1|) Node.data)))) ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.followers))) ($ref ($ptr ^Node |Q#n$1^19.29#dt1|))) |Q#e$1^20.5#tc2|))))
 :qid |vcc2comp.3437:943|
 :skolemid |494|
))))
 :qid |vcc2comp.3437:802|
 :skolemid |495|
))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length_acc))) ($ref ($ptr ^Node ($ref $null)))) 0)) (forall ((|Q#n$1^21.51#dt1| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^21.51#dt1|))) (=> ($set_in ($ptr ^Node |Q#n$1^21.51#dt1|) ($owns |#s2@@9| |#p@@23|)) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length_acc))) ($ref ($ptr ^Node |Q#n$1^21.51#dt1|))) (+ ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length_acc))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^21.51#dt1|) Node.next))))) 1))))
 :qid |vcc2comp.3437:1719|
 :skolemid |496|
))) (forall ((|Q#n$1^22.29#dt1| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^22.29#dt1|))) (=> ($set_in ($ptr ^Node |Q#n$1^22.29#dt1|) ($owns |#s2@@9| |#p@@23|)) (= ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.idx))) ($ref ($ptr ^Node |Q#n$1^22.29#dt1|)))))) ($ref ($ptr ^Node |Q#n$1^22.29#dt1|)))))
 :qid |vcc2comp.3437:2201|
 :skolemid |497|
))) (forall ((|Q#i$1^23.29#tc3| Int) ) (!  (=> (and (<= 0 |Q#i$1^23.29#tc3|) (<= |Q#i$1^23.29#tc3| $max.u4)) (=> (< |Q#i$1^23.29#tc3| ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length))) ($set_in ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) |Q#i$1^23.29#tc3|)) ($owns |#s2@@9| |#p@@23|))))
 :qid |vcc2comp.3437:2639|
 :skolemid |498|
))) (forall ((|Q#i$1^24.29#tc3| Int) ) (!  (=> (and (<= 0 |Q#i$1^24.29#tc3|) (<= |Q#i$1^24.29#tc3| $max.u4)) (=> (< |Q#i$1^24.29#tc3| ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length))) (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) |Q#i$1^24.29#tc3|)) Node.next)))) ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) (+ |Q#i$1^24.29#tc3| 1)))))))
 :qid |vcc2comp.3437:2913|
 :skolemid |499|
 :pattern ( (sk_hack ($set_in ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) |Q#i$1^24.29#tc3|)) ($owns |#s2@@9| |#p@@23|))))
))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.idx))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head))))) 0)) (=> (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head)))) ($ref $null))) (= ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) 0))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head))))))) (forall ((|Q#n$1^26.29#dt1| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^26.29#dt1|))) (=> (and ($set_in ($ptr ^Node |Q#n$1^26.29#dt1|) ($owns |#s2@@9| |#p@@23|)) (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^26.29#dt1|) Node.next)))) ($ref $null)))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.idx))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^26.29#dt1|) Node.next))))) (+ ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.idx))) ($ref ($ptr ^Node |Q#n$1^26.29#dt1|))) 1))))
 :qid |vcc2comp.3437:3918|
 :skolemid |500|
))) (= ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length)) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length_acc))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head)))))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and ($typed |#s2@@9| |#p@@23|) (=> (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head)))) ($ref $null))) ($set_in ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head))) ($owns |#s2@@9| |#p@@23|)))) ($eq.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.followers))) ($ref ($ptr ^Node ($ref $null)))) |F#lambda#1|)) (forall ((|Q#n$1^18.29#dt1@@0| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^18.29#dt1@@0|))) (=> ($set_in ($ptr ^Node |Q#n$1^18.29#dt1@@0|) ($owns |#s2@@9| |#p@@23|)) (or (not (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^18.29#dt1@@0|) Node.next)))) ($ref $null)))) ($set_in ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^18.29#dt1@@0|) Node.next))) ($owns |#s2@@9| |#p@@23|)))))
 :qid |vcc2comp.3437:481|
 :skolemid |493|
))) (forall ((|Q#n$1^19.29#dt1@@0| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^19.29#dt1@@0|))) (=> ($set_in ($ptr ^Node |Q#n$1^19.29#dt1@@0|) ($owns |#s2@@9| |#p@@23|)) (forall ((|Q#e$1^20.5#tc2@@0| Int) ) (!  (=> (and (<= $min.i4 |Q#e$1^20.5#tc2@@0|) (<= |Q#e$1^20.5#tc2@@0| $max.i4)) (and (=> ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.followers))) ($ref ($ptr ^Node |Q#n$1^19.29#dt1@@0|))) |Q#e$1^20.5#tc2@@0|) (or ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.followers))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@0|) Node.next))))) |Q#e$1^20.5#tc2@@0|) (= |Q#e$1^20.5#tc2@@0| ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@0|) Node.data))))) (=> (or ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.followers))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@0|) Node.next))))) |Q#e$1^20.5#tc2@@0|) (= |Q#e$1^20.5#tc2@@0| ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@0|) Node.data)))) ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.followers))) ($ref ($ptr ^Node |Q#n$1^19.29#dt1@@0|))) |Q#e$1^20.5#tc2@@0|))))
 :qid |vcc2comp.3437:943|
 :skolemid |494|
))))
 :qid |vcc2comp.3437:802|
 :skolemid |495|
))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length_acc))) ($ref ($ptr ^Node ($ref $null)))) 0)) (forall ((|Q#n$1^21.51#dt1@@0| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^21.51#dt1@@0|))) (=> ($set_in ($ptr ^Node |Q#n$1^21.51#dt1@@0|) ($owns |#s2@@9| |#p@@23|)) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length_acc))) ($ref ($ptr ^Node |Q#n$1^21.51#dt1@@0|))) (+ ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length_acc))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^21.51#dt1@@0|) Node.next))))) 1))))
 :qid |vcc2comp.3437:1719|
 :skolemid |496|
))) (forall ((|Q#n$1^22.29#dt1@@0| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^22.29#dt1@@0|))) (=> ($set_in ($ptr ^Node |Q#n$1^22.29#dt1@@0|) ($owns |#s2@@9| |#p@@23|)) (= ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.idx))) ($ref ($ptr ^Node |Q#n$1^22.29#dt1@@0|)))))) ($ref ($ptr ^Node |Q#n$1^22.29#dt1@@0|)))))
 :qid |vcc2comp.3437:2201|
 :skolemid |497|
))) (forall ((|Q#i$1^23.29#tc3@@0| Int) ) (!  (=> (and (<= 0 |Q#i$1^23.29#tc3@@0|) (<= |Q#i$1^23.29#tc3@@0| $max.u4)) (=> (< |Q#i$1^23.29#tc3@@0| ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length))) ($set_in ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) |Q#i$1^23.29#tc3@@0|)) ($owns |#s2@@9| |#p@@23|))))
 :qid |vcc2comp.3437:2639|
 :skolemid |498|
))) (forall ((|Q#i$1^24.29#tc3@@0| Int) ) (!  (=> (and (<= 0 |Q#i$1^24.29#tc3@@0|) (<= |Q#i$1^24.29#tc3@@0| $max.u4)) (=> (< |Q#i$1^24.29#tc3@@0| ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length))) (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) |Q#i$1^24.29#tc3@@0|)) Node.next)))) ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) (+ |Q#i$1^24.29#tc3@@0| 1)))))))
 :qid |vcc2comp.3437:2913|
 :skolemid |499|
 :pattern ( (sk_hack ($set_in ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) |Q#i$1^24.29#tc3@@0|)) ($owns |#s2@@9| |#p@@23|))))
))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.idx))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head))))) 0)) (=> (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head)))) ($ref $null))) (= ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.seq))) 0))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head))))))) (forall ((|Q#n$1^26.29#dt1@@0| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^26.29#dt1@@0|))) (=> (and ($set_in ($ptr ^Node |Q#n$1^26.29#dt1@@0|) ($owns |#s2@@9| |#p@@23|)) (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^26.29#dt1@@0|) Node.next)))) ($ref $null)))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.idx))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot ($ptr ^Node |Q#n$1^26.29#dt1@@0|) Node.next))))) (+ ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.idx))) ($ref ($ptr ^Node |Q#n$1^26.29#dt1@@0|))) 1))))
 :qid |vcc2comp.3437:3918|
 :skolemid |500|
))) (= ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length)) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.length_acc))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@9|) ($dot |#p@@23| List.head))))))) ($inv2 |#s1@@11| |#s2@@9| |#p@@23| ^List)))
 :qid |vcc2comp.3437:15|
 :skolemid |501|
 :pattern ( ($inv2 |#s1@@11| |#s2@@9| |#p@@23| ^List))
)))
(assert (forall ((|#s2@@10| T@$state) (|#r@@23| Int) ) (!  (and (=> ($inv_lab |#s2@@10| ($ptr ^List |#r@@23|) |l#public|) (and (and (and (and (and (and (and (and (and (and (and (and (and ($typed |#s2@@10| ($ptr ^List |#r@@23|)) (=> (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head)))) ($ref $null))) ($set_in ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head))) ($owns |#s2@@10| ($ptr ^List |#r@@23|))))) ($eq.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.followers))) ($ref ($ptr ^Node ($ref $null)))) |F#lambda#1|)) (forall ((|Q#n$1^18.29#dt1@@1| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^18.29#dt1@@1|))) (=> ($set_in ($ptr ^Node |Q#n$1^18.29#dt1@@1|) ($owns |#s2@@10| ($ptr ^List |#r@@23|))) (or (not (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^18.29#dt1@@1|) Node.next)))) ($ref $null)))) ($set_in ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^18.29#dt1@@1|) Node.next))) ($owns |#s2@@10| ($ptr ^List |#r@@23|))))))
 :qid |vcc2comp.3439:560|
 :skolemid |502|
))) (forall ((|Q#n$1^19.29#dt1@@1| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^19.29#dt1@@1|))) (=> ($set_in ($ptr ^Node |Q#n$1^19.29#dt1@@1|) ($owns |#s2@@10| ($ptr ^List |#r@@23|))) (forall ((|Q#e$1^20.5#tc2@@1| Int) ) (!  (=> (and (<= $min.i4 |Q#e$1^20.5#tc2@@1|) (<= |Q#e$1^20.5#tc2@@1| $max.i4)) (and (=> ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.followers))) ($ref ($ptr ^Node |Q#n$1^19.29#dt1@@1|))) |Q#e$1^20.5#tc2@@1|) (or ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.followers))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@1|) Node.next))))) |Q#e$1^20.5#tc2@@1|) (= |Q#e$1^20.5#tc2@@1| ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@1|) Node.data))))) (=> (or ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.followers))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@1|) Node.next))))) |Q#e$1^20.5#tc2@@1|) (= |Q#e$1^20.5#tc2@@1| ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@1|) Node.data)))) ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.followers))) ($ref ($ptr ^Node |Q#n$1^19.29#dt1@@1|))) |Q#e$1^20.5#tc2@@1|))))
 :qid |vcc2comp.3439:1061|
 :skolemid |503|
))))
 :qid |vcc2comp.3439:907|
 :skolemid |504|
))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length_acc))) ($ref ($ptr ^Node ($ref $null)))) 0)) (forall ((|Q#n$1^21.51#dt1@@1| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^21.51#dt1@@1|))) (=> ($set_in ($ptr ^Node |Q#n$1^21.51#dt1@@1|) ($owns |#s2@@10| ($ptr ^List |#r@@23|))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length_acc))) ($ref ($ptr ^Node |Q#n$1^21.51#dt1@@1|))) (+ ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length_acc))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^21.51#dt1@@1|) Node.next))))) 1))))
 :qid |vcc2comp.3439:1876|
 :skolemid |505|
))) (forall ((|Q#n$1^22.29#dt1@@1| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^22.29#dt1@@1|))) (=> ($set_in ($ptr ^Node |Q#n$1^22.29#dt1@@1|) ($owns |#s2@@10| ($ptr ^List |#r@@23|))) (= ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.idx))) ($ref ($ptr ^Node |Q#n$1^22.29#dt1@@1|)))))) ($ref ($ptr ^Node |Q#n$1^22.29#dt1@@1|)))))
 :qid |vcc2comp.3439:2397|
 :skolemid |506|
))) (forall ((|Q#i$1^23.29#tc3@@1| Int) ) (!  (=> (and (<= 0 |Q#i$1^23.29#tc3@@1|) (<= |Q#i$1^23.29#tc3@@1| $max.u4)) (=> (< |Q#i$1^23.29#tc3@@1| ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length))) ($set_in ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) |Q#i$1^23.29#tc3@@1|)) ($owns |#s2@@10| ($ptr ^List |#r@@23|)))))
 :qid |vcc2comp.3439:2874|
 :skolemid |507|
))) (forall ((|Q#i$1^24.29#tc3@@1| Int) ) (!  (=> (and (<= 0 |Q#i$1^24.29#tc3@@1|) (<= |Q#i$1^24.29#tc3@@1| $max.u4)) (=> (< |Q#i$1^24.29#tc3@@1| ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length))) (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) |Q#i$1^24.29#tc3@@1|)) Node.next)))) ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) (+ |Q#i$1^24.29#tc3@@1| 1)))))))
 :qid |vcc2comp.3439:3187|
 :skolemid |508|
 :pattern ( (sk_hack ($set_in ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) |Q#i$1^24.29#tc3@@1|)) ($owns |#s2@@10| ($ptr ^List |#r@@23|)))))
))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.idx))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head))))) 0)) (=> (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head)))) ($ref $null))) (= ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) 0))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head))))))) (forall ((|Q#n$1^26.29#dt1@@1| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^26.29#dt1@@1|))) (=> (and ($set_in ($ptr ^Node |Q#n$1^26.29#dt1@@1|) ($owns |#s2@@10| ($ptr ^List |#r@@23|))) (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^26.29#dt1@@1|) Node.next)))) ($ref $null)))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.idx))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^26.29#dt1@@1|) Node.next))))) (+ ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.idx))) ($ref ($ptr ^Node |Q#n$1^26.29#dt1@@1|))) 1))))
 :qid |vcc2comp.3439:4322|
 :skolemid |509|
))) (= ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length)) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length_acc))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head)))))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and ($typed |#s2@@10| ($ptr ^List |#r@@23|)) (=> (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head)))) ($ref $null))) ($set_in ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head))) ($owns |#s2@@10| ($ptr ^List |#r@@23|))))) ($eq.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.followers))) ($ref ($ptr ^Node ($ref $null)))) |F#lambda#1|)) (forall ((|Q#n$1^18.29#dt1@@2| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^18.29#dt1@@2|))) (=> ($set_in ($ptr ^Node |Q#n$1^18.29#dt1@@2|) ($owns |#s2@@10| ($ptr ^List |#r@@23|))) (or (not (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^18.29#dt1@@2|) Node.next)))) ($ref $null)))) ($set_in ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^18.29#dt1@@2|) Node.next))) ($owns |#s2@@10| ($ptr ^List |#r@@23|))))))
 :qid |vcc2comp.3439:560|
 :skolemid |502|
))) (forall ((|Q#n$1^19.29#dt1@@2| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^19.29#dt1@@2|))) (=> ($set_in ($ptr ^Node |Q#n$1^19.29#dt1@@2|) ($owns |#s2@@10| ($ptr ^List |#r@@23|))) (forall ((|Q#e$1^20.5#tc2@@2| Int) ) (!  (=> (and (<= $min.i4 |Q#e$1^20.5#tc2@@2|) (<= |Q#e$1^20.5#tc2@@2| $max.i4)) (and (=> ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.followers))) ($ref ($ptr ^Node |Q#n$1^19.29#dt1@@2|))) |Q#e$1^20.5#tc2@@2|) (or ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.followers))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@2|) Node.next))))) |Q#e$1^20.5#tc2@@2|) (= |Q#e$1^20.5#tc2@@2| ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@2|) Node.data))))) (=> (or ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.followers))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@2|) Node.next))))) |Q#e$1^20.5#tc2@@2|) (= |Q#e$1^20.5#tc2@@2| ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^19.29#dt1@@2|) Node.data)))) ($select.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.followers))) ($ref ($ptr ^Node |Q#n$1^19.29#dt1@@2|))) |Q#e$1^20.5#tc2@@2|))))
 :qid |vcc2comp.3439:1061|
 :skolemid |503|
))))
 :qid |vcc2comp.3439:907|
 :skolemid |504|
))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length_acc))) ($ref ($ptr ^Node ($ref $null)))) 0)) (forall ((|Q#n$1^21.51#dt1@@2| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^21.51#dt1@@2|))) (=> ($set_in ($ptr ^Node |Q#n$1^21.51#dt1@@2|) ($owns |#s2@@10| ($ptr ^List |#r@@23|))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length_acc))) ($ref ($ptr ^Node |Q#n$1^21.51#dt1@@2|))) (+ ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length_acc))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^21.51#dt1@@2|) Node.next))))) 1))))
 :qid |vcc2comp.3439:1876|
 :skolemid |505|
))) (forall ((|Q#n$1^22.29#dt1@@2| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^22.29#dt1@@2|))) (=> ($set_in ($ptr ^Node |Q#n$1^22.29#dt1@@2|) ($owns |#s2@@10| ($ptr ^List |#r@@23|))) (= ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.idx))) ($ref ($ptr ^Node |Q#n$1^22.29#dt1@@2|)))))) ($ref ($ptr ^Node |Q#n$1^22.29#dt1@@2|)))))
 :qid |vcc2comp.3439:2397|
 :skolemid |506|
))) (forall ((|Q#i$1^23.29#tc3@@2| Int) ) (!  (=> (and (<= 0 |Q#i$1^23.29#tc3@@2|) (<= |Q#i$1^23.29#tc3@@2| $max.u4)) (=> (< |Q#i$1^23.29#tc3@@2| ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length))) ($set_in ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) |Q#i$1^23.29#tc3@@2|)) ($owns |#s2@@10| ($ptr ^List |#r@@23|)))))
 :qid |vcc2comp.3439:2874|
 :skolemid |507|
))) (forall ((|Q#i$1^24.29#tc3@@2| Int) ) (!  (=> (and (<= 0 |Q#i$1^24.29#tc3@@2|) (<= |Q#i$1^24.29#tc3@@2| $max.u4)) (=> (< |Q#i$1^24.29#tc3@@2| ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length))) (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) |Q#i$1^24.29#tc3@@2|)) Node.next)))) ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) (+ |Q#i$1^24.29#tc3@@2| 1)))))))
 :qid |vcc2comp.3439:3187|
 :skolemid |508|
 :pattern ( (sk_hack ($set_in ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) |Q#i$1^24.29#tc3@@2|)) ($owns |#s2@@10| ($ptr ^List |#r@@23|)))))
))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.idx))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head))))) 0)) (=> (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head)))) ($ref $null))) (= ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.seq))) 0))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head))))))) (forall ((|Q#n$1^26.29#dt1@@2| Int) ) (!  (=> ($in_range_phys_ptr ($ref ($ptr ^Node |Q#n$1^26.29#dt1@@2|))) (=> (and ($set_in ($ptr ^Node |Q#n$1^26.29#dt1@@2|) ($owns |#s2@@10| ($ptr ^List |#r@@23|))) (not (= ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^26.29#dt1@@2|) Node.next)))) ($ref $null)))) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.idx))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^Node |Q#n$1^26.29#dt1@@2|) Node.next))))) (+ ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.idx))) ($ref ($ptr ^Node |Q#n$1^26.29#dt1@@2|))) 1))))
 :qid |vcc2comp.3439:4322|
 :skolemid |509|
))) (= ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length)) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.length_acc))) ($ref ($ptr ^Node ($select.mem ($memory |#s2@@10|) ($dot ($ptr ^List |#r@@23|) List.head))))))) ($inv_lab |#s2@@10| ($ptr ^List |#r@@23|) |l#public|)))
 :qid |vcc2comp.3439:15|
 :skolemid |510|
 :pattern ( ($inv_lab |#s2@@10| ($ptr ^List |#r@@23|) |l#public|))
)))
(assert (forall ((|#q@@4| T@$ptr) (|#r@@24| Int) ) (!  (and (=> ($set_in |#q@@4| ($full_extent ($ptr ^List |#r@@24|))) (or (or (or (or (or (or (or (= |#q@@4| ($ptr ^List |#r@@24|)) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.$owns))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.head))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.seq))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.idx))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.followers))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.length_acc))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.length)))) (=> (or (or (or (or (or (or (or (= |#q@@4| ($ptr ^List |#r@@24|)) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.$owns))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.head))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.seq))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.idx))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.followers))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.length_acc))) (= |#q@@4| ($dot ($ptr ^List |#r@@24|) List.length))) ($set_in |#q@@4| ($full_extent ($ptr ^List |#r@@24|)))))
 :qid |vcc2comp.3441:15|
 :skolemid |511|
 :pattern ( ($set_in |#q@@4| ($full_extent ($ptr ^List |#r@@24|))))
)))
(assert (forall ((|#s@@4| T@$state) (|#q@@5| T@$ptr) (|#r@@25| Int) ) (!  (and (=> ($set_in |#q@@5| ($extent |#s@@4| ($ptr ^List |#r@@25|))) ($set_in |#q@@5| ($full_extent ($ptr ^List |#r@@25|)))) (=> ($set_in |#q@@5| ($full_extent ($ptr ^List |#r@@25|))) ($set_in |#q@@5| ($extent |#s@@4| ($ptr ^List |#r@@25|)))))
 :qid |vcc2comp.3443:15|
 :skolemid |512|
 :pattern ( ($set_in |#q@@5| ($extent |#s@@4| ($ptr ^List |#r@@25|))))
)))
(assert (forall ((|#s@@5| T@$state) (|#q@@6| T@$ptr) (|#r@@26| Int) ) (!  (=> ($typed |#s@@5| ($ptr ^List |#r@@26|)) (and (=> ($set_in |#q@@6| ($extent |#s@@5| ($ptr ^List |#r@@26|))) (or (= |#q@@6| ($ptr ^List |#r@@26|)) (= ($ts_emb ($select.tm ($typemap |#s@@5|) |#q@@6|)) ($ptr ^List |#r@@26|)))) (=> (or (= |#q@@6| ($ptr ^List |#r@@26|)) (= ($ts_emb ($select.tm ($typemap |#s@@5|) |#q@@6|)) ($ptr ^List |#r@@26|))) ($set_in |#q@@6| ($extent |#s@@5| ($ptr ^List |#r@@26|))))))
 :qid |vcc2comp.3443:187|
 :skolemid |513|
 :pattern ( ($set_in |#q@@6| ($extent |#s@@5| ($ptr ^List |#r@@26|))))
)))
(assert (forall ((|#q@@7| T@$ptr) (|#r@@27| Int) ) (!  (and (=> ($set_in |#q@@7| ($span ($ptr ^List |#r@@27|))) (or (or (or (or (or (or (or (= |#q@@7| ($ptr ^List |#r@@27|)) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.$owns))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.head))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.seq))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.idx))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.followers))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.length_acc))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.length)))) (=> (or (or (or (or (or (or (or (= |#q@@7| ($ptr ^List |#r@@27|)) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.$owns))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.head))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.seq))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.idx))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.followers))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.length_acc))) (= |#q@@7| ($dot ($ptr ^List |#r@@27|) List.length))) ($set_in |#q@@7| ($span ($ptr ^List |#r@@27|)))))
 :qid |vcc2comp.3445:15|
 :skolemid |514|
 :pattern ( ($set_in |#q@@7| ($span ($ptr ^List |#r@@27|))))
)))
(assert (forall ((|#p@@24| T@$ptr) (|#s1@@12| T@$state) (|#s2@@11| T@$state) ) (!  (and (=> ($state_spans_the_same |#s1@@12| |#s2@@11| |#p@@24| ^List) (and (and (and (and (and (and (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.$owns)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.$owns))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.head)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.head)))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.seq)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.seq)))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.idx)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.idx)))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.followers)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.followers)))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.length_acc)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.length_acc)))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.length)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.length))))) (=> (and (and (and (and (and (and (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.$owns)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.$owns))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.head)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.head)))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.seq)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.seq)))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.idx)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.idx)))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.followers)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.followers)))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.length_acc)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.length_acc)))) (= ($select.mem ($memory |#s1@@12|) ($dot |#p@@24| List.length)) ($select.mem ($memory |#s2@@11|) ($dot |#p@@24| List.length)))) ($state_spans_the_same |#s1@@12| |#s2@@11| |#p@@24| ^List)))
 :qid |vcc2comp.3447:15|
 :skolemid |515|
 :pattern ( ($state_spans_the_same |#s1@@12| |#s2@@11| |#p@@24| ^List))
)))
(assert (forall ((|#p@@25| T@$ptr) (|#s1@@13| T@$state) (|#s2@@12| T@$state) ) (!  (and (=> ($state_nonvolatile_spans_the_same |#s1@@13| |#s2@@12| |#p@@25| ^List) (and (and (and (and (and (and (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.$owns)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.$owns))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.head)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.head)))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.seq)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.seq)))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.idx)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.idx)))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.followers)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.followers)))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.length_acc)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.length_acc)))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.length)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.length))))) (=> (and (and (and (and (and (and (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.$owns)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.$owns))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.head)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.head)))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.seq)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.seq)))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.idx)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.idx)))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.followers)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.followers)))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.length_acc)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.length_acc)))) (= ($select.mem ($memory |#s1@@13|) ($dot |#p@@25| List.length)) ($select.mem ($memory |#s2@@12|) ($dot |#p@@25| List.length)))) ($state_nonvolatile_spans_the_same |#s1@@13| |#s2@@12| |#p@@25| ^List)))
 :qid |vcc2comp.3449:15|
 :skolemid |516|
 :pattern ( ($state_nonvolatile_spans_the_same |#s1@@13| |#s2@@12| |#p@@25| ^List))
)))
(assert  (=> ($is_claimable ^List) false))
(assert  (=> false ($is_claimable ^List)))
(assert  (=> ($has_volatile_owns_set ^List) false))
(assert  (=> false ($has_volatile_owns_set ^List)))
(assert (forall ((|#s1@@14| T@$state) (|#r@@28| Int) ) (!  (and (=> ($extent_mutable |#s1@@14| ($ptr ^List |#r@@28|)) ($mutable |#s1@@14| ($ptr ^List |#r@@28|))) (=> ($mutable |#s1@@14| ($ptr ^List |#r@@28|)) ($extent_mutable |#s1@@14| ($ptr ^List |#r@@28|))))
 :qid |vcc2comp.3455:15|
 :skolemid |517|
 :pattern ( ($extent_mutable |#s1@@14| ($ptr ^List |#r@@28|)))
)))
(assert (forall ((|#s1@@15| T@$state) (|#s2@@13| T@$state) (|#r@@29| Int) ) (!  (and (=> ($extent_is_fresh |#s1@@15| |#s2@@13| ($ptr ^List |#r@@29|)) (and (< ($current_timestamp |#s1@@15|) ($timestamp |#s2@@13| ($ptr ^List |#r@@29|))) (<= ($timestamp |#s2@@13| ($ptr ^List |#r@@29|)) ($current_timestamp |#s2@@13|)))) (=> (and (< ($current_timestamp |#s1@@15|) ($timestamp |#s2@@13| ($ptr ^List |#r@@29|))) (<= ($timestamp |#s2@@13| ($ptr ^List |#r@@29|)) ($current_timestamp |#s2@@13|))) ($extent_is_fresh |#s1@@15| |#s2@@13| ($ptr ^List |#r@@29|))))
 :qid |vcc2comp.3457:15|
 :skolemid |518|
 :pattern ( ($extent_is_fresh |#s1@@15| |#s2@@13| ($ptr ^List |#r@@29|)))
)))
(assert (forall ((|#s1@@16| T@$state) (|#r@@30| Int) ) (!  (and (=> ($extent_zero |#s1@@16| ($ptr ^List |#r@@30|)) (and (and (and (and (and (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.head)) 0) (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.seq)) 0)) (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.idx)) 0)) (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.followers)) 0)) (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.length_acc)) 0)) (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.length)) 0))) (=> (and (and (and (and (and (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.head)) 0) (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.seq)) 0)) (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.idx)) 0)) (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.followers)) 0)) (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.length_acc)) 0)) (= ($select.mem ($memory |#s1@@16|) ($dot ($ptr ^List |#r@@30|) List.length)) 0)) ($extent_zero |#s1@@16| ($ptr ^List |#r@@30|))))
 :qid |vcc2comp.3459:15|
 :skolemid |519|
 :pattern ( ($extent_zero |#s1@@16| ($ptr ^List |#r@@30|)))
)))
(assert ($is_base_field List.$owns))
(assert (= ($field_parent_type List.$owns) ^List))
(assert ($is_primitive_non_volatile_field List.$owns))
(assert (forall ((|#p@@26| T@$ptr) ) (!  (=> ($is |#p@@26| ^List) (and (= ($dot |#p@@26| List.$owns) ($ptr |^$#ptrset| ($ghost_ref |#p@@26| List.$owns))) ($extent_hint ($dot |#p@@26| List.$owns) |#p@@26|)))
 :qid |vcc2comp.3467:15|
 :skolemid |520|
 :pattern ( ($dot |#p@@26| List.$owns))
)))
(assert (forall ((|#p@@27| T@$ptr) (|#s@@6| T@$state) ) (!  (=> (and ($is |#p@@27| ^List) ($typed |#s@@6| |#p@@27|)) (and (and (and (and ($is ($dot |#p@@27| List.$owns) |^$#ptrset|) ($typed |#s@@6| ($dot |#p@@27| List.$owns))) (= ($ts_emb ($select.tm ($typemap |#s@@6|) ($dot |#p@@27| List.$owns))) |#p@@27|)) (= ($ts_path ($select.tm ($typemap |#s@@6|) ($dot |#p@@27| List.$owns))) List.$owns)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s@@6|) ($dot |#p@@27| List.$owns))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s@@6|) ($dot |#p@@27| List.$owns)))))))
 :qid |vcc2comp.3469:15|
 :skolemid |521|
 :pattern ( ($select.tm ($typemap |#s@@6|) ($dot |#p@@27| List.$owns)))
 :pattern ( ($select.sm ($statusmap |#s@@6|) ($dot |#p@@27| List.$owns)))
)))
(assert (= ($owns_set_field ^List) List.$owns))
(assert ($is_base_field List.head))
(assert (= ($field_parent_type List.head) ^List))
(assert ($is_primitive_non_volatile_field List.head))
(assert (= ($field_offset List.head) 0))
(assert (forall ((|#p@@28| T@$ptr) ) (!  (=> ($is |#p@@28| ^List) (and (= ($dot |#p@@28| List.head) ($ptr ($ptr_to ^Node) (+ ($ref |#p@@28|) 0))) ($extent_hint ($dot |#p@@28| List.head) |#p@@28|)))
 :qid |vcc2comp.3481:15|
 :skolemid |522|
 :pattern ( ($dot |#p@@28| List.head))
)))
(assert (forall ((|#p@@29| T@$ptr) (|#s@@7| T@$state) ) (!  (=> (and ($is |#p@@29| ^List) ($typed |#s@@7| |#p@@29|)) (and (and (and (and ($is ($dot |#p@@29| List.head) ($ptr_to ^Node)) ($typed |#s@@7| ($dot |#p@@29| List.head))) (= ($ts_emb ($select.tm ($typemap |#s@@7|) ($dot |#p@@29| List.head))) |#p@@29|)) (= ($ts_path ($select.tm ($typemap |#s@@7|) ($dot |#p@@29| List.head))) List.head)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s@@7|) ($dot |#p@@29| List.head))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s@@7|) ($dot |#p@@29| List.head)))))))
 :qid |vcc2comp.3483:15|
 :skolemid |523|
 :pattern ( ($select.tm ($typemap |#s@@7|) ($dot |#p@@29| List.head)))
 :pattern ( ($select.sm ($statusmap |#s@@7|) ($dot |#p@@29| List.head)))
)))
(assert ($is_base_field List.seq))
(assert (= ($field_parent_type List.seq) ^List))
(assert ($is_primitive_non_volatile_field List.seq))
(assert (forall ((|#p@@30| T@$ptr) ) (!  (=> ($is |#p@@30| ^List) (and (= ($dot |#p@@30| List.seq) ($ptr ($map_t ^^u4 ($ptr_to ^Node)) ($ghost_ref |#p@@30| List.seq))) ($extent_hint ($dot |#p@@30| List.seq) |#p@@30|)))
 :qid |vcc2comp.3491:15|
 :skolemid |524|
 :pattern ( ($dot |#p@@30| List.seq))
)))
(assert (forall ((|#p@@31| T@$ptr) (|#s@@8| T@$state) ) (!  (=> (and ($is |#p@@31| ^List) ($typed |#s@@8| |#p@@31|)) (and (and (and (and ($is ($dot |#p@@31| List.seq) ($map_t ^^u4 ($ptr_to ^Node))) ($typed |#s@@8| ($dot |#p@@31| List.seq))) (= ($ts_emb ($select.tm ($typemap |#s@@8|) ($dot |#p@@31| List.seq))) |#p@@31|)) (= ($ts_path ($select.tm ($typemap |#s@@8|) ($dot |#p@@31| List.seq))) List.seq)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s@@8|) ($dot |#p@@31| List.seq))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s@@8|) ($dot |#p@@31| List.seq)))))))
 :qid |vcc2comp.3493:15|
 :skolemid |525|
 :pattern ( ($select.tm ($typemap |#s@@8|) ($dot |#p@@31| List.seq)))
 :pattern ( ($select.sm ($statusmap |#s@@8|) ($dot |#p@@31| List.seq)))
)))
(assert ($is_base_field List.idx))
(assert (= ($field_parent_type List.idx) ^List))
(assert ($is_primitive_non_volatile_field List.idx))
(assert (forall ((|#p@@32| T@$ptr) ) (!  (=> ($is |#p@@32| ^List) (and (= ($dot |#p@@32| List.idx) ($ptr ($map_t ($ptr_to ^Node) ^^u4) ($ghost_ref |#p@@32| List.idx))) ($extent_hint ($dot |#p@@32| List.idx) |#p@@32|)))
 :qid |vcc2comp.3501:15|
 :skolemid |526|
 :pattern ( ($dot |#p@@32| List.idx))
)))
(assert (forall ((|#p@@33| T@$ptr) (|#s@@9| T@$state) ) (!  (=> (and ($is |#p@@33| ^List) ($typed |#s@@9| |#p@@33|)) (and (and (and (and ($is ($dot |#p@@33| List.idx) ($map_t ($ptr_to ^Node) ^^u4)) ($typed |#s@@9| ($dot |#p@@33| List.idx))) (= ($ts_emb ($select.tm ($typemap |#s@@9|) ($dot |#p@@33| List.idx))) |#p@@33|)) (= ($ts_path ($select.tm ($typemap |#s@@9|) ($dot |#p@@33| List.idx))) List.idx)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s@@9|) ($dot |#p@@33| List.idx))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s@@9|) ($dot |#p@@33| List.idx)))))))
 :qid |vcc2comp.3503:15|
 :skolemid |527|
 :pattern ( ($select.tm ($typemap |#s@@9|) ($dot |#p@@33| List.idx)))
 :pattern ( ($select.sm ($statusmap |#s@@9|) ($dot |#p@@33| List.idx)))
)))
(assert ($is_base_field List.followers))
(assert (= ($field_parent_type List.followers) ^List))
(assert ($is_primitive_non_volatile_field List.followers))
(assert (forall ((|#p@@34| T@$ptr) ) (!  (=> ($is |#p@@34| ^List) (and (= ($dot |#p@@34| List.followers) ($ptr ($map_t ($ptr_to ^Node) ($map_t ^^i4 ^^bool)) ($ghost_ref |#p@@34| List.followers))) ($extent_hint ($dot |#p@@34| List.followers) |#p@@34|)))
 :qid |vcc2comp.3511:15|
 :skolemid |528|
 :pattern ( ($dot |#p@@34| List.followers))
)))
(assert (forall ((|#p@@35| T@$ptr) (|#s@@10| T@$state) ) (!  (=> (and ($is |#p@@35| ^List) ($typed |#s@@10| |#p@@35|)) (and (and (and (and ($is ($dot |#p@@35| List.followers) ($map_t ($ptr_to ^Node) ($map_t ^^i4 ^^bool))) ($typed |#s@@10| ($dot |#p@@35| List.followers))) (= ($ts_emb ($select.tm ($typemap |#s@@10|) ($dot |#p@@35| List.followers))) |#p@@35|)) (= ($ts_path ($select.tm ($typemap |#s@@10|) ($dot |#p@@35| List.followers))) List.followers)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s@@10|) ($dot |#p@@35| List.followers))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s@@10|) ($dot |#p@@35| List.followers)))))))
 :qid |vcc2comp.3513:15|
 :skolemid |529|
 :pattern ( ($select.tm ($typemap |#s@@10|) ($dot |#p@@35| List.followers)))
 :pattern ( ($select.sm ($statusmap |#s@@10|) ($dot |#p@@35| List.followers)))
)))
(assert ($is_base_field List.length_acc))
(assert (= ($field_parent_type List.length_acc) ^List))
(assert ($is_primitive_non_volatile_field List.length_acc))
(assert (forall ((|#p@@36| T@$ptr) ) (!  (=> ($is |#p@@36| ^List) (and (= ($dot |#p@@36| List.length_acc) ($ptr ($map_t ($ptr_to ^Node) ^^u4) ($ghost_ref |#p@@36| List.length_acc))) ($extent_hint ($dot |#p@@36| List.length_acc) |#p@@36|)))
 :qid |vcc2comp.3521:15|
 :skolemid |530|
 :pattern ( ($dot |#p@@36| List.length_acc))
)))
(assert (forall ((|#p@@37| T@$ptr) (|#s@@11| T@$state) ) (!  (=> (and ($is |#p@@37| ^List) ($typed |#s@@11| |#p@@37|)) (and (and (and (and ($is ($dot |#p@@37| List.length_acc) ($map_t ($ptr_to ^Node) ^^u4)) ($typed |#s@@11| ($dot |#p@@37| List.length_acc))) (= ($ts_emb ($select.tm ($typemap |#s@@11|) ($dot |#p@@37| List.length_acc))) |#p@@37|)) (= ($ts_path ($select.tm ($typemap |#s@@11|) ($dot |#p@@37| List.length_acc))) List.length_acc)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s@@11|) ($dot |#p@@37| List.length_acc))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s@@11|) ($dot |#p@@37| List.length_acc)))))))
 :qid |vcc2comp.3523:15|
 :skolemid |531|
 :pattern ( ($select.tm ($typemap |#s@@11|) ($dot |#p@@37| List.length_acc)))
 :pattern ( ($select.sm ($statusmap |#s@@11|) ($dot |#p@@37| List.length_acc)))
)))
(assert ($is_base_field List.length))
(assert (= ($field_parent_type List.length) ^List))
(assert ($is_primitive_non_volatile_field List.length))
(assert (forall ((|#p@@38| T@$ptr) ) (!  (=> ($is |#p@@38| ^List) (and (= ($dot |#p@@38| List.length) ($ptr ^^u4 ($ghost_ref |#p@@38| List.length))) ($extent_hint ($dot |#p@@38| List.length) |#p@@38|)))
 :qid |vcc2comp.3531:15|
 :skolemid |532|
 :pattern ( ($dot |#p@@38| List.length))
)))
(assert (forall ((|#p@@39| T@$ptr) (|#s@@12| T@$state) ) (!  (=> (and ($is |#p@@39| ^List) ($typed |#s@@12| |#p@@39|)) (and (and (and (and ($is ($dot |#p@@39| List.length) ^^u4) ($typed |#s@@12| ($dot |#p@@39| List.length))) (= ($ts_emb ($select.tm ($typemap |#s@@12|) ($dot |#p@@39| List.length))) |#p@@39|)) (= ($ts_path ($select.tm ($typemap |#s@@12|) ($dot |#p@@39| List.length))) List.length)) (and (=> ($ts_is_volatile ($select.tm ($typemap |#s@@12|) ($dot |#p@@39| List.length))) false) (=> false ($ts_is_volatile ($select.tm ($typemap |#s@@12|) ($dot |#p@@39| List.length)))))))
 :qid |vcc2comp.3533:15|
 :skolemid |533|
 :pattern ( ($select.tm ($typemap |#s@@12|) ($dot |#p@@39| List.length)))
 :pattern ( ($select.sm ($statusmap |#s@@12|) ($dot |#p@@39| List.length)))
)))
(assert ($function_arg_type |cf#lambda#1| 0 ($map_t ^^i4 ^^bool)))
(assert (forall ((|Q#k$1^17.45#tc2| Int) ) (!  (=> (and (<= $min.i4 |Q#k$1^17.45#tc2|) (<= |Q#k$1^17.45#tc2| $max.i4)) (and (=> ($select.$map_t..^^i4.^^bool |F#lambda#1| |Q#k$1^17.45#tc2|) false) (=> false ($select.$map_t..^^i4.^^bool |F#lambda#1| |Q#k$1^17.45#tc2|))))
 :qid |vcc2comp.3704:15|
 :skolemid |553|
 :pattern ( ($select.$map_t..^^i4.^^bool |F#lambda#1| |Q#k$1^17.45#tc2|))
)))
(assert (forall ((M@@12 T@$map_t..^^i4.^^bool) (p@@123 Int) (v@@16 Bool) ) (!  (=> ($in_range_t ^^i4 p@@123) (and (=> ($select.$map_t..^^i4.^^bool ($store.$map_t..^^i4.^^bool M@@12 p@@123 v@@16) p@@123) v@@16) (=> v@@16 ($select.$map_t..^^i4.^^bool ($store.$map_t..^^i4.^^bool M@@12 p@@123 v@@16) p@@123))))
 :qid |vcc2comp.3718:15|
 :skolemid |554|
)))
(assert (forall ((M@@13 T@$map_t..^^i4.^^bool) (p@@124 Int) (v@@17 Bool) (q@@26 Int) ) (!  (=> (not (= p@@124 q@@26)) (and (=> ($select.$map_t..^^i4.^^bool ($store.$map_t..^^i4.^^bool M@@13 q@@26 v@@17) p@@124) ($select.$map_t..^^i4.^^bool M@@13 p@@124)) (=> ($select.$map_t..^^i4.^^bool M@@13 p@@124) ($select.$map_t..^^i4.^^bool ($store.$map_t..^^i4.^^bool M@@13 q@@26 v@@17) p@@124))))
 :qid |vcc2comp.3720:15|
 :skolemid |555|
)))
(assert (forall ((M1@@1 T@$map_t..^^i4.^^bool) (M2@@1 T@$map_t..^^i4.^^bool) ) (!  (=> (forall ((p@@125 Int) ) (!  (=> ($in_range_t ^^i4 p@@125) (and (=> ($select.$map_t..^^i4.^^bool M1@@1 p@@125) ($select.$map_t..^^i4.^^bool M2@@1 p@@125)) (=> ($select.$map_t..^^i4.^^bool M2@@1 p@@125) ($select.$map_t..^^i4.^^bool M1@@1 p@@125))))
 :qid |vcc2comp.3722:111|
 :skolemid |556|
)) ($eq.$map_t..^^i4.^^bool M1@@1 M2@@1))
 :qid |vcc2comp.3722:15|
 :skolemid |557|
 :pattern ( ($eq.$map_t..^^i4.^^bool M1@@1 M2@@1))
)))
(assert (forall ((M1@@2 T@$map_t..^^i4.^^bool) (M2@@2 T@$map_t..^^i4.^^bool) ) (!  (=> ($eq.$map_t..^^i4.^^bool M1@@2 M2@@2) (= M1@@2 M2@@2))
 :qid |vcc2comp.3724:15|
 :skolemid |558|
 :pattern ( ($eq.$map_t..^^i4.^^bool M1@@2 M2@@2))
)))
(assert (= ($int_to_map_t..^^i4.^^bool 0) $zero.$map_t..^^i4.^^bool))
(assert (forall ((p@@126 Int) ) (!  (and (=> ($select.$map_t..^^i4.^^bool $zero.$map_t..^^i4.^^bool p@@126) false) (=> false ($select.$map_t..^^i4.^^bool $zero.$map_t..^^i4.^^bool p@@126)))
 :qid |vcc2comp.3728:15|
 :skolemid |559|
)))
(assert (forall ((r1@@3 T@$record) (r2@@3 T@$record) (f@@20 T@$field) (R@@0 T@$ctype) ) (!  (=> ($eq.$map_t..^^i4.^^bool ($int_to_map_t..^^i4.^^bool ($rec_fetch r1@@3 f@@20)) ($int_to_map_t..^^i4.^^bool ($rec_fetch r2@@3 f@@20))) ($rec_base_eq ($rec_fetch r1@@3 f@@20) ($rec_fetch r2@@3 f@@20)))
 :qid |vcc2comp.3730:15|
 :skolemid |560|
 :pattern ( ($rec_base_eq ($rec_fetch r1@@3 f@@20) ($rec_fetch r2@@3 f@@20)) ($is_record_field R@@0 f@@20 ($map_t ^^i4 ^^bool)))
)))
(assert (forall ((M@@14 T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool) (p@@127 Int) (v@@18 T@$map_t..^^i4.^^bool) ) (! (= ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($store.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool M@@14 p@@127 v@@18) p@@127) v@@18)
 :qid |vcc2comp.3742:15|
 :skolemid |561|
)))
(assert (forall ((M@@15 T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool) (p@@128 Int) (v@@19 T@$map_t..^^i4.^^bool) (q@@27 Int) ) (!  (=> (not (= p@@128 q@@27)) (= ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($store.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool M@@15 q@@27 v@@19) p@@128) ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool M@@15 p@@128)))
 :qid |vcc2comp.3744:15|
 :skolemid |562|
)))
(assert (forall ((M1@@3 T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool) (M2@@3 T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool) ) (!  (=> (forall ((p@@129 Int) ) (! ($eq.$map_t..^^i4.^^bool ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool M1@@3 p@@129) ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool M2@@3 p@@129))
 :qid |vcc2comp.3746:180|
 :skolemid |563|
)) ($eq.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool M1@@3 M2@@3))
 :qid |vcc2comp.3746:15|
 :skolemid |564|
 :pattern ( ($eq.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool M1@@3 M2@@3))
)))
(assert (forall ((M1@@4 T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool) (M2@@4 T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool) ) (!  (=> ($eq.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool M1@@4 M2@@4) (= M1@@4 M2@@4))
 :qid |vcc2comp.3748:15|
 :skolemid |565|
 :pattern ( ($eq.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool M1@@4 M2@@4))
)))
(assert (= ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool 0) $zero.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool))
(assert (forall ((p@@130 Int) ) (! (= ($select.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool $zero.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool p@@130) $zero.$map_t..^^i4.^^bool)
 :qid |vcc2comp.3752:15|
 :skolemid |566|
)))
(assert (forall ((r1@@4 T@$record) (r2@@4 T@$record) (f@@21 T@$field) (R@@1 T@$ctype) ) (!  (=> ($eq.$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($rec_fetch r1@@4 f@@21)) ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($rec_fetch r2@@4 f@@21))) ($rec_base_eq ($rec_fetch r1@@4 f@@21) ($rec_fetch r2@@4 f@@21)))
 :qid |vcc2comp.3754:15|
 :skolemid |567|
 :pattern ( ($rec_base_eq ($rec_fetch r1@@4 f@@21) ($rec_fetch r2@@4 f@@21)) ($is_record_field R@@1 f@@21 ($map_t ($ptr_to ^Node) ($map_t ^^i4 ^^bool))))
)))
(assert (forall ((M@@16 T@$map_t..$ptr_to..^Node.^^u4) (p@@131 Int) (v@@20 Int) ) (! (= ($select.$map_t..$ptr_to..^Node.^^u4 ($store.$map_t..$ptr_to..^Node.^^u4 M@@16 p@@131 v@@20) p@@131) ($unchecked ^^u4 v@@20))
 :qid |vcc2comp.3766:15|
 :skolemid |568|
)))
(assert (forall ((M@@17 T@$map_t..$ptr_to..^Node.^^u4) (p@@132 Int) (v@@21 Int) (q@@28 Int) ) (!  (=> (not (= p@@132 q@@28)) (= ($select.$map_t..$ptr_to..^Node.^^u4 ($store.$map_t..$ptr_to..^Node.^^u4 M@@17 q@@28 v@@21) p@@132) ($select.$map_t..$ptr_to..^Node.^^u4 M@@17 p@@132)))
 :qid |vcc2comp.3768:15|
 :skolemid |569|
)))
(assert (forall ((M1@@5 T@$map_t..$ptr_to..^Node.^^u4) (M2@@5 T@$map_t..$ptr_to..^Node.^^u4) ) (!  (=> (forall ((p@@133 Int) ) (! (= ($unchecked ^^u4 ($select.$map_t..$ptr_to..^Node.^^u4 M1@@5 p@@133)) ($unchecked ^^u4 ($select.$map_t..$ptr_to..^Node.^^u4 M2@@5 p@@133)))
 :qid |vcc2comp.3770:135|
 :skolemid |570|
)) ($eq.$map_t..$ptr_to..^Node.^^u4 M1@@5 M2@@5))
 :qid |vcc2comp.3770:15|
 :skolemid |571|
 :pattern ( ($eq.$map_t..$ptr_to..^Node.^^u4 M1@@5 M2@@5))
)))
(assert (forall ((M1@@6 T@$map_t..$ptr_to..^Node.^^u4) (M2@@6 T@$map_t..$ptr_to..^Node.^^u4) ) (!  (=> ($eq.$map_t..$ptr_to..^Node.^^u4 M1@@6 M2@@6) (= M1@@6 M2@@6))
 :qid |vcc2comp.3772:15|
 :skolemid |572|
 :pattern ( ($eq.$map_t..$ptr_to..^Node.^^u4 M1@@6 M2@@6))
)))
(assert (= ($int_to_map_t..ptr_to..^Node.^^u4 0) $zero.$map_t..$ptr_to..^Node.^^u4))
(assert (forall ((p@@134 Int) ) (! (= ($select.$map_t..$ptr_to..^Node.^^u4 $zero.$map_t..$ptr_to..^Node.^^u4 p@@134) 0)
 :qid |vcc2comp.3776:15|
 :skolemid |573|
)))
(assert (forall ((r1@@5 T@$record) (r2@@5 T@$record) (f@@22 T@$field) (R@@2 T@$ctype) ) (!  (=> ($eq.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($rec_fetch r1@@5 f@@22)) ($int_to_map_t..ptr_to..^Node.^^u4 ($rec_fetch r2@@5 f@@22))) ($rec_base_eq ($rec_fetch r1@@5 f@@22) ($rec_fetch r2@@5 f@@22)))
 :qid |vcc2comp.3778:15|
 :skolemid |574|
 :pattern ( ($rec_base_eq ($rec_fetch r1@@5 f@@22) ($rec_fetch r2@@5 f@@22)) ($is_record_field R@@2 f@@22 ($map_t ($ptr_to ^Node) ^^u4)))
)))
(assert (forall ((M@@18 T@$map_t..$ptr_to..^Node.^^u4) (p@@135 Int) ) (! ($in_range_t ^^u4 ($select.$map_t..$ptr_to..^Node.^^u4 M@@18 p@@135))
 :qid |vcc2comp.3780:15|
 :skolemid |575|
)))
(assert (forall ((M@@19 T@$map_t..^^u4.$ptr_to..^Node) (p@@136 Int) (v@@22 Int) ) (!  (=> ($in_range_t ^^u4 p@@136) (= ($select.$map_t..^^u4.$ptr_to..^Node ($store.$map_t..^^u4.$ptr_to..^Node M@@19 p@@136 v@@22) p@@136) v@@22))
 :qid |vcc2comp.3792:15|
 :skolemid |576|
)))
(assert (forall ((M@@20 T@$map_t..^^u4.$ptr_to..^Node) (p@@137 Int) (v@@23 Int) (q@@29 Int) ) (!  (=> (not (= p@@137 q@@29)) (= ($select.$map_t..^^u4.$ptr_to..^Node ($store.$map_t..^^u4.$ptr_to..^Node M@@20 q@@29 v@@23) p@@137) ($select.$map_t..^^u4.$ptr_to..^Node M@@20 p@@137)))
 :qid |vcc2comp.3794:15|
 :skolemid |577|
)))
(assert (forall ((M1@@7 T@$map_t..^^u4.$ptr_to..^Node) (M2@@7 T@$map_t..^^u4.$ptr_to..^Node) ) (!  (=> (forall ((p@@138 Int) ) (!  (=> ($in_range_t ^^u4 p@@138) (= ($select.$map_t..^^u4.$ptr_to..^Node M1@@7 p@@138) ($select.$map_t..^^u4.$ptr_to..^Node M2@@7 p@@138)))
 :qid |vcc2comp.3796:135|
 :skolemid |578|
)) ($eq.$map_t..^^u4.$ptr_to..^Node M1@@7 M2@@7))
 :qid |vcc2comp.3796:15|
 :skolemid |579|
 :pattern ( ($eq.$map_t..^^u4.$ptr_to..^Node M1@@7 M2@@7))
)))
(assert (forall ((M1@@8 T@$map_t..^^u4.$ptr_to..^Node) (M2@@8 T@$map_t..^^u4.$ptr_to..^Node) ) (!  (=> ($eq.$map_t..^^u4.$ptr_to..^Node M1@@8 M2@@8) (= M1@@8 M2@@8))
 :qid |vcc2comp.3798:15|
 :skolemid |580|
 :pattern ( ($eq.$map_t..^^u4.$ptr_to..^Node M1@@8 M2@@8))
)))
(assert (= ($int_to_map_t..^^u4.ptr_to..^Node 0) $zero.$map_t..^^u4.$ptr_to..^Node))
(assert (forall ((p@@139 Int) ) (! (= ($select.$map_t..^^u4.$ptr_to..^Node $zero.$map_t..^^u4.$ptr_to..^Node p@@139) 0)
 :qid |vcc2comp.3802:15|
 :skolemid |581|
)))
(assert (forall ((r1@@6 T@$record) (r2@@6 T@$record) (f@@23 T@$field) (R@@3 T@$ctype) ) (!  (=> ($eq.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($rec_fetch r1@@6 f@@23)) ($int_to_map_t..^^u4.ptr_to..^Node ($rec_fetch r2@@6 f@@23))) ($rec_base_eq ($rec_fetch r1@@6 f@@23) ($rec_fetch r2@@6 f@@23)))
 :qid |vcc2comp.3804:15|
 :skolemid |582|
 :pattern ( ($rec_base_eq ($rec_fetch r1@@6 f@@23) ($rec_fetch r2@@6 f@@23)) ($is_record_field R@@3 f@@23 ($map_t ^^u4 ($ptr_to ^Node))))
)))
(assert (forall ((M@@21 T@$map_t..^^u4.$ptr_to..^Node) (p@@140 Int) ) (! ($in_range_phys_ptr ($select.$map_t..^^u4.$ptr_to..^Node M@@21 p@@140))
 :qid |vcc2comp.3806:15|
 :skolemid |583|
)))
(assert (forall ((|#x@@0| T@$map_t..^^i4.^^bool) ) (! (= |#x@@0| ($int_to_map_t..^^i4.^^bool ($map_t..^^i4.^^bool_to_int |#x@@0|)))
 :qid |vcc2comp.3812:15|
 :skolemid |584|
)))
(assert (= |#distTp6| ($ptr_to ^List)))
(assert ($type_code_is 3 ^^u4))
(assert (forall ((|#x@@1| T@$map_t..^^u4.$ptr_to..^Node) ) (! (= |#x@@1| ($int_to_map_t..^^u4.ptr_to..^Node ($map_t..^^u4.ptr_to..^Node_to_int |#x@@1|)))
 :qid |vcc2comp.3850:15|
 :skolemid |585|
)))
(assert (= |#distTp5| ($map_t ^^u4 ($ptr_to ^Node))))
(assert (forall ((|#x@@2| T@$map_t..$ptr_to..^Node.^^u4) ) (! (= |#x@@2| ($int_to_map_t..ptr_to..^Node.^^u4 ($map_t..ptr_to..^Node.^^u4_to_int |#x@@2|)))
 :qid |vcc2comp.3860:15|
 :skolemid |586|
)))
(assert (= |#distTp4| ($map_t ($ptr_to ^Node) ^^u4)))
(assert ($type_code_is 2 ^^i4))
(assert ($file_name_is 1 |#file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cvscomp2010?5Cvscomp2010_p3_v0.c|))
(assert (forall ((|#x@@3| T@$map_t..$ptr_to..^Node.$map_t..^^i4.^^bool) ) (! (= |#x@@3| ($int_to_map_t..ptr_to..^Node.map_t..^^i4.^^bool ($map_t..ptr_to..^Node.map_t..^^i4.^^bool_to_int |#x@@3|)))
 :qid |vcc2comp.3876:15|
 :skolemid |587|
)))
(assert (= |#distTp3| ($map_t ($ptr_to ^Node) ($map_t ^^i4 ^^bool))))
(assert (= |#distTp2| ($map_t ^^i4 ^^bool)))
(assert (= |#distTp1| ($ptr_to ^Node)))
(push 1)
(set-info :boogie-vc-id find)
(assert (not
(let ((anon02_Else_correct  (=> (! (and %lbl%+31980 true) :lblpos +31980) (=> (not (= ($select.mem ($memory $s) ($dot ($ptr ^Node |L#n@1|) Node.data)) 0)) (and (! (or %lbl%@36178  (and ($is ($dot ($ptr ^Node |L#n@1|) Node.next) ($ptr_to ^Node)) ($typed $s ($dot ($ptr ^Node |L#n@1|) Node.next)))) :lblneg @36178) (=> (and ($is ($dot ($ptr ^Node |L#n@1|) Node.next) ($ptr_to ^Node)) ($typed $s ($dot ($ptr ^Node |L#n@1|) Node.next))) (and (! (or %lbl%@36195  (and ($is ($dot ($ptr ^Node |L#n@1|) Node.next) ($ptr_to ^Node)) ($thread_local $s ($dot ($ptr ^Node |L#n@1|) Node.next)))) :lblneg @36195) (=> (and ($is ($dot ($ptr ^Node |L#n@1|) Node.next) ($ptr_to ^Node)) ($thread_local $s ($dot ($ptr ^Node |L#n@1|) Node.next))) (=> (= |L#n@2| ($ref ($ptr ^Node ($select.mem ($memory $s) ($dot ($ptr ^Node |L#n@1|) Node.next))))) (=> (and ($local_value_is $s |#tok$1^38.31| |#loc.n| ($ptr_to_int ($ptr ^Node |L#n@2|)) ($ptr_to ^Node)) ($local_value_is_ptr $s |#tok$1^38.31| |#loc.n| ($ptr ^Node |L#n@2|) ($ptr_to ^Node))) (and (! (or %lbl%@36273  (and (<= 0 (+ |L#i@0| 1)) (<= (+ |L#i@0| 1) $max.u4))) :lblneg @36273) (=> (and (<= 0 (+ |L#i@0| 1)) (<= (+ |L#i@0| 1) $max.u4)) (=> (and (= |L#i@1| (+ |L#i@0| 1)) ($local_value_is $s |#tok$1^38.44| |#loc.i| |L#i@1| ^^u4)) (and (! (or %lbl%@36304  (=> (not (= ($ref ($ptr ^Node |L#n@2|)) ($ref $null))) ($set_in ($ptr ^Node |L#n@2|) ($owns $s ($ptr ^List |P#l|))))) :lblneg @36304) (=> (=> (not (= ($ref ($ptr ^Node |L#n@2|)) ($ref $null))) ($set_in ($ptr ^Node |L#n@2|) ($owns $s ($ptr ^List |P#l|)))) (and (! (or %lbl%@36332 (= (- ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length)) |L#i@1|) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length_acc))) ($ref ($ptr ^Node |L#n@2|))))) :lblneg @36332) (=> (= (- ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length)) |L#i@1|) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length_acc))) ($ref ($ptr ^Node |L#n@2|)))) (! (or %lbl%@36376  (=> (not (= ($ref ($ptr ^Node |L#n@2|)) ($ref $null))) (= ($ref ($ptr ^Node |L#n@2|)) ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.seq))) |L#i@1|)))))) :lblneg @36376))))))))))))))))))
(let ((GeneratedUnifiedExit_correct  (=> (! (and %lbl%+35210 true) :lblpos +35210) (and (! (or %lbl%@36429  (and (<= $result@0 ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length))) (forall ((|Q#i$1^32.51#tc3| Int) ) (!  (=> (and (<= 0 |Q#i$1^32.51#tc3|) (<= |Q#i$1^32.51#tc3| $max.u4)) (=> (< |Q#i$1^32.51#tc3| $result@0) (not (= ($select.mem ($memory $s) ($dot ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.seq))) |Q#i$1^32.51#tc3|)) Node.data)) 0))))
 :qid |vcc2comp.3574:79|
 :skolemid |550|
)))) :lblneg @36429) (=> (and (<= $result@0 ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length))) (forall ((|Q#i$1^32.51#tc3@@0| Int) ) (!  (=> (and (<= 0 |Q#i$1^32.51#tc3@@0|) (<= |Q#i$1^32.51#tc3@@0| $max.u4)) (=> (< |Q#i$1^32.51#tc3@@0| $result@0) (not (= ($select.mem ($memory $s) ($dot ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.seq))) |Q#i$1^32.51#tc3@@0|)) Node.data)) 0))))
 :qid |vcc2comp.3574:79|
 :skolemid |550|
))) (! (or %lbl%@36500  (=> (< $result@0 ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length))) (= ($select.mem ($memory $s) ($dot ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.seq))) $result@0)) Node.data)) 0))) :lblneg @36500))))))
(let ((|#break_2_correct|  (=> (! (and %lbl%+31992 true) :lblpos +31992) (and (! (or %lbl%@36159 $position_marker) :lblneg @36159) (=> $position_marker (=> (= $result@0 |L#i@0|) GeneratedUnifiedExit_correct))))))
(let ((anon02_Then_correct  (=> (! (and %lbl%+31977 true) :lblpos +31977) (=> (= ($select.mem ($memory $s) ($dot ($ptr ^Node |L#n@1|) Node.data)) 0) |#break_2_correct|))))
(let ((anon01_Then_correct  (=> (! (and %lbl%+31968 true) :lblpos +31968) (=> (not (= ($ref ($ptr ^Node |L#n@1|)) ($ref $null))) (and (! (or %lbl%@36097  (and ($is ($dot ($ptr ^Node |L#n@1|) Node.data) ^^i4) ($typed $s ($dot ($ptr ^Node |L#n@1|) Node.data)))) :lblneg @36097) (=> (and ($is ($dot ($ptr ^Node |L#n@1|) Node.data) ^^i4) ($typed $s ($dot ($ptr ^Node |L#n@1|) Node.data))) (and (! (or %lbl%@36112  (and ($is ($dot ($ptr ^Node |L#n@1|) Node.data) ^^i4) ($thread_local $s ($dot ($ptr ^Node |L#n@1|) Node.data)))) :lblneg @36112) (=> (and ($is ($dot ($ptr ^Node |L#n@1|) Node.data) ^^i4) ($thread_local $s ($dot ($ptr ^Node |L#n@1|) Node.data))) (and anon02_Then_correct anon02_Else_correct)))))))))
(let ((anon01_Else_correct  (=> (! (and %lbl%+31984 true) :lblpos +31984) (=> (not (not (= ($ref ($ptr ^Node |L#n@1|)) ($ref $null)))) |#break_2_correct|))))
(let ((anon00_LoopBody_correct  (=> (! (and %lbl%+31959 true) :lblpos +31959) (=> (and (and (and (and (and (forall ((p@@141 T@$ptr) ) (!  (=> (not (= ($kind_of ($typ ($owner $s p@@141))) $kind_thread)) (not (= ($kind_of ($typ ($owner $s p@@141))) $kind_thread)))
 :qid |vcc2comp.2224:13|
 :skolemid |257|
 :pattern ( ($select.sm ($statusmap $s) p@@141))
)) (forall ((p@@142 T@$ptr) ) (!  (=> ($thread_local $s p@@142) (and (= ($select.mem ($memory $s) p@@142) ($select.mem ($memory $s) p@@142)) ($thread_local $s p@@142)))
 :qid |vcc2comp.2226:13|
 :skolemid |258|
 :pattern ( ($select.mem ($memory $s) p@@142))
))) (forall ((p@@143 T@$ptr) ) (!  (=> ($thread_local $s p@@143) (and (= ($select.sm ($statusmap $s) p@@143) ($select.sm ($statusmap $s) p@@143)) ($thread_local $s p@@143)))
 :qid |vcc2comp.2228:13|
 :skolemid |259|
 :pattern ( ($select.sm ($statusmap $s) p@@143))
))) (forall ((p@@144 T@$ptr) ) (!  (=> ($thread_local $s p@@144) (and (= ($select.tm ($typemap $s) p@@144) ($select.tm ($typemap $s) p@@144)) ($thread_local $s p@@144)))
 :qid |vcc2comp.2230:13|
 :skolemid |260|
 :pattern ( ($select.tm ($typemap $s) p@@144))
))) (and (and (<= ($current_timestamp $s) ($current_timestamp $s)) (forall ((p@@145 T@$ptr) ) (! (<= ($timestamp $s p@@145) ($timestamp $s p@@145))
 :qid |vcc2comp.1349:13|
 :weight 0
 :skolemid |154|
 :pattern ( ($timestamp $s p@@145))
))) ($call_transition $s $s))) (and (and (and (and (<= ($current_timestamp $s) ($current_timestamp $s)) (forall ((p@@146 T@$ptr) ) (! (<= ($timestamp $s p@@146) ($timestamp $s p@@146))
 :qid |vcc2comp.1349:13|
 :weight 0
 :skolemid |154|
 :pattern ( ($timestamp $s p@@146))
))) ($call_transition $s $s)) (and ($good_state_ext |#tok$1^38.3| $s) ($full_stop $s))) (and (and (and ($local_value_is $s |#tok$1^38.3| |#loc.n| ($ptr_to_int ($ptr ^Node |L#n@1|)) ($ptr_to ^Node)) ($local_value_is_ptr $s |#tok$1^38.3| |#loc.n| ($ptr ^Node |L#n@1|) ($ptr_to ^Node))) ($local_value_is $s |#tok$1^38.3| |#loc.i| |L#i@0| ^^u4)) (and (and ($local_value_is $s |#tok$1^38.3| |#loc.l| ($ptr_to_int ($ptr ^List |P#l|)) ($ptr_to ^List)) ($local_value_is_ptr $s |#tok$1^38.3| |#loc.l| ($ptr ^List |P#l|) ($ptr_to ^List))) (and (= ($typemap $s) ($typemap $s)) (= ($statusmap $s) ($statusmap $s))))))) (and anon01_Then_correct anon01_Else_correct)))))
(let ((anon00_LoopDone_correct  (=> (! (and %lbl%+31989 true) :lblpos +31989) (=> (not true) (=> (and ($good_state_ext |#tok$1^38.3| $s) ($full_stop $s)) |#break_2_correct|)))))
(let ((anon00_LoopHead_correct  (=> (! (and %lbl%+31957 true) :lblpos +31957) (=> ($in_range_phys_ptr |L#n@1|) (=> (and (and (and (<= 0 |L#i@0|) (<= |L#i@0| $max.u4)) (<= 0 |L#i@0|)) (and (and (=> (not (= ($ref ($ptr ^Node |L#n@1|)) ($ref $null))) ($set_in ($ptr ^Node |L#n@1|) ($owns $s ($ptr ^List |P#l|)))) (= (- ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length)) |L#i@0|) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length_acc))) ($ref ($ptr ^Node |L#n@1|))))) (and (=> (not (= ($ref ($ptr ^Node |L#n@1|)) ($ref $null))) (= ($ref ($ptr ^Node |L#n@1|)) ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.seq))) |L#i@0|))))) (forall ((|Q#j$1^42.31#tc3| Int) ) (!  (=> (and (<= 0 |Q#j$1^42.31#tc3|) (<= |Q#j$1^42.31#tc3| $max.u4)) (=> (< |Q#j$1^42.31#tc3| |L#i@0|) (not (= ($select.mem ($memory $s) ($dot ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.seq))) |Q#j$1^42.31#tc3|)) Node.data)) 0))))
 :qid |vcc2comp.3620:30|
 :skolemid |552|
))))) (and anon00_LoopDone_correct anon00_LoopBody_correct))))))
(let ((anon12_correct  (=> (! (and %lbl%+31955 true) :lblpos +31955) (=> ($function_entry $s) (=> (and (and ($good_state_ext |#tok$1^30.1| $s) ($full_stop $s)) (forall ((f@@24 T@$pure_function) ) (! (< ($frame_level f@@24) $current_frame_level)
 :qid |vcc2comp.3036:13|
 :skolemid |435|
 :pattern ( ($frame_level f@@24))
))) (=> (and (and (and ($local_value_is $s |#tok$1^30.1| |#loc.l| ($ptr_to_int ($ptr ^List |P#l|)) ($ptr_to ^List)) ($local_value_is_ptr $s |#tok$1^30.1| |#loc.l| ($ptr ^List |P#l|) ($ptr_to ^List))) (= |#wrTime$1^30.1| ($current_timestamp $s))) (and (forall ((|#p@@40| T@$ptr) ) (!  (and (=> ($in_writes_at |#wrTime$1^30.1| |#p@@40|) false) (=> false ($in_writes_at |#wrTime$1^30.1| |#p@@40|)))
 :qid |vcc2comp.3595:20|
 :skolemid |551|
 :pattern ( ($in_writes_at |#wrTime$1^30.1| |#p@@40|))
)) ($in_range_phys_ptr ($ref ($ptr ^List |P#l|))))) (and (! (or %lbl%@35484 ($in_domain_lab $s ($ptr ^List |P#l|) ($ptr ^List |P#l|) |l#public|)) :lblneg @35484) (=> ($in_domain_lab $s ($ptr ^List |P#l|) ($ptr ^List |P#l|) |l#public|) (=> ($local_value_is $s |#tok$1^36.3| |#loc.i| |L#i| ^^u4) (=> (and ($local_value_is $s |#tok$1^35.10| |#loc.n| ($ptr_to_int ($ptr ^Node |L#n|)) ($ptr_to ^Node)) ($local_value_is_ptr $s |#tok$1^35.10| |#loc.n| ($ptr ^Node |L#n|) ($ptr_to ^Node))) (and (! (or %lbl%@35554  (and ($is ($dot ($ptr ^List |P#l|) List.head) ($ptr_to ^Node)) ($typed $s ($dot ($ptr ^List |P#l|) List.head)))) :lblneg @35554) (=> (and ($is ($dot ($ptr ^List |P#l|) List.head) ($ptr_to ^Node)) ($typed $s ($dot ($ptr ^List |P#l|) List.head))) (and (! (or %lbl%@35572  (and ($is ($dot ($ptr ^List |P#l|) List.head) ($ptr_to ^Node)) ($thread_local $s ($dot ($ptr ^List |P#l|) List.head)))) :lblneg @35572) (=> (and ($is ($dot ($ptr ^List |P#l|) List.head) ($ptr_to ^Node)) ($thread_local $s ($dot ($ptr ^List |P#l|) List.head))) (=> (= |L#n@0| ($ref ($ptr ^Node ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.head))))) (=> (and (and ($local_value_is $s |#tok$1^38.8| |#loc.n| ($ptr_to_int ($ptr ^Node |L#n@0|)) ($ptr_to ^Node)) ($local_value_is_ptr $s |#tok$1^38.8| |#loc.n| ($ptr ^Node |L#n@0|) ($ptr_to ^Node))) ($local_value_is $s |#tok$1^38.21| |#loc.i| 0 ^^u4)) (and (! (or %lbl%@35669  (=> (not (= ($ref ($ptr ^Node |L#n@0|)) ($ref $null))) ($set_in ($ptr ^Node |L#n@0|) ($owns $s ($ptr ^List |P#l|))))) :lblneg @35669) (=> (=> (not (= ($ref ($ptr ^Node |L#n@0|)) ($ref $null))) ($set_in ($ptr ^Node |L#n@0|) ($owns $s ($ptr ^List |P#l|)))) (and (! (or %lbl%@35697 (= (- ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length)) 0) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length_acc))) ($ref ($ptr ^Node |L#n@0|))))) :lblneg @35697) (=> (= (- ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length)) 0) ($select.$map_t..$ptr_to..^Node.^^u4 ($int_to_map_t..ptr_to..^Node.^^u4 ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.length_acc))) ($ref ($ptr ^Node |L#n@0|)))) (and (! (or %lbl%@35741  (=> (not (= ($ref ($ptr ^Node |L#n@0|)) ($ref $null))) (= ($ref ($ptr ^Node |L#n@0|)) ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.seq))) 0)))))) :lblneg @35741) (=> (=> (not (= ($ref ($ptr ^Node |L#n@0|)) ($ref $null))) (= ($ref ($ptr ^Node |L#n@0|)) ($ref ($ptr ^Node ($select.$map_t..^^u4.$ptr_to..^Node ($int_to_map_t..^^u4.ptr_to..^Node ($select.mem ($memory $s) ($dot ($ptr ^List |P#l|) List.seq))) 0))))) anon00_LoopHead_correct))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (! (and %lbl%+35216 true) :lblpos +35216) (=> ($in_range_phys_ptr |L#n|) (=> (and (<= 0 |L#i|) (<= |L#i| $max.u4)) (=> (and (and (and (and ($closed $s ($ptr ^List |P#l|)) (= ($owner $s ($ptr ^List |P#l|)) $me)) (and ($is ($ptr ^List |P#l|) ^List) ($typed $s ($ptr ^List |P#l|)))) (not (= ($kind_of ^List) $kind_primitive))) ($is_non_primitive ^List)) anon12_correct))))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(pop 1)
; Valid
