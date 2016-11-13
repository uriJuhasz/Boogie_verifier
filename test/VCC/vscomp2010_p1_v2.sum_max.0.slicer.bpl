type Integer = int;
type Boolean = bool;
type $base = $ptr;
type $object = [$field][$ptr]int;
type $owner = [$ptr]$ptr;
type $closed = [$ptr]bool;
type $timestamps = [$ptr]int;
type $roots = [$ptr]$ptr;
type $ptrset = [$ptr]bool;
type $ctype;
type $ptr;
type $field;
type $primitive;
type $struct;
type $token;
type $state;
type $pure_function;
type $label;
type $labelset;
type $ctype_branch;
type $field_kind;
type $version;
type $vol_version;
type $dt_tag;
type cf_event;
type var_locglob;
type $#thread_id;
type $map_t..^^mathint.^^mathint;
const unique $ctype_flat : $ctype_branch;
const unique $ctype_ptr : $ctype_branch;
const unique $ctype_spec_ptr : $ctype_branch;
const unique $ctype_map : $ctype_branch;
const unique $ctype_array : $ctype_branch;
const unique $fk_base : $field_kind;
const unique $fk_owns : $field_kind;
const unique $fk_ref_cnt : $field_kind;
const unique $fk_vol_version : $field_kind;
const unique $fk_allocation_root : $field_kind;
const unique $fk_as_array_first : $field_kind;
const unique $fk_emb_array : $field_kind;
const unique $primitive_emb_type : $ctype;
const $arch_ptr_size : int;
const $arch_ptr_type : $ctype;
const unique ^^i1 : $ctype;
const unique ^^i2 : $ctype;
const unique ^^i4 : $ctype;
const unique ^^i8 : $ctype;
const unique ^^u1 : $ctype;
const unique ^^u2 : $ctype;
const unique ^^u4 : $ctype;
const unique ^^u8 : $ctype;
const unique ^^void : $ctype;
const unique ^^bool : $ctype;
const unique ^^f4 : $ctype;
const unique ^^f8 : $ctype;
const unique ^^object : $ctype;
const unique ^^field : $ctype;
const unique ^^null_type : $ctype;
const unique ^^claim : $ctype;
const unique ^^mathint : $ctype;
const unique ^$#ptrset : $ctype;
const unique ^$#state_t : $ctype;
const unique ^$#volatile_version_t : $ctype;
const unique ^$#struct : $ctype;
const unique ^$#seq_version : $ctype;
const unique ^$#vol_version : $ctype;
const $null : $ptr;
const unique ^$#thread_id_t : $ctype;
const unique $inactive_union_owner_type : $ctype;
const $arch_spec_ptr_start : int;
const $current_frame_level : int;
const unique $no_claim : $ptr;
const $full_extent_state : $state;
const $struct_zero : $struct;
const $min.i1 : int;
const $max.i1 : int;
const $min.i2 : int;
const $max.i2 : int;
const $min.i4 : int;
const $max.i4 : int;
const $min.i8 : int;
const $max.i8 : int;
const $max.u1 : int;
const $max.u2 : int;
const $max.u4 : int;
const $max.u8 : int;
const unique conditional_moment : cf_event;
const unique took_then_branch : cf_event;
const unique took_else_branch : cf_event;
const unique loop_register : cf_event;
const unique loop_entered : cf_event;
const unique loop_exited : cf_event;
const unique cev_local : var_locglob;
const unique cev_global : var_locglob;
const unique cev_parameter : var_locglob;
const unique cev_implicit : var_locglob;
const $decreases_level : int;
const unique ^$#thread_id : $ctype;
const unique cf#fsum : $pure_function;
const unique cf#lambda#4 : $pure_function;
const unique cf#lambda#3 : $pure_function;
const unique cf#lambda#2 : $pure_function;
const unique l#public : $label;
const $zero.$map_t..^^mathint.^^mathint : $map_t..^^mathint.^^mathint;
const unique #loc.#l0 : $token;
const unique #loc.#l1 : $token;
const unique #tok$1^65.32 : $token;
const unique #tok$1^62.4 : $token;
const unique #tok$1^43.22 : $token;
const unique #tok$1^60.5 : $token;
const unique #tok$1^57.27 : $token;
const unique #tok$1^51.7 : $token;
const unique #tok$1^43.3 : $token;
const unique #tok$1^43.8 : $token;
const unique #tok$1^41.49 : $token;
const unique #loc.max : $token;
const unique #tok$1^37.3 : $token;
const unique #loc.sum : $token;
const unique #tok$1^38.3 : $token;
const unique #tok$1^39.3 : $token;
const unique #loc.am : $token;
const unique #tok$1^41.25 : $token;
const unique #loc.maxout : $token;
const unique #loc.N : $token;
const unique #distTp2 : $ctype;
const unique #loc.a : $token;
const unique #tok$1^30.1 : $token;
const unique #tok$1^18.17 : $token;
const unique #tok$1^18.3 : $token;
const unique #loc.k : $token;
const unique #tok$1^17.25 : $token;
const unique #loc.j : $token;
const unique #tok$1^11.39 : $token;
const unique #loc.res_fsum#7 : $token;
const unique #tok$1^8.47 : $token;
const unique #loc.ite#1 : $token;
const unique #tok$1^8.10 : $token;
const unique #loc.map : $token;
const unique #loc.i : $token;
const unique #tok$1^5.39 : $token;
const unique #file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cvscomp2010?5Cvscomp2010_p1_v2.c : $token;
const unique #distTp1 : $ctype;
const $old_$s : $state;
const $old_$cev_pc : int;
function $type_branch($ctype) : $ctype_branch;
function $ptr_to($ctype) : $ctype;
function $spec_ptr_to($ctype) : $ctype;
function $type_project_0($ctype) : $ctype;
function $map_t($ctype,$ctype) : $ctype;
function $map_domain($ctype) : $ctype;
function $map_range($ctype) : $ctype;
function $sizeof($ctype) : int;
function $as_in_range_t($ctype) : $ctype;
function {:inline  true} $def_flat_type(t:$ctype,sz:int) : bool {($sizeof(t) == sz) && ($type_branch(t) == $ctype_flat)}
function {:inline  true} $def_primitive_type(t_$0:$ctype,sz_$0:int) : bool {$def_flat_type(t_$0,sz_$0) && $is_primitive(t_$0)}
function {:inline  true} $def_math_type(t_$1:$ctype) : bool {$def_primitive_type(t_$1,1) && $is_math_type(t_$1)}
function {:inline  true} $def_fnptr_type(t_$2:$ctype) : bool {$def_primitive_type(t_$2,$arch_ptr_size) && $is_fnptr_type(t_$2)}
function {:inline  true} $def_record_type(t_$3:$ctype) : bool {$def_primitive_type(t_$3,1) && $is_record_type(t_$3)}
function {:inline  true} $def_composite_type(t_$4:$ctype,sz_$1:int,claimable:bool,has_volatile_owns:bool) : bool {((($def_flat_type(t_$4,sz_$1) && $is_non_primitive(t_$4)) && ($is_claimable(t_$4) <==> claimable)) && (if has_volatile_owns then $is_volatile_field($f_owns(t_$4)) else $is_sequential_field($f_owns(t_$4)))) && true}
function {:inline  true} $def_union_type(t_$5:$ctype,sz_$2:int,claimable_$0:bool,has_volatile_owns_$0:bool) : bool {($def_composite_type(t_$5,sz_$2,claimable_$0,has_volatile_owns_$0) && ($as_union_type(t_$5) == t_$5)) && $is_union_type(t_$5)}
function {:inline  true} $def_struct_type(t_$6:$ctype,sz_$3:int,claimable_$1:bool,has_volatile_owns_$1:bool) : bool {$def_composite_type(t_$6,sz_$3,claimable_$1,has_volatile_owns_$1) && (!$is_union_type(t_$6))}
function {:inline  true} $def_integer_type(t_$7:$ctype,sz_$4:int) : bool {$def_primitive_type(t_$7,sz_$4) && ($as_in_range_t(t_$7) == t_$7)}
function $is_primitive($ctype) : bool;
function {:inline  true} $is_non_primitive(t_$8:$ctype) : bool {!$is_primitive(t_$8)}
function {:inline  true} $is_non_primitive_ptr(p:$ptr) : bool {$is_non_primitive($typ(p))}
function $is_claimable($ctype) : bool;
function $is_span_sequential($ctype) : bool;
function $is_group_type($ctype) : bool;
function $is_math_type($ctype) : bool;
function $is_fnptr_type($ctype) : bool;
function $is_record_type($ctype) : bool;
function {:inline  true} $typ(p_$0:$ptr) : $ctype {$field_type($field(p_$0))}
function $addr($ptr) : int;
function $base($ptr) : $ptr;
function $field($ptr) : $field;
function $ptr($field,$ptr) : $ptr;
function {:inline  true} $non_null(p_$1:$ptr) : bool {!$is_null(p_$1)}
function {:inline  true} $is_null(p_$2:$ptr) : bool {p_$2 == $null_of($typ(p_$2))}
function $field_kind($field) : $field_kind;
function {:inline  true} $is_base_field(f:$field) : bool {$field_kind(f) == $fk_base}
function $is_proper($ptr) : bool;
function $is($ptr,$ctype) : bool;
function $spec_ptr_cast($ptr,$ctype) : $ptr;
function $phys_ptr_cast($ptr,$ctype) : $ptr;
function {:inline  true} $cast_props(p_$3:$ptr,t_$9:$ctype,c:$ptr) : bool {(($typ(c) == t_$9) && ($is_null(c) <==> $is_null(p_$3))) && ($field(c) == $as_field_with_type($field(c),t_$9))}
function $dot($ptr,$field) : $ptr;
function {:inline  true} $emb1(p_$4:$ptr) : $ptr {$base(p_$4)}
function {:inline  true} $emb(S:$state,p_$5:$ptr) : $ptr {$emb0(p_$5)}
function $emb0($ptr) : $ptr;
function {:inline  true} $simple_emb(p_$6:$ptr) : $ptr {$base(p_$6)}
function $is_semi_sequential_field($field) : bool;
function $is_sequential_field($field) : bool;
function $is_volatile_field($field) : bool;
function $as_primitive_field($field) : $field;
function $as_composite_field($field) : $field;
function $as_field_with_type($field,$ctype) : $field;
function {:inline  true} $as_ptr_with_type(p_$7:$ptr,t_$10:$ctype) : $ptr {$ptr($as_field_with_type($field(p_$7),t_$10),$base(p_$7))}
function $field_type($field) : $ctype;
function $has_field_at0($ctype,$field) : bool;
function {:inline  true} $def_field_family(partp:$ctype,f_$0:$field,tp:$ctype) : bool {(((((($field_parent_type(f_$0) == partp) && ($field_type(f_$0) == tp)) && ($as_field_with_type(f_$0,tp) == f_$0)) && ($is_primitive(tp) ==> ($as_primitive_field(f_$0) == f_$0))) && ((!$is_primitive(tp)) ==> ($as_composite_field(f_$0) == f_$0))) && ($field_arr_root(f_$0) == f_$0)) && true}
function {:inline  true} $def_field(partp_$0:$ctype,f_$1:$field,tp_$0:$ctype,isvolatile:bool) : bool {(($def_field_family(partp_$0,f_$1,tp_$0) && ((!isvolatile) ==> $is_sequential_field(f_$1))) && (isvolatile ==> $is_volatile_field(f_$1))) && true}
function {:inline  true} $def_phys_field(partp_$1:$ctype,f_$2:$field,tp_$1:$ctype,isvolatile_$0:bool,off:int) : bool {(((($def_field(partp_$1,f_$2,tp_$1,isvolatile_$0) && ($field_offset(f_$2) == off)) && $is_phys_field(f_$2)) && $is_base_field(f_$2)) && ((off == 0) ==> $has_field_at0(partp_$1,f_$2))) && true}
function {:inline  true} $def_ghost_field(partp_$2:$ctype,f_$3:$field,tp_$2:$ctype,isvolatile_$1:bool) : bool {(($def_field(partp_$2,f_$3,tp_$2,isvolatile_$1) && $is_base_field(f_$3)) && $is_ghost_field(f_$3)) && true}
function {:inline  true} $def_group(partp_$3:$ctype,f_$4:$field,tp_$3:$ctype) : bool {(($def_phys_field(partp_$3,f_$4,tp_$3,false,0) && ($f_group_root(tp_$3) == f_$4)) && $is_group_type(tp_$3)) && true}
function $f_group_root($ctype) : $field;
function $f_root($ctype) : $field;
function $f_owns($ctype) : $field;
function $f_ref_cnt($ctype) : $field;
function $f_vol_version($ctype) : $field;
function {:inline  true} $def_special_field(partp_$4:$ctype,f_$5:$field,tp_$4:$ctype,fk:$field_kind) : bool {($def_field_family(partp_$4,f_$5,tp_$4) && ($field_kind(f_$5) == fk)) && true}
function {:inline  true} $def_special_ghost_field(partp_$5:$ctype,f_$6:$field,tp_$5:$ctype,fk_$0:$field_kind) : bool {$def_special_field(partp_$5,f_$6,tp_$5,fk_$0) && $is_ghost_field(f_$6)}
function {:inline  true} $in_range_uintptr(a:int) : bool {$in_range_t($arch_ptr_type,a)}
function {:inline  true} $unchk_add_ptr(p_$8:int,off_$0:int) : int {$unchk_add($arch_ptr_type,p_$8,off_$0)}
function $field_offset($field) : int;
function $field_parent_type($field) : $ctype;
function $is_ghost_field($field) : bool;
function $is_phys_field($field) : bool;
function {:inline  true} $null_of(t_$11:$ctype) : $ptr {$phys_ptr_cast($null,t_$11)}
function {:inline  true} $is_nice_spec_ptr(p_$9:$ptr,t_$12:$ctype) : bool {(($in_range_spec_ptr(p_$9) && $non_null(p_$9)) && $is_proper(p_$9)) && ($field(p_$9) == $f_root(t_$12))}
function $me() : $ptr;
function $is_threadtype($ctype) : bool;
function $inactive_union_owner() : $ptr;
function $field_arr_index($field) : int;
function $field_arr_root($field) : $field;
function $field_arr_size($field) : int;
function $field_arr_ctor($field,int) : $field;
function {:inline  true} $def_arr_field(partp_$6:$ctype,f_$7:$field,tp_$6:$ctype,isvolatile_$2:bool,sz_$5:int) : bool {((($def_field(partp_$6,f_$7,tp_$6,isvolatile_$2) && ($field_arr_size(f_$7) == sz_$5)) && ($field_arr_index(f_$7) == 0)) && ($field_kind(f_$7) == $fk_emb_array)) && true}
function {:inline  true} $def_phys_arr_field(partp_$7:$ctype,f_$8:$field,tp_$7:$ctype,isvolatile_$3:bool,off_$1:int,sz_$6:int) : bool {(($def_arr_field(partp_$7,f_$8,tp_$7,isvolatile_$3,sz_$6) && ($field_offset(f_$8) == off_$1)) && $is_phys_field(f_$8)) && true}
function {:inline  true} $def_ghost_arr_field(partp_$8:$ctype,f_$9:$field,tp_$8:$ctype,isvolatile_$4:bool,sz_$7:int) : bool {($def_arr_field(partp_$8,f_$9,tp_$8,isvolatile_$4,sz_$7) && $is_ghost_field(f_$9)) && true}
function {:inline  true} $def_phys_as_array_field(partp_$9:$ctype,f_$10:$field,tp_$9:$ctype,isvolatile_$5:bool,off_$2:int,sz_$8:int) : bool {$def_phys_field(partp_$9,f_$10,$array(tp_$9,sz_$8),isvolatile_$5,off_$2) && true}
function {:inline  true} $def_ghost_as_array_field(partp_$10:$ctype,f_$11:$field,tp_$10:$ctype,isvolatile_$6:bool,sz_$9:int) : bool {$def_ghost_field(partp_$10,f_$11,$array(tp_$10,sz_$9),isvolatile_$6) && true}
function {:inline  true} $idx_inline(p_$10:$ptr,i:int) : $ptr {$dot($base(p_$10),$field_plus($field(p_$10),i))}
function $idx($ptr,int) : $ptr;
function $field_plus($field,int) : $field;
function $is_array($state,$ptr,$ctype,int) : bool;
function {:inline  true} $is_array_stateless(p_$11:$ptr,T:$ctype,sz_$10:int) : bool {((((($is(p_$11,T) && $is_proper(p_$11)) && ($field_arr_size($field(p_$11)) >= ($field_arr_index($field(p_$11)) + sz_$10))) && (p_$11 == $idx($dot($base(p_$11),$field_arr_root($field(p_$11))),$field_arr_index($field(p_$11))))) && (!($field_kind($field(p_$11)) == $fk_base))) && ($field_arr_index($field(p_$11)) >= 0)) && $is_non_primitive($typ($emb0(p_$11)))}
function $is_thread_local_array($state,$ptr,$ctype,int) : bool;
function {:inline  true} $is_thread_local_array_inline(S_$0:$state,p_$12:$ptr,T_$0:$ctype,sz_$11:int) : bool {$is_array(S_$0,p_$12,T_$0,sz_$11) && (if $is_primitive(T_$0) then $thread_local(S_$0,p_$12) else ((forall  i_$0 : Integer :: {$owner(S_$0,$idx(p_$12,i_$0))} ( ((0 <= i_$0) && (i_$0 < sz_$11)) ==> $thread_local(S_$0,$idx(p_$12,i_$0)) ))))}
function $is_mutable_array($state,$ptr,$ctype,int) : bool;
function $array_range($state,$ptr,$ctype,int) : $ptrset;
function $arrays_disjoint($ptr,int,$ptr,int) : bool;
function $arrays_disjoint_id($ptr,int,$ptr,int,$ptr) : int;
function {:inline  true} $mem_range(s:$state,p_$13:$ptr,sz_$12:int) : int {$mem_range_heap($heap(s),p_$13,sz_$12)}
function $mem_range_heap($object,$ptr,int) : int;
function $index_within($ptr,$ptr) : int;
function $array_range_no_state($ptr,$ctype,int) : $ptrset;
function $in_composite_array($ptr,$ptr,int) : bool;
function $in_composite_array_lev2($state,$ptr,$ptr,int) : bool;
function {:inline  true} $in_array(q:$ptr,arr:$ptr,T_$1:$ctype,sz_$13:int) : bool {$in_range(0,$index_within(q,arr),sz_$13 - 1) && (q == $idx(arr,$index_within(q,arr)))}
function {:inline  true} $in_array_full_extent_of(q_$0:$ptr,arr_$0:$ptr,T_$2:$ctype,sz_$14:int) : bool {$in_range(0,$index_within(q_$0,arr_$0),sz_$14 - 1) && $in(q_$0,$full_extent($idx(arr_$0,$index_within(q_$0,arr_$0))))}
function {:inline  true} $in_array_extent_of(S_$1:$state,q_$1:$ptr,arr_$1:$ptr,T_$3:$ctype,sz_$15:int) : bool {$in_range(0,$index_within(q_$1,arr_$1),sz_$15 - 1) && $in(q_$1,$extent(S_$1,$idx(arr_$1,$index_within(q_$1,arr_$1))))}
function $array_members($ptr,$ctype,int) : $ptrset;
function $array($ctype,int) : $ctype;
function $element_type($ctype) : $ctype;
function $array_length($ctype) : int;
function $array_emb($ctype,int) : $field;
function {:inline  true} $as_array_first_index(p_$14:$ptr) : $ptr {$dot(p_$14,$array_emb($element_type($typ(p_$14)),$array_length($typ(p_$14))))}
function $as_array($ptr,$ctype,int) : $ptr;
function $f_timestamp($state) : $timestamps;
function $f_owner($state) : $owner;
function $f_closed($state) : $closed;
function $roots($state) : $roots;
function $heap($state) : $object;
function $typemap($owner) : [int,$ctype]$ptr;
function {:inline  true} $domain_root(s_$0:$state,p_$15:$ptr) : $ptr {$roots(s_$0)[p_$15]}
function {:inline  true} $rd_inv(s_$1:$state,f_$12:$field,p_$16:$ptr) : int {$rd(s_$1,p_$16,f_$12)}
function {:inline  true} $rd(s_$2:$state,p_$17:$ptr,f_$13:$field) : int {$heap(s_$2)[f_$13][p_$17]}
function {:inline  true} $rdtrig(s_$3:$state,p_$18:$ptr,f_$14:$field) : int {$rd(s_$3,p_$18,f_$14)}
function {:inline  true} $rd_spec_ptr(s_$4:$state,f_$15:$field,p_$19:$ptr,t_$13:$ctype) : $ptr {$spec_ptr_cast($int_to_ptr($rd(s_$4,p_$19,f_$15)),t_$13)}
function {:inline  true} $rd_phys_ptr(s_$5:$state,f_$16:$field,p_$20:$ptr,t_$14:$ctype) : $ptr {$phys_ptr_cast($int_to_ptr($rd(s_$5,p_$20,f_$16)),t_$14)}
function {:inline  true} $current_state(s_$6:$state) : $state {s_$6}
function {:inline  false} $owner($state,$ptr) : $ptr;
function {:inline  false} $closed($state,$ptr) : bool;
function {:inline  false} $timestamp($state,$ptr) : int;
function {:inline  false} $ref_cnt($state,$ptr) : int;
function $position_marker() : bool;
function {:inline  true} $owns_inline(S_$2:$state,p_$21:$ptr) : $ptrset {$int_to_ptrset($rd(S_$2,p_$21,$f_owns($typ(p_$21))))}
function $owns($state,$ptr) : $ptrset;
function {:inline  true} $keeps(S_$3:$state,#l:$ptr,#p:$ptr) : bool {$set_in(#p,$owns(S_$3,#l))}
function {:inline  true} $wrapped(S_$4:$state,#p_$0:$ptr,#t:$ctype) : bool {((($is(#p_$0,#t) && $is_proper(#p_$0)) && ($owner(S_$4,#p_$0) == $me())) && $closed(S_$4,#p_$0)) && $is_non_primitive(#t)}
function {:inline  true} $nested(S_$5:$state,p_$22:$ptr) : bool {!($typ($owner(S_$5,p_$22)) == ^$#thread_id_t)}
function {:inline  true} $irrelevant(S_$6:$state,p_$23:$ptr) : bool {(!($owner(S_$6,p_$23) == $me())) || ($is_primitive($typ(p_$23)) && $closed(S_$6,p_$23))}
function $mutable($state,$ptr) : bool;
function {:inline  true} $thread_owned(S_$7:$state,p_$24:$ptr) : bool {$owner(S_$7,$emb(S_$7,p_$24)) == $me()}
function {:inline  true} $thread_owned_or_even_mutable(S_$8:$state,p_$25:$ptr) : bool {if $is_primitive($typ(p_$25)) then (($owner(S_$8,$emb(S_$8,p_$25)) == $me()) && (!$closed(S_$8,$emb(S_$8,p_$25)))) else ($owner(S_$8,p_$25) == $me())}
function {:inline  true} $initially_mutable(S_$9:$state,W:$ptrset) : bool {(forall  p_$26 : $ptr :: {$mutable(S_$9,p_$26)} {$owner(S_$9,p_$26)} {$closed(S_$9,p_$26)} {$owner(S_$9,$emb0(p_$26))} {$closed(S_$9,$emb0(p_$26))} ( $set_in(p_$26,W) ==> $mutable(S_$9,p_$26) ))}
function {:inline  true} $initially_mutable_array(S_$10:$state,p_$27:$ptr,t_$15:$ctype,sz_$16:int) : bool {$is_mutable_array(S_$10,p_$27,t_$15,sz_$16)}
function {:inline  true} $initially_thread_owned_or_mutable(S_$11:$state,W_$0:$ptrset) : bool {(forall  p_$28 : $ptr :: {$mutable(S_$11,p_$28)} {$owner(S_$11,p_$28)} {$closed(S_$11,p_$28)} {$owner(S_$11,$emb0(p_$28))} {$closed(S_$11,$emb0(p_$28))} ( $set_in(p_$28,W_$0) ==> $thread_owned_or_even_mutable(S_$11,p_$28) ))}
function $in_range_phys_ptr($ptr) : bool;
function $in_range_spec_ptr($ptr) : bool;
function {:inline  true} $is_ghost_ptr(p_$29:$ptr) : bool {$in_range_spec_ptr(p_$29)}
function {:inline  true} $typed2_phys(S_$12:$state,#p_$1:$ptr,#t_$0:$ctype) : bool {$in_range_phys_ptr(#p_$1)}
function {:inline  true} $typed2_spec(S_$13:$state,#p_$2:$ptr,#t_$1:$ctype) : bool {$in_range_spec_ptr(#p_$2)}
function $as_addr($ptr,$ctype,int) : $ptr;
function $retype($state,$ptr) : $ptr;
function $ptr_eq($ptr,$ptr) : bool;
function {:inline  true} $addr_eq(p1:$ptr,p2:$ptr) : bool {$ptr_eq(p1,p2)}
function {:inline  true} $ptr_neq(p1_$0:$ptr,p2_$0:$ptr) : bool {!$ptr_eq(p1_$0,p2_$0)}
function $byte_ptr_subtraction($ptr,$ptr) : int;
function {:inline  true} $is_primitive_field_of(S_$14:$state,#f:$ptr,#o:$ptr) : bool {$is_primitive($typ(#f)) && ($emb(S_$14,#f) == #o)}
function $is_domain_root($state,$ptr) : bool;
function $in_wrapped_domain($state,$ptr) : bool;
function {:inline  true} $thread_local_np(S_$15:$state,p_$30:$ptr) : bool {(((!$is_primitive($typ(p_$30))) && $is_proper(p_$30)) && ($owner(S_$15,$domain_root(S_$15,p_$30)) == $me())) && $non_null(p_$30)}
function $thread_local($state,$ptr) : bool;
function {:inline  true} $thread_local2(S_$16:$state,#p_$3:$ptr,#t_$2:$ctype) : bool {$is(#p_$3,#t_$2) && $thread_local(S_$16,#p_$3)}
function {:inline  true} $typed2(S_$17:$state,p_$31:$ptr,t_$16:$ctype) : bool {$thread_local2(S_$17,p_$31,t_$16)}
function {:inline  true} $typed(S_$18:$state,p_$32:$ptr) : bool {$thread_local(S_$18,p_$32)}
function {:inline  true} $readable_span(S_$19:$state,p_$33:$ptr) : bool {($is_span_sequential($typ(p_$33)) && $thread_local(S_$19,p_$33)) || $mutable(S_$19,p_$33)}
function $dont_instantiate($ptr) : bool;
function $dont_instantiate_int(int) : bool;
function $dont_instantiate_state($state) : bool;
function $instantiate_int(int) : bool;
function $instantiate_bool(bool) : bool;
function $instantiate_ptr($ptr) : bool;
function $instantiate_ptrset($ptrset) : bool;
function sk_hack(bool) : bool;
function $start_here() : bool;
function $expect_unreachable() : bool;
function $expect_unreachable_master(int) : bool;
function $expect_unreachable_child(int) : bool;
function $function_entry($state) : bool;
function $good_state($state) : bool;
function $invok_state($state) : bool;
function $full_stop($state) : bool;
function {:inline  true} $inv(#s1:$state,#p_$4:$ptr,typ:$ctype) : bool {$inv2(#s1,#s1,#p_$4,typ)}
function {:inline  true} $inv2nt(S1:$state,S2:$state,p_$34:$ptr) : bool {$inv2(S1,S2,p_$34,$typ(p_$34))}
function $inv2($state,$state,$ptr,$ctype) : bool;
function {:inline  true} $full_stop_ext(t_$17:$token,S_$20:$state) : bool {$good_state_ext(t_$17,S_$20) && $full_stop(S_$20)}
function $file_name_is(int,$token) : bool;
function {:inline  true} $timestamp_checkpoint(S_$21:$state) : bool {(forall  p_$35 : $ptr :: {$owner(S_$21,p_$35)} ( $timestamp(S_$21,p_$35) <= $current_timestamp(S_$21) ))}
function $good_state_ext($token,$state) : bool;
function {:inline  true} $closed_is_transitive(S_$22:$state) : bool {(forall  p_$36 : $ptr, q_$2 : $ptr :: {$set_in_pos(p_$36,$owns(S_$22,q_$2))} ( (($good_state(S_$22) && $set_in(p_$36,$owns_inline(S_$22,q_$2))) && $closed(S_$22,q_$2)) ==> (((($is_non_primitive($typ(p_$36)) && ($owner(S_$22,p_$36) == q_$2)) && $closed(S_$22,p_$36)) && $non_null(p_$36)) && true) ))}
function $call_transition($state,$state) : bool;
function $trans_call_transition($state,$state) : bool;
function {:inline  true} $update(h:$object,r:$ptr,f_$17:$field,v:int) : $object {h[f_$17 := h[f_$17][r := v]]}
function {:inline  true} $havoc_at(S0:$state,S_$23:$state,p_$37:$ptr,f_$18:$field) : bool {$heap(S_$23) == $update($heap(S0),p_$37,f_$18,$rd(S_$23,p_$37,f_$18))}
function {:inline  true} $specials_eq(S0_$0:$state,S_$24:$state) : bool {((($f_timestamp(S0_$0) == $f_timestamp(S_$24)) && ($f_closed(S0_$0) == $f_closed(S_$24))) && ($f_owner(S0_$0) == $f_owner(S_$24))) && ($roots(S0_$0) == $roots(S_$24))}
function {:inline  true} $specials_eq_except(S0_$1:$state,S_$25:$state,p_$38:$ptr) : bool {((($f_timestamp(S_$25) == $f_timestamp(S0_$1)[p_$38 := $f_timestamp(S_$25)[p_$38]]) && ($f_closed(S_$25) == $f_closed(S0_$1)[p_$38 := $f_closed(S_$25)[p_$38]])) && ($f_owner(S_$25) == $f_owner(S0_$1)[p_$38 := $f_owner(S_$25)[p_$38]])) && ($roots(S_$25) == $roots(S0_$1)[p_$38 := $roots(S_$25)[p_$38]])}
function {:inline  true} $meta_eq(s1:$state,s2:$state) : bool {$specials_eq(s1,s2)}
function {:inline  true} $mutable_increases(s1_$0:$state,s2_$0:$state) : bool {(forall  p_$39 : $ptr :: {$owner(s2_$0,p_$39)} {$closed(s2_$0,p_$39)} {$domain_root(s2_$0,p_$39)} ( $mutable(s1_$0,p_$39) ==> $mutable(s2_$0,p_$39) ))}
function {:inline  true} $rd_local(h_$0:[$ptr]int,f_$19:$field,p_$40:$ptr) : int {h_$0[p_$40]}
function {:inline  true} $rd_spec_ptr_local(h_$1:[$ptr]int,f_$20:$field,p_$41:$ptr,t_$18:$ctype) : $ptr {$spec_ptr_cast($int_to_ptr(h_$1[p_$41]),t_$18)}
function {:inline  true} $rd_phys_ptr_local(h_$2:[$ptr]int,f_$21:$field,p_$42:$ptr,t_$19:$ctype) : $ptr {$phys_ptr_cast($int_to_ptr(h_$2[p_$42]),t_$19)}
function $updated_owns($state,$state,$ptr,$ptrset) : bool;
function {:inline  true} $timestamp_is_now(S_$26:$state,p_$43:$ptr) : bool {$timestamp(S_$26,p_$43) == $current_timestamp(S_$26)}
function {:inline  true} $now_writable(S_$27:$state,p_$44:$ptr) : bool {$timestamp_is_now(S_$27,p_$44) && $mutable(S_$27,p_$44)}
function {:inline  true} $timestamp_post(M1:$state,M2:$state) : bool {($current_timestamp(M1) <= $current_timestamp(M2)) && $call_transition(M1,M2)}
function {:inline  true} $timestamp_post_strict(M1_$0:$state,M2_$0:$state) : bool {($current_timestamp(M1_$0) < $current_timestamp(M2_$0)) && $call_transition(M1_$0,M2_$0)}
function $writes_at(int) : $ptrset;
function {:inline  false} $in_writes_at(int,$ptr) : bool;
function {:inline  true} $def_writes(S_$28:$state,time:int,ptrs:$ptrset) : bool {$writes_at(time) == ptrs}
function $current_timestamp($state) : int;
function {:inline  true} $is_fresh(M1_$1:$state,M2_$1:$state,p_$45:$ptr) : bool {($current_timestamp(M1_$1) < $timestamp(M2_$1,p_$45)) && ($timestamp(M2_$1,p_$45) <= $current_timestamp(M2_$1))}
function {:inline  true} $writable(S_$29:$state,begin_time:int,p_$46:$ptr) : bool {($is_non_primitive($typ(p_$46)) && $is_proper(p_$46)) && ($mutable(S_$29,p_$46) && (($timestamp(S_$29,p_$46) >= begin_time) || $in_writes_at(begin_time,p_$46)))}
function {:inline  true} $writable_prim(S_$30:$state,begin_time_$0:int,p_$47:$ptr) : bool {($is_primitive($typ(p_$47)) && $is_proper(p_$47)) && ($mutable(S_$30,$emb0(p_$47)) && (($timestamp(S_$30,$emb0(p_$47)) >= begin_time_$0) || $in_writes_at(begin_time_$0,p_$47)))}
function {:inline  true} $listed_in_writes(S_$31:$state,begin_time_$1:int,p_$48:$ptr) : bool {$in_writes_at(begin_time_$1,p_$48)}
function {:inline  false} $top_writable($state,int,$ptr) : bool;
function {:inline  true} $not_written(S0_$2:$state,p_$49:$ptr,W_$1:$ptrset) : bool {($owner(S0_$2,$domain_root(S0_$2,p_$49)) == $me()) && (!$in($domain_root(S0_$2,p_$49),W_$1))}
function {:inline  false} $modifies($state,$state,$ptrset) : bool;
function {:inline  true} $preserves_thread_local(S0_$3:$state,S1_$0:$state) : bool {(forall  p_$50 : $ptr :: {$thread_local(S1_$0,p_$50)} ( $thread_local(S0_$3,p_$50) ==> $thread_local(S1_$0,p_$50) ))}
function {:inline  true} $writes_nothing(S0_$4:$state,S1_$1:$state) : bool {$modifies(S0_$4,S1_$1,$set_empty())}
function $frame_level($pure_function) : int;
function {:inline  true} $can_use_all_frame_axioms(s_$7:$state) : bool {(forall  f_$22 : $pure_function :: {$frame_level(f_$22)} ( $frame_level(f_$22) < $current_frame_level ))}
function {:inline  true} $can_use_frame_axiom_of(f_$23:$pure_function) : bool {$frame_level(f_$23) < $current_frame_level}
function $reads_check_pre($state) : bool;
function $reads_check_post($state) : bool;
function $same_array($state,$state,$ptr,int) : bool;
function $is_in_stackframe(int,$ptr) : bool;
function {:inline  true} $is_allocated0(S0_$5:$state,S_$32:$state,r_$0:$ptr,t_$20:$ctype) : bool {((((((((true && $is(r_$0,t_$20)) && $is_proper(r_$0)) && $writes_nothing(S0_$5,S_$32)) && ($heap(S_$32) == $heap(S0_$5))) && $timestamp_post_strict(S0_$5,S_$32)) && (!$closed(S0_$5,r_$0))) && (!($owner(S0_$5,r_$0) == $me()))) && $is_malloc_root(S_$32,r_$0)) && ($field(r_$0) == $f_root(t_$20))}
function {:inline  true} $is_allocated(S0_$6:$state,S_$33:$state,r_$1:$ptr,t_$21:$ctype) : bool {$is_allocated0(S0_$6,S_$33,r_$1,t_$21) && (if $is_primitive(t_$21) then (($mutable(S_$33,$emb0(r_$1)) && (r_$1 == $dot($emb0(r_$1),$field(r_$1)))) && $timestamp_is_now(S_$33,$emb0(r_$1))) else (($extent_mutable(S_$33,r_$1) && $extent_is_fresh(S0_$6,S_$33,r_$1)) && $all_first_option_typed(S_$33,r_$1)))}
function {:inline  true} $is_malloc_root(S_$34:$state,p_$51:$ptr) : bool {$is_object_root(S_$34,p_$51)}
function {:inline  true} $is_object_root(S_$35:$state,p_$52:$ptr) : bool {$is_object_root_ptr(p_$52)}
function $is_object_root_ptr($ptr) : bool;
function $pre_wrap($state) : bool;
function $pre_unwrap($state) : bool;
function $pre_static_wrap($state) : bool;
function $pre_static_unwrap($state) : bool;
function $post_unwrap($state,$state) : bool;
function $is_unwrapped_dynamic($state,$state,$ptr) : bool;
function $is_unwrapped($state,$state,$ptr) : bool;
function $is_wrapped_dynamic($state,$state,$ptr) : bool;
function $is_wrapped($state,$state,$ptr,$ptrset) : bool;
function $take_over($state,$ptr,$ptr) : $state;
function $release($state,$state,$ptr,$ptr) : $state;
function $spans_the_same($state,$state,$ptr,$ctype) : bool;
function $nonvolatile_spans_the_same($state,$state,$ptr,$ctype) : bool;
function $good_for_admissibility($state) : bool;
function $good_for_post_admissibility($state) : bool;
function $admissibility_start($ptr,$ctype) : bool;
function {:inline  true} $stuttering_pre(S_$36:$state,p_$53:$ptr) : bool {((forall  q_$3 : $ptr :: {$closed(S_$36,q_$3)} ( $closed(S_$36,q_$3) ==> $inv(S_$36,q_$3,$typ(q_$3)) ))) && $good_for_admissibility(S_$36)}
function {:inline  true} $admissibility_pre(S_$37:$state,p_$54:$ptr) : bool {($closed(S_$37,p_$54) && $inv(S_$37,p_$54,$typ(p_$54))) && $stuttering_pre(S_$37,p_$54)}
function $is_stuttering_check() : bool;
function $is_unwrap_check() : bool;
function {:inline  true} $is_admissibility_check() : bool {(!$is_stuttering_check()) && (!$is_unwrap_check())}
function $good_for_pre_can_unwrap($state) : bool;
function $good_for_post_can_unwrap($state) : bool;
function {:inline  true} $unwrap_check_pre(S_$38:$state,p_$55:$ptr) : bool {((($wrapped(S_$38,p_$55,$typ(p_$55)) && ((!$is_claimable($typ(p_$55))) || ($ref_cnt(S_$38,p_$55) == 0))) && $inv(S_$38,p_$55,$typ(p_$55))) && ((forall  q_$4 : $ptr :: {$closed(S_$38,q_$4)} ( $closed(S_$38,q_$4) ==> $inv(S_$38,q_$4,$typ(q_$4)) )))) && $good_for_pre_can_unwrap(S_$38)}
function $claims_obj($ptr,$ptr) : bool;
function $valid_claim($state,$ptr) : bool;
function {:inline  true} $claim_initial_assumptions(#s1_$0:$state,c_$0:$ptr,tok:$token) : bool {($good_state_ext(tok,#s1_$0) && $closed_is_transitive(#s1_$0)) && true}
function {:inline  true} $inv2_when_closed(#s1_$1:$state,#s2:$state,#p_$5:$ptr,typ_$0:$ctype) : bool {((!$closed(#s1_$1,#p_$5)) && (!$closed(#s2,#p_$5))) || ($inv2(#s1_$1,#s2,#p_$5,typ_$0) && $nonvolatile_spans_the_same(#s1_$1,#s2,#p_$5,typ_$0))}
function {:inline  true} $claim_transitivity_assumptions(#s1_$2:$state,#s2_$0:$state,c_$1:$ptr,tok_$0:$token) : bool {(((((($full_stop_ext(tok_$0,#s1_$2) && $good_state_ext(tok_$0,#s2_$0)) && $closed_is_transitive(#s1_$2)) && $closed_is_transitive(#s2_$0)) && ((forall  #p_$6 : $ptr :: {$closed(#s1_$2,#p_$6)} {$closed(#s2_$0,#p_$6)} ( $inv2_when_closed(#s1_$2,#s2_$0,#p_$6,$typ(#p_$6)) )))) && $valid_claim(#s1_$2,c_$1)) && $closed(#s2_$0,c_$1)) && true}
function {:inline  true} $valid_claim_impl(S0_$7:$state,S1_$2:$state) : bool {(forall  r_$2 : $ptr, f_$24 : $field :: {$closed(S1_$2,$ptr($as_field_with_type(f_$24,^^claim),r_$2))} ( $is($ptr(f_$24,r_$2),^^claim) ==> (($closed(S0_$7,$ptr(f_$24,r_$2)) && $closed(S1_$2,$ptr(f_$24,r_$2))) ==> $valid_claim(S1_$2,$ptr(f_$24,r_$2))) ))}
function $claims_claim($ptr,$ptr) : bool;
function $not_shared($state,$ptr) : bool;
function $claimed_closed($state,$ptr) : bool;
function {:inline  true} $claim_killed(S0_$8:$state,S_$39:$state,c_$2:$ptr) : bool {((((($f_closed(S_$39) == $f_closed(S0_$8)[c_$2 := false]) && ($f_timestamp(S_$39) == $f_timestamp(S0_$8))) && ($f_owner(S_$39) == $f_owner(S0_$8))) && ($heap(S_$39) == $heap(S0_$8))) && $good_state(S_$39)) && $timestamp_post_strict(S0_$8,S_$39)}
function $claims_upgrade($ptr,$ptr) : bool;
function $account_claim($state,$ptr,$ptr) : bool;
function $claim_no($state,$ptr,int) : $ptr;
function $claim_idx($ptr,$ptr) : int;
function {:inline  true} $new_ownees(S_$40:$state,o:$ptr,owns:$ptrset) : $ptrset {$set_difference(owns,$owns(S_$40,o))}
function $in_domain_lab($state,$ptr,$ptr,$label) : bool;
function $in_vdomain_lab($state,$ptr,$ptr,$label) : bool;
function $inv_lab($state,$ptr,$label) : bool;
function $in_domain($state,$ptr,$ptr) : bool;
function $in_vdomain($state,$ptr,$ptr) : bool;
function $as_deep_domain($state,$ptr) : $ptr;
function $wrapped_with_deep_domain($state,$ptr) : bool;
function $ver_domain($version) : $ptrset;
function $int_to_version(int) : $version;
function {:inline  true} $read_version(S_$41:$state,p_$56:$ptr) : $version {$int_to_version($f_timestamp(S_$41)[p_$56])}
function {:inline  true} $domain(S_$42:$state,p_$57:$ptr) : $ptrset {$ver_domain($read_version(S_$42,p_$57))}
function $fetch_from_domain($version,$ptr,$field) : int;
function $in_claim_domain($ptr,$ptr) : bool;
function $by_claim($state,$ptr,$ptr,$ptr) : $ptr;
function $claim_version($ptr) : $version;
function $int_to_vol_version(int) : $vol_version;
function {:inline  true} $volatile_version_addr(p_$58:$ptr) : $ptr {$dot(p_$58,$f_vol_version($typ(p_$58)))}
function $read_vol_version($state,$ptr) : $vol_version;
function $fetch_from_vv($vol_version,$ptr,$field) : int;
function {:inline  true} $fetch_vol_field(S_$43:$state,p_$59:$ptr,f_$25:$field) : int {$fetch_from_vv($read_vol_version(S_$43,p_$59),p_$59,f_$25)}
function $is_approved_by($ctype,$field,$field) : bool;
function $is_owner_approved($ctype,$field) : bool;
function {:inline  true} $inv_is_approved_by_ptr(S1_$3:$state,S2_$0:$state,this:$ptr,approver:$ptr,subject:$field) : bool {((($rd(S1_$3,this,subject) == $rd(S2_$0,this,subject)) || $is_null(approver)) || ((!$is_threadtype($typ(approver))) && $inv2nt(S1_$3,S2_$0,approver))) || ($is_threadtype($typ(approver)) && (!($read_vol_version(S1_$3,this) == $read_vol_version(S2_$0,this))))}
function $depends($state,$state,$ptr,$ptr) : bool;
function {:inline  true} $inv_is_approved_by(S1_$4:$state,S2_$1:$state,this_$0:$ptr,approver_$0:$field,subject_$0:$field) : bool {$inv_is_approved_by_ptr(S1_$4,S2_$1,this_$0,$int_to_ptr($rd(S1_$4,this_$0,approver_$0)),subject_$0)}
function {:inline  true} $inv_is_owner_approved(S1_$5:$state,S2_$2:$state,this_$1:$ptr,subject_$1:$field) : bool {$inv_is_approved_by_ptr(S1_$5,S2_$2,this_$1,$owner(S1_$5,this_$1),subject_$1)}
function $composite_extent($state,$ptr,$ctype) : $ptrset;
function $extent($state,$ptr) : $ptrset;
function $full_extent($ptr) : $ptrset;
function $span($ptr) : $ptrset;
function {:inline  true} $struct_extent(#p_$7:$ptr) : $ptrset {$full_extent(#p_$7)}
function $extent_mutable($state,$ptr) : bool;
function $extent_thread_local($state,$ptr) : bool;
function $extent_is_fresh($state,$state,$ptr) : bool;
function $volatile_span($state,$ptr) : $ptrset;
function $extent_hint($ptr,$ptr) : bool;
function {:inline  true} $union_havoced(S0_$9:$state,S1_$6:$state,E0:$ptrset,E1:$ptrset) : bool {((((((forall  p_$60 : $ptr :: {$domain_root(S1_$6,p_$60)} ( ($in(p_$60,E0) || $in(p_$60,E1)) || ($domain_root(S0_$9,p_$60) == $domain_root(S1_$6,p_$60)) ))) && ((forall  p_$61 : $ptr, f_$26 : $field :: {$rdtrig(S1_$6,p_$61,f_$26)} ( ($in(p_$61,E0) || $in(p_$61,E1)) || ($rd(S0_$9,p_$61,f_$26) == $rd(S1_$6,p_$61,f_$26)) )))) && ((forall  p_$62 : $ptr :: {$f_timestamp(S1_$6)[p_$62]} ( (($in(p_$62,E0) || $in(p_$62,E1)) || ($f_timestamp(S1_$6)[p_$62] == $f_timestamp(S0_$9)[p_$62])) && ($f_timestamp(S1_$6)[p_$62] >= $f_timestamp(S0_$9)[p_$62]) )))) && ($f_closed(S0_$9) == $f_closed(S1_$6))) && ((forall  p_$63 : $ptr :: {$f_owner(S1_$6)[p_$63]} ( ($in(p_$63,E0) || $in(p_$63,E1)) || ($f_owner(S0_$9)[p_$63] == $f_owner(S1_$6)[p_$63]) )))) && $timestamp_post(S0_$9,S1_$6)}
function $is_union_field($field) : bool;
function $as_union_type($ctype) : $ctype;
function $is_union_type($ctype) : bool;
function {:inline  true} $as_union_ptr(p_$64:$ptr,t_$22:$ctype) : $ptr {$as_ptr_with_type(p_$64,$as_union_type(t_$22))}
function $first_union_field($ctype) : $field;
function {:inline  true} $is_first_union_field(f_$27:$field) : bool {$is_union_field(f_$27) && ($first_union_field($field_parent_type(f_$27)) == f_$27)}
function $first_option_typed($state,$ptr) : bool;
function $all_first_option_typed($state,$ptr) : bool;
function {:inline  true} $union_active(s_$8:$state,p_$65:$ptr,f_$28:$field) : bool {!($owner(s_$8,$dot(p_$65,f_$28)) == $inactive_union_owner())}
function $active_option($state,$ptr) : $field;
function $strong_struct_eq($state,$ptr,$state,$ptr) : bool;
function $strong_shallow_struct_eq($state,$ptr,$state,$ptr) : bool;
function {:inline  true} $vs_base(s_$9:$struct,t_$23:$ctype) : $ptr {$phys_ptr_cast($vs_base_ref(s_$9),t_$23)}
function $vs_base_ref($struct) : $ptr;
function $vs_state($struct) : $state;
function $vs_deep_eq($struct,$struct,$ctype) : bool;
function $vs_shallow_eq($struct,$struct,$ctype) : bool;
function $vs_ctor($state,$ptr) : $struct;
function {:inline  true} $mem(s_$10:$state,p_$66:$ptr) : int {$rd(s_$10,$base(p_$66),$field(p_$66))}
function $update_int($state,$ptr,int) : $state;
function $program_entry_point($state) : bool;
function $program_entry_point_ch($state) : bool;
function {:inline  true} $def_global(p_$67:$ptr,t_$24:$ctype) : bool {($is(p_$67,t_$24) && $is_object_root_ptr(p_$67)) && true}
function {:inline  true} $is_global(p_$68:$ptr,t_$25:$ctype) : bool {(forall  S_$44 : $state :: {$program_entry_point(S_$44)} ( $program_entry_point(S_$44) ==> ($extent_mutable(S_$44,p_$68) && ($owns(S_$44,p_$68) == $set_empty())) ))}
function {:inline  true} $is_global_array(p_$69:$ptr,T_$4:$ctype,sz_$17:int) : bool {(forall  S_$45 : $state :: {$program_entry_point(S_$45)} ( $program_entry_point(S_$45) ==> $is_mutable_array(S_$45,p_$69,T_$4,sz_$17) ))}
function $has_arity($dt_tag,int) : bool;
function $is_datatype($ctype) : bool;
function {:inline  true} $def_datatype_type(t_$26:$ctype) : bool {$def_math_type(t_$26) && $is_datatype(t_$26)}
function $def_datatype_option($ctype,$dt_tag,int) : bool;
function {:inline  true} $in(p_$70:$ptr,s_$11:$ptrset) : bool {s_$11[p_$70]}
function {:inline  true} $set_in(p_$71:$ptr,s_$12:$ptrset) : bool {s_$12[p_$71]}
function $set_empty() : $ptrset;
function $set_singleton($ptr) : $ptrset;
function $non_null_set_singleton($ptr) : $ptrset;
function $set_union($ptrset,$ptrset) : $ptrset;
function $set_difference($ptrset,$ptrset) : $ptrset;
function $set_intersection($ptrset,$ptrset) : $ptrset;
function $set_subset($ptrset,$ptrset) : bool;
function {:inline  true} $set_add_element(S_$46:$ptrset,e:$ptr) : $ptrset {$set_union(S_$46,$set_singleton(e))}
function {:inline  true} $set_remove_element(S_$47:$ptrset,e_$0:$ptr) : $ptrset {$set_difference(S_$47,$set_singleton(e_$0))}
function $set_eq($ptrset,$ptrset) : bool;
function $set_cardinality($ptrset) : int;
function $set_universe() : $ptrset;
function $set_disjoint($ptrset,$ptrset) : bool;
function $id_set_disjoint($ptr,$ptrset,$ptrset) : int;
function {:inline  false} $set_in_pos($ptr,$ptrset) : bool;
function $set_in0($ptr,$ptrset) : bool;
function $get_fnptr(int,$ctype) : $ptr;
function $get_fnptr_ref(int) : $ptr;
function $get_fnptr_inv($ptr) : int;
function $valid_fnptr($ptr) : bool;
function {:inline  true} $in_range(min:int,val:int,max:int) : bool {(min <= val) && (val <= max)}
function {:inline  true} $bool_to_int(v_$0:bool) : int {if v_$0 then 1 else 0}
function {:inline  true} $int_to_bool(x:int) : bool {!(x == 0)}
function $bool_id(bool) : bool;
function {:inline  true} $in_range_i1(x_$0:int) : bool {$in_range($min.i1,x_$0,$max.i1)}
function {:inline  true} $in_range_i2(x_$1:int) : bool {$in_range($min.i2,x_$1,$max.i2)}
function {:inline  true} $in_range_i4(x_$2:int) : bool {$in_range($min.i4,x_$2,$max.i4)}
function {:inline  true} $in_range_i8(x_$3:int) : bool {$in_range($min.i8,x_$3,$max.i8)}
function {:inline  true} $in_range_u1(x_$4:int) : bool {$in_range(0,x_$4,$max.u1)}
function {:inline  true} $in_range_u2(x_$5:int) : bool {$in_range(0,x_$5,$max.u2)}
function {:inline  true} $in_range_u4(x_$6:int) : bool {$in_range(0,x_$6,$max.u4)}
function {:inline  true} $in_range_u8(x_$7:int) : bool {$in_range(0,x_$7,$max.u8)}
function {:inline  true} $in_range_ptr(p_$72:$ptr) : bool {$in_range_u8($addr(p_$72))}
function {:inline  true} $in_range_div_i1(x_$8:int,y:int) : bool {(!(y == (0 - 1))) || (!(x_$8 == $min.i1))}
function {:inline  true} $in_range_div_i2(x_$9:int,y_$0:int) : bool {(!(y_$0 == (0 - 1))) || (!(x_$9 == $min.i2))}
function {:inline  true} $in_range_div_i4(x_$10:int,y_$1:int) : bool {(!(y_$1 == (0 - 1))) || (!(x_$10 == $min.i4))}
function {:inline  true} $in_range_div_i8(x_$11:int,y_$2:int) : bool {(!(y_$2 == (0 - 1))) || (!(x_$11 == $min.i8))}
function $_pow2(int) : int;
function $in_range_ubits(int,int) : bool;
function $unchecked_sbits(int,int) : int;
function $in_range_sbits(int,int) : bool;
function $unchecked_ubits(int,int) : int;
function $_or($ctype,int,int) : int;
function $_xor($ctype,int,int) : int;
function $_and($ctype,int,int) : int;
function $_not($ctype,int) : int;
function $abs(int) : int;
function $unchk_add($ctype,int,int) : int;
function $unchk_sub($ctype,int,int) : int;
function $unchk_mul($ctype,int,int) : int;
function $unchk_div($ctype,int,int) : int;
function $unchk_mod($ctype,int,int) : int;
function $_shl($ctype,int,int) : int;
function $_shr(int,int) : int;
function $bv_extract_signed(int,int,int,int) : int;
function $bv_extract_unsigned(int,int,int,int) : int;
function $bv_update(int,int,int,int,int) : int;
function $unchecked($ctype,int) : int;
function $in_range_t($ctype,int) : bool;
function $op_mul(int,int) : int;
function $op_add($ctype,int,int) : int;
function $op_sub($ctype,int,int) : int;
function $op_div($ctype,int,int) : int;
function $op_lt($ctype,int,int) : bool;
function $op_le($ctype,int,int) : bool;
function $op_gt($ctype,int,int) : bool;
function $op_ge($ctype,int,int) : bool;
function $ptr_to_int($ptr) : int;
function $int_to_ptr(int) : $ptr;
function $field_to_int($field) : int;
function $int_to_field(int) : $field;
function $ptrset_to_int($ptrset) : int;
function $int_to_ptrset(int) : $ptrset;
function $ptr_to_u8($ptr) : int;
function $ptr_to_i8($ptr) : int;
function $ptr_to_u4($ptr) : int;
function $ptr_to_i4($ptr) : int;
function $ptr_to_u2($ptr) : int;
function $ptr_to_i2($ptr) : int;
function $ptr_to_u1($ptr) : int;
function $ptr_to_i1($ptr) : int;
function $u8_to_ptr(int) : $ptr;
function $i8_to_ptr(int) : $ptr;
function $u4_to_ptr(int) : $ptr;
function $i4_to_ptr(int) : $ptr;
function $u2_to_ptr(int) : $ptr;
function $i2_to_ptr(int) : $ptr;
function $u1_to_ptr(int) : $ptr;
function $i1_to_ptr(int) : $ptr;
function $add_f4($primitive,$primitive) : $primitive;
function $sub_f4($primitive,$primitive) : $primitive;
function $mul_f4($primitive,$primitive) : $primitive;
function $div_f4($primitive,$primitive) : $primitive;
function $neg_f4($primitive) : $primitive;
function $lt_f4($primitive,$primitive) : bool;
function $leq_f4($primitive,$primitive) : bool;
function $gt_f4($primitive,$primitive) : bool;
function $geq_f4($primitive,$primitive) : bool;
function $add_f8($primitive,$primitive) : $primitive;
function $sub_f8($primitive,$primitive) : $primitive;
function $mul_f8($primitive,$primitive) : $primitive;
function $div_f8($primitive,$primitive) : $primitive;
function $neg_f8($primitive) : $primitive;
function $lt_f8($primitive,$primitive) : bool;
function $leq_f8($primitive,$primitive) : bool;
function $gt_f8($primitive,$primitive) : bool;
function $geq_f8($primitive,$primitive) : bool;
function #cev_init(int) : bool;
function #cev_save_position(int) : $token;
function #cev_var_intro(int,var_locglob,$token,int,$ctype) : bool;
function #cev_var_update(int,var_locglob,$token,int) : bool;
function #cev_control_flow_event(int,cf_event) : bool;
function #cev_function_call(int) : bool;
function $local_value_is($state,$token,$token,int,$ctype) : bool;
function $local_value_is_ptr($state,$token,$token,$ptr,$ctype) : bool;
function $read_ptr_m($state,$ptr,$ctype) : $ptr;
function $type_code_is(int,$ctype) : bool;
function $function_arg_type($pure_function,int,$ctype) : bool;
function {:inline } $int_lt_or(called:int,caller:int,otherwise:bool) : bool {((0 <= caller) && (called < caller)) || ((called == caller) && otherwise)}
function $yarra_heap($state) : $state;
function $get_string_literal(int,int) : $ptr;
function F#fsum(int,$map_t..^^mathint.^^mathint) : int;
function F#lambda#4($state,$ptr,int) : $map_t..^^mathint.^^mathint;
function F#lambda#3($state,$ptr,int) : $map_t..^^mathint.^^mathint;
function F#lambda#2($state,$ptr,int) : $map_t..^^mathint.^^mathint;
function $select.$map_t..^^mathint.^^mathint($map_t..^^mathint.^^mathint,int) : int;
function $store.$map_t..^^mathint.^^mathint($map_t..^^mathint.^^mathint,int,int) : $map_t..^^mathint.^^mathint;
function $eq.$map_t..^^mathint.^^mathint($map_t..^^mathint.^^mathint,$map_t..^^mathint.^^mathint) : bool;
function $map_t..^^mathint.^^mathint_to_int($map_t..^^mathint.^^mathint) : int;
function $int_to_map_t..^^mathint.^^mathint(int) : $map_t..^^mathint.^^mathint;
function lambda#0($field_kind,$ptr,$ctype,int) : [$ptr]bool;
function lambda#1(int,$ptr) : [$ptr]bool;
function lambda#2(int,$ptr,$ctype) : [$ptr]bool;
function lambda#3($state,$state,$ptr) : [$ptr]int;
function lambda#4($state,$ptr) : [$ptr]$ptr;
function lambda#5($ptr,$state) : [$ptr]$ptr;
function lambda#6($state,$state,$ptr) : [$ptr]$ptr;
function lambda#7($state,$ptrset,$ptr) : [$ptr]$ptr;
function lambda#8($state,$state,$ptrset) : [$ptr]$ptr;
function lambda#9($state,$state,$ptr) : [$ptr]$ptr;
function lambda#10($ptr,$state) : [$ptr]bool;
function lambda#11($ptr,$state) : [$ptr]bool;
function lambda#12($ptr) : [$ptr]bool;
function lambda#13($ptr) : [$ptr]bool;
function lambda#14() : [$ptr]bool;
function lambda#15($ptr) : [$ptr]bool;
function lambda#16($ptr) : [$ptr]bool;
function lambda#17($ptrset,$ptrset) : [$ptr]bool;
function lambda#18($ptrset,$ptrset) : [$ptr]bool;
function lambda#19($ptrset,$ptrset) : [$ptr]bool;
function lambda#20($ctype,$ptr) : [$ptr]bool;
var $s : $state;
var $cev_pc : int;
var L#max : int;
var L#sum : int;
var L#i : int;
var #wrTime$1^30.1 : int;
var SL#am : $map_t..^^mathint.^^mathint;
var call0formal_$_#l1_$_0 : $ptr;
var call2formal_$_$result_$_0 : $map_t..^^mathint.^^mathint;
var $s_$_0 : $state;
var #wrTime$1^43.3 : int;
var L#sum_$_0 : int;
var L#i_$_0 : int;
var L#max_$_0 : int;
var call0formal_$_f_$_0 : $field;
var call1formal_$_p_$_0 : $ptr;
var $s_$_1 : $state;
var $result_$_0 : int;
var $s_$_2 : $state;
var L#max_$_2 : int;
var call0formal_$_SP#i_$_0 : int;
var L#sum_$_1 : int;
var L#i_$_1 : int;
var L#max_$_1 : int;
var loopState#1 : $state;
procedure sum_max (P#a : $ptr,P#N : int,P#maxout : $ptr) returns ($result : int)
{
	var #wrTime$1^43.3 : int;
	var loopState#1 : $state;
	var L#max : int;
	var L#sum : int;
	var L#i : int;
	var SL#am : $map_t..^^mathint.^^mathint;
	var #wrTime$1^30.1 : int;
	var call0formal_$_#l1_$_0 : $ptr;
	var call2formal_$_$result_$_0 : $map_t..^^mathint.^^mathint;
	var $s_$_0 : $state;
	var L#sum_$_0 : int;
	var L#i_$_0 : int;
	var L#max_$_0 : int;
	var call0formal_$_f_$_0 : $field;
	var call1formal_$_p_$_0 : $ptr;
	var $s_$_1 : $state;
	var L#max_$_1 : int;
	var L#max_$_2 : int;
	var call0formal_$_SP#i_$_0 : int;
	var L#sum_$_1 : int;
	var L#i_$_1 : int;
	var $result_$_0 : int;
	var $s_$_2 : $state;
	var $_$_condition : bool;
	var $_$_condition_$0 : bool;
	var $_$_condition_$1 : bool;
$start:
	assume (forall  #n : $ctype :: {$ptr_to(#n)} ( ($type_project_0($ptr_to(#n)) == #n) && ($type_branch($ptr_to(#n)) == $ctype_ptr) ));
	assume (forall  #n_$0 : $ctype :: {$spec_ptr_to(#n_$0)} ( ($type_project_0($spec_ptr_to(#n_$0)) == #n_$0) && ($type_branch($spec_ptr_to(#n_$0)) == $ctype_spec_ptr) ));
	assume (forall  #n_$1 : $ctype :: {$ptr_to(#n_$1)} ( $sizeof($ptr_to(#n_$1)) == $arch_ptr_size ));
	assume (forall  #n_$2 : $ctype :: {$spec_ptr_to(#n_$2)} ( $sizeof($ptr_to(#n_$2)) == $arch_ptr_size ));
	assume (forall  #r : $ctype, #d : $ctype :: {$map_t(#r,#d)} ( (($map_domain($map_t(#r,#d)) == #d) && ($map_range($map_t(#r,#d)) == #r)) && ($type_branch($map_t(#r,#d)) == $ctype_map) ));
	assume (forall  sz : Integer, t : $ctype :: ( $def_flat_type(t,sz) == (($sizeof(t) == sz) && ($type_branch(t) == $ctype_flat)) ));
	assume (forall  sz_$0 : Integer, t_$0 : $ctype :: ( $def_primitive_type(t_$0,sz_$0) == ($def_flat_type(t_$0,sz_$0) && $is_primitive(t_$0)) ));
	assume (forall  t_$1 : $ctype :: ( $def_math_type(t_$1) == ($def_primitive_type(t_$1,1) && $is_math_type(t_$1)) ));
	assume (forall  t_$2 : $ctype :: ( $def_fnptr_type(t_$2) == ($def_primitive_type(t_$2,$arch_ptr_size) && $is_fnptr_type(t_$2)) ));
	assume (forall  t_$3 : $ctype :: ( $def_record_type(t_$3) == ($def_primitive_type(t_$3,1) && $is_record_type(t_$3)) ));
	assume (forall  has_volatile_owns : Boolean, claimable : Boolean, sz_$1 : Integer, t_$4 : $ctype :: ( $def_composite_type(t_$4,sz_$1,claimable,has_volatile_owns) == (((($def_flat_type(t_$4,sz_$1) && $is_non_primitive(t_$4)) && ($is_claimable(t_$4) <==> claimable)) && (if has_volatile_owns then $is_volatile_field($f_owns(t_$4)) else $is_sequential_field($f_owns(t_$4)))) && true) ));
	assume (forall  has_volatile_owns_$0 : Boolean, claimable_$0 : Boolean, sz_$2 : Integer, t_$5 : $ctype :: ( $def_union_type(t_$5,sz_$2,claimable_$0,has_volatile_owns_$0) == (($def_composite_type(t_$5,sz_$2,claimable_$0,has_volatile_owns_$0) && ($as_union_type(t_$5) == t_$5)) && $is_union_type(t_$5)) ));
	assume (forall  has_volatile_owns_$1 : Boolean, claimable_$1 : Boolean, sz_$3 : Integer, t_$6 : $ctype :: ( $def_struct_type(t_$6,sz_$3,claimable_$1,has_volatile_owns_$1) == ($def_composite_type(t_$6,sz_$3,claimable_$1,has_volatile_owns_$1) && (!$is_union_type(t_$6))) ));
	assume (forall  sz_$4 : Integer, t_$7 : $ctype :: ( $def_integer_type(t_$7,sz_$4) == ($def_primitive_type(t_$7,sz_$4) && ($as_in_range_t(t_$7) == t_$7)) ));
	assume (forall  t_$8 : $ctype :: ( $is_non_primitive(t_$8) == (!$is_primitive(t_$8)) ));
	assume (forall  p : $ptr :: ( $is_non_primitive_ptr(p) == $is_non_primitive($typ(p)) ));
	assume (forall  #r_$0 : $ctype, #d_$0 : $ctype :: {$map_t(#r_$0,#d_$0)} ( $is_primitive($map_t(#r_$0,#d_$0)) ));
	assume (forall  #n_$3 : $ctype :: {$ptr_to(#n_$3)} ( $is_primitive($ptr_to(#n_$3)) ));
	assume (forall  #n_$4 : $ctype :: {$spec_ptr_to(#n_$4)} ( $is_primitive($spec_ptr_to(#n_$4)) ));
	assume (forall  #n_$5 : $ctype :: {$is_primitive(#n_$5)} ( $is_primitive(#n_$5) ==> (!$is_claimable(#n_$5)) ));
	assume (forall  p_$0 : $ptr :: ( $typ(p_$0) == $field_type($field(p_$0)) ));
	assume (forall  t_$27 : $field, b : $ptr :: ( $field($ptr(t_$27,b)) == t_$27 ));
	assume (forall  t_$28 : $field, b_$0 : $ptr :: ( $base($ptr(t_$28,b_$0)) == b_$0 ));
	assume (forall  p_$73 : $ptr :: {$base(p_$73)} {$field(p_$73)} ( $ptr($field(p_$73),$base(p_$73)) == p_$73 ));
	assume (forall  p_$1 : $ptr :: ( $non_null(p_$1) == (!$is_null(p_$1)) ));
	assume (forall  p_$2 : $ptr :: ( $is_null(p_$2) == (p_$2 == $null_of($typ(p_$2))) ));
	assume (forall  p_$74 : $ptr :: {$addr(p_$74)} ( ((($addr(p_$74) == 0) <==> $is_null(p_$74)) && ($in_range_phys_ptr(p_$74) ==> $in_range_uintptr($addr(p_$74)))) && (($in_range_phys_ptr(p_$74) && $is_proper(p_$74)) ==> $in_range_uintptr($addr(p_$74) + $sizeof($typ(p_$74)))) ));
	assume (forall  f : $field :: ( $is_base_field(f) == ($field_kind(f) == $fk_base) ));
	assume (forall  p_$75 : $ptr :: {$is_proper(p_$75)} ( $is_proper(p_$75) ==> ($field_parent_type($field(p_$75)) == $typ($base(p_$75))) ));
	assume (forall  p_$76 : $ptr, t_$29 : $ctype :: {$is(p_$76,t_$29)} ( $is(p_$76,t_$29) <==> ($typ(p_$76) == t_$29) ));
	assume (forall  p_$77 : $ptr :: {$spec_ptr_cast(p_$77,$typ(p_$77))} {$in_range_spec_ptr(p_$77)} ( $in_range_spec_ptr(p_$77) ==> ($spec_ptr_cast(p_$77,$typ(p_$77)) == p_$77) ));
	assume (forall  p_$78 : $ptr :: {$phys_ptr_cast(p_$78,$typ(p_$78))} {$in_range_phys_ptr(p_$78)} ( $in_range_phys_ptr(p_$78) ==> (($phys_ptr_cast(p_$78,$typ(p_$78)) == p_$78) && $is_phys_field($field(p_$78))) ));
	assume (forall  p_$79 : $ptr :: {$in_range_phys_ptr($base(p_$79))} ( $in_range_phys_ptr(p_$79) ==> $in_range_phys_ptr($base(p_$79)) ));
	assume (forall  p_$80 : $ptr, t_$30 : $ctype :: {$addr($phys_ptr_cast(p_$80,t_$30))} ( $addr($phys_ptr_cast(p_$80,t_$30)) == $addr(p_$80) ));
	assume (forall  c : $ptr, t_$9 : $ctype, p_$3 : $ptr :: ( $cast_props(p_$3,t_$9,c) == ((($typ(c) == t_$9) && ($is_null(c) <==> $is_null(p_$3))) && ($field(c) == $as_field_with_type($field(c),t_$9))) ));
	assume (forall  p_$81 : $ptr, t_$31 : $ctype :: {$spec_ptr_cast(p_$81,t_$31)} ( $cast_props(p_$81,t_$31,$spec_ptr_cast(p_$81,t_$31)) && $in_range_spec_ptr($spec_ptr_cast(p_$81,t_$31)) ));
	assume (forall  p_$82 : $ptr, t_$32 : $ctype :: {$phys_ptr_cast(p_$82,t_$32)} ( $cast_props(p_$82,t_$32,$phys_ptr_cast(p_$82,t_$32)) && $in_range_phys_ptr($phys_ptr_cast(p_$82,t_$32)) ));
	assume (forall  p_$83 : $ptr :: {$in_range_phys_ptr(p_$83)} ( ((!$in_range_phys_ptr(p_$83)) ==> $in_range_spec_ptr(p_$83)) && true ));
	assume (forall  p_$84 : $ptr, f_$29 : $field :: {$has_field_at0($typ(p_$84),f_$29),$phys_ptr_cast(p_$84,$field_type(f_$29))} ( (($is_proper(p_$84) && $in_range_phys_ptr(p_$84)) && $has_field_at0($typ(p_$84),f_$29)) ==> ($phys_ptr_cast(p_$84,$field_type(f_$29)) == $dot(p_$84,f_$29)) ));
	assume (forall  p_$85 : $ptr :: {$phys_ptr_cast(p_$85,$field_parent_type($field(p_$85))),$has_field_at0($field_parent_type($field(p_$85)),$field(p_$85))} ( (($is_proper(p_$85) && $in_range_phys_ptr(p_$85)) && $has_field_at0($field_parent_type($field(p_$85)),$field(p_$85))) ==> ($phys_ptr_cast(p_$85,$field_parent_type($field(p_$85))) == $emb1(p_$85)) ));
	assume (forall  p_$86 : $ptr, f_$30 : $field :: {$dot(p_$86,f_$30)} ( $dot(p_$86,f_$30) == $ptr(f_$30,p_$86) ));
	assume (forall  p_$87 : $ptr, f_$31 : $field :: {$addr($dot(p_$87,f_$31))} ( $is_phys_field(f_$31) ==> ($addr($dot(p_$87,f_$31)) == $unchk_add_ptr($addr(p_$87),$field_offset(f_$31))) ));
	assume (forall  p_$88 : $ptr, f_$32 : $field :: {$dot(p_$88,f_$32)} ( (((($in_range_spec_ptr(p_$88) || $is_ghost_field(f_$32)) ==> $in_range_spec_ptr($dot(p_$88,f_$32))) && (($in_range_phys_ptr(p_$88) && $is_phys_field(f_$32)) ==> $in_range_phys_ptr($dot(p_$88,f_$32)))) && ($is_proper($dot(p_$88,f_$32)) ==> ($non_null(p_$88) ==> $non_null($dot(p_$88,f_$32))))) && (($is_proper(p_$88) && ($field_parent_type(f_$32) == $typ(p_$88))) ==> $is_proper($dot(p_$88,f_$32))) ));
	assume (forall  p_$4 : $ptr :: ( $emb1(p_$4) == $base(p_$4) ));
	assume (forall  p_$5 : $ptr, S : $state :: ( $emb(S,p_$5) == $emb0(p_$5) ));
	assume (forall  p_$89 : $ptr :: {$emb0(p_$89)} ( $emb0(p_$89) == (if $is_primitive($typ(p_$89)) then $base(p_$89) else p_$89) ));
	assume (forall  p_$6 : $ptr :: ( $simple_emb(p_$6) == $base(p_$6) ));
	assume (forall  t_$10 : $ctype, p_$7 : $ptr :: ( $as_ptr_with_type(p_$7,t_$10) == $ptr($as_field_with_type($field(p_$7),t_$10),$base(p_$7)) ));
	assume (forall  f_$33 : $field :: {$field_parent_type(f_$33)} ( $is_non_primitive($field_parent_type(f_$33)) ));
	assume (forall  tp : $ctype, f_$0 : $field, partp : $ctype :: ( $def_field_family(partp,f_$0,tp) == ((((((($field_parent_type(f_$0) == partp) && ($field_type(f_$0) == tp)) && ($as_field_with_type(f_$0,tp) == f_$0)) && ($is_primitive(tp) ==> ($as_primitive_field(f_$0) == f_$0))) && ((!$is_primitive(tp)) ==> ($as_composite_field(f_$0) == f_$0))) && ($field_arr_root(f_$0) == f_$0)) && true) ));
	assume (forall  isvolatile : Boolean, tp_$0 : $ctype, f_$1 : $field, partp_$0 : $ctype :: ( $def_field(partp_$0,f_$1,tp_$0,isvolatile) == ((($def_field_family(partp_$0,f_$1,tp_$0) && ((!isvolatile) ==> $is_sequential_field(f_$1))) && (isvolatile ==> $is_volatile_field(f_$1))) && true) ));
	assume (forall  off : Integer, isvolatile_$0 : Boolean, tp_$1 : $ctype, f_$2 : $field, partp_$1 : $ctype :: ( $def_phys_field(partp_$1,f_$2,tp_$1,isvolatile_$0,off) == ((((($def_field(partp_$1,f_$2,tp_$1,isvolatile_$0) && ($field_offset(f_$2) == off)) && $is_phys_field(f_$2)) && $is_base_field(f_$2)) && ((off == 0) ==> $has_field_at0(partp_$1,f_$2))) && true) ));
	assume (forall  isvolatile_$1 : Boolean, tp_$2 : $ctype, f_$3 : $field, partp_$2 : $ctype :: ( $def_ghost_field(partp_$2,f_$3,tp_$2,isvolatile_$1) == ((($def_field(partp_$2,f_$3,tp_$2,isvolatile_$1) && $is_base_field(f_$3)) && $is_ghost_field(f_$3)) && true) ));
	assume (forall  tp_$3 : $ctype, f_$4 : $field, partp_$3 : $ctype :: ( $def_group(partp_$3,f_$4,tp_$3) == ((($def_phys_field(partp_$3,f_$4,tp_$3,false,0) && ($f_group_root(tp_$3) == f_$4)) && $is_group_type(tp_$3)) && true) ));
	assume (forall  fk : $field_kind, tp_$4 : $ctype, f_$5 : $field, partp_$4 : $ctype :: ( $def_special_field(partp_$4,f_$5,tp_$4,fk) == (($def_field_family(partp_$4,f_$5,tp_$4) && ($field_kind(f_$5) == fk)) && true) ));
	assume (forall  fk_$0 : $field_kind, tp_$5 : $ctype, f_$6 : $field, partp_$5 : $ctype :: ( $def_special_ghost_field(partp_$5,f_$6,tp_$5,fk_$0) == ($def_special_field(partp_$5,f_$6,tp_$5,fk_$0) && $is_ghost_field(f_$6)) ));
	assume (forall  t_$33 : $ctype :: {$f_root(t_$33)} ( if $is_non_primitive(t_$33) then $def_special_field(t_$33,$f_root(t_$33),t_$33,$fk_allocation_root) else ($def_special_field($primitive_emb_type,$f_root(t_$33),t_$33,$fk_allocation_root) && $is_sequential_field($f_root(t_$33))) ));
	assume (forall  t_$34 : $ctype :: {$f_owns(t_$34)} ( $is_non_primitive(t_$34) ==> $def_special_ghost_field(t_$34,$f_owns(t_$34),^$#ptrset,$fk_owns) ));
	assume (forall  t_$35 : $ctype :: {$f_ref_cnt(t_$35)} ( $is_non_primitive(t_$35) ==> ($def_special_ghost_field(t_$35,$f_ref_cnt(t_$35),^^mathint,$fk_ref_cnt) && $is_semi_sequential_field($f_ref_cnt(t_$35))) ));
	assume (forall  t_$36 : $ctype :: {$f_vol_version(t_$36)} ( $is_non_primitive(t_$36) ==> ($def_special_ghost_field(t_$36,$f_vol_version(t_$36),^$#volatile_version_t,$fk_vol_version) && $is_semi_sequential_field($f_vol_version(t_$36))) ));
	assume (forall  a : Integer :: ( $in_range_uintptr(a) == $in_range_t($arch_ptr_type,a) ));
	assume (forall  off_$0 : Integer, p_$8 : Integer :: ( $unchk_add_ptr(p_$8,off_$0) == $unchk_add($arch_ptr_type,p_$8,off_$0) ));
	assume ($arch_ptr_size == 4) ==> ($arch_ptr_type == ^^u4);
	assume ($arch_ptr_size == 8) ==> ($arch_ptr_type == ^^u8);
	assume $def_integer_type(^^i1,1);
	assume $def_integer_type(^^i2,2);
	assume $def_integer_type(^^i4,4);
	assume $def_integer_type(^^i8,8);
	assume $def_integer_type(^^u1,1);
	assume $def_integer_type(^^u2,2);
	assume $def_integer_type(^^u4,4);
	assume $def_integer_type(^^u8,8);
	assume $def_primitive_type(^^f4,4);
	assume $def_primitive_type(^^f8,8);
	assume $def_primitive_type(^^bool,1);
	assume $def_primitive_type(^^void,1);
	assume $def_math_type(^^object);
	assume $def_math_type(^^field);
	assume $def_math_type(^^null_type);
	assume $def_composite_type(^^claim,1,true,false);
	assume $def_composite_type(^$#volatile_version_t,1,false,false);
	assume $def_math_type(^^mathint);
	assume $def_math_type(^$#ptrset);
	assume $def_math_type(^$#state_t);
	assume $def_math_type(^$#struct);
	assume (forall  t_$11 : $ctype :: ( $null_of(t_$11) == $phys_ptr_cast($null,t_$11) ));
	assume $addr($null) == 0;
	assume $in_range_spec_ptr($null) && $in_range_phys_ptr($null);
	assume (forall  t_$12 : $ctype, p_$9 : $ptr :: ( $is_nice_spec_ptr(p_$9,t_$12) == ((($in_range_spec_ptr(p_$9) && $non_null(p_$9)) && $is_proper(p_$9)) && ($field(p_$9) == $f_root(t_$12))) ));
	assume $def_composite_type(^$#thread_id_t,1,false,true);
	assume $is_nice_spec_ptr($me(),^$#thread_id_t);
	assume (forall  t_$37 : $ctype :: {$is_threadtype(t_$37)} ( $is_threadtype(t_$37) <==> (t_$37 == ^$#thread_id_t) ));
	assume $def_composite_type($inactive_union_owner_type,1,false,true);
	assume $is_nice_spec_ptr($inactive_union_owner(),$inactive_union_owner_type);
	assume (forall  f_$34 : $field :: {$field_arr_index(f_$34)} ( f_$34 == $field_arr_ctor($field_arr_root(f_$34),$field_arr_index(f_$34)) ));
	assume (forall  f_$35 : $field, i_$1 : Integer :: {$field_arr_ctor(f_$35,i_$1)} ( ($field_arr_root($field_arr_ctor(f_$35,i_$1)) == f_$35) && ($field_arr_index($field_arr_ctor(f_$35,i_$1)) == i_$1) ));
	assume (forall  sz_$5 : Integer, isvolatile_$2 : Boolean, tp_$6 : $ctype, f_$7 : $field, partp_$6 : $ctype :: ( $def_arr_field(partp_$6,f_$7,tp_$6,isvolatile_$2,sz_$5) == (((($def_field(partp_$6,f_$7,tp_$6,isvolatile_$2) && ($field_arr_size(f_$7) == sz_$5)) && ($field_arr_index(f_$7) == 0)) && ($field_kind(f_$7) == $fk_emb_array)) && true) ));
	assume (forall  sz_$6 : Integer, off_$1 : Integer, isvolatile_$3 : Boolean, tp_$7 : $ctype, f_$8 : $field, partp_$7 : $ctype :: ( $def_phys_arr_field(partp_$7,f_$8,tp_$7,isvolatile_$3,off_$1,sz_$6) == ((($def_arr_field(partp_$7,f_$8,tp_$7,isvolatile_$3,sz_$6) && ($field_offset(f_$8) == off_$1)) && $is_phys_field(f_$8)) && true) ));
	assume (forall  sz_$7 : Integer, isvolatile_$4 : Boolean, tp_$8 : $ctype, f_$9 : $field, partp_$8 : $ctype :: ( $def_ghost_arr_field(partp_$8,f_$9,tp_$8,isvolatile_$4,sz_$7) == (($def_arr_field(partp_$8,f_$9,tp_$8,isvolatile_$4,sz_$7) && $is_ghost_field(f_$9)) && true) ));
	assume (forall  sz_$8 : Integer, off_$2 : Integer, isvolatile_$5 : Boolean, tp_$9 : $ctype, f_$10 : $field, partp_$9 : $ctype :: ( $def_phys_as_array_field(partp_$9,f_$10,tp_$9,isvolatile_$5,off_$2,sz_$8) == ($def_phys_field(partp_$9,f_$10,$array(tp_$9,sz_$8),isvolatile_$5,off_$2) && true) ));
	assume (forall  sz_$9 : Integer, isvolatile_$6 : Boolean, tp_$10 : $ctype, f_$11 : $field, partp_$10 : $ctype :: ( $def_ghost_as_array_field(partp_$10,f_$11,tp_$10,isvolatile_$6,sz_$9) == ($def_ghost_field(partp_$10,f_$11,$array(tp_$10,sz_$9),isvolatile_$6) && true) ));
	assume (forall  i : Integer, p_$10 : $ptr :: ( $idx_inline(p_$10,i) == $dot($base(p_$10),$field_plus($field(p_$10),i)) ));
	assume (forall  p_$90 : $ptr, i_$2 : Integer :: {$idx(p_$90,i_$2)} ( $idx(p_$90,i_$2) == $idx_inline(p_$90,i_$2) ));
	assume (forall  p_$91 : $ptr, i_$3 : Integer, j : Integer :: {$idx($idx(p_$91,i_$3),j)} ( $idx($idx(p_$91,i_$3),j) == $idx_inline(p_$91,i_$3 + j) ));
	assume (forall  p_$92 : $ptr, i_$4 : Integer :: {$addr($idx(p_$92,i_$4))} ( $addr($idx(p_$92,i_$4)) == $unchk_add_ptr($addr(p_$92),$sizeof($typ(p_$92)) * i_$4) ));
	assume (forall  p_$93 : $ptr, i_$5 : Integer :: {$idx(p_$93,i_$5)} ( $is_proper($idx(p_$93,i_$5)) ==> ($non_null(p_$93) ==> $non_null($idx(p_$93,i_$5))) ));
	assume (forall  p_$94 : $ptr, i_$6 : Integer :: {$idx(p_$94,i_$6)} ( (($in_range_phys_ptr(p_$94) || $in_range_phys_ptr($base(p_$94))) && $is_proper($idx(p_$94,i_$6))) ==> $in_range_phys_ptr($idx(p_$94,i_$6)) ));
	assume (forall  f_$36 : $field, i_$7 : Integer :: {$field_plus(f_$36,i_$7)} ( (((((((((($field_kind($field_plus(f_$36,i_$7)) == $field_kind(f_$36)) && ($field_arr_root($field_plus(f_$36,i_$7)) == $field_arr_root(f_$36))) && ($field_arr_index($field_plus(f_$36,i_$7)) == ($field_arr_index(f_$36) + i_$7))) && ($field_arr_size($field_plus(f_$36,i_$7)) == $field_arr_size(f_$36))) && ($field_type($field_plus(f_$36,i_$7)) == $field_type(f_$36))) && ($as_field_with_type($field_plus(f_$36,i_$7),$field_type(f_$36)) == $field_plus(f_$36,i_$7))) && ($is_sequential_field($field_plus(f_$36,i_$7)) <==> $is_sequential_field(f_$36))) && ($is_volatile_field($field_plus(f_$36,i_$7)) <==> $is_volatile_field(f_$36))) && ($is_phys_field($field_plus(f_$36,i_$7)) <==> $is_phys_field(f_$36))) && ($in_range(0,$field_arr_index(f_$36) + i_$7,$field_arr_size(f_$36) - 1) ==> ($field_parent_type($field_plus(f_$36,i_$7)) == $field_parent_type($field_arr_root(f_$36))))) && true ));
	assume (forall  S_$48 : $state, p_$95 : $ptr, T_$5 : $ctype, sz_$18 : Integer :: {$is_array(S_$48,p_$95,T_$5,sz_$18)} ( $is_array(S_$48,p_$95,T_$5,sz_$18) <==> $is_array_stateless(p_$95,T_$5,sz_$18) ));
	assume (forall  sz_$10 : Integer, T : $ctype, p_$11 : $ptr :: ( $is_array_stateless(p_$11,T,sz_$10) == (((((($is(p_$11,T) && $is_proper(p_$11)) && ($field_arr_size($field(p_$11)) >= ($field_arr_index($field(p_$11)) + sz_$10))) && (p_$11 == $idx($dot($base(p_$11),$field_arr_root($field(p_$11))),$field_arr_index($field(p_$11))))) && (!($field_kind($field(p_$11)) == $fk_base))) && ($field_arr_index($field(p_$11)) >= 0)) && $is_non_primitive($typ($emb0(p_$11)))) ));
	assume (forall  S_$49 : $state, p_$96 : $ptr, T_$6 : $ctype, sz_$19 : Integer :: {$is_thread_local_array(S_$49,p_$96,T_$6,sz_$19)} ( $is_thread_local_array(S_$49,p_$96,T_$6,sz_$19) <==> $is_thread_local_array_inline(S_$49,p_$96,T_$6,sz_$19) ));
	assume (forall  sz_$11 : Integer, T_$0 : $ctype, p_$12 : $ptr, S_$0 : $state :: ( $is_thread_local_array_inline(S_$0,p_$12,T_$0,sz_$11) == ($is_array(S_$0,p_$12,T_$0,sz_$11) && (if $is_primitive(T_$0) then $thread_local(S_$0,p_$12) else ((forall  i_$0 : Integer :: {$owner(S_$0,$idx(p_$12,i_$0))} ( ((0 <= i_$0) && (i_$0 < sz_$11)) ==> $thread_local(S_$0,$idx(p_$12,i_$0)) ))))) ));
	assume (forall  S_$50 : $state, p_$97 : $ptr, T_$7 : $ctype, sz_$20 : Integer :: {$is_mutable_array(S_$50,p_$97,T_$7,sz_$20)} ( $is_mutable_array(S_$50,p_$97,T_$7,sz_$20) <==> ($is_array(S_$50,p_$97,T_$7,sz_$20) && (if $is_primitive(T_$7) then $mutable(S_$50,$emb0(p_$97)) else ((forall  i_$8 : Integer :: {$idx(p_$97,i_$8)} ( ((0 <= i_$8) && (i_$8 < sz_$20)) ==> $mutable(S_$50,$idx(p_$97,i_$8)) ))))) ));
	assume (forall  S_$51 : $state, p_$98 : $ptr, T_$8 : $ctype, sz_$21 : Integer :: {$array_range(S_$51,p_$98,T_$8,sz_$21)} ( $array_range(S_$51,p_$98,T_$8,sz_$21) == $array_range_no_state(p_$98,T_$8,sz_$21) ));
	assume (forall  a_$0 : $ptr, al : Integer, b_$1 : $ptr, bl : Integer :: {$arrays_disjoint(a_$0,al,b_$1,bl)} ( ((forall  i_$9 : Integer, j_$0 : Integer :: {$dont_instantiate_int(i_$9),$dont_instantiate_int(j_$0)} ( ((((0 <= i_$9) && (i_$9 < al)) && (0 <= j_$0)) && (j_$0 < bl)) ==> (!($idx(a_$0,i_$9) == $idx(b_$1,j_$0))) ))) ==> $arrays_disjoint(a_$0,al,b_$1,bl) ));
	assume (forall  a_$1 : $ptr, al_$0 : Integer, b_$2 : $ptr, bl_$0 : Integer :: {$set_disjoint($array_range_no_state(a_$1,$typ(a_$1),al_$0),$array_range_no_state(b_$2,$typ(b_$2),bl_$0))} ( $set_disjoint($array_range_no_state(a_$1,$typ(a_$1),al_$0),$array_range_no_state(b_$2,$typ(b_$2),bl_$0)) ==> $arrays_disjoint(a_$1,al_$0,b_$2,bl_$0) ));
	assume (forall  a_$2 : $ptr, al_$1 : Integer, b_$3 : $ptr, bl_$1 : Integer, i_$10 : Integer :: {$arrays_disjoint(a_$2,al_$1,b_$3,bl_$1),$idx_inline(a_$2,i_$10)} ( (($arrays_disjoint(a_$2,al_$1,b_$3,bl_$1) && (0 <= i_$10)) && (i_$10 < al_$1)) ==> ($arrays_disjoint_id(a_$2,al_$1,b_$3,bl_$1,$idx_inline(a_$2,i_$10)) == 0) ));
	assume (forall  a_$3 : $ptr, al_$2 : Integer, b_$4 : $ptr, bl_$2 : Integer, i_$11 : Integer :: {$arrays_disjoint(a_$3,al_$2,b_$4,bl_$2),$idx_inline(b_$4,i_$11)} ( (($arrays_disjoint(a_$3,al_$2,b_$4,bl_$2) && (0 <= i_$11)) && (i_$11 < bl_$2)) ==> ($arrays_disjoint_id(a_$3,al_$2,b_$4,bl_$2,$idx_inline(b_$4,i_$11)) == 1) ));
	assume (forall  sz_$12 : Integer, p_$13 : $ptr, s : $state :: ( $mem_range(s,p_$13,sz_$12) == $mem_range_heap($heap(s),p_$13,sz_$12) ));
	assume (forall  h_$3 : $object, r_$3 : $ptr, f_$37 : $field, v_$1 : Integer, p_$99 : $ptr, sz_$22 : Integer :: ( ((!$in_range(0,$index_within(p_$99,$ptr(f_$37,r_$3)),sz_$22 - 1)) || (!($ptr(f_$37,r_$3) == $idx(p_$99,$index_within(p_$99,$ptr(f_$37,r_$3)))))) ==> ($mem_range_heap($update(h_$3,r_$3,f_$37,v_$1),p_$99,sz_$22) == $mem_range_heap(h_$3,p_$99,sz_$22)) ));
	assume (forall  S0_$10 : $state, S1_$7 : $state, p_$100 : $ptr, sz_$23 : Integer :: {$call_transition(S0_$10,S1_$7),$mem_range(S1_$7,p_$100,sz_$23)} ( ($call_transition(S0_$10,S1_$7) && ((forall  i_$12 : Integer :: {$dont_instantiate_int(i_$12)} ( $in_range(0,i_$12,sz_$23 - 1) ==> ($mem(S0_$10,$idx(p_$100,i_$12)) == $mem(S1_$7,$idx(p_$100,i_$12))) )))) ==> ($mem_range(S0_$10,p_$100,sz_$23) == $mem_range(S1_$7,p_$100,sz_$23)) ));
	assume (forall  S0_$11 : $state, S1_$8 : $state, p_$101 : $ptr, f_$38 : $field :: {$call_transition(S0_$11,S1_$8),$rd(S1_$8,p_$101,f_$38)} ( $instantiate_int($rd(S0_$11,p_$101,f_$38)) ));
	assume (forall  i_$13 : Integer, a_$4 : $ptr :: {$index_within($idx(a_$4,i_$13),a_$4)} ( $index_within($idx(a_$4,i_$13),a_$4) == i_$13 ));
	assume (forall  p_$102 : $ptr, a_$5 : $ptr, f_$39 : $field :: {$index_within($dot(p_$102,f_$39),a_$5)} ( ($is_proper($dot(p_$102,f_$39)) && ($sizeof($typ(p_$102)) <= $sizeof($typ(a_$5)))) ==> ($index_within($dot(p_$102,f_$39),a_$5) == $index_within(p_$102,a_$5)) ));
	assume (forall  p_$103 : $ptr, q_$5 : $ptr, t_$38 : $ctype :: {$index_within($as_ptr_with_type(p_$103,t_$38),$as_ptr_with_type(q_$5,t_$38))} ( (($typ(p_$103) == t_$38) && ($typ(q_$5) == t_$38)) ==> ($index_within(p_$103,q_$5) == ($field_arr_index($field(p_$103)) - $field_arr_index($field(q_$5)))) ));
	assume (forall  p_$104 : $ptr, T_$9 : $ctype, sz_$24 : Integer :: {$array_range_no_state(p_$104,T_$9,sz_$24)} ( $array_range_no_state(p_$104,T_$9,sz_$24) == (if $is_primitive(T_$9) then lambda#0($fk_base,p_$104,T_$9,sz_$24) else lambda#1(sz_$24,p_$104)) ));
	assume (forall  q_$6 : $ptr, a_$6 : $ptr, sz_$25 : Integer :: {$in_composite_array(q_$6,a_$6,sz_$25)} ( $in_composite_array(q_$6,a_$6,sz_$25) <==> ($in_range(0,$index_within(q_$6,a_$6),sz_$25 - 1) && (q_$6 == $idx(a_$6,$index_within(q_$6,a_$6)))) ));
	assume (forall  s_$13 : $state, q_$7 : $ptr, a_$7 : $ptr, sz_$26 : Integer :: {$in_composite_array_lev2(s_$13,q_$7,a_$7,sz_$26)} ( $in_composite_array_lev2(s_$13,q_$7,a_$7,sz_$26) <==> ($in_range(0,$index_within(q_$7,a_$7),sz_$26 - 1) && $in(q_$7,$composite_extent(s_$13,$idx(a_$7,$index_within(q_$7,a_$7)),$typ(a_$7)))) ));
	assume (forall  sz_$13 : Integer, T_$1 : $ctype, arr : $ptr, q : $ptr :: ( $in_array(q,arr,T_$1,sz_$13) == ($in_range(0,$index_within(q,arr),sz_$13 - 1) && (q == $idx(arr,$index_within(q,arr)))) ));
	assume (forall  sz_$14 : Integer, T_$2 : $ctype, arr_$0 : $ptr, q_$0 : $ptr :: ( $in_array_full_extent_of(q_$0,arr_$0,T_$2,sz_$14) == ($in_range(0,$index_within(q_$0,arr_$0),sz_$14 - 1) && $in(q_$0,$full_extent($idx(arr_$0,$index_within(q_$0,arr_$0))))) ));
	assume (forall  sz_$15 : Integer, T_$3 : $ctype, arr_$1 : $ptr, q_$1 : $ptr, S_$1 : $state :: ( $in_array_extent_of(S_$1,q_$1,arr_$1,T_$3,sz_$15) == ($in_range(0,$index_within(q_$1,arr_$1),sz_$15 - 1) && $in(q_$1,$extent(S_$1,$idx(arr_$1,$index_within(q_$1,arr_$1))))) ));
	assume (forall  p_$105 : $ptr, T_$10 : $ctype, sz_$27 : Integer :: {$array_members(p_$105,T_$10,sz_$27)} ( $array_members(p_$105,T_$10,sz_$27) == lambda#2(sz_$27,p_$105,T_$10) ));
	assume (forall  T_$11 : $ctype, s_$14 : Integer :: {$array(T_$11,s_$14)} ( (((((true && ($element_type($array(T_$11,s_$14)) == T_$11)) && ($array_length($array(T_$11,s_$14)) == s_$14)) && $is_non_primitive($array(T_$11,s_$14))) && (!$is_claimable($array(T_$11,s_$14)))) && ($type_branch($array(T_$11,s_$14)) == $ctype_array)) && $is_sequential_field($f_owns($array(T_$11,s_$14))) ));
	assume (forall  T_$12 : $ctype, s_$15 : Integer :: {$sizeof($array(T_$12,s_$15))} ( $sizeof($array(T_$12,s_$15)) == ($sizeof(T_$12) * s_$15) ));
	assume (forall  S0_$12 : $state, S_$52 : $state, p_$106 : $ptr, T_$13 : $ctype, s_$16 : Integer :: {$inv2(S0_$12,S_$52,p_$106,$array(T_$13,s_$16))} ( $inv2(S0_$12,S_$52,p_$106,$array(T_$13,s_$16)) <==> ($owns(S_$52,p_$106) == $set_empty()) ));
	assume (forall  p_$14 : $ptr :: ( $as_array_first_index(p_$14) == $dot(p_$14,$array_emb($element_type($typ(p_$14)),$array_length($typ(p_$14)))) ));
	assume (forall  p_$107 : $ptr, t_$39 : $ctype, sz_$28 : Integer :: {$phys_ptr_cast($as_ptr_with_type(p_$107,$array(t_$39,sz_$28)),t_$39)} ( $phys_ptr_cast($as_ptr_with_type(p_$107,$array(t_$39,sz_$28)),t_$39) == $as_array_first_index(p_$107) ));
	assume (forall  p_$108 : $ptr, t_$40 : $ctype, sz_$29 : Integer :: {$spec_ptr_cast($as_ptr_with_type(p_$108,$array(t_$40,sz_$29)),t_$40)} ( $spec_ptr_cast($as_ptr_with_type(p_$108,$array(t_$40,sz_$29)),t_$40) == $as_array_first_index(p_$108) ));
	assume (forall  t_$41 : $ctype, sz_$30 : Integer :: {$array_emb(t_$41,sz_$30)} {$array(t_$41,sz_$30)} ( ((((((($def_field_family($array(t_$41,sz_$30),$array_emb(t_$41,sz_$30),t_$41) && ($field_kind($array_emb(t_$41,sz_$30)) == $fk_as_array_first)) && $is_phys_field($array_emb(t_$41,sz_$30))) && ($field_offset($array_emb(t_$41,sz_$30)) == 0)) && ($field_arr_size($array_emb(t_$41,sz_$30)) == sz_$30)) && ($field_arr_index($array_emb(t_$41,sz_$30)) == 0)) && ($field_arr_root($array_emb(t_$41,sz_$30)) == $array_emb(t_$41,sz_$30))) && $is_sequential_field($array_emb(t_$41,sz_$30))) && true ));
	assume (forall  p_$109 : $ptr, T_$14 : $ctype, sz_$31 : Integer :: {$as_array(p_$109,T_$14,sz_$31)} ( $as_array(p_$109,T_$14,sz_$31) == (if (($is_proper(p_$109) && ($field_type($field($emb1(p_$109))) == $array(T_$14,sz_$31))) && ($field(p_$109) == $array_emb(T_$14,sz_$31))) then $emb1(p_$109) else $null_of($array(T_$14,sz_$31))) ));
	assume (forall  S_$53 : $state, T_$15 : $ctype, sz_$32 : Integer, p_$110 : $ptr, a_$8 : $ptr :: {$in(p_$110,$composite_extent(S_$53,a_$8,$array(T_$15,sz_$32)))} ( $in(p_$110,$composite_extent(S_$53,a_$8,$array(T_$15,sz_$32))) <==> ((p_$110 == a_$8) || ((!$is_primitive(T_$15)) && $in_composite_array_lev2(S_$53,p_$110,$as_array_first_index(a_$8),sz_$32))) ));
	assume (forall  p_$15 : $ptr, s_$0 : $state :: ( $domain_root(s_$0,p_$15) == $roots(s_$0)[p_$15] ));
	assume (forall  p_$16 : $ptr, f_$12 : $field, s_$1 : $state :: ( $rd_inv(s_$1,f_$12,p_$16) == $rd(s_$1,p_$16,f_$12) ));
	assume (forall  f_$13 : $field, p_$17 : $ptr, s_$2 : $state :: ( $rd(s_$2,p_$17,f_$13) == $heap(s_$2)[f_$13][p_$17] ));
	assume (forall  f_$14 : $field, p_$18 : $ptr, s_$3 : $state :: ( $rdtrig(s_$3,p_$18,f_$14) == $rd(s_$3,p_$18,f_$14) ));
	assume (forall  t_$13 : $ctype, p_$19 : $ptr, f_$15 : $field, s_$4 : $state :: ( $rd_spec_ptr(s_$4,f_$15,p_$19,t_$13) == $spec_ptr_cast($int_to_ptr($rd(s_$4,p_$19,f_$15)),t_$13) ));
	assume (forall  t_$14 : $ctype, p_$20 : $ptr, f_$16 : $field, s_$5 : $state :: ( $rd_phys_ptr(s_$5,f_$16,p_$20,t_$14) == $phys_ptr_cast($int_to_ptr($rd(s_$5,p_$20,f_$16)),t_$14) ));
	assume (forall  s_$6 : $state :: ( $current_state(s_$6) == s_$6 ));
	assume (forall  S_$54 : $state, p_$111 : $ptr :: {$owner(S_$54,p_$111)} {:inline  false}( $owner(S_$54,p_$111) == $f_owner(S_$54)[p_$111] ));
	assume (forall  S_$55 : $state, p_$112 : $ptr :: {$closed(S_$55,p_$112)} {:inline  false}( $closed(S_$55,p_$112) <==> ($is_proper(p_$112) && $f_closed(S_$55)[p_$112]) ));
	assume (forall  S_$56 : $state, p_$113 : $ptr :: {$timestamp(S_$56,p_$113)} {:inline  false}( $timestamp(S_$56,p_$113) == $f_timestamp(S_$56)[p_$113] ));
	assume (forall  S_$57 : $state, p_$114 : $ptr :: {$ref_cnt(S_$57,p_$114)} {:inline  false}( $ref_cnt(S_$57,p_$114) == $rd(S_$57,p_$114,$f_ref_cnt($typ(p_$114))) ));
	assume $position_marker() <==> true;
	assume (forall  p_$21 : $ptr, S_$2 : $state :: ( $owns_inline(S_$2,p_$21) == $int_to_ptrset($rd(S_$2,p_$21,$f_owns($typ(p_$21)))) ));
	assume (forall  S_$58 : $state, p_$115 : $ptr :: {$owns(S_$58,p_$115)} ( $owns(S_$58,p_$115) == $owns_inline(S_$58,p_$115) ));
	assume (forall  #p : $ptr, #l : $ptr, S_$3 : $state :: ( $keeps(S_$3,#l,#p) == $set_in(#p,$owns(S_$3,#l)) ));
	assume (forall  #t : $ctype, #p_$0 : $ptr, S_$4 : $state :: ( $wrapped(S_$4,#p_$0,#t) == (((($is(#p_$0,#t) && $is_proper(#p_$0)) && ($owner(S_$4,#p_$0) == $me())) && $closed(S_$4,#p_$0)) && $is_non_primitive(#t)) ));
	assume (forall  p_$22 : $ptr, S_$5 : $state :: ( $nested(S_$5,p_$22) == (!($typ($owner(S_$5,p_$22)) == ^$#thread_id_t)) ));
	assume (forall  p_$23 : $ptr, S_$6 : $state :: ( $irrelevant(S_$6,p_$23) == ((!($owner(S_$6,p_$23) == $me())) || ($is_primitive($typ(p_$23)) && $closed(S_$6,p_$23))) ));
	assume (forall  S_$59 : $state, p_$116 : $ptr :: {$mutable(S_$59,p_$116)} ( $mutable(S_$59,p_$116) <==> (($is_proper(p_$116) && ($owner(S_$59,$emb(S_$59,p_$116)) == $me())) && (!$closed(S_$59,$emb(S_$59,p_$116)))) ));
	assume (forall  p_$24 : $ptr, S_$7 : $state :: ( $thread_owned(S_$7,p_$24) == ($owner(S_$7,$emb(S_$7,p_$24)) == $me()) ));
	assume (forall  p_$25 : $ptr, S_$8 : $state :: ( $thread_owned_or_even_mutable(S_$8,p_$25) == (if $is_primitive($typ(p_$25)) then (($owner(S_$8,$emb(S_$8,p_$25)) == $me()) && (!$closed(S_$8,$emb(S_$8,p_$25)))) else ($owner(S_$8,p_$25) == $me())) ));
	assume (forall  W : $ptrset, S_$9 : $state :: ( $initially_mutable(S_$9,W) == ((forall  p_$26 : $ptr :: {$mutable(S_$9,p_$26)} {$owner(S_$9,p_$26)} {$closed(S_$9,p_$26)} {$owner(S_$9,$emb0(p_$26))} {$closed(S_$9,$emb0(p_$26))} ( $set_in(p_$26,W) ==> $mutable(S_$9,p_$26) ))) ));
	assume (forall  sz_$16 : Integer, t_$15 : $ctype, p_$27 : $ptr, S_$10 : $state :: ( $initially_mutable_array(S_$10,p_$27,t_$15,sz_$16) == $is_mutable_array(S_$10,p_$27,t_$15,sz_$16) ));
	assume (forall  W_$0 : $ptrset, S_$11 : $state :: ( $initially_thread_owned_or_mutable(S_$11,W_$0) == ((forall  p_$28 : $ptr :: {$mutable(S_$11,p_$28)} {$owner(S_$11,p_$28)} {$closed(S_$11,p_$28)} {$owner(S_$11,$emb0(p_$28))} {$closed(S_$11,$emb0(p_$28))} ( $set_in(p_$28,W_$0) ==> $thread_owned_or_even_mutable(S_$11,p_$28) ))) ));
	assume (forall  p_$29 : $ptr :: ( $is_ghost_ptr(p_$29) == $in_range_spec_ptr(p_$29) ));
	assume (forall  #t_$0 : $ctype, #p_$1 : $ptr, S_$12 : $state :: ( $typed2_phys(S_$12,#p_$1,#t_$0) == $in_range_phys_ptr(#p_$1) ));
	assume (forall  #t_$1 : $ctype, #p_$2 : $ptr, S_$13 : $state :: ( $typed2_spec(S_$13,#p_$2,#t_$1) == $in_range_spec_ptr(#p_$2) ));
	assume (forall  S_$60 : $state, p_$117 : $ptr :: {$addr(p_$117),$owner(S_$60,$domain_root(S_$60,p_$117))} ( $good_state(S_$60) ==> ((($is_proper(p_$117) && $in_range_phys_ptr(p_$117)) && ($owner(S_$60,$domain_root(S_$60,$emb0(p_$117))) == $me())) ==> ($typemap($f_owner(S_$60))[$addr(p_$117),$typ(p_$117)] == p_$117)) ));
	assume (forall  S_$61 : $state, p_$118 : $ptr, f_$40 : $field :: {$addr($dot(p_$118,f_$40)),$owner(S_$61,$domain_root(S_$61,p_$118))} ( $good_state(S_$61) ==> ((($is_proper($dot(p_$118,f_$40)) && $in_range_phys_ptr($dot(p_$118,f_$40))) && ($owner(S_$61,$domain_root(S_$61,p_$118)) == $me())) ==> ($typemap($f_owner(S_$61))[$addr($dot(p_$118,f_$40)),$field_type(f_$40)] == $dot(p_$118,f_$40))) ));
	assume (forall  S_$62 : $state, p_$119 : $ptr, q_$8 : $ptr :: {$retype(S_$62,q_$8),$as_addr(p_$119,$typ(q_$8),$addr(q_$8))} ( $good_state(S_$62) ==> ((($is_proper(p_$119) && $in_range_phys_ptr(p_$119)) && ($owner(S_$62,$domain_root(S_$62,$emb0(p_$119))) == $me())) ==> ($typemap($f_owner(S_$62))[$addr(p_$119),$typ(p_$119)] == p_$119)) ));
	assume (forall  p_$120 : $ptr :: {$addr(p_$120)} ( $as_addr(p_$120,$typ(p_$120),$addr(p_$120)) == p_$120 ));
	assume (forall  S_$63 : $state, p_$121 : $ptr :: {$retype(S_$63,p_$121)} ( $retype(S_$63,p_$121) == $typemap($f_owner(S_$63))[$addr(p_$121),$typ(p_$121)] ));
	assume (forall  p1_$1 : $ptr, p2_$1 : $ptr :: {$ptr_eq(p1_$1,p2_$1)} ( $ptr_eq(p1_$1,p2_$1) <==> ($addr(p1_$1) == $addr(p2_$1)) ));
	assume (forall  p2 : $ptr, p1 : $ptr :: ( $addr_eq(p1,p2) == $ptr_eq(p1,p2) ));
	assume (forall  p2_$0 : $ptr, p1_$0 : $ptr :: ( $ptr_neq(p1_$0,p2_$0) == (!$ptr_eq(p1_$0,p2_$0)) ));
	assume (forall  p1_$2 : $ptr, p2_$2 : $ptr :: {$byte_ptr_subtraction(p1_$2,p2_$2)} ( $byte_ptr_subtraction(p1_$2,p2_$2) == ($addr(p1_$2) - $addr(p2_$2)) ));
	assume (forall  #o : $ptr, #f : $ptr, S_$14 : $state :: ( $is_primitive_field_of(S_$14,#f,#o) == ($is_primitive($typ(#f)) && ($emb(S_$14,#f) == #o)) ));
	assume (forall  S_$64 : $state, p_$122 : $ptr :: {$is_domain_root(S_$64,p_$122)} ( $is_domain_root(S_$64,p_$122) <==> true ));
	assume (forall  p_$30 : $ptr, S_$15 : $state :: ( $thread_local_np(S_$15,p_$30) == ((((!$is_primitive($typ(p_$30))) && $is_proper(p_$30)) && ($owner(S_$15,$domain_root(S_$15,p_$30)) == $me())) && $non_null(p_$30)) ));
	assume (forall  S_$65 : $state, p_$123 : $ptr :: {$thread_local(S_$65,p_$123)} ( $thread_local(S_$65,p_$123) <==> ($is_proper(p_$123) && (if $is_primitive($typ(p_$123)) then (($is_sequential_field($field(p_$123)) || (!$closed(S_$65,$emb(S_$65,p_$123)))) && $thread_local_np(S_$65,$emb(S_$65,p_$123))) else $thread_local_np(S_$65,p_$123))) ));
	assume (forall  #t_$2 : $ctype, #p_$3 : $ptr, S_$16 : $state :: ( $thread_local2(S_$16,#p_$3,#t_$2) == ($is(#p_$3,#t_$2) && $thread_local(S_$16,#p_$3)) ));
	assume (forall  t_$16 : $ctype, p_$31 : $ptr, S_$17 : $state :: ( $typed2(S_$17,p_$31,t_$16) == $thread_local2(S_$17,p_$31,t_$16) ));
	assume (forall  p_$32 : $ptr, S_$18 : $state :: ( $typed(S_$18,p_$32) == $thread_local(S_$18,p_$32) ));
	assume (forall  p_$33 : $ptr, S_$19 : $state :: ( $readable_span(S_$19,p_$33) == (($is_span_sequential($typ(p_$33)) && $thread_local(S_$19,p_$33)) || $mutable(S_$19,p_$33)) ));
	assume (forall  typ : $ctype, #p_$4 : $ptr, #s1 : $state :: ( $inv(#s1,#p_$4,typ) == $inv2(#s1,#s1,#p_$4,typ) ));
	assume (forall  p_$34 : $ptr, S2 : $state, S1 : $state :: ( $inv2nt(S1,S2,p_$34) == $inv2(S1,S2,p_$34,$typ(p_$34)) ));
	assume (forall  S_$20 : $state, t_$17 : $token :: ( $full_stop_ext(t_$17,S_$20) == ($good_state_ext(t_$17,S_$20) && $full_stop(S_$20)) ));
	assume (forall  S_$66 : $state :: {$function_entry(S_$66)} ( $function_entry(S_$66) ==> (($full_stop(S_$66) && ($current_timestamp(S_$66) >= 0)) && $timestamp_checkpoint(S_$66)) ));
	assume (forall  S_$67 : $state :: {$full_stop(S_$67)} ( $full_stop(S_$67) ==> ($good_state(S_$67) && $invok_state(S_$67)) ));
	assume (forall  S_$68 : $state :: {$invok_state(S_$68)} ( $invok_state(S_$68) ==> $good_state(S_$68) ));
	assume (forall  S_$21 : $state :: ( $timestamp_checkpoint(S_$21) == ((forall  p_$35 : $ptr :: {$owner(S_$21,p_$35)} ( $timestamp(S_$21,p_$35) <= $current_timestamp(S_$21) ))) ));
	assume (forall  id : $token, S_$69 : $state :: {$good_state_ext(id,S_$69)} ( $good_state_ext(id,S_$69) ==> $good_state(S_$69) ));
	assume (forall  S_$22 : $state :: ( $closed_is_transitive(S_$22) == ((forall  p_$36 : $ptr, q_$2 : $ptr :: {$set_in_pos(p_$36,$owns(S_$22,q_$2))} ( (($good_state(S_$22) && $set_in(p_$36,$owns_inline(S_$22,q_$2))) && $closed(S_$22,q_$2)) ==> (((($is_non_primitive($typ(p_$36)) && ($owner(S_$22,p_$36) == q_$2)) && $closed(S_$22,p_$36)) && $non_null(p_$36)) && true) ))) ));
	assume (forall  S_$70 : $state, #r_$1 : $ptr, #t_$3 : $ctype, #f_$0 : $field, #sz : Integer :: {$owns(S_$70,$ptr($as_field_with_type(#f_$0,$array(#t_$3,#sz)),#r_$1))} ( $good_state(S_$70) ==> ($owns(S_$70,$ptr($as_field_with_type(#f_$0,$array(#t_$3,#sz)),#r_$1)) == $set_empty()) ));
	assume (forall  S_$71 : $state, #p_$8 : $ptr, #t_$4 : $ctype :: {$inv(S_$71,#p_$8,#t_$4)} ( ($invok_state(S_$71) && $closed(S_$71,#p_$8)) ==> $inv(S_$71,#p_$8,#t_$4) ));
	assume (forall  S_$72 : $state :: {$good_state(S_$72)} ( $good_state(S_$72) ==> $closed_is_transitive(S_$72) ));
	assume (forall  S_$73 : $state, p_$124 : $ptr :: {$closed(S_$73,p_$124)} ( $good_state(S_$73) ==> ($closed(S_$73,p_$124) ==> $non_null(p_$124)) ));
	assume (forall  S_$74 : $state, p_$125 : $ptr :: {$owner(S_$74,p_$125)} {$domain_root(S_$74,p_$125)} ( $good_state(S_$74) ==> (($owner(S_$74,p_$125) == $me()) ==> (((($is_proper(p_$125) && $non_null(p_$125)) && $is_non_primitive($typ(p_$125))) && $is_proper(p_$125)) && ($domain_root(S_$74,p_$125) == p_$125))) ));
	assume (forall  S_$75 : $state, r_$4 : $ptr :: {$owner(S_$75,r_$4)} ( $good_state(S_$75) ==> (($non_null($owner(S_$75,r_$4)) && $is_proper($owner(S_$75,r_$4))) && ((!($typ($owner(S_$75,r_$4)) == ^$#thread_id_t)) ==> ((($is_proper(r_$4) && $non_null(r_$4)) && $is_non_primitive($typ(r_$4))) && ($is_sequential_field($f_owns($typ($owner(S_$75,r_$4)))) ==> ($domain_root(S_$75,r_$4) == $domain_root(S_$75,$owner(S_$75,r_$4))))))) ));
	assume (forall  S_$76 : $state, p_$126 : $ptr :: {$domain_root(S_$76,$domain_root(S_$76,p_$126))} ( $good_state(S_$76) ==> ($domain_root(S_$76,$domain_root(S_$76,p_$126)) == $domain_root(S_$76,p_$126)) ));
	assume (forall  S0_$13 : $state, S1_$9 : $state :: {$call_transition(S0_$13,S1_$9)} ( $call_transition(S0_$13,S1_$9) ==> $trans_call_transition(S0_$13,S1_$9) ));
	assume (forall  S0_$14 : $state, S1_$10 : $state, S2_$3 : $state :: {$trans_call_transition(S0_$14,S1_$10),$call_transition(S1_$10,S2_$3)} ( ($trans_call_transition(S0_$14,S1_$10) && $call_transition(S1_$10,S2_$3)) ==> $trans_call_transition(S0_$14,S2_$3) ));
	assume (forall  S_$77 : $state, p_$127 : $ptr, f_$41 : $field, t_$42 : $ctype :: {$rdtrig(S_$77,p_$127,$as_field_with_type(f_$41,$as_in_range_t(t_$42)))} ( $good_state(S_$77) ==> $in_range_t(t_$42,$rd(S_$77,p_$127,$as_field_with_type(f_$41,$as_in_range_t(t_$42)))) ));
	assume (forall  v : Integer, f_$17 : $field, r : $ptr, h : $object :: ( $update(h,r,f_$17,v) == h[f_$17 := h[f_$17][r := v]] ));
	assume (forall  f_$18 : $field, p_$37 : $ptr, S_$23 : $state, S0 : $state :: ( $havoc_at(S0,S_$23,p_$37,f_$18) == ($heap(S_$23) == $update($heap(S0),p_$37,f_$18,$rd(S_$23,p_$37,f_$18))) ));
	assume (forall  S_$24 : $state, S0_$0 : $state :: ( $specials_eq(S0_$0,S_$24) == (((($f_timestamp(S0_$0) == $f_timestamp(S_$24)) && ($f_closed(S0_$0) == $f_closed(S_$24))) && ($f_owner(S0_$0) == $f_owner(S_$24))) && ($roots(S0_$0) == $roots(S_$24))) ));
	assume (forall  p_$38 : $ptr, S_$25 : $state, S0_$1 : $state :: ( $specials_eq_except(S0_$1,S_$25,p_$38) == (((($f_timestamp(S_$25) == $f_timestamp(S0_$1)[p_$38 := $f_timestamp(S_$25)[p_$38]]) && ($f_closed(S_$25) == $f_closed(S0_$1)[p_$38 := $f_closed(S_$25)[p_$38]])) && ($f_owner(S_$25) == $f_owner(S0_$1)[p_$38 := $f_owner(S_$25)[p_$38]])) && ($roots(S_$25) == $roots(S0_$1)[p_$38 := $roots(S_$25)[p_$38]])) ));
	assume (forall  s2 : $state, s1 : $state :: ( $meta_eq(s1,s2) == $specials_eq(s1,s2) ));
	assume (forall  s2_$0 : $state, s1_$0 : $state :: ( $mutable_increases(s1_$0,s2_$0) == ((forall  p_$39 : $ptr :: {$owner(s2_$0,p_$39)} {$closed(s2_$0,p_$39)} {$domain_root(s2_$0,p_$39)} ( $mutable(s1_$0,p_$39) ==> $mutable(s2_$0,p_$39) ))) ));
	assume (forall  p_$40 : $ptr, f_$19 : $field, h_$0 : [$ptr]Integer :: ( $rd_local(h_$0,f_$19,p_$40) == h_$0[p_$40] ));
	assume (forall  t_$18 : $ctype, p_$41 : $ptr, f_$20 : $field, h_$1 : [$ptr]Integer :: ( $rd_spec_ptr_local(h_$1,f_$20,p_$41,t_$18) == $spec_ptr_cast($int_to_ptr(h_$1[p_$41]),t_$18) ));
	assume (forall  t_$19 : $ctype, p_$42 : $ptr, f_$21 : $field, h_$2 : [$ptr]Integer :: ( $rd_phys_ptr_local(h_$2,f_$21,p_$42,t_$19) == $phys_ptr_cast($int_to_ptr(h_$2[p_$42]),t_$19) ));
	assume (forall  S0_$15 : $state, S_$78 : $state, o_$0 : $ptr, owns_$0 : $ptrset :: {$updated_owns(S0_$15,S_$78,o_$0,owns_$0)} ( $updated_owns(S0_$15,S_$78,o_$0,owns_$0) <==> ($heap(S_$78) == $update($heap(S0_$15),o_$0,$f_owns($typ(o_$0)),$ptrset_to_int(owns_$0))) ));
	assume (forall  p_$43 : $ptr, S_$26 : $state :: ( $timestamp_is_now(S_$26,p_$43) == ($timestamp(S_$26,p_$43) == $current_timestamp(S_$26)) ));
	assume (forall  p_$44 : $ptr, S_$27 : $state :: ( $now_writable(S_$27,p_$44) == ($timestamp_is_now(S_$27,p_$44) && $mutable(S_$27,p_$44)) ));
	assume (forall  M2 : $state, M1 : $state :: ( $timestamp_post(M1,M2) == (($current_timestamp(M1) <= $current_timestamp(M2)) && $call_transition(M1,M2)) ));
	assume (forall  M2_$0 : $state, M1_$0 : $state :: ( $timestamp_post_strict(M1_$0,M2_$0) == (($current_timestamp(M1_$0) < $current_timestamp(M2_$0)) && $call_transition(M1_$0,M2_$0)) ));
	assume (forall  time_$0 : Integer, p_$128 : $ptr :: {$in_writes_at(time_$0,p_$128)} {:inline  false}( $in_writes_at(time_$0,p_$128) <==> $in(p_$128,$writes_at(time_$0)) ));
	assume (forall  ptrs : $ptrset, time : Integer, S_$28 : $state :: ( $def_writes(S_$28,time,ptrs) == ($writes_at(time) == ptrs) ));
	assume (forall  p_$45 : $ptr, M2_$1 : $state, M1_$1 : $state :: ( $is_fresh(M1_$1,M2_$1,p_$45) == (($current_timestamp(M1_$1) < $timestamp(M2_$1,p_$45)) && ($timestamp(M2_$1,p_$45) <= $current_timestamp(M2_$1))) ));
	assume (forall  p_$46 : $ptr, begin_time : Integer, S_$29 : $state :: ( $writable(S_$29,begin_time,p_$46) == (($is_non_primitive($typ(p_$46)) && $is_proper(p_$46)) && ($mutable(S_$29,p_$46) && (($timestamp(S_$29,p_$46) >= begin_time) || $in_writes_at(begin_time,p_$46)))) ));
	assume (forall  p_$47 : $ptr, begin_time_$0 : Integer, S_$30 : $state :: ( $writable_prim(S_$30,begin_time_$0,p_$47) == (($is_primitive($typ(p_$47)) && $is_proper(p_$47)) && ($mutable(S_$30,$emb0(p_$47)) && (($timestamp(S_$30,$emb0(p_$47)) >= begin_time_$0) || $in_writes_at(begin_time_$0,p_$47)))) ));
	assume (forall  p_$48 : $ptr, begin_time_$1 : Integer, S_$31 : $state :: ( $listed_in_writes(S_$31,begin_time_$1,p_$48) == $in_writes_at(begin_time_$1,p_$48) ));
	assume (forall  S_$79 : $state, begin_time_$2 : Integer, p_$129 : $ptr :: {$top_writable(S_$79,begin_time_$2,p_$129)} {:inline  false}( $top_writable(S_$79,begin_time_$2,p_$129) <==> (if $is_primitive($typ(p_$129)) then $writable_prim(S_$79,begin_time_$2,p_$129) else (($owner(S_$79,p_$129) == $me()) && (($timestamp(S_$79,p_$129) >= begin_time_$2) || $in_writes_at(begin_time_$2,p_$129)))) ));
	assume (forall  W_$1 : $ptrset, p_$49 : $ptr, S0_$2 : $state :: ( $not_written(S0_$2,p_$49,W_$1) == (($owner(S0_$2,$domain_root(S0_$2,p_$49)) == $me()) && (!$in($domain_root(S0_$2,p_$49),W_$1))) ));
	assume (forall  S0_$16 : $state, S1_$11 : $state, W_$2 : $ptrset :: {$modifies(S0_$16,S1_$11,W_$2)} {:inline  false}( $modifies(S0_$16,S1_$11,W_$2) <==> (((((((forall  p_$130 : $ptr :: {$domain_root(S1_$11,p_$130)} ( $not_written(S0_$16,p_$130,W_$2) ==> ($domain_root(S0_$16,p_$130) == $domain_root(S1_$11,p_$130)) ))) && ((forall  p_$131 : $ptr, f_$42 : $field :: {$rdtrig(S1_$11,p_$131,f_$42)} ( ($not_written(S0_$16,p_$131,W_$2) && (!$in($dot(p_$131,f_$42),W_$2))) ==> ((($is_sequential_field(f_$42) || $is_semi_sequential_field(f_$42)) || (!$closed(S0_$16,p_$131))) ==> ($rd(S0_$16,p_$131,f_$42) == $rd(S1_$11,p_$131,f_$42))) )))) && ((forall  p_$132 : $ptr :: {$f_timestamp(S1_$11)[p_$132]} ( ($not_written(S0_$16,p_$132,W_$2) ==> ($f_timestamp(S1_$11)[p_$132] == $f_timestamp(S0_$16)[p_$132])) && ($f_timestamp(S1_$11)[p_$132] >= $f_timestamp(S0_$16)[p_$132]) )))) && ((forall  p_$133 : $ptr :: {$f_closed(S1_$11)[p_$133]} ( $not_written(S0_$16,p_$133,W_$2) ==> ($f_closed(S1_$11)[p_$133] <==> $f_closed(S0_$16)[p_$133]) )))) && ((forall  p_$134 : $ptr :: {$f_owner(S1_$11)[p_$134]} ( $not_written(S0_$16,p_$134,W_$2) ==> ($f_owner(S0_$16)[p_$134] == $f_owner(S1_$11)[p_$134]) )))) && $timestamp_post(S0_$16,S1_$11)) ));
	assume (forall  S1_$0 : $state, S0_$3 : $state :: ( $preserves_thread_local(S0_$3,S1_$0) == ((forall  p_$50 : $ptr :: {$thread_local(S1_$0,p_$50)} ( $thread_local(S0_$3,p_$50) ==> $thread_local(S1_$0,p_$50) ))) ));
	assume (forall  S1_$1 : $state, S0_$4 : $state :: ( $writes_nothing(S0_$4,S1_$1) == $modifies(S0_$4,S1_$1,$set_empty()) ));
	assume (forall  s_$7 : $state :: ( $can_use_all_frame_axioms(s_$7) == ((forall  f_$22 : $pure_function :: {$frame_level(f_$22)} ( $frame_level(f_$22) < $current_frame_level ))) ));
	assume (forall  f_$23 : $pure_function :: ( $can_use_frame_axiom_of(f_$23) == ($frame_level(f_$23) < $current_frame_level) ));
	assume (forall  s0 : $state, s1_$1 : $state, p_$135 : $ptr, sz_$33 : Integer :: {$same_array(s0,s1_$1,p_$135,sz_$33)} ( $same_array(s0,s1_$1,p_$135,sz_$33) <==> ((forall  i_$14 : Integer :: {$idx(p_$135,i_$14)} ( $in_range(0,i_$14,sz_$33 - 1) ==> ($mem(s0,$idx(p_$135,i_$14)) == $mem(s1_$1,$idx(p_$135,i_$14))) ))) ));
	assume (forall  t_$20 : $ctype, r_$0 : $ptr, S_$32 : $state, S0_$5 : $state :: ( $is_allocated0(S0_$5,S_$32,r_$0,t_$20) == (((((((((true && $is(r_$0,t_$20)) && $is_proper(r_$0)) && $writes_nothing(S0_$5,S_$32)) && ($heap(S_$32) == $heap(S0_$5))) && $timestamp_post_strict(S0_$5,S_$32)) && (!$closed(S0_$5,r_$0))) && (!($owner(S0_$5,r_$0) == $me()))) && $is_malloc_root(S_$32,r_$0)) && ($field(r_$0) == $f_root(t_$20))) ));
	assume (forall  t_$21 : $ctype, r_$1 : $ptr, S_$33 : $state, S0_$6 : $state :: ( $is_allocated(S0_$6,S_$33,r_$1,t_$21) == ($is_allocated0(S0_$6,S_$33,r_$1,t_$21) && (if $is_primitive(t_$21) then (($mutable(S_$33,$emb0(r_$1)) && (r_$1 == $dot($emb0(r_$1),$field(r_$1)))) && $timestamp_is_now(S_$33,$emb0(r_$1))) else (($extent_mutable(S_$33,r_$1) && $extent_is_fresh(S0_$6,S_$33,r_$1)) && $all_first_option_typed(S_$33,r_$1)))) ));
	assume (forall  p_$51 : $ptr, S_$34 : $state :: ( $is_malloc_root(S_$34,p_$51) == $is_object_root(S_$34,p_$51) ));
	assume (forall  p_$52 : $ptr, S_$35 : $state :: ( $is_object_root(S_$35,p_$52) == $is_object_root_ptr(p_$52) ));
	assume (forall  S0_$17 : $state, S_$80 : $state, o_$1 : $ptr :: {$is_unwrapped_dynamic(S0_$17,S_$80,o_$1)} ( $is_unwrapped_dynamic(S0_$17,S_$80,o_$1) <==> ((($is_unwrapped(S0_$17,S_$80,o_$1) && ($f_timestamp(S_$80) == lambda#3(S0_$17,S_$80,o_$1))) && ((forall  r_$5 : $ptr :: {$owner(S_$80,r_$5)} {$closed(S_$80,r_$5)} ( $set_in(r_$5,$owns(S0_$17,o_$1)) ==> (($owner(S0_$17,r_$5) == o_$1) && $wrapped(S_$80,r_$5,$typ(r_$5))) )))) && ($f_owner(S_$80) == lambda#4(S0_$17,o_$1))) ));
	assume (forall  S0_$18 : $state, S_$81 : $state, o_$2 : $ptr :: {$is_unwrapped(S0_$18,S_$81,o_$2)} ( $is_unwrapped(S0_$18,S_$81,o_$2) <==> ((((((((true && $mutable(S_$81,o_$2)) && ($heap(S_$81) == $heap(S0_$18))) && ($owns(S0_$18,o_$2) == $owns(S_$81,o_$2))) && ((forall  p_$136 : $ptr :: {$domain_root(S_$81,p_$136)} ( ((!($domain_root(S0_$18,p_$136) == o_$2)) && ($domain_root(S0_$18,p_$136) == $domain_root(S_$81,p_$136))) || ((($domain_root(S0_$18,p_$136) == o_$2) && (($domain_root(S_$81,p_$136) == p_$136) || (!($owner(S0_$18,p_$136) == o_$2)))) && ($owner(S_$81,$domain_root(S_$81,p_$136)) == $me())) )))) && ($f_closed(S_$81) == $f_closed(S0_$18)[o_$2 := false])) && $timestamp_post_strict(S0_$18,S_$81)) && $post_unwrap(S0_$18,S_$81)) && ($typemap($f_owner(S0_$18)) == $typemap($f_owner(S_$81)))) ));
	assume (forall  S0_$19 : $state, S_$82 : $state, o_$3 : $ptr :: {$is_wrapped_dynamic(S0_$19,S_$82,o_$3)} ( $is_wrapped_dynamic(S0_$19,S_$82,o_$3) <==> ((($is_wrapped(S0_$19,S_$82,o_$3,$owns(S0_$19,o_$3)) && ($heap(S_$82) == $heap(S0_$19))) && ($owns(S0_$19,o_$3) == $owns(S_$82,o_$3))) && ($f_owner(S_$82) == lambda#5(o_$3,S0_$19))) ));
	assume (forall  S0_$20 : $state, S_$83 : $state, o_$4 : $ptr, owns_$1 : $ptrset :: {$is_wrapped(S0_$20,S_$83,o_$4,owns_$1)} ( $is_wrapped(S0_$20,S_$83,o_$4,owns_$1) <==> (((((((true && ($f_closed(S_$83) == $f_closed(S0_$20)[o_$4 := true])) && ($f_timestamp(S_$83) == $f_timestamp(S0_$20)[o_$4 := $current_timestamp(S_$83)])) && ((forall  p_$137 : $ptr :: {$domain_root(S_$83,p_$137)} ( ($domain_root(S_$83,p_$137) == $domain_root(S0_$20,p_$137)) || (($domain_root(S_$83,p_$137) == o_$4) && ((p_$137 == o_$4) || $set_in($domain_root(S0_$20,p_$137),owns_$1))) )))) && $wrapped(S_$83,o_$4,$typ(o_$4))) && ($is_claimable($typ(o_$4)) ==> (($ref_cnt(S0_$20,o_$4) == 0) && ($ref_cnt(S_$83,o_$4) == 0)))) && $timestamp_post_strict(S0_$20,S_$83)) && ($typemap($f_owner(S0_$20)) == $typemap($f_owner(S_$83)))) ));
	assume (forall  S_$84 : $state, l : $ptr, p_$138 : $ptr :: {$take_over(S_$84,l,p_$138)} ( $f_owner($take_over(S_$84,l,p_$138)) == $f_owner(S_$84)[p_$138 := l] ));
	assume (forall  S0_$21 : $state, S_$85 : $state, l_$0 : $ptr, p_$139 : $ptr :: {$release(S0_$21,S_$85,l_$0,p_$139)} ( ($f_owner($release(S0_$21,S_$85,l_$0,p_$139)) == $f_owner(S_$85)[p_$139 := $me()]) && ($f_timestamp($release(S0_$21,S_$85,l_$0,p_$139)) == $f_timestamp(S_$85)[p_$139 := $current_timestamp(S0_$21)]) ));
	assume (forall  S1_$12 : $state, S2_$4 : $state, p_$140 : $ptr, t_$43 : $ctype :: {$spans_the_same(S1_$12,S2_$4,p_$140,t_$43)} ( $spans_the_same(S1_$12,S2_$4,p_$140,t_$43) <==> (($owns(S1_$12,p_$140) == $owns(S2_$4,p_$140)) && ((forall  f_$43 : $field :: {$rdtrig(S2_$4,p_$140,f_$43)} ( ($is_proper($dot(p_$140,f_$43)) && (!(f_$43 == $f_ref_cnt(t_$43)))) ==> ($rd(S1_$12,p_$140,f_$43) == $rd(S2_$4,p_$140,f_$43)) )))) ));
	assume (forall  S1_$13 : $state, S2_$5 : $state, p_$141 : $ptr, t_$44 : $ctype :: {$nonvolatile_spans_the_same(S1_$13,S2_$5,p_$141,t_$44)} ( $nonvolatile_spans_the_same(S1_$13,S2_$5,p_$141,t_$44) <==> ((forall  f_$44 : $field :: {$rdtrig(S2_$5,p_$141,f_$44)} ( ($is_proper($dot(p_$141,f_$44)) && $is_sequential_field(f_$44)) ==> ($rd(S1_$13,p_$141,f_$44) == $rd(S2_$5,p_$141,f_$44)) ))) ));
	assume (forall  p_$142 : $ptr, t_$45 : $ctype :: {$admissibility_start(p_$142,t_$45)} ( $admissibility_start(p_$142,t_$45) <==> ($is(p_$142,t_$45) && $is_proper(p_$142)) ));
	assume (forall  p_$53 : $ptr, S_$36 : $state :: ( $stuttering_pre(S_$36,p_$53) == (((forall  q_$3 : $ptr :: {$closed(S_$36,q_$3)} ( $closed(S_$36,q_$3) ==> $inv(S_$36,q_$3,$typ(q_$3)) ))) && $good_for_admissibility(S_$36)) ));
	assume (forall  p_$54 : $ptr, S_$37 : $state :: ( $admissibility_pre(S_$37,p_$54) == (($closed(S_$37,p_$54) && $inv(S_$37,p_$54,$typ(p_$54))) && $stuttering_pre(S_$37,p_$54)) ));
	assume $is_admissibility_check() == ((!$is_stuttering_check()) && (!$is_unwrap_check()));
	assume (forall  p_$55 : $ptr, S_$38 : $state :: ( $unwrap_check_pre(S_$38,p_$55) == (((($wrapped(S_$38,p_$55,$typ(p_$55)) && ((!$is_claimable($typ(p_$55))) || ($ref_cnt(S_$38,p_$55) == 0))) && $inv(S_$38,p_$55,$typ(p_$55))) && ((forall  q_$4 : $ptr :: {$closed(S_$38,q_$4)} ( $closed(S_$38,q_$4) ==> $inv(S_$38,q_$4,$typ(q_$4)) )))) && $good_for_pre_can_unwrap(S_$38)) ));
	assume (forall  S_$86 : $state, c_$3 : $ptr :: {$full_stop(S_$86),$valid_claim(S_$86,c_$3)} ( ($full_stop(S_$86) && $closed(S_$86,c_$3)) ==> $valid_claim(S_$86,c_$3) ));
	assume (forall  S_$87 : $state, c_$4 : $ptr :: {$valid_claim(S_$87,c_$4)} ( $valid_claim(S_$87,c_$4) ==> ($closed(S_$87,c_$4) && $invok_state(S_$87)) ));
	assume (forall  tok : $token, c_$0 : $ptr, #s1_$0 : $state :: ( $claim_initial_assumptions(#s1_$0,c_$0,tok) == (($good_state_ext(tok,#s1_$0) && $closed_is_transitive(#s1_$0)) && true) ));
	assume (forall  typ_$0 : $ctype, #p_$5 : $ptr, #s2 : $state, #s1_$1 : $state :: ( $inv2_when_closed(#s1_$1,#s2,#p_$5,typ_$0) == (((!$closed(#s1_$1,#p_$5)) && (!$closed(#s2,#p_$5))) || ($inv2(#s1_$1,#s2,#p_$5,typ_$0) && $nonvolatile_spans_the_same(#s1_$1,#s2,#p_$5,typ_$0))) ));
	assume (forall  tok_$0 : $token, c_$1 : $ptr, #s2_$0 : $state, #s1_$2 : $state :: ( $claim_transitivity_assumptions(#s1_$2,#s2_$0,c_$1,tok_$0) == ((((((($full_stop_ext(tok_$0,#s1_$2) && $good_state_ext(tok_$0,#s2_$0)) && $closed_is_transitive(#s1_$2)) && $closed_is_transitive(#s2_$0)) && ((forall  #p_$6 : $ptr :: {$closed(#s1_$2,#p_$6)} {$closed(#s2_$0,#p_$6)} ( $inv2_when_closed(#s1_$2,#s2_$0,#p_$6,$typ(#p_$6)) )))) && $valid_claim(#s1_$2,c_$1)) && $closed(#s2_$0,c_$1)) && true) ));
	assume (forall  S1_$2 : $state, S0_$7 : $state :: ( $valid_claim_impl(S0_$7,S1_$2) == ((forall  r_$2 : $ptr, f_$24 : $field :: {$closed(S1_$2,$ptr($as_field_with_type(f_$24,^^claim),r_$2))} ( $is($ptr(f_$24,r_$2),^^claim) ==> (($closed(S0_$7,$ptr(f_$24,r_$2)) && $closed(S1_$2,$ptr(f_$24,r_$2))) ==> $valid_claim(S1_$2,$ptr(f_$24,r_$2))) ))) ));
	assume (forall  c1 : $ptr, c2 : $ptr :: {$claims_claim(c1,c2)} ( (($is(c1,^^claim) && $is(c2,^^claim)) && ((forall  S_$88 : $state :: ( $valid_claim(S_$88,c1) ==> $closed(S_$88,c2) )))) ==> $claims_claim(c1,c2) ));
	assume (forall  S_$89 : $state, c1_$0 : $ptr, c2_$0 : $ptr :: {$valid_claim(S_$89,c1_$0),$claims_claim(c1_$0,c2_$0)} ( ($valid_claim(S_$89,c1_$0) && $claims_claim(c1_$0,c2_$0)) ==> $valid_claim(S_$89,c2_$0) ));
	assume (forall  S_$90 : $state, c_$5 : $ptr, o_$5 : $ptr :: {$closed(S_$90,c_$5),$claims_obj(c_$5,o_$5)} ( $good_state(S_$90) ==> (($claims_obj(c_$5,o_$5) && $closed(S_$90,c_$5)) ==> (($instantiate_ptrset($owns(S_$90,o_$5)) && $closed(S_$90,o_$5)) && ($ref_cnt(S_$90,o_$5) > 0))) ));
	assume (forall  S_$91 : $state, c_$6 : $ptr, o_$6 : $ptr :: {$valid_claim(S_$91,c_$6),$claims_obj(c_$6,o_$6)} ( ($valid_claim(S_$91,c_$6) && $claims_obj(c_$6,o_$6)) ==> $inv(S_$91,o_$6,$typ(o_$6)) ));
	assume (forall  S_$92 : $state, c_$7 : $ptr, r_$6 : $ptr, f_$45 : $field :: {$valid_claim(S_$92,c_$7),$claims_obj(c_$7,$ptr($as_field_with_type(f_$45,^^claim),r_$6))} ( $is($ptr(f_$45,r_$6),^^claim) ==> (($valid_claim(S_$92,c_$7) && $claims_obj(c_$7,$ptr(f_$45,r_$6))) ==> $valid_claim(S_$92,$ptr(f_$45,r_$6))) ));
	assume (forall  S_$93 : $state, p_$143 : $ptr :: {$not_shared(S_$93,p_$143)} ( $not_shared(S_$93,p_$143) <==> ($wrapped(S_$93,p_$143,$typ(p_$143)) && ((!$is_claimable($typ(p_$143))) || ($ref_cnt(S_$93,p_$143) == 0))) ));
	assume (forall  s_$17 : $state, p_$144 : $ptr :: {$claimed_closed(s_$17,p_$144)} ( $claimed_closed(s_$17,p_$144) <==> $closed(s_$17,p_$144) ));
	assume (forall  S_$94 : $state, p_$145 : $ptr :: {$invok_state(S_$94),$claimed_closed(S_$94,p_$145)} ( ($invok_state(S_$94) && $claimed_closed(S_$94,p_$145)) ==> $inv(S_$94,p_$145,$typ(p_$145)) ));
	assume $no_claim == $null_of(^^claim);
	assume (forall  c_$2 : $ptr, S_$39 : $state, S0_$8 : $state :: ( $claim_killed(S0_$8,S_$39,c_$2) == (((((($f_closed(S_$39) == $f_closed(S0_$8)[c_$2 := false]) && ($f_timestamp(S_$39) == $f_timestamp(S0_$8))) && ($f_owner(S_$39) == $f_owner(S0_$8))) && ($heap(S_$39) == $heap(S0_$8))) && $good_state(S_$39)) && $timestamp_post_strict(S0_$8,S_$39)) ));
	assume (forall  the_new : $ptr, the_old : $ptr :: {$claims_upgrade(the_new,the_old)} ( $claims_upgrade(the_new,the_old) <==> ((forall  o_$7 : $ptr :: ( $claims_obj(the_old,o_$7) ==> $claims_obj(the_new,o_$7) ))) ));
	assume (forall  S_$95 : $state, c_$8 : $ptr, o_$8 : $ptr :: {$account_claim(S_$95,c_$8,o_$8)} ( $account_claim(S_$95,c_$8,o_$8) <==> (($good_state(S_$95) && $closed(S_$95,c_$8)) && $claims_obj(c_$8,o_$8)) ));
	assume (forall  S_$96 : $state, c_$9 : $ptr, o_$9 : $ptr :: {$account_claim(S_$96,c_$9,o_$9)} ( $account_claim(S_$96,c_$9,o_$9) ==> ((($claim_no(S_$96,o_$9,$claim_idx(o_$9,c_$9)) == c_$9) && (0 <= $claim_idx(o_$9,c_$9))) && ($claim_idx(o_$9,c_$9) < $ref_cnt(S_$96,o_$9))) ));
	assume (forall  owns : $ptrset, o : $ptr, S_$40 : $state :: ( $new_ownees(S_$40,o,owns) == $set_difference(owns,$owns(S_$40,o)) ));
	assume (forall  S_$97 : $state, p_$146 : $ptr, q_$9 : $ptr, l_$1 : $label :: {$in_domain_lab(S_$97,p_$146,q_$9,l_$1)} ( $in_domain_lab(S_$97,p_$146,q_$9,l_$1) <==> $in_domain(S_$97,p_$146,q_$9) ));
	assume (forall  S_$98 : $state, p_$147 : $ptr, q_$10 : $ptr, l_$2 : $label :: {$in_vdomain_lab(S_$98,p_$147,q_$10,l_$2)} ( $in_vdomain_lab(S_$98,p_$147,q_$10,l_$2) <==> $in_vdomain(S_$98,p_$147,q_$10) ));
	assume (forall  S_$99 : $state, p_$148 : $ptr, q_$11 : $ptr, l_$3 : $label :: {$in_domain_lab(S_$99,p_$148,q_$11,l_$3)} ( $in_domain_lab(S_$99,p_$148,q_$11,l_$3) ==> $inv_lab(S_$99,p_$148,l_$3) ));
	assume (forall  S_$100 : $state, p_$149 : $ptr, q_$12 : $ptr, l_$4 : $label :: {$in_vdomain_lab(S_$100,p_$149,q_$12,l_$4)} ( $in_vdomain_lab(S_$100,p_$149,q_$12,l_$4) ==> $inv_lab(S_$100,p_$149,l_$4) ));
	assume (forall  S_$101 : $state, p_$150 : $ptr :: {$in_domain(S_$101,p_$150,$domain_root(S_$101,p_$150))} ( ($full_stop(S_$101) && $wrapped(S_$101,$domain_root(S_$101,p_$150),$typ($domain_root(S_$101,p_$150)))) ==> $in_domain(S_$101,p_$150,$domain_root(S_$101,p_$150)) ));
	assume (forall  S_$102 : $state, p_$151 : $ptr, q_$13 : $ptr :: {$in_domain(S_$102,p_$151,q_$13)} ( $instantiate_ptr($domain_root(S_$102,q_$13)) && ($in_domain(S_$102,p_$151,q_$13) ==> (((((($domain_root(S_$102,p_$151) == q_$13) && $wrapped(S_$102,q_$13,$typ(q_$13))) && $closed(S_$102,p_$151)) && $set_in(p_$151,$domain(S_$102,q_$13))) && $inv(S_$102,p_$151,$typ(p_$151))) && $set_in0(p_$151,$owns(S_$102,$owner(S_$102,p_$151))))) ));
	assume (forall  S_$103 : $state, p_$152 : $ptr, q_$14 : $ptr :: {$in_domain(S_$103,p_$152,q_$14)} ( (($full_stop(S_$103) && $set_in(p_$152,$domain(S_$103,q_$14))) && $wrapped(S_$103,q_$14,$typ(q_$14))) ==> $in_domain(S_$103,p_$152,q_$14) ));
	assume (forall  S_$104 : $state, q_$15 : $ptr, r_$7 : $ptr :: {$in_domain(S_$104,r_$7,$domain_root(S_$104,q_$15))} ( (($in_domain(S_$104,q_$15,$domain_root(S_$104,q_$15)) && $is_sequential_field($f_owns($typ(q_$15)))) && $set_in0(r_$7,$owns(S_$104,q_$15))) ==> ((($owner(S_$104,r_$7) == q_$15) && ($domain_root(S_$104,r_$7) == $domain_root(S_$104,q_$15))) && $in_domain(S_$104,r_$7,$domain_root(S_$104,q_$15))) ));
	assume (forall  S_$105 : $state, p_$153 : $ptr :: {$as_deep_domain(S_$105,p_$153)} ( $as_deep_domain(S_$105,p_$153) == p_$153 ));
	assume (forall  S_$106 : $state, p_$154 : $ptr :: {$wrapped_with_deep_domain(S_$106,p_$154)} ( $wrapped_with_deep_domain(S_$106,p_$154) <==> $in_domain(S_$106,p_$154,$as_deep_domain(S_$106,p_$154)) ));
	assume (forall  S_$107 : $state, p_$155 : $ptr, q_$16 : $ptr, r_$8 : $ptr :: {$in_domain(S_$107,p_$155,$as_deep_domain(S_$107,q_$16)),$set_in(r_$8,$owns(S_$107,p_$155))} ( ((($good_state(S_$107) && $is_sequential_field($f_owns($typ(p_$155)))) && $in_domain(S_$107,p_$155,q_$16)) && $set_in(r_$8,$owns(S_$107,p_$155))) ==> $in_domain(S_$107,r_$8,q_$16) ));
	assume (forall  p_$56 : $ptr, S_$41 : $state :: ( $read_version(S_$41,p_$56) == $int_to_version($f_timestamp(S_$41)[p_$56]) ));
	assume (forall  p_$57 : $ptr, S_$42 : $state :: ( $domain(S_$42,p_$57) == $ver_domain($read_version(S_$42,p_$57)) ));
	assume (forall  S_$108 : $state, p_$156 : $ptr, q_$17 : $ptr, r_$9 : $ptr :: {$set_in(q_$17,$domain(S_$108,p_$156)),$in_vdomain(S_$108,r_$9,p_$156)} ( (($is_volatile_field($f_owns($typ(q_$17))) && $set_in(q_$17,$domain(S_$108,p_$156))) && ((forall  S1_$14 : $state :: ( (($inv(S1_$14,q_$17,$typ(q_$17)) && ($read_version(S1_$14,p_$156) == $read_version(S_$108,p_$156))) && ($domain(S1_$14,p_$156) == $domain(S_$108,p_$156))) ==> $set_in0(r_$9,$owns(S1_$14,q_$17)) )))) ==> ($in_vdomain(S_$108,r_$9,p_$156) && $set_in0(r_$9,$owns(S_$108,q_$17))) ));
	assume (forall  S_$109 : $state, p_$157 : $ptr, q_$18 : $ptr :: {$in_vdomain(S_$109,p_$157,q_$18)} ( $in_vdomain(S_$109,p_$157,q_$18) ==> $in_domain(S_$109,p_$157,q_$18) ));
	assume (forall  S_$110 : $state, p_$158 : $ptr, d : $ptr, f_$46 : $field :: {$rdtrig(S_$110,p_$158,f_$46),$set_in(p_$158,$domain(S_$110,d)),$is_sequential_field(f_$46)} ( ($set_in(p_$158,$domain(S_$110,d)) && $is_sequential_field(f_$46)) ==> ($rd(S_$110,p_$158,f_$46) == $fetch_from_domain($read_version(S_$110,d),p_$158,f_$46)) ));
	assume (forall  p_$159 : $ptr, c_$10 : $ptr :: {$in_claim_domain(p_$159,c_$10)} ( ((forall  s_$18 : $state :: {$dont_instantiate_state(s_$18)} ( $valid_claim(s_$18,c_$10) ==> $closed(s_$18,p_$159) ))) ==> $in_claim_domain(p_$159,c_$10) ));
	assume (forall  S_$111 : $state, c_$11 : $ptr, obj : $ptr, ptr : $ptr :: {$by_claim(S_$111,c_$11,obj,ptr)} ( $by_claim(S_$111,c_$11,obj,ptr) == ptr ));
	assume (forall  S_$112 : $state, p_$160 : $ptr, c_$12 : $ptr, f_$47 : $field :: {$in_claim_domain(p_$160,c_$12),$rdtrig(S_$112,p_$160,f_$47)} ( ((($good_state(S_$112) && $closed(S_$112,c_$12)) && $in_claim_domain(p_$160,c_$12)) && $is_sequential_field(f_$47)) ==> ($in_claim_domain(p_$160,c_$12) && ($rd(S_$112,p_$160,f_$47) == $fetch_from_domain($claim_version(c_$12),p_$160,f_$47))) ));
	assume (forall  S_$113 : $state, p_$161 : $ptr, q_$19 : $ptr, c_$13 : $ptr, f_$48 : $field :: {$by_claim(S_$113,c_$13,q_$19,$dot(p_$161,f_$48))} ( ((($good_state(S_$113) && $closed(S_$113,c_$13)) && $in_claim_domain(p_$161,c_$13)) && $is_sequential_field(f_$48)) ==> ($in_claim_domain(p_$161,c_$13) && ($rd(S_$113,p_$161,f_$48) == $fetch_from_domain($claim_version(c_$13),p_$161,f_$48))) ));
	assume (forall  p_$58 : $ptr :: ( $volatile_version_addr(p_$58) == $dot(p_$58,$f_vol_version($typ(p_$58))) ));
	assume (forall  S_$114 : $state, p_$162 : $ptr :: {$read_vol_version(S_$114,p_$162)} ( $read_vol_version(S_$114,p_$162) == $int_to_vol_version($rd(S_$114,p_$162,$f_vol_version($typ(p_$162)))) ));
	assume (forall  f_$25 : $field, p_$59 : $ptr, S_$43 : $state :: ( $fetch_vol_field(S_$43,p_$59,f_$25) == $fetch_from_vv($read_vol_version(S_$43,p_$59),p_$59,f_$25) ));
	assume (forall  S_$115 : $state, t_$46 : $ctype, p_$163 : $ptr, approver_$1 : $field, subject_$2 : $field :: {$is_approved_by(t_$46,approver_$1,subject_$2),$rd(S_$115,p_$163,subject_$2)} ( ((($full_stop(S_$115) && $is_approved_by(t_$46,approver_$1,subject_$2)) && $closed(S_$115,p_$163)) && (($int_to_ptr($rd(S_$115,p_$163,approver_$1)) == $me()) || ($int_to_ptr($fetch_vol_field(S_$115,p_$163,approver_$1)) == $me()))) ==> ($rd(S_$115,p_$163,subject_$2) == $fetch_vol_field(S_$115,p_$163,subject_$2)) ));
	assume (forall  subject : $field, approver : $ptr, this : $ptr, S2_$0 : $state, S1_$3 : $state :: ( $inv_is_approved_by_ptr(S1_$3,S2_$0,this,approver,subject) == (((($rd(S1_$3,this,subject) == $rd(S2_$0,this,subject)) || $is_null(approver)) || ((!$is_threadtype($typ(approver))) && $inv2nt(S1_$3,S2_$0,approver))) || ($is_threadtype($typ(approver)) && (!($read_vol_version(S1_$3,this) == $read_vol_version(S2_$0,this))))) ));
	assume (forall  S1_$15 : $state, S2_$6 : $state, dependant : $ptr, this_$2 : $ptr :: {$depends(S1_$15,S2_$6,dependant,this_$2)} ( $depends(S1_$15,S2_$6,dependant,this_$2) <==> (($spans_the_same(S1_$15,S2_$6,this_$2,$typ(this_$2)) || $inv2_when_closed(S1_$15,S2_$6,dependant,$typ(dependant))) || $is_threadtype($typ(dependant))) ));
	assume (forall  subject_$0 : $field, approver_$0 : $field, this_$0 : $ptr, S2_$1 : $state, S1_$4 : $state :: ( $inv_is_approved_by(S1_$4,S2_$1,this_$0,approver_$0,subject_$0) == $inv_is_approved_by_ptr(S1_$4,S2_$1,this_$0,$int_to_ptr($rd(S1_$4,this_$0,approver_$0)),subject_$0) ));
	assume (forall  S_$116 : $state, p_$164 : $ptr, t_$47 : $ctype, subject_$3 : $field :: {$is_owner_approved(t_$47,subject_$3),$rd(S_$116,p_$164,subject_$3)} ( ((($full_stop(S_$116) && $closed(S_$116,p_$164)) && $is_owner_approved(t_$47,subject_$3)) && ($owner(S_$116,p_$164) == $me())) ==> ($rd(S_$116,p_$164,subject_$3) == $fetch_vol_field(S_$116,p_$164,subject_$3)) ));
	assume (forall  subject_$1 : $field, this_$1 : $ptr, S2_$2 : $state, S1_$5 : $state :: ( $inv_is_owner_approved(S1_$5,S2_$2,this_$1,subject_$1) == $inv_is_approved_by_ptr(S1_$5,S2_$2,this_$1,$owner(S1_$5,this_$1),subject_$1) ));
	assume (forall  S_$117 : $state, r_$10 : $ptr :: {$extent(S_$117,r_$10)} ( $extent(S_$117,r_$10) == lambda#10(r_$10,S_$117) ));
	assume (forall  r_$11 : $ptr :: {$full_extent(r_$11)} ( $full_extent(r_$11) == lambda#11(r_$11,$full_extent_state) ));
	assume (forall  S_$118 : $state, p_$165 : $ptr, r_$12 : $ptr :: {$in(p_$165,$composite_extent(S_$118,r_$12,$typ(r_$12)))} ( $extent_hint(p_$165,r_$12) ));
	assume (forall  o_$10 : $ptr :: {$span(o_$10)} ( $span(o_$10) == lambda#12(o_$10) ));
	assume (forall  #p_$7 : $ptr :: ( $struct_extent(#p_$7) == $full_extent(#p_$7) ));
	assume (forall  S_$119 : $state, r_$13 : $ptr :: {$extent_mutable(S_$119,r_$13)} ( $extent_mutable(S_$119,r_$13) <==> ($mutable(S_$119,r_$13) && ((forall  p_$166 : $ptr :: {$extent_hint(p_$166,r_$13)} ( $in(p_$166,$composite_extent(S_$119,r_$13,$typ(r_$13))) ==> $mutable(S_$119,p_$166) )))) ));
	assume (forall  S_$120 : $state, r_$14 : $ptr :: {$extent_thread_local(S_$120,r_$14)} ( $extent_thread_local(S_$120,r_$14) <==> ($readable_span(S_$120,r_$14) && ((forall  p_$167 : $ptr :: {$extent_hint(p_$167,r_$14)} ( $in(p_$167,$composite_extent(S_$120,r_$14,$typ(r_$14))) ==> $readable_span(S_$120,p_$167) )))) ));
	assume (forall  S_$121 : $state, T_$16 : $ctype, sz_$34 : Integer, p_$168 : $ptr :: {$extent_mutable(S_$121,$as_ptr_with_type(p_$168,$array(T_$16,sz_$34)))} ( $extent_mutable(S_$121,$as_ptr_with_type(p_$168,$array(T_$16,sz_$34))) ==> $is_mutable_array(S_$121,$as_array_first_index(p_$168),T_$16,sz_$34) ));
	assume (forall  S_$122 : $state, T_$17 : $ctype, sz_$35 : Integer, p_$169 : $ptr :: {$mutable(S_$122,$as_ptr_with_type(p_$169,$array(T_$17,sz_$35)))} ( $in_range_phys_ptr(p_$169) ==> (($is_primitive(T_$17) && $mutable(S_$122,$as_ptr_with_type(p_$169,$array(T_$17,sz_$35)))) ==> $is_mutable_array(S_$122,$as_array_first_index(p_$169),T_$17,sz_$35)) ));
	assume (forall  S0_$22 : $state, S_$123 : $state, r_$15 : $ptr :: {$extent_is_fresh(S0_$22,S_$123,r_$15)} ( $extent_is_fresh(S0_$22,S_$123,r_$15) <==> ($timestamp_is_now(S_$123,r_$15) && ((forall  p_$170 : $ptr :: {$extent_hint(p_$170,r_$15)} ( $in(p_$170,$composite_extent(S_$123,r_$15,$typ(r_$15))) ==> $timestamp_is_now(S_$123,p_$170) )))) ));
	assume (forall  S_$124 : $state, q_$20 : $ptr :: {$volatile_span(S_$124,q_$20)} ( $volatile_span(S_$124,q_$20) == lambda#13(q_$20) ));
	assume (forall  p_$171 : $ptr, q_$21 : $ptr, r_$16 : $ptr :: {$extent_hint(p_$171,q_$21),$extent_hint(q_$21,r_$16)} ( ($extent_hint(p_$171,q_$21) && $extent_hint(q_$21,r_$16)) ==> $extent_hint(p_$171,r_$16) ));
	assume (forall  p_$172 : $ptr, f_$49 : $field :: {$dot(p_$172,$as_composite_field(f_$49))} ( $extent_hint($dot(p_$172,$as_composite_field(f_$49)),p_$172) ));
	assume (forall  p_$173 : $ptr, i_$15 : Integer :: {$idx(p_$173,i_$15)} ( $extent_hint($idx(p_$173,i_$15),p_$173) ));
	assume (forall  E1 : $ptrset, E0 : $ptrset, S1_$6 : $state, S0_$9 : $state :: ( $union_havoced(S0_$9,S1_$6,E0,E1) == (((((((forall  p_$60 : $ptr :: {$domain_root(S1_$6,p_$60)} ( ($in(p_$60,E0) || $in(p_$60,E1)) || ($domain_root(S0_$9,p_$60) == $domain_root(S1_$6,p_$60)) ))) && ((forall  p_$61 : $ptr, f_$26 : $field :: {$rdtrig(S1_$6,p_$61,f_$26)} ( ($in(p_$61,E0) || $in(p_$61,E1)) || ($rd(S0_$9,p_$61,f_$26) == $rd(S1_$6,p_$61,f_$26)) )))) && ((forall  p_$62 : $ptr :: {$f_timestamp(S1_$6)[p_$62]} ( (($in(p_$62,E0) || $in(p_$62,E1)) || ($f_timestamp(S1_$6)[p_$62] == $f_timestamp(S0_$9)[p_$62])) && ($f_timestamp(S1_$6)[p_$62] >= $f_timestamp(S0_$9)[p_$62]) )))) && ($f_closed(S0_$9) == $f_closed(S1_$6))) && ((forall  p_$63 : $ptr :: {$f_owner(S1_$6)[p_$63]} ( ($in(p_$63,E0) || $in(p_$63,E1)) || ($f_owner(S0_$9)[p_$63] == $f_owner(S1_$6)[p_$63]) )))) && $timestamp_post(S0_$9,S1_$6)) ));
	assume (forall  t_$22 : $ctype, p_$64 : $ptr :: ( $as_union_ptr(p_$64,t_$22) == $as_ptr_with_type(p_$64,$as_union_type(t_$22)) ));
	assume (forall  f_$27 : $field :: ( $is_first_union_field(f_$27) == ($is_union_field(f_$27) && ($first_union_field($field_parent_type(f_$27)) == f_$27)) ));
	assume (forall  S_$125 : $state, #p_$9 : $ptr :: {$first_option_typed(S_$125,#p_$9)} ( $first_option_typed(S_$125,#p_$9) <==> ($is_union_type($typ(#p_$9)) ==> (!($owner(S_$125,$dot(#p_$9,$first_union_field($typ(#p_$9)))) == $inactive_union_owner()))) ));
	assume (forall  S_$126 : $state, p_$174 : $ptr :: {$all_first_option_typed(S_$126,p_$174)} ( $all_first_option_typed(S_$126,p_$174) <==> ($first_option_typed(S_$126,p_$174) && ((forall  q_$22 : $ptr, t_$48 : $ctype :: {$extent_hint($as_union_ptr(q_$22,t_$48),p_$174)} ( $in(q_$22,$composite_extent(S_$126,p_$174,$typ(p_$174))) ==> $first_option_typed(S_$126,q_$22) )))) ));
	assume (forall  f_$28 : $field, p_$65 : $ptr, s_$8 : $state :: ( $union_active(s_$8,p_$65,f_$28) == (!($owner(s_$8,$dot(p_$65,f_$28)) == $inactive_union_owner())) ));
	assume (forall  S_$127 : $state, p_$175 : $ptr, f_$50 : $field :: {$is_union_field(f_$50),$owner(S_$127,$dot(p_$175,f_$50))} ( (($good_state(S_$127) && $is_union_field(f_$50)) && ((!($owner(S_$127,$dot(p_$175,f_$50)) == $inactive_union_owner())) ==> ($active_option(S_$127,p_$175) == f_$50))) && (($owner(S_$127,$dot(p_$175,f_$50)) == $inactive_union_owner()) ==> ((forall  q_$23 : $ptr :: {$extent_hint(q_$23,p_$175)} ( $in(q_$23,$composite_extent(S_$127,$dot(p_$175,f_$50),$typ($dot(p_$175,f_$50)))) ==> (!$thread_local_np(S_$127,q_$23)) )))) ));
	assume (forall  S_$128 : $state, p_$176 : $ptr, f_$51 : $field :: {$is_union_field(f_$51),$dot(p_$176,f_$51),$active_option(S_$128,p_$176)} ( ($good_state(S_$128) && $is_union_field(f_$51)) ==> ((f_$51 == $active_option(S_$128,p_$176)) || ($owner(S_$128,$dot(p_$176,f_$51)) == $inactive_union_owner())) ));
	assume (forall  A : $state, a_$9 : $ptr, B : $state, b_$5 : $ptr :: {$strong_struct_eq(A,a_$9,B,b_$5)} ( $strong_struct_eq(A,a_$9,B,b_$5) <==> ($strong_shallow_struct_eq(A,a_$9,B,b_$5) && ((forall  f_$52 : $field :: {$dot(a_$9,$as_composite_field(f_$52))} ( $composite_extent(A,a_$9,$typ(a_$9))[$dot(a_$9,f_$52)] ==> $strong_struct_eq(A,$dot(a_$9,f_$52),B,$dot(b_$5,f_$52)) )))) ));
	assume (forall  A_$0 : $state, a_$10 : $ptr, B_$0 : $state, b_$6 : $ptr :: {$strong_shallow_struct_eq(A_$0,a_$10,B_$0,b_$6)} ( $strong_shallow_struct_eq(A_$0,a_$10,B_$0,b_$6) <==> ((forall  f_$53 : $field :: ( $rd(A_$0,a_$10,f_$53) == $rd(B_$0,b_$6,f_$53) ))) ));
	assume $good_state($vs_state($struct_zero));
	assume (forall  t_$23 : $ctype, s_$9 : $struct :: ( $vs_base(s_$9,t_$23) == $phys_ptr_cast($vs_base_ref(s_$9),t_$23) ));
	assume (forall  s_$19 : $struct :: ( $good_state($vs_state(s_$19)) ));
	assume (forall  a_$11 : $struct, b_$7 : $struct, t_$49 : $ctype :: {$vs_deep_eq(a_$11,b_$7,t_$49)} ( $vs_deep_eq(a_$11,b_$7,t_$49) <==> $strong_struct_eq($vs_state(a_$11),$vs_base(a_$11,t_$49),$vs_state(b_$7),$vs_base(b_$7,t_$49)) ));
	assume (forall  a_$12 : $struct, b_$8 : $struct, t_$50 : $ctype :: {$vs_shallow_eq(a_$12,b_$8,t_$50)} ( $vs_shallow_eq(a_$12,b_$8,t_$50) <==> $strong_shallow_struct_eq($vs_state(a_$12),$vs_base(a_$12,t_$50),$vs_state(b_$8),$vs_base(b_$8,t_$50)) ));
	assume (forall  S_$129 : $state, p_$177 : $ptr :: {$vs_ctor(S_$129,p_$177)} ( $good_state(S_$129) ==> (($phys_ptr_cast($vs_base_ref($vs_ctor(S_$129,p_$177)),$typ(p_$177)) == p_$177) && ($vs_state($vs_ctor(S_$129,p_$177)) == S_$129)) ));
	assume (forall  f_$54 : $field, t_$51 : $ctype :: {$rdtrig($vs_state($struct_zero),$vs_base($struct_zero,t_$51),f_$54)} ( $rd($vs_state($struct_zero),$vs_base($struct_zero,t_$51),f_$54) == 0 ));
	assume (forall  p_$66 : $ptr, s_$10 : $state :: ( $mem(s_$10,p_$66) == $rd(s_$10,$base(p_$66),$field(p_$66)) ));
	assume (forall  S_$130 : $state, p_$178 : $ptr, v_$2 : Integer :: {$update_int(S_$130,p_$178,v_$2)} ( $specials_eq(S_$130,$update_int(S_$130,p_$178,v_$2)) && ($heap($update_int(S_$130,p_$178,v_$2)) == $update($heap(S_$130),$base(p_$178),$field(p_$178),v_$2)) ));
	assume (forall  S_$131 : $state :: {$program_entry_point(S_$131)} ( $program_entry_point(S_$131) ==> $program_entry_point_ch(S_$131) ));
	assume (forall  t_$24 : $ctype, p_$67 : $ptr :: ( $def_global(p_$67,t_$24) == (($is(p_$67,t_$24) && $is_object_root_ptr(p_$67)) && true) ));
	assume (forall  t_$25 : $ctype, p_$68 : $ptr :: ( $is_global(p_$68,t_$25) == ((forall  S_$44 : $state :: {$program_entry_point(S_$44)} ( $program_entry_point(S_$44) ==> ($extent_mutable(S_$44,p_$68) && ($owns(S_$44,p_$68) == $set_empty())) ))) ));
	assume (forall  sz_$17 : Integer, T_$4 : $ctype, p_$69 : $ptr :: ( $is_global_array(p_$69,T_$4,sz_$17) == ((forall  S_$45 : $state :: {$program_entry_point(S_$45)} ( $program_entry_point(S_$45) ==> $is_mutable_array(S_$45,p_$69,T_$4,sz_$17) ))) ));
	assume (forall  t_$26 : $ctype :: ( $def_datatype_type(t_$26) == ($def_math_type(t_$26) && $is_datatype(t_$26)) ));
	assume (forall  parent : $ctype, tag : $dt_tag, arity : Integer :: {$def_datatype_option(parent,tag,arity)} ( $def_datatype_option(parent,tag,arity) <==> $has_arity(tag,arity) ));
	assume (forall  s_$11 : $ptrset, p_$70 : $ptr :: ( $in(p_$70,s_$11) == s_$11[p_$70] ));
	assume (forall  s_$12 : $ptrset, p_$71 : $ptr :: ( $set_in(p_$71,s_$12) == s_$12[p_$71] ));
	assume $set_empty() == lambda#14();
	assume (forall  p_$179 : $ptr :: {$set_singleton(p_$179)} ( $set_singleton(p_$179) == lambda#15(p_$179) ));
	assume (forall  p_$180 : $ptr :: {$non_null_set_singleton(p_$180)} ( $non_null_set_singleton(p_$180) == lambda#16(p_$180) ));
	assume (forall  A_$1 : $ptrset, B_$1 : $ptrset :: {$set_union(A_$1,B_$1)} ( $set_union(A_$1,B_$1) == lambda#17(A_$1,B_$1) ));
	assume (forall  A_$2 : $ptrset, B_$2 : $ptrset :: {$set_difference(A_$2,B_$2)} ( $set_difference(A_$2,B_$2) == lambda#18(A_$2,B_$2) ));
	assume (forall  A_$3 : $ptrset, B_$3 : $ptrset :: {$set_intersection(A_$3,B_$3)} ( $set_intersection(A_$3,B_$3) == lambda#19(A_$3,B_$3) ));
	assume (forall  A_$4 : $ptrset, B_$4 : $ptrset :: {$set_subset(A_$4,B_$4)} ( $set_subset(A_$4,B_$4) <==> ((forall  o_$11 : $ptr :: {$set_in(o_$11,A_$4)} {$set_in(o_$11,B_$4)} ( $set_in(o_$11,A_$4) ==> $set_in(o_$11,B_$4) ))) ));
	assume (forall  e : $ptr, S_$46 : $ptrset :: ( $set_add_element(S_$46,e) == $set_union(S_$46,$set_singleton(e)) ));
	assume (forall  e_$0 : $ptr, S_$47 : $ptrset :: ( $set_remove_element(S_$47,e_$0) == $set_difference(S_$47,$set_singleton(e_$0)) ));
	assume (forall  #a : $ptrset, #b : $ptrset :: {$set_eq(#a,#b)} ( ((forall  #o_$0 : $ptr :: {$dont_instantiate(#o_$0)} ( $set_in(#o_$0,#a) <==> $set_in(#o_$0,#b) ))) ==> $set_eq(#a,#b) ));
	assume (forall  #a_$0 : $ptrset, #b_$0 : $ptrset :: {$set_eq(#a_$0,#b_$0)} ( $set_eq(#a_$0,#b_$0) ==> (#a_$0 == #b_$0) ));
	assume $set_cardinality($set_empty()) == 0;
	assume (forall  p_$181 : $ptr :: {$set_singleton(p_$181)} ( $set_cardinality($set_singleton(p_$181)) == 1 ));
	assume (forall  #o_$1 : $ptr :: {$set_in(#o_$1,$set_universe())} ( $set_in(#o_$1,$set_universe()) ));
	assume (forall  p_$182 : $ptr, s1_$2 : $ptrset, s2_$1 : $ptrset :: {$set_disjoint(s1_$2,s2_$1),$set_in(p_$182,s1_$2)} ( ($set_disjoint(s1_$2,s2_$1) && $set_in(p_$182,s1_$2)) ==> ($id_set_disjoint(p_$182,s1_$2,s2_$1) == 1) ));
	assume (forall  p_$183 : $ptr, s1_$3 : $ptrset, s2_$2 : $ptrset :: {$set_disjoint(s1_$3,s2_$2),$set_in(p_$183,s2_$2)} ( ($set_disjoint(s1_$3,s2_$2) && $set_in(p_$183,s2_$2)) ==> ($id_set_disjoint(p_$183,s1_$3,s2_$2) == 2) ));
	assume (forall  s1_$4 : $ptrset, s2_$3 : $ptrset :: {$set_disjoint(s1_$4,s2_$3)} ( ((forall  p_$184 : $ptr :: {$dont_instantiate(p_$184)} ( ($set_in(p_$184,s1_$4) ==> (!$set_in(p_$184,s2_$3))) && ($set_in(p_$184,s2_$3) ==> (!$set_in(p_$184,s1_$4))) ))) ==> $set_disjoint(s1_$4,s2_$3) ));
	assume (forall  p_$185 : $ptr, s_$20 : $ptrset :: {$set_in(p_$185,s_$20)} ( $set_in(p_$185,s_$20) ==> $set_in_pos(p_$185,s_$20) ));
	assume (forall  p_$186 : $ptr, s_$21 : $ptrset :: {$set_in0(p_$186,s_$21)} ( $set_in0(p_$186,s_$21) <==> $set_in(p_$186,s_$21) ));
	assume (forall  no : Integer, t_$52 : $ctype :: {$get_fnptr(no,t_$52)} ( $get_fnptr(no,t_$52) == $ptr($f_root(t_$52),$get_fnptr_ref(no)) ));
	assume (forall  no_$0 : Integer :: ( $get_fnptr_inv($get_fnptr_ref(no_$0)) == no_$0 ));
	assume (forall  no_$1 : Integer, t_$53 : $ctype :: {$get_fnptr(no_$1,t_$53)} ( $is_fnptr_type(t_$53) ==> ($in_range_phys_ptr($get_fnptr(no_$1,t_$53)) && $valid_fnptr($get_fnptr(no_$1,t_$53))) ));
	assume (forall  max : Integer, val : Integer, min : Integer :: ( $in_range(min,val,max) == ((min <= val) && (val <= max)) ));
	assume (forall  v_$0 : Boolean :: ( $bool_to_int(v_$0) == (if v_$0 then 1 else 0) ));
	assume (forall  x : Integer :: ( $int_to_bool(x) == (!(x == 0)) ));
	assume (forall  x_$12 : Boolean :: {$bool_id(x_$12)} ( $bool_id(x_$12) <==> x_$12 ));
	assume $min.i1 == (0 - 128);
	assume $max.i1 == 127;
	assume $min.i2 == (0 - 32768);
	assume $max.i2 == 32767;
	assume $min.i4 == (0 - (65536 * 32768));
	assume $max.i4 == ((65536 * 32768) - 1);
	assume $min.i8 == (0 - (((65536 * 65536) * 65536) * 32768));
	assume $max.i8 == ((((65536 * 65536) * 65536) * 32768) - 1);
	assume $max.u1 == 255;
	assume $max.u2 == 65535;
	assume $max.u4 == ((65536 * 65536) - 1);
	assume $max.u8 == ((((65536 * 65536) * 65536) * 65536) - 1);
	assume (forall  x_$0 : Integer :: ( $in_range_i1(x_$0) == $in_range($min.i1,x_$0,$max.i1) ));
	assume (forall  x_$1 : Integer :: ( $in_range_i2(x_$1) == $in_range($min.i2,x_$1,$max.i2) ));
	assume (forall  x_$2 : Integer :: ( $in_range_i4(x_$2) == $in_range($min.i4,x_$2,$max.i4) ));
	assume (forall  x_$3 : Integer :: ( $in_range_i8(x_$3) == $in_range($min.i8,x_$3,$max.i8) ));
	assume (forall  x_$4 : Integer :: ( $in_range_u1(x_$4) == $in_range(0,x_$4,$max.u1) ));
	assume (forall  x_$5 : Integer :: ( $in_range_u2(x_$5) == $in_range(0,x_$5,$max.u2) ));
	assume (forall  x_$6 : Integer :: ( $in_range_u4(x_$6) == $in_range(0,x_$6,$max.u4) ));
	assume (forall  x_$7 : Integer :: ( $in_range_u8(x_$7) == $in_range(0,x_$7,$max.u8) ));
	assume (forall  p_$72 : $ptr :: ( $in_range_ptr(p_$72) == $in_range_u8($addr(p_$72)) ));
	assume (forall  y : Integer, x_$8 : Integer :: ( $in_range_div_i1(x_$8,y) == ((!(y == (0 - 1))) || (!(x_$8 == $min.i1))) ));
	assume (forall  y_$0 : Integer, x_$9 : Integer :: ( $in_range_div_i2(x_$9,y_$0) == ((!(y_$0 == (0 - 1))) || (!(x_$9 == $min.i2))) ));
	assume (forall  y_$1 : Integer, x_$10 : Integer :: ( $in_range_div_i4(x_$10,y_$1) == ((!(y_$1 == (0 - 1))) || (!(x_$10 == $min.i4))) ));
	assume (forall  y_$2 : Integer, x_$11 : Integer :: ( $in_range_div_i8(x_$11,y_$2) == ((!(y_$2 == (0 - 1))) || (!(x_$11 == $min.i8))) ));
	assume (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((($_pow2(0) == 1) && ($_pow2(1) == 2)) && ($_pow2(2) == 4)) && ($_pow2(3) == 8)) && ($_pow2(4) == 16)) && ($_pow2(5) == 32)) && ($_pow2(6) == 64)) && ($_pow2(7) == 128)) && ($_pow2(8) == 256)) && ($_pow2(9) == 512)) && ($_pow2(10) == 1024)) && ($_pow2(11) == 2048)) && ($_pow2(12) == 4096)) && ($_pow2(13) == 8192)) && ($_pow2(14) == 16384)) && ($_pow2(15) == 32768)) && ($_pow2(16) == 65536)) && ($_pow2(17) == 131072)) && ($_pow2(18) == 262144)) && ($_pow2(19) == 524288)) && ($_pow2(20) == 1048576)) && ($_pow2(21) == 2097152)) && ($_pow2(22) == 4194304)) && ($_pow2(23) == 8388608)) && ($_pow2(24) == 16777216)) && ($_pow2(25) == 33554432)) && ($_pow2(26) == 67108864)) && ($_pow2(27) == 134217728)) && ($_pow2(28) == 268435456)) && ($_pow2(29) == 536870912)) && ($_pow2(30) == 1073741824)) && ($_pow2(31) == 2147483648)) && ($_pow2(32) == 4294967296)) && ($_pow2(33) == 8589934592)) && ($_pow2(34) == 17179869184)) && ($_pow2(35) == 34359738368)) && ($_pow2(36) == 68719476736)) && ($_pow2(37) == 137438953472)) && ($_pow2(38) == 274877906944)) && ($_pow2(39) == 549755813888)) && ($_pow2(40) == 1099511627776)) && ($_pow2(41) == 2199023255552)) && ($_pow2(42) == 4398046511104)) && ($_pow2(43) == 8796093022208)) && ($_pow2(44) == 17592186044416)) && ($_pow2(45) == 35184372088832)) && ($_pow2(46) == 70368744177664)) && ($_pow2(47) == 140737488355328)) && ($_pow2(48) == 281474976710656)) && ($_pow2(49) == 562949953421312)) && ($_pow2(50) == 1125899906842624)) && ($_pow2(51) == 2251799813685248)) && ($_pow2(52) == 4503599627370496)) && ($_pow2(53) == 9007199254740992)) && ($_pow2(54) == 18014398509481984)) && ($_pow2(55) == 36028797018963968)) && ($_pow2(56) == 72057594037927936)) && ($_pow2(57) == 144115188075855872)) && ($_pow2(58) == 288230376151711744)) && ($_pow2(59) == 576460752303423488)) && ($_pow2(60) == 1152921504606846976)) && ($_pow2(61) == 2305843009213693952)) && ($_pow2(62) == 4611686018427387904)) && ($_pow2(63) == 9223372036854775808)) && ($_pow2(64) == 18446744073709551616);
	assume $unchecked(^^u4,0 - 1) == $max.u4;
	assume $unchecked(^^u4,$max.u4 + 1) == 0;
	assume $unchecked(^^u8,0 - 1) == $max.u8;
	assume $unchecked(^^u8,$max.u8 + 1) == 0;
	assume (forall  bits : Integer, v_$3 : Integer :: {$in_range_ubits(bits,v_$3)} ( $in_range_ubits(bits,v_$3) <==> $in_range(0,v_$3,$_pow2(bits) - 1) ));
	assume (forall  bits_$0 : Integer, v_$4 : Integer :: {$unchecked_sbits(bits_$0,v_$4)} ( $in_range_sbits(bits_$0,$unchecked_sbits(bits_$0,v_$4)) && ($in_range_sbits(bits_$0,v_$4) ==> ($unchecked_sbits(bits_$0,v_$4) == v_$4)) ));
	assume (forall  bits_$1 : Integer, v_$5 : Integer :: {$in_range_sbits(bits_$1,v_$5)} ( $in_range_sbits(bits_$1,v_$5) <==> $in_range(0 - $_pow2(bits_$1 - 1),v_$5,$_pow2(bits_$1 - 1) - 1) ));
	assume (forall  bits_$2 : Integer, v_$6 : Integer :: {$unchecked_ubits(bits_$2,v_$6)} ( $in_range_ubits(bits_$2,$unchecked_ubits(bits_$2,v_$6)) && ($in_range_ubits(bits_$2,v_$6) ==> ($unchecked_ubits(bits_$2,v_$6) == v_$6)) ));
	assume (forall  x_$13 : Integer :: {$abs(x_$13)} ( $abs(x_$13) == (if (x_$13 < 0) then (0 - x_$13) else x_$13) ));
	assume (forall  t_$54 : $ctype, x_$14 : Integer, y_$3 : Integer :: {$unchk_add(t_$54,x_$14,y_$3)} ( $unchk_add(t_$54,x_$14,y_$3) == $unchecked(t_$54,x_$14 + y_$3) ));
	assume (forall  t_$55 : $ctype, x_$15 : Integer, y_$4 : Integer :: {$unchk_sub(t_$55,x_$15,y_$4)} ( $unchk_sub(t_$55,x_$15,y_$4) == $unchecked(t_$55,x_$15 - y_$4) ));
	assume (forall  t_$56 : $ctype, x_$16 : Integer, y_$5 : Integer :: {$unchk_mul(t_$56,x_$16,y_$5)} ( $unchk_mul(t_$56,x_$16,y_$5) == $unchecked(t_$56,x_$16 * y_$5) ));
	assume (forall  t_$57 : $ctype, x_$17 : Integer, y_$6 : Integer :: {$unchk_div(t_$57,x_$17,y_$6)} ( $unchk_div(t_$57,x_$17,y_$6) == $unchecked(t_$57,x_$17 div y_$6) ));
	assume (forall  t_$58 : $ctype, x_$18 : Integer, y_$7 : Integer :: {$unchk_mod(t_$58,x_$18,y_$7)} ( $unchk_mod(t_$58,x_$18,y_$7) == $unchecked(t_$58,x_$18 mod y_$7) ));
	assume (forall  x_$19 : Integer, y_$8 : Integer :: {$unchk_add(^^u8,x_$19,y_$8)} ( (($in_range_u8(x_$19) && $in_range_u8(y_$8)) && ((x_$19 + y_$8) > $max.u8)) ==> ($unchk_add(^^u8,x_$19,y_$8) == (((x_$19 + y_$8) - $max.u8) - 1)) ));
	assume (forall  x_$20 : Integer, y_$9 : Integer :: {$unchk_add(^^u4,x_$20,y_$9)} ( (($in_range_u4(x_$20) && $in_range_u4(y_$9)) && ((x_$20 + y_$9) > $max.u8)) ==> ($unchk_add(^^u4,x_$20,y_$9) == (((x_$20 + y_$9) - $max.u4) - 1)) ));
	assume (forall  t_$59 : $ctype, x_$21 : Integer, y_$10 : Integer :: {$_shl(t_$59,x_$21,y_$10)} ( $_shl(t_$59,x_$21,y_$10) == $unchecked(t_$59,x_$21 * $_pow2(y_$10)) ));
	assume (forall  x_$22 : Integer, y_$11 : Integer :: {$_shr(x_$22,y_$11)} ( $_shr(x_$22,y_$11) == (x_$22 div $_pow2(y_$11)) ));
	assume (forall  x_$23 : Integer, from : Integer, to : Integer, xs : Integer, val_$0 : Integer :: {$bv_update(x_$23,xs,from,to,val_$0)} ( (((0 <= from) && (from < to)) && (to <= xs)) ==> (((0 <= val_$0) && (val_$0 < $_pow2(to - from))) ==> ((0 <= $bv_update(x_$23,xs,from,to,val_$0)) && ($bv_update(x_$23,xs,from,to,val_$0) < $_pow2(xs)))) ));
	assume (forall  from_$0 : Integer, to_$0 : Integer, xs_$0 : Integer :: {$bv_update(0,xs_$0,from_$0,to_$0,0)} ( (((0 <= from_$0) && (from_$0 < to_$0)) && (to_$0 <= xs_$0)) ==> ($bv_update(0,xs_$0,from_$0,to_$0,0) == 0) ));
	assume (forall  from_$1 : Integer, to_$1 : Integer, val_$1 : Integer, x_$24 : Integer, xs_$1 : Integer :: {$bv_extract_signed($bv_update(x_$24,xs_$1,from_$1,to_$1,val_$1),xs_$1,from_$1,to_$1)} ( (((0 <= from_$1) && (from_$1 < to_$1)) && (to_$1 <= xs_$1)) ==> ((((0 - $_pow2((to_$1 - from_$1) - 1)) <= val_$1) && (val_$1 < $_pow2((to_$1 - from_$1) - 1))) ==> ($bv_extract_signed($bv_update(x_$24,xs_$1,from_$1,to_$1,val_$1),xs_$1,from_$1,to_$1) == val_$1)) ));
	assume (forall  from_$2 : Integer, to_$2 : Integer, val_$2 : Integer, x_$25 : Integer, xs_$2 : Integer :: {$bv_extract_unsigned($bv_update(x_$25,xs_$2,from_$2,to_$2,val_$2),xs_$2,from_$2,to_$2)} ( (((0 <= from_$2) && (from_$2 < to_$2)) && (to_$2 <= xs_$2)) ==> (((0 <= val_$2) && (val_$2 < $_pow2(to_$2 - from_$2))) ==> ($bv_extract_unsigned($bv_update(x_$25,xs_$2,from_$2,to_$2,val_$2),xs_$2,from_$2,to_$2) == val_$2)) ));
	assume (forall  from_$3 : Integer, to_$3 : Integer, x_$26 : Integer, xs_$3 : Integer :: {$bv_extract_signed(x_$26,xs_$3,from_$3,to_$3)} ( (((0 <= from_$3) && (from_$3 < to_$3)) && (to_$3 <= xs_$3)) ==> $in_range(0 - $_pow2((to_$3 - from_$3) - 1),$bv_extract_signed(x_$26,xs_$3,from_$3,to_$3),$_pow2((to_$3 - from_$3) - 1) - 1) ));
	assume (forall  from_$4 : Integer, to_$4 : Integer, x_$27 : Integer, xs_$4 : Integer :: {$bv_extract_unsigned(x_$27,xs_$4,from_$4,to_$4)} ( (((0 <= from_$4) && (from_$4 < to_$4)) && (to_$4 <= xs_$4)) ==> $in_range(0,$bv_extract_unsigned(x_$27,xs_$4,from_$4,to_$4),$_pow2(to_$4 - from_$4) - 1) ));
	assume (forall  from_$5 : Integer, to_$5 : Integer, x_$28 : Integer, y_$12 : Integer :: {$bv_extract_unsigned(x_$28,32,from_$5,to_$5),$_and(^^u4,x_$28,y_$12)} ( (((0 <= from_$5) && (from_$5 < to_$5)) && (to_$5 <= 32)) ==> ($bv_extract_unsigned(x_$28,32,from_$5,to_$5) == $_shr($_and(^^u4,x_$28,$_shl(^^u4,$_shl(^^u4,1,to_$5 - from_$5) - 1,from_$5)),from_$5)) ));
	assume (forall  from_$6 : Integer, to_$6 : Integer, x_$29 : Integer, y_$13 : Integer :: {$bv_extract_unsigned(x_$29,64,from_$6,to_$6),$_and(^^u8,x_$29,y_$13)} ( (((0 <= from_$6) && (from_$6 < to_$6)) && (to_$6 <= 64)) ==> ($bv_extract_unsigned(x_$29,64,from_$6,to_$6) == $_shr($_and(^^u8,x_$29,$_shl(^^u4,$_shl(^^u8,1,to_$6 - from_$6) - 1,from_$6)),from_$6)) ));
	assume (forall  from_$7 : Integer, to_$7 : Integer, val_$3 : Integer, x_$30 : Integer, xs_$5 : Integer, from2 : Integer, to2 : Integer :: {$bv_extract_signed($bv_update(x_$30,xs_$5,from_$7,to_$7,val_$3),xs_$5,from2,to2)} ( (((0 <= from_$7) && (from_$7 < to_$7)) && (to_$7 <= xs_$5)) ==> ((((0 <= from2) && (from2 < to2)) && (to2 <= xs_$5)) ==> (((to2 <= from_$7) || (to_$7 <= from2)) ==> ($bv_extract_signed($bv_update(x_$30,xs_$5,from_$7,to_$7,val_$3),xs_$5,from2,to2) == $bv_extract_signed(x_$30,xs_$5,from2,to2)))) ));
	assume (forall  from_$8 : Integer, to_$8 : Integer, val_$4 : Integer, x_$31 : Integer, xs_$6 : Integer, from2_$0 : Integer, to2_$0 : Integer :: {$bv_extract_unsigned($bv_update(x_$31,xs_$6,from_$8,to_$8,val_$4),xs_$6,from2_$0,to2_$0)} ( (((0 <= from_$8) && (from_$8 < to_$8)) && (to_$8 <= xs_$6)) ==> ((((0 <= from2_$0) && (from2_$0 < to2_$0)) && (to2_$0 <= xs_$6)) ==> (((to2_$0 <= from_$8) || (to_$8 <= from2_$0)) ==> ($bv_extract_unsigned($bv_update(x_$31,xs_$6,from_$8,to_$8,val_$4),xs_$6,from2_$0,to2_$0) == $bv_extract_unsigned(x_$31,xs_$6,from2_$0,to2_$0)))) ));
	assume (forall  from_$9 : Integer, to_$9 : Integer, xs_$7 : Integer :: {$bv_extract_signed(0,xs_$7,from_$9,to_$9)} ( (((0 <= from_$9) && (from_$9 < to_$9)) && (to_$9 <= xs_$7)) ==> ($bv_extract_signed(0,xs_$7,from_$9,to_$9) == 0) ));
	assume (forall  from_$10 : Integer, to_$10 : Integer, xs_$8 : Integer :: {$bv_extract_unsigned(0,xs_$8,from_$10,to_$10)} ( (((0 <= from_$10) && (from_$10 < to_$10)) && (to_$10 <= xs_$8)) ==> ($bv_extract_unsigned(0,xs_$8,from_$10,to_$10) == 0) ));
	assume (forall  from_$11 : Integer, to_$11 : Integer, val_$5 : Integer, xs_$9 : Integer :: {$bv_extract_unsigned(val_$5,xs_$9,from_$11,to_$11)} ( ((((0 <= from_$11) && (from_$11 < to_$11)) && (to_$11 <= xs_$9)) && (0 <= val_$5)) ==> ($bv_extract_unsigned(val_$5,xs_$9,from_$11,to_$11) == ((val_$5 div $_pow2(from_$11)) mod $_pow2(to_$11 - from_$11))) ));
	assume (forall  from_$12 : Integer, to_$12 : Integer, val_$6 : Integer, xs_$10 : Integer :: {$bv_extract_signed(val_$6,xs_$10,from_$12,to_$12)} ( (((((0 <= from_$12) && (from_$12 < to_$12)) && (to_$12 <= xs_$10)) && (0 <= val_$6)) && (((val_$6 div $_pow2(from_$12)) mod $_pow2(to_$12 - from_$12)) < $_pow2((to_$12 - from_$12) - 1))) ==> ($bv_extract_signed(val_$6,xs_$10,from_$12,to_$12) == ((val_$6 div $_pow2(from_$12)) mod $_pow2(to_$12 - from_$12))) ));
	assume (forall  from_$13 : Integer, to_$13 : Integer, val_$7 : Integer, xs_$11 : Integer :: {$bv_extract_signed(val_$7,xs_$11,from_$13,to_$13)} ( (((((0 <= from_$13) && (from_$13 < to_$13)) && (to_$13 <= xs_$11)) && (0 <= val_$7)) && (((val_$7 div $_pow2(from_$13)) mod $_pow2(to_$13 - from_$13)) >= $_pow2((to_$13 - from_$13) - 1))) ==> ($bv_extract_signed(val_$7,xs_$11,from_$13,to_$13) == ($_pow2((to_$13 - from_$13) - 1) - ((val_$7 div $_pow2(from_$13)) mod $_pow2(to_$13 - from_$13)))) ));
	assume (forall  val_$8 : Integer :: {$in_range_t(^^i1,val_$8)} ( $in_range_t(^^i1,val_$8) <==> $in_range_i1(val_$8) ));
	assume (forall  val_$9 : Integer :: {$in_range_t(^^i2,val_$9)} ( $in_range_t(^^i2,val_$9) <==> $in_range_i2(val_$9) ));
	assume (forall  val_$10 : Integer :: {$in_range_t(^^i4,val_$10)} ( $in_range_t(^^i4,val_$10) <==> $in_range_i4(val_$10) ));
	assume (forall  val_$11 : Integer :: {$in_range_t(^^i8,val_$11)} ( $in_range_t(^^i8,val_$11) <==> $in_range_i8(val_$11) ));
	assume (forall  val_$12 : Integer :: {$in_range_t(^^u1,val_$12)} ( $in_range_t(^^u1,val_$12) <==> $in_range_u1(val_$12) ));
	assume (forall  val_$13 : Integer :: {$in_range_t(^^u2,val_$13)} ( $in_range_t(^^u2,val_$13) <==> $in_range_u2(val_$13) ));
	assume (forall  val_$14 : Integer :: {$in_range_t(^^u4,val_$14)} ( $in_range_t(^^u4,val_$14) <==> $in_range_u4(val_$14) ));
	assume (forall  val_$15 : Integer :: {$in_range_t(^^u8,val_$15)} ( $in_range_t(^^u8,val_$15) <==> $in_range_u8(val_$15) ));
	assume (forall  val_$16 : Integer :: {$in_range_t(^^mathint,val_$16)} ( $in_range_t(^^mathint,val_$16) ));
	assume (forall  t_$60 : $ctype, val_$17 : Integer :: {$unchecked(t_$60,val_$17)} ( $in_range_t(t_$60,val_$17) ==> ($unchecked(t_$60,val_$17) == val_$17) ));
	assume (forall  t_$61 : $ctype, val_$18 : Integer :: {$unchecked(t_$61,val_$18)} ( $in_range_t(t_$61,$unchecked(t_$61,val_$18)) ));
	assume (forall  val_$19 : Integer :: {$unchecked(^^u1,$unchecked(^^i1,val_$19))} ( $in_range_u1(val_$19) ==> ($unchecked(^^u1,$unchecked(^^i1,val_$19)) == val_$19) ));
	assume (forall  val_$20 : Integer :: {$unchecked(^^u2,$unchecked(^^i2,val_$20))} ( $in_range_u2(val_$20) ==> ($unchecked(^^u2,$unchecked(^^i2,val_$20)) == val_$20) ));
	assume (forall  val_$21 : Integer :: {$unchecked(^^u4,$unchecked(^^i4,val_$21))} ( $in_range_u4(val_$21) ==> ($unchecked(^^u4,$unchecked(^^i4,val_$21)) == val_$21) ));
	assume (forall  val_$22 : Integer :: {$unchecked(^^u8,$unchecked(^^i8,val_$22))} ( $in_range_u8(val_$22) ==> ($unchecked(^^u8,$unchecked(^^i8,val_$22)) == val_$22) ));
	assume (forall  val_$23 : Integer :: {$unchecked(^^i1,$unchecked(^^u1,val_$23))} ( $in_range_i1(val_$23) ==> ($unchecked(^^i1,$unchecked(^^u1,val_$23)) == val_$23) ));
	assume (forall  val_$24 : Integer :: {$unchecked(^^i2,$unchecked(^^u2,val_$24))} ( $in_range_i2(val_$24) ==> ($unchecked(^^i2,$unchecked(^^u2,val_$24)) == val_$24) ));
	assume (forall  val_$25 : Integer :: {$unchecked(^^i4,$unchecked(^^u4,val_$25))} ( $in_range_i4(val_$25) ==> ($unchecked(^^i4,$unchecked(^^u4,val_$25)) == val_$25) ));
	assume (forall  val_$26 : Integer :: {$unchecked(^^i8,$unchecked(^^u8,val_$26))} ( $in_range_i8(val_$26) ==> ($unchecked(^^i8,$unchecked(^^u8,val_$26)) == val_$26) ));
	assume (forall  t_$62 : $ctype, x_$32 : Integer, y_$14 : Integer, z : Integer :: {x_$32 mod $_pow2(y_$14),$_and(t_$62,x_$32,z)} ( (($in_range_t(t_$62,x_$32) && $in_range_t(t_$62,$_pow2(y_$14) - 1)) && (x_$32 >= 0)) ==> ((x_$32 mod $_pow2(y_$14)) == $_and(t_$62,x_$32,$_pow2(y_$14) - 1)) ));
	assume (forall  i_$16 : Integer, j_$1 : Integer :: {i_$16 div j_$1} ( ((0 <= i_$16) && (0 < j_$1)) ==> ((i_$16 div j_$1) <= i_$16) ));
	assume (forall  i_$17 : Integer, j_$2 : Integer :: {i_$17 div j_$2} ( ((i_$17 > 0) && (j_$2 > 0)) ==> (((i_$17 - j_$2) < ((i_$17 div j_$2) * j_$2)) && (((i_$17 div j_$2) * j_$2) <= i_$17)) ));
	assume (forall  i_$18 : Integer :: {i_$18 div i_$18} ( (!(i_$18 == 0)) ==> ((i_$18 div i_$18) == 1) ));
	assume (forall  i_$19 : Integer :: {0 div i_$19} ( (!(i_$19 == 0)) ==> ((0 div i_$19) == 0) ));
	assume (forall  x_$33 : Integer, y_$15 : Integer :: {x_$33 mod y_$15} {x_$33 div y_$15} ( (x_$33 mod y_$15) == (x_$33 - ((x_$33 div y_$15) * y_$15)) ));
	assume (forall  x_$34 : Integer, y_$16 : Integer :: {x_$34 mod y_$16} ( ((0 <= x_$34) && (0 < y_$16)) ==> ((0 <= (x_$34 mod y_$16)) && ((x_$34 mod y_$16) < y_$16)) ));
	assume (forall  x_$35 : Integer, y_$17 : Integer :: {x_$35 mod y_$17} ( ((0 <= x_$35) && (y_$17 < 0)) ==> ((0 <= (x_$35 mod y_$17)) && ((x_$35 mod y_$17) < (0 - y_$17))) ));
	assume (forall  x_$36 : Integer, y_$18 : Integer :: {x_$36 mod y_$18} ( ((x_$36 <= 0) && (0 < y_$18)) ==> (((0 - y_$18) < (x_$36 mod y_$18)) && ((x_$36 mod y_$18) <= 0)) ));
	assume (forall  x_$37 : Integer, y_$19 : Integer :: {x_$37 mod y_$19} ( ((x_$37 <= 0) && (y_$19 < 0)) ==> ((y_$19 < (x_$37 mod y_$19)) && ((x_$37 mod y_$19) <= 0)) ));
	assume (forall  t_$63 : $ctype, x_$38 : Integer, y_$20 : Integer :: {$_and(t_$63,x_$38,y_$20)} ( ((0 <= x_$38) && $in_range_t(t_$63,x_$38)) ==> ((0 <= $_and(t_$63,x_$38,y_$20)) && ($_and(t_$63,x_$38,y_$20) <= x_$38)) ));
	assume (forall  t_$64 : $ctype, x_$39 : Integer, y_$21 : Integer :: {$_and(t_$64,x_$39,y_$21)} ( ((((0 <= x_$39) && (0 <= y_$21)) && $in_range_t(t_$64,x_$39)) && $in_range_t(t_$64,y_$21)) ==> (($_and(t_$64,x_$39,y_$21) <= x_$39) && ($_and(t_$64,x_$39,y_$21) <= y_$21)) ));
	assume (forall  t_$65 : $ctype, x_$40 : Integer, y_$22 : Integer :: {$_or(t_$65,x_$40,y_$22)} ( ((((0 <= x_$40) && (0 <= y_$22)) && $in_range_t(t_$65,x_$40)) && $in_range_t(t_$65,y_$22)) ==> ((0 <= $_or(t_$65,x_$40,y_$22)) && ($_or(t_$65,x_$40,y_$22) <= (x_$40 + y_$22))) ));
	assume (forall  t_$66 : $ctype, x_$41 : Integer, y_$23 : Integer :: {$_or(t_$66,x_$41,y_$23)} ( ((((0 <= x_$41) && (0 <= y_$23)) && $in_range_t(t_$66,x_$41)) && $in_range_t(t_$66,y_$23)) ==> ((x_$41 <= $_or(t_$66,x_$41,y_$23)) && (y_$23 <= $_or(t_$66,x_$41,y_$23))) ));
	assume (forall  t_$67 : $ctype, x_$42 : Integer, y_$24 : Integer, z_$0 : Integer :: {$_or(t_$67,x_$42,y_$24),$_pow2(z_$0)} ( ((((((((0 <= x_$42) && (0 <= y_$24)) && (0 <= z_$0)) && (z_$0 < 64)) && (x_$42 < $_pow2(z_$0))) && (y_$24 < $_pow2(z_$0))) && $in_range_t(t_$67,x_$42)) && $in_range_t(t_$67,y_$24)) ==> ($_or(t_$67,x_$42,y_$24) < $_pow2(z_$0)) ));
	assume (forall  t_$68 : $ctype, x_$43 : Integer, y_$25 : Integer :: {$_or(t_$68,x_$43,y_$25)} ( ($in_range_u1(x_$43) && $in_range_u1(y_$25)) ==> $in_range_u1($_or(t_$68,x_$43,y_$25)) ));
	assume (forall  t_$69 : $ctype, x_$44 : Integer, y_$26 : Integer :: {$_or(t_$69,x_$44,y_$26)} ( ($in_range_u2(x_$44) && $in_range_u2(y_$26)) ==> $in_range_u2($_or(t_$69,x_$44,y_$26)) ));
	assume (forall  t_$70 : $ctype, x_$45 : Integer, y_$27 : Integer :: {$_or(t_$70,x_$45,y_$27)} ( ($in_range_u4(x_$45) && $in_range_u4(y_$27)) ==> $in_range_u4($_or(t_$70,x_$45,y_$27)) ));
	assume (forall  t_$71 : $ctype, x_$46 : Integer, y_$28 : Integer :: {$_or(t_$71,x_$46,y_$28)} ( ($in_range_u8(x_$46) && $in_range_u8(y_$28)) ==> $in_range_u8($_or(t_$71,x_$46,y_$28)) ));
	assume (forall  t_$72 : $ctype, x_$47 : Integer, y_$29 : Integer :: {$_and(t_$72,x_$47,y_$29)} ( ($in_range_u1(x_$47) && $in_range_u1(y_$29)) ==> $in_range_u1($_and(t_$72,x_$47,y_$29)) ));
	assume (forall  t_$73 : $ctype, x_$48 : Integer, y_$30 : Integer :: {$_and(t_$73,x_$48,y_$30)} ( ($in_range_u2(x_$48) && $in_range_u2(y_$30)) ==> $in_range_u2($_and(t_$73,x_$48,y_$30)) ));
	assume (forall  t_$74 : $ctype, x_$49 : Integer, y_$31 : Integer :: {$_and(t_$74,x_$49,y_$31)} ( ($in_range_u4(x_$49) && $in_range_u4(y_$31)) ==> $in_range_u4($_and(t_$74,x_$49,y_$31)) ));
	assume (forall  t_$75 : $ctype, x_$50 : Integer, y_$32 : Integer :: {$_and(t_$75,x_$50,y_$32)} ( ($in_range_u8(x_$50) && $in_range_u8(y_$32)) ==> $in_range_u8($_and(t_$75,x_$50,y_$32)) ));
	assume (forall  t_$76 : $ctype, x_$51 : Integer, y_$33 : Integer :: {$_xor(t_$76,x_$51,y_$33)} ( ($in_range_u1(x_$51) && $in_range_u1(y_$33)) ==> $in_range_u1($_xor(t_$76,x_$51,y_$33)) ));
	assume (forall  t_$77 : $ctype, x_$52 : Integer, y_$34 : Integer :: {$_xor(t_$77,x_$52,y_$34)} ( ($in_range_u2(x_$52) && $in_range_u2(y_$34)) ==> $in_range_u2($_xor(t_$77,x_$52,y_$34)) ));
	assume (forall  t_$78 : $ctype, x_$53 : Integer, y_$35 : Integer :: {$_xor(t_$78,x_$53,y_$35)} ( ($in_range_u4(x_$53) && $in_range_u4(y_$35)) ==> $in_range_u4($_xor(t_$78,x_$53,y_$35)) ));
	assume (forall  t_$79 : $ctype, x_$54 : Integer, y_$36 : Integer :: {$_xor(t_$79,x_$54,y_$36)} ( ($in_range_u8(x_$54) && $in_range_u8(y_$36)) ==> $in_range_u8($_xor(t_$79,x_$54,y_$36)) ));
	assume (forall  t_$80 : $ctype, x_$55 : Integer :: {$_not(t_$80,x_$55)} ( $in_range_t(t_$80,$_not(t_$80,x_$55)) ));
	assume (forall  t_$81 : $ctype, x_$56 : Integer :: {$_or(t_$81,x_$56,$_not(t_$81,x_$56))} ( $_or(t_$81,x_$56,$_not(t_$81,x_$56)) == $_not(t_$81,0) ));
	assume (forall  t_$82 : $ctype, x_$57 : Integer :: {$_and(t_$82,x_$57,$_not(t_$82,x_$57))} ( $_and(t_$82,x_$57,$_not(t_$82,x_$57)) == 0 ));
	assume (forall  t_$83 : $ctype, x_$58 : Integer :: {$_or(t_$83,x_$58,0)} ( $in_range_t(t_$83,x_$58) ==> ($_or(t_$83,x_$58,0) == x_$58) ));
	assume (forall  t_$84 : $ctype, x_$59 : Integer :: {$_or(t_$84,x_$59,$_not(t_$84,0))} ( $_or(t_$84,x_$59,$_not(t_$84,0)) == $_not(t_$84,0) ));
	assume (forall  t_$85 : $ctype, x_$60 : Integer :: {$_or(t_$85,x_$60,x_$60)} ( $in_range_t(t_$85,x_$60) ==> ($_or(t_$85,x_$60,x_$60) == x_$60) ));
	assume (forall  t_$86 : $ctype, x_$61 : Integer :: {$_and(t_$86,x_$61,0)} ( $_and(t_$86,x_$61,0) == 0 ));
	assume (forall  t_$87 : $ctype, x_$62 : Integer :: {$_and(t_$87,x_$62,$_not(t_$87,0))} ( $in_range_t(t_$87,x_$62) ==> ($_and(t_$87,x_$62,$_not(t_$87,0)) == x_$62) ));
	assume (forall  t_$88 : $ctype, x_$63 : Integer :: {$_and(t_$88,x_$63,x_$63)} ( $in_range_t(t_$88,x_$63) ==> ($_and(t_$88,x_$63,x_$63) == x_$63) ));
	assume (forall  t_$89 : $ctype, x_$64 : Integer, y_$37 : Integer :: {$_and(t_$89,$_or(t_$89,x_$64,y_$37),y_$37)} ( $_and(t_$89,$_or(t_$89,x_$64,y_$37),y_$37) == y_$37 ));
	assume (forall  t_$90 : $ctype, x_$65 : Integer, y_$38 : Integer :: {$_and(t_$90,$_or(t_$90,x_$65,y_$38),x_$65)} ( $_and(t_$90,$_or(t_$90,x_$65,y_$38),x_$65) == x_$65 ));
	assume (forall  t_$91 : $ctype, x_$66 : Integer :: {$_xor(t_$91,x_$66,0)} ( $in_range_t(t_$91,x_$66) ==> ($_xor(t_$91,x_$66,0) == x_$66) ));
	assume (forall  t_$92 : $ctype, x_$67 : Integer :: {$_xor(t_$92,x_$67,x_$67)} ( $_xor(t_$92,x_$67,x_$67) == 0 ));
	assume (forall  t_$93 : $ctype, x_$68 : Integer :: {$_xor(t_$93,x_$68,$_not(t_$93,0))} ( $_xor(t_$93,x_$68,$_not(t_$93,0)) == $_not(t_$93,x_$68) ));
	assume (forall  t_$94 : $ctype, x_$69 : Integer :: {$_not(t_$94,$_not(t_$94,x_$69))} ( $in_range_t(t_$94,x_$69) ==> ($_not(t_$94,$_not(t_$94,x_$69)) == x_$69) ));
	assume (forall  t_$95 : $ctype, x_$70 : Integer, y_$39 : Integer :: {$_or(t_$95,x_$70,y_$39)} ( $_or(t_$95,x_$70,y_$39) == $_or(t_$95,y_$39,x_$70) ));
	assume (forall  t_$96 : $ctype, x_$71 : Integer, y_$40 : Integer :: {$_xor(t_$96,x_$71,y_$40)} ( $_xor(t_$96,x_$71,y_$40) == $_xor(t_$96,y_$40,x_$71) ));
	assume (forall  t_$97 : $ctype, x_$72 : Integer, y_$41 : Integer :: {$_and(t_$97,x_$72,y_$41)} ( $_and(t_$97,x_$72,y_$41) == $_and(t_$97,y_$41,x_$72) ));
	assume (forall  x_$73 : Integer, y_$42 : Integer :: {$op_mul(x_$73,y_$42)} ( $op_mul(x_$73,y_$42) == (x_$73 * y_$42) ));
	assume (forall  t_$98 : $ctype, x_$74 : Integer, y_$43 : Integer :: {$op_add(t_$98,x_$74,y_$43)} ( $op_add(t_$98,x_$74,y_$43) == (x_$74 + y_$43) ));
	assume (forall  t_$99 : $ctype, x_$75 : Integer, y_$44 : Integer :: {$op_sub(t_$99,x_$75,y_$44)} ( $op_sub(t_$99,x_$75,y_$44) == (x_$75 - y_$44) ));
	assume (forall  t_$100 : $ctype, x_$76 : Integer, y_$45 : Integer :: {$op_div(t_$100,x_$76,y_$45)} ( $op_div(t_$100,x_$76,y_$45) == (x_$76 div y_$45) ));
	assume (forall  t_$101 : $ctype, x_$77 : Integer, y_$46 : Integer :: {$op_lt(t_$101,x_$77,y_$46)} ( $op_lt(t_$101,x_$77,y_$46) <==> (x_$77 < y_$46) ));
	assume (forall  t_$102 : $ctype, x_$78 : Integer, y_$47 : Integer :: {$op_le(t_$102,x_$78,y_$47)} ( $op_le(t_$102,x_$78,y_$47) <==> (x_$78 <= y_$47) ));
	assume (forall  t_$103 : $ctype, x_$79 : Integer, y_$48 : Integer :: {$op_gt(t_$103,x_$79,y_$48)} ( $op_gt(t_$103,x_$79,y_$48) <==> (x_$79 > y_$48) ));
	assume (forall  t_$104 : $ctype, x_$80 : Integer, y_$49 : Integer :: {$op_ge(t_$104,x_$80,y_$49)} ( $op_ge(t_$104,x_$80,y_$49) <==> (x_$80 >= y_$49) ));
	assume (forall  p_$187 : $ptr :: ( $int_to_ptr($ptr_to_int(p_$187)) == p_$187 ));
	assume (forall  p_$188 : $field :: ( $int_to_field($field_to_int(p_$188)) == p_$188 ));
	assume (forall  p_$189 : $ptrset :: ( $int_to_ptrset($ptrset_to_int(p_$189)) == p_$189 ));
	assume ($arch_ptr_size >= 8) ==> ((forall  k : Integer :: {$u8_to_ptr(k)} ( $addr($u8_to_ptr(k)) == k )));
	assume (forall  k_$0 : Integer :: {$u4_to_ptr(k_$0)} ( $addr($u4_to_ptr(k_$0)) == k_$0 ));
	assume (forall  k_$1 : Integer :: {$u2_to_ptr(k_$1)} ( $addr($u2_to_ptr(k_$1)) == k_$1 ));
	assume (forall  k_$2 : Integer :: {$u1_to_ptr(k_$2)} ( $addr($u1_to_ptr(k_$2)) == k_$2 ));
	assume ($arch_ptr_size >= 8) ==> ((forall  k_$3 : Integer :: {$i8_to_ptr(k_$3)} ( (k_$3 >= 0) ==> ($addr($i8_to_ptr(k_$3)) == k_$3) )));
	assume (forall  k_$4 : Integer :: {$i4_to_ptr(k_$4)} ( (k_$4 >= 0) ==> ($addr($i4_to_ptr(k_$4)) == k_$4) ));
	assume (forall  k_$5 : Integer :: {$i2_to_ptr(k_$5)} ( (k_$5 >= 0) ==> ($addr($i2_to_ptr(k_$5)) == k_$5) ));
	assume (forall  k_$6 : Integer :: {$i1_to_ptr(k_$6)} ( (k_$6 >= 0) ==> ($addr($i1_to_ptr(k_$6)) == k_$6) ));
	assume (forall  p_$190 : $ptr :: {$ptr_to_u8(p_$190)} ( $in_range_u8($addr(p_$190)) ==> ($ptr_to_u8(p_$190) == $addr(p_$190)) ));
	assume (forall  p_$191 : $ptr :: {$ptr_to_i8(p_$191)} ( $in_range_i8($addr(p_$191)) ==> ($ptr_to_i8(p_$191) == $addr(p_$191)) ));
	assume (forall  p_$192 : $ptr :: {$ptr_to_u4(p_$192)} ( $in_range_u4($addr(p_$192)) ==> ($ptr_to_u4(p_$192) == $addr(p_$192)) ));
	assume (forall  p_$193 : $ptr :: {$ptr_to_i4(p_$193)} ( $in_range_i4($addr(p_$193)) ==> ($ptr_to_i4(p_$193) == $addr(p_$193)) ));
	assume (forall  p_$194 : $ptr :: {$ptr_to_u2(p_$194)} ( $in_range_u2($addr(p_$194)) ==> ($ptr_to_u2(p_$194) == $addr(p_$194)) ));
	assume (forall  p_$195 : $ptr :: {$ptr_to_i2(p_$195)} ( $in_range_i2($addr(p_$195)) ==> ($ptr_to_i2(p_$195) == $addr(p_$195)) ));
	assume (forall  p_$196 : $ptr :: {$ptr_to_u1(p_$196)} ( $in_range_u1($addr(p_$196)) ==> ($ptr_to_u1(p_$196) == $addr(p_$196)) ));
	assume (forall  p_$197 : $ptr :: {$ptr_to_i1(p_$197)} ( $in_range_i1($addr(p_$197)) ==> ($ptr_to_i1(p_$197) == $addr(p_$197)) ));
	assume (forall  otherwise : Boolean, caller : Integer, called : Integer :: ( $int_lt_or(called,caller,otherwise) == (((0 <= caller) && (called < caller)) || ((called == caller) && otherwise)) ));
	assume (forall  S_$132 : $state, id_$0 : Integer, length : Integer :: {$good_state(S_$132),$get_string_literal(id_$0,length)} ( $good_state(S_$132) ==> ($in_range_phys_ptr($get_string_literal(id_$0,length)) && $is_thread_local_array(S_$132,$get_string_literal(id_$0,length),^^i1,length + 1)) ));
	assume $arch_ptr_size == 8;
	assume $arch_spec_ptr_start == $max.u8;
	assume $def_math_type(^$#thread_id);
	assume (forall  SP#i : Integer, SP#map : $map_t..^^mathint.^^mathint :: {F#fsum(SP#i,SP#map)} ( F#fsum(SP#i,SP#map) == (if (SP#i <= 0) then 0 else ($select.$map_t..^^mathint.^^mathint(SP#map,SP#i - 1) + F#fsum(SP#i - 1,SP#map))) ));
	assume $function_arg_type(cf#fsum,0,^^mathint);
	assume $function_arg_type(cf#fsum,1,^^mathint);
	assume $function_arg_type(cf#fsum,2,$map_t(^^mathint,^^mathint));
	assume (forall  #s0 : $state, #s1_$3 : $state, #l1 : $ptr, #l0 : Integer :: {$trans_call_transition(#s0,#s1_$3),F#lambda#4(#s0,#l1,#l0),F#lambda#4(#s1_$3,#l1,#l0)} {:weight  5}( $eq.$map_t..^^mathint.^^mathint(F#lambda#4(#s0,#l1,#l0),F#lambda#4(#s1_$3,#l1,#l0)) ==> (F#lambda#4(#s0,#l1,#l0) == F#lambda#4(#s1_$3,#l1,#l0)) ));
	assume $function_arg_type(cf#lambda#4,0,$map_t(^^mathint,^^mathint));
	assume $function_arg_type(cf#lambda#4,1,$ptr_to(^^u4));
	assume $function_arg_type(cf#lambda#4,2,^^u4);
	assume (forall  Q#__vcc_state$1^65.32#tc3 : $state, Q#x$1^65.32#tc1 : Integer, #l1_$0 : $ptr, #l0_$0 : Integer :: {$select.$map_t..^^mathint.^^mathint(F#lambda#4(Q#__vcc_state$1^65.32#tc3,$phys_ptr_cast(#l1_$0,^^u4),#l0_$0),Q#x$1^65.32#tc1)} {:weight  10}( (($good_state(Q#__vcc_state$1^65.32#tc3) && true) && $in_range_u4(#l0_$0)) ==> ($select.$map_t..^^mathint.^^mathint(F#lambda#4(Q#__vcc_state$1^65.32#tc3,$phys_ptr_cast(#l1_$0,^^u4),#l0_$0),Q#x$1^65.32#tc1) == (if ((Q#x$1^65.32#tc1 < 0) || (Q#x$1^65.32#tc1 >= #l0_$0)) then 0 else $rd_inv(Q#__vcc_state$1^65.32#tc3,$field($idx($phys_ptr_cast(#l1_$0,^^u4),Q#x$1^65.32#tc1)),$emb0($idx($phys_ptr_cast(#l1_$0,^^u4),Q#x$1^65.32#tc1))))) ));
	assume (forall  #s0_$0 : $state, #s1_$4 : $state, #l1_$1 : $ptr, #l0_$1 : Integer :: {$trans_call_transition(#s0_$0,#s1_$4),F#lambda#3(#s0_$0,#l1_$1,#l0_$1),F#lambda#3(#s1_$4,#l1_$1,#l0_$1)} {:weight  5}( $eq.$map_t..^^mathint.^^mathint(F#lambda#3(#s0_$0,#l1_$1,#l0_$1),F#lambda#3(#s1_$4,#l1_$1,#l0_$1)) ==> (F#lambda#3(#s0_$0,#l1_$1,#l0_$1) == F#lambda#3(#s1_$4,#l1_$1,#l0_$1)) ));
	assume $function_arg_type(cf#lambda#3,0,$map_t(^^mathint,^^mathint));
	assume $function_arg_type(cf#lambda#3,1,$ptr_to(^^u4));
	assume $function_arg_type(cf#lambda#3,2,^^u4);
	assume (forall  Q#__vcc_state$1^65.32#tc3_$0 : $state, Q#x$1^65.32#tc1_$0 : Integer, #l1_$2 : $ptr, #l0_$2 : Integer :: {$select.$map_t..^^mathint.^^mathint(F#lambda#3(Q#__vcc_state$1^65.32#tc3_$0,$phys_ptr_cast(#l1_$2,^^u4),#l0_$2),Q#x$1^65.32#tc1_$0)} {:weight  10}( (($good_state(Q#__vcc_state$1^65.32#tc3_$0) && true) && $in_range_u4(#l0_$2)) ==> ($select.$map_t..^^mathint.^^mathint(F#lambda#3(Q#__vcc_state$1^65.32#tc3_$0,$phys_ptr_cast(#l1_$2,^^u4),#l0_$2),Q#x$1^65.32#tc1_$0) == (if ((Q#x$1^65.32#tc1_$0 < 0) || (Q#x$1^65.32#tc1_$0 >= #l0_$2)) then 0 else $rd_inv(Q#__vcc_state$1^65.32#tc3_$0,$field($idx($phys_ptr_cast(#l1_$2,^^u4),Q#x$1^65.32#tc1_$0)),$emb0($idx($phys_ptr_cast(#l1_$2,^^u4),Q#x$1^65.32#tc1_$0))))) ));
	assume (forall  #s0_$1 : $state, #s1_$5 : $state, #l1_$3 : $ptr, #l0_$3 : Integer :: {$trans_call_transition(#s0_$1,#s1_$5),F#lambda#2(#s0_$1,#l1_$3,#l0_$3),F#lambda#2(#s1_$5,#l1_$3,#l0_$3)} {:weight  5}( $eq.$map_t..^^mathint.^^mathint(F#lambda#2(#s0_$1,#l1_$3,#l0_$3),F#lambda#2(#s1_$5,#l1_$3,#l0_$3)) ==> (F#lambda#2(#s0_$1,#l1_$3,#l0_$3) == F#lambda#2(#s1_$5,#l1_$3,#l0_$3)) ));
	assume $function_arg_type(cf#lambda#2,0,$map_t(^^mathint,^^mathint));
	assume $function_arg_type(cf#lambda#2,1,$ptr_to(^^u4));
	assume $function_arg_type(cf#lambda#2,2,^^u4);
	assume (forall  Q#__vcc_state$1^41.49#tc3 : $state, Q#x$1^41.49#tc1 : Integer, #l1_$4 : $ptr, #l0_$4 : Integer :: {$select.$map_t..^^mathint.^^mathint(F#lambda#2(Q#__vcc_state$1^41.49#tc3,$phys_ptr_cast(#l1_$4,^^u4),#l0_$4),Q#x$1^41.49#tc1)} {:weight  10}( (($good_state(Q#__vcc_state$1^41.49#tc3) && true) && $in_range_u4(#l0_$4)) ==> ($select.$map_t..^^mathint.^^mathint(F#lambda#2(Q#__vcc_state$1^41.49#tc3,$phys_ptr_cast(#l1_$4,^^u4),#l0_$4),Q#x$1^41.49#tc1) == (if ((Q#x$1^41.49#tc1 < 0) || (Q#x$1^41.49#tc1 >= #l0_$4)) then 0 else $rd_inv(Q#__vcc_state$1^41.49#tc3,$field($idx($phys_ptr_cast(#l1_$4,^^u4),Q#x$1^41.49#tc1)),$emb0($idx($phys_ptr_cast(#l1_$4,^^u4),Q#x$1^41.49#tc1))))) ));
	assume (forall  M : $map_t..^^mathint.^^mathint, p_$198 : Integer, v_$7 : Integer :: ( true ));
	assume (forall  M_$0 : $map_t..^^mathint.^^mathint, p_$199 : Integer, v_$8 : Integer, q_$24 : Integer :: ( $select.$map_t..^^mathint.^^mathint($store.$map_t..^^mathint.^^mathint(M_$0,q_$24,v_$8),p_$199) == (if (p_$199 == q_$24) then v_$8 else $select.$map_t..^^mathint.^^mathint(M_$0,p_$199)) ));
	assume (forall  M1_$2 : $map_t..^^mathint.^^mathint, M2_$2 : $map_t..^^mathint.^^mathint :: {$eq.$map_t..^^mathint.^^mathint(M1_$2,M2_$2)} ( ((forall  p_$200 : Integer :: ( $select.$map_t..^^mathint.^^mathint(M1_$2,p_$200) == $select.$map_t..^^mathint.^^mathint(M2_$2,p_$200) ))) ==> $eq.$map_t..^^mathint.^^mathint(M1_$2,M2_$2) ));
	assume (forall  M1_$3 : $map_t..^^mathint.^^mathint, M2_$3 : $map_t..^^mathint.^^mathint :: {$eq.$map_t..^^mathint.^^mathint(M1_$3,M2_$3)} ( $eq.$map_t..^^mathint.^^mathint(M1_$3,M2_$3) ==> (M1_$3 == M2_$3) ));
	assume $int_to_map_t..^^mathint.^^mathint(0) == $zero.$map_t..^^mathint.^^mathint;
	assume (forall  p_$201 : Integer :: ( $select.$map_t..^^mathint.^^mathint($zero.$map_t..^^mathint.^^mathint,p_$201) == 0 ));
	assume true;
	assume $type_code_is(3,^$#state_t);
	assume #distTp2 == $ptr_to(^^u4);
	assume $type_code_is(2,^^u4);
	assume $type_code_is(1,^^mathint);
	assume (forall  #x : $map_t..^^mathint.^^mathint :: ( #x == $int_to_map_t..^^mathint.^^mathint($map_t..^^mathint.^^mathint_to_int(#x)) ));
	assume $file_name_is(1,#file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cvscomp2010?5Cvscomp2010_p1_v2.c);
	assume #distTp1 == $map_t(^^mathint,^^mathint);
	assume (forall  q_$25 : $ptr, $fk_base_$0 : $field_kind, p_$202 : $ptr, T_$18 : $ctype, sz_$36 : Integer :: {lambda#0($fk_base_$0,p_$202,T_$18,sz_$36)[q_$25]} ( lambda#0($fk_base_$0,p_$202,T_$18,sz_$36)[q_$25] <==> (((((($emb0(q_$25) == $emb0(p_$202)) && ($typ(q_$25) == T_$18)) && ($field_arr_root($field(q_$25)) == $field_arr_root($field(p_$202)))) && $in_range(0,$index_within(q_$25,p_$202),sz_$36 - 1)) && (q_$25 == $idx_inline(p_$202,$index_within(q_$25,p_$202)))) && (!($field_kind($field(q_$25)) == $fk_base_$0))) ));
	assume (forall  q_$26 : $ptr, sz_$37 : Integer, p_$203 : $ptr :: {lambda#1(sz_$37,p_$203)[q_$26]} ( lambda#1(sz_$37,p_$203)[q_$26] <==> ($in_range(0,$index_within(q_$26,p_$203),sz_$37 - 1) && $in(q_$26,$full_extent($idx(p_$203,$index_within(q_$26,p_$203))))) ));
	assume (forall  q_$27 : $ptr, sz_$38 : Integer, p_$204 : $ptr, T_$19 : $ctype :: {lambda#2(sz_$38,p_$204,T_$19)[q_$27]} ( lambda#2(sz_$38,p_$204,T_$19)[q_$27] <==> $in_array(q_$27,p_$204,T_$19,sz_$38) ));
	assume (forall  r_$17 : $ptr, S0_$23 : $state, S_$133 : $state, o_$12 : $ptr :: {lambda#3(S0_$23,S_$133,o_$12)[r_$17]} ( lambda#3(S0_$23,S_$133,o_$12)[r_$17] == (if (($owner(S0_$23,r_$17) == o_$12) || (r_$17 == o_$12)) then $current_timestamp(S_$133) else $f_timestamp(S0_$23)[r_$17]) ));
	assume (forall  r_$18 : $ptr, S0_$24 : $state, o_$13 : $ptr :: {lambda#4(S0_$24,o_$13)[r_$18]} ( lambda#4(S0_$24,o_$13)[r_$18] == (if ($owner(S0_$24,r_$18) == o_$13) then $me() else $f_owner(S0_$24)[r_$18]) ));
	assume (forall  r_$19 : $ptr, o_$14 : $ptr, S0_$25 : $state :: {lambda#5(o_$14,S0_$25)[r_$19]} ( lambda#5(o_$14,S0_$25)[r_$19] == (if $set_in(r_$19,$owns(S0_$25,o_$14)) then o_$14 else $f_owner(S0_$25)[r_$19]) ));
	assume (forall  q_$28 : $ptr, $s_$_old : $state, $s_$0 : $state, #p_$10 : $ptr :: {lambda#6($s_$_old,$s_$0,#p_$10)[q_$28]} ( lambda#6($s_$_old,$s_$0,#p_$10)[q_$28] == (if ($domain_root($s_$_old,q_$28) == #p_$10) then $domain_root($s_$0,q_$28) else $domain_root($s_$_old,q_$28)) ));
	assume (forall  q_$29 : $ptr, $s_$_old_$0 : $state, owns_$2 : $ptrset, owner : $ptr :: {lambda#7($s_$_old_$0,owns_$2,owner)[q_$29]} ( lambda#7($s_$_old_$0,owns_$2,owner)[q_$29] == (if $in(q_$29,owns_$2) then owner else $f_owner($s_$_old_$0)[q_$29]) ));
	assume (forall  q_$30 : $ptr, $s_$_old_$1 : $state, $s_$1 : $state, owns_$3 : $ptrset :: {lambda#8($s_$_old_$1,$s_$1,owns_$3)[q_$30]} ( lambda#8($s_$_old_$1,$s_$1,owns_$3)[q_$30] == (if $in($domain_root($s_$_old_$1,q_$30),owns_$3) then $domain_root($s_$1,q_$30) else $domain_root($s_$_old_$1,q_$30)) ));
	assume (forall  q_$31 : $ptr, $s_$_old_$2 : $state, $s_$2 : $state, owner_$0 : $ptr :: {lambda#9($s_$_old_$2,$s_$2,owner_$0)[q_$31]} ( lambda#9($s_$_old_$2,$s_$2,owner_$0)[q_$31] == (if ($domain_root($s_$_old_$2,q_$31) == $domain_root($s_$_old_$2,owner_$0)) then $domain_root($s_$2,q_$31) else $domain_root($s_$_old_$2,q_$31)) ));
	assume (forall  p_$205 : $ptr, r_$20 : $ptr, S_$134 : $state :: {lambda#10(r_$20,S_$134)[p_$205]} ( lambda#10(r_$20,S_$134)[p_$205] <==> ($is_proper($dot($base(p_$205),$field(p_$205))) && $composite_extent(S_$134,r_$20,$typ(r_$20))[$emb0(p_$205)]) ));
	assume (forall  p_$206 : $ptr, r_$21 : $ptr, $full_extent_state_$0 : $state :: {lambda#11(r_$21,$full_extent_state_$0)[p_$206]} ( lambda#11(r_$21,$full_extent_state_$0)[p_$206] <==> ($is_proper(p_$206) && $composite_extent($full_extent_state_$0,r_$21,$typ(r_$21))[$emb0(p_$206)]) ));
	assume (forall  p_$207 : $ptr, o_$15 : $ptr :: {lambda#12(o_$15)[p_$207]} ( lambda#12(o_$15)[p_$207] <==> ($is_proper(p_$207) && ($emb0(p_$207) == o_$15)) ));
	assume (forall  p_$208 : $ptr, q_$32 : $ptr :: {lambda#13(q_$32)[p_$208]} ( lambda#13(q_$32)[p_$208] <==> (($is_proper(p_$208) && $is_volatile_field($field(p_$208))) && ($emb0(p_$208) == q_$32)) ));
	assume (forall  o_$16 : $ptr :: {lambda#14()[o_$16]} ( lambda#14()[o_$16] <==> false ));
	assume (forall  o_$17 : $ptr, p_$209 : $ptr :: {lambda#15(p_$209)[o_$17]} ( lambda#15(p_$209)[o_$17] <==> (o_$17 == p_$209) ));
	assume (forall  o_$18 : $ptr, p_$210 : $ptr :: {lambda#16(p_$210)[o_$18]} ( lambda#16(p_$210)[o_$18] <==> ($non_null(p_$210) && (p_$210 == o_$18)) ));
	assume (forall  o_$19 : $ptr, A_$5 : $ptrset, B_$5 : $ptrset :: {lambda#17(A_$5,B_$5)[o_$19]} ( lambda#17(A_$5,B_$5)[o_$19] <==> (A_$5[o_$19] || B_$5[o_$19]) ));
	assume (forall  o_$20 : $ptr, A_$6 : $ptrset, B_$6 : $ptrset :: {lambda#18(A_$6,B_$6)[o_$20]} ( lambda#18(A_$6,B_$6)[o_$20] <==> (A_$6[o_$20] && (!B_$6[o_$20])) ));
	assume (forall  o_$21 : $ptr, A_$7 : $ptrset, B_$7 : $ptrset :: {lambda#19(A_$7,B_$7)[o_$21]} ( lambda#19(A_$7,B_$7)[o_$21] <==> (A_$7[o_$21] && B_$7[o_$21]) ));
	assume (forall  #p_$11 : $ptr, ^^u4_$0 : $ctype, P#maxout_$0 : $ptr :: {lambda#20(^^u4_$0,P#maxout_$0)[#p_$11]} ( lambda#20(^^u4_$0,P#maxout_$0)[#p_$11] <==> (#p_$11 == $phys_ptr_cast(P#maxout_$0,^^u4_$0)) ));
	goto PreconditionGeneratedEntry;
$exit:
	assume false;
PreconditionGeneratedEntry:
	assume $in_range_u4(L#max);
	assume $in_range_u4(L#sum);
	assume $in_range_u4(L#i);
	assume $wrapped($s,$as_array($phys_ptr_cast(P#a,^^u4),^^u4,P#N),$array(^^u4,P#N));
	goto anon17;
anon17:
	assume $function_entry($s);
	assume $full_stop_ext(#tok$1^30.1,$s);
	assume $can_use_all_frame_axioms($s);
	assume $local_value_is($s,#tok$1^30.1,#loc.a,$ptr_to_int(P#a),$ptr_to(^^u4));
	assume $local_value_is($s,#tok$1^30.1,#loc.N,P#N,^^u4);
	assume $local_value_is($s,#tok$1^30.1,#loc.maxout,$ptr_to_int(P#maxout),$ptr_to(^^u4));
	assume #wrTime$1^30.1 == $current_timestamp($s);
	assume $def_writes($s,#wrTime$1^30.1,lambda#20(^^u4,P#maxout));
	assume $mutable($s,$phys_ptr_cast(P#maxout,^^u4));
	assume true;
	assume $in_range_u4(P#N);
	assume true;
	assume 2147483647 == $decreases_level;
	assert  $in_domain_lab($s,$as_array($phys_ptr_cast(P#a,^^u4),^^u4,P#N),$as_array($phys_ptr_cast(P#a,^^u4),^^u4,P#N),l#public);
	assume $local_value_is($s,#tok$1^41.25,#loc.am,$map_t..^^mathint.^^mathint_to_int(SL#am),$map_t(^^mathint,^^mathint));
	assume $local_value_is($s,#tok$1^39.3,#loc.i,L#i,^^u4);
	assume $local_value_is($s,#tok$1^38.3,#loc.sum,L#sum,^^u4);
	assume $local_value_is($s,#tok$1^37.3,#loc.max,L#max,^^u4);
	assume $local_value_is($s,#tok$1^37.3,#loc.max,0,^^u4);
	assume $local_value_is($s,#tok$1^38.3,#loc.sum,0,^^u4);
	assume call0formal_$_#l1_$_0 == $phys_ptr_cast(P#a,^^u4);
	assume call2formal_$_$result_$_0 == F#lambda#2($s,call0formal_$_#l1_$_0,P#N);
	assume $call_transition($s,$s);
	assume $full_stop_ext(#tok$1^41.49,$s);
	assume $local_value_is($s,#tok$1^41.49,#loc.am,$map_t..^^mathint.^^mathint_to_int(call2formal_$_$result_$_0),$map_t(^^mathint,^^mathint));
	assume F#fsum(P#N,call2formal_$_$result_$_0) < 4294967295;
	assume $local_value_is($s,#tok$1^43.8,#loc.i,0,^^u4);
	assume ((($f_closed($s_$_0) == $f_closed($s)) && ($f_owner($s_$_0) == $f_owner($s))) && ($roots($s_$_0) == $roots($s))) && ($heap($s_$_0) == $heap($s));
	assume $f_timestamp($s_$_0) == $f_timestamp($s)[$null := $current_timestamp($s_$_0)];
	assume $current_timestamp($s) < $current_timestamp($s_$_0);
	assume $full_stop_ext(#tok$1^43.3,$s_$_0);
	assume #wrTime$1^43.3 == $current_timestamp($s_$_0);
	assume $def_writes($s_$_0,#wrTime$1^43.3,lambda#20(^^u4,P#maxout));
	assert  (forall  #loopWrites^$1^43.3 : $ptr :: {$dont_instantiate(#loopWrites^$1^43.3)} ( $listed_in_writes($s_$_0,#wrTime$1^43.3,#loopWrites^$1^43.3) ==> $top_writable($s_$_0,#wrTime$1^30.1,#loopWrites^$1^43.3) ));
	assert  0 == F#fsum(0,call2formal_$_$result_$_0);
	assert  (forall  Q#k$1^45.31#tc2 : Integer :: {$idx($phys_ptr_cast(P#a,^^u4),Q#k$1^45.31#tc2)} {:weight  10}( $in_range_u4(Q#k$1^45.31#tc2) ==> ((Q#k$1^45.31#tc2 < 0) ==> ($rd_inv($s_$_0,$field($idx($phys_ptr_cast(P#a,^^u4),Q#k$1^45.31#tc2)),$emb0($idx($phys_ptr_cast(P#a,^^u4),Q#k$1^45.31#tc2))) <= 0)) ));
	assert  0 <= $op_mul(0,0);
	assert  0 <= P#N;
	goto anon00_LoopHead;
anon00_LoopHead:
	assume $in_range_u4(L#sum_$_0);
	assume $in_range_u4(L#i_$_0);
	assume $in_range_u4(L#max_$_0);
	assume 0 <= L#i_$_0;
	assume L#sum_$_0 == F#fsum(L#i_$_0,call2formal_$_$result_$_0);
	assume (forall  Q#k$1^45.31#tc2_$0 : Integer :: {$idx($phys_ptr_cast(P#a,^^u4),Q#k$1^45.31#tc2_$0)} {:weight  10}( $in_range_u4(Q#k$1^45.31#tc2_$0) ==> ((Q#k$1^45.31#tc2_$0 < L#i_$_0) ==> ($rd_inv($s_$_0,$field($idx($phys_ptr_cast(P#a,^^u4),Q#k$1^45.31#tc2_$0)),$emb0($idx($phys_ptr_cast(P#a,^^u4),Q#k$1^45.31#tc2_$0))) <= L#max_$_0)) ));
	assume L#sum_$_0 <= $op_mul(L#i_$_0,L#max_$_0);
	assume L#i_$_0 <= P#N;
	if ($_$_condition) { goto anon00_LoopDone; } else { goto anon00_LoopBody; }
anon00_LoopDone:
	assume !true;
	assume $full_stop_ext(#tok$1^43.3,$s_$_0);
	goto $#break_6;
anon00_LoopBody:
	assume true;
	assume $modifies($s_$_0,$s_$_0,lambda#20(^^u4,P#maxout));
	assume $timestamp_post($s_$_0,$s_$_0);
	assume $full_stop_ext(#tok$1^43.3,$s_$_0);
	assume $local_value_is($s_$_0,#tok$1^43.3,#loc.max,L#max_$_0,^^u4);
	assume $local_value_is($s_$_0,#tok$1^43.3,#loc.sum,L#sum_$_0,^^u4);
	assume $local_value_is($s_$_0,#tok$1^43.3,#loc.am,$map_t..^^mathint.^^mathint_to_int(call2formal_$_$result_$_0),$map_t(^^mathint,^^mathint));
	assume $local_value_is($s_$_0,#tok$1^43.3,#loc.maxout,$ptr_to_int(P#maxout),$ptr_to(^^u4));
	assume $local_value_is($s_$_0,#tok$1^43.3,#loc.N,P#N,^^u4);
	assume $local_value_is($s_$_0,#tok$1^43.3,#loc.a,$ptr_to_int(P#a),$ptr_to(^^u4));
	assume $meta_eq($s_$_0,$s_$_0);
	assume true;
	if ($_$_condition_$0) { goto anon01_Then; } else { goto anon01_Else; }
$#break_6:
	assert  $writable_prim($s_$_0,#wrTime$1^30.1,$phys_ptr_cast(P#maxout,^^u4));
	assume call0formal_$_f_$_0 == $field($phys_ptr_cast(P#maxout,^^u4));
	assume call1formal_$_p_$_0 == $emb0($phys_ptr_cast(P#maxout,^^u4));
	assume $specials_eq($s_$_0,$s_$_1);
	assume $heap($s_$_1) == $update($heap($s_$_0),call1formal_$_p_$_0,call0formal_$_f_$_0,L#max_$_0);
	assume $timestamp_post_strict($s_$_0,$s_$_1);
	assume $full_stop_ext(#tok$1^62.4,$s_$_1);
	assert  L#sum_$_0 == F#fsum(P#N,call2formal_$_$result_$_0);
	assume L#sum_$_0 == F#fsum(P#N,call2formal_$_$result_$_0);
	assert  $eq.$map_t..^^mathint.^^mathint(call2formal_$_$result_$_0,F#lambda#3($s_$_1,$phys_ptr_cast(P#a,^^u4),P#N));
	assume $eq.$map_t..^^mathint.^^mathint(call2formal_$_$result_$_0,F#lambda#4($s_$_1,$phys_ptr_cast(P#a,^^u4),P#N));
	assert  $position_marker();
	assume $result_$_0 == L#sum_$_0;
	assume $s_$_2 == $s_$_1;
	goto GeneratedUnifiedExit;
anon01_Then:
	assume L#i_$_0 < P#N;
	assert  $thread_local($s_$_0,$idx($phys_ptr_cast(P#a,^^u4),L#i_$_0));
	assume true;
	if ($_$_condition_$1) { goto anon02_Then; } else { goto anon02_Else; }
anon01_Else:
	assume P#N <= L#i_$_0;
	goto $#break_6;
anon02_Then:
	assume L#max_$_0 < $rd_inv($s_$_0,$field($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0)),$emb0($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0)));
	assert  $thread_local($s_$_0,$idx($phys_ptr_cast(P#a,^^u4),L#i_$_0));
	assume L#max_$_1 == $rd_inv($s_$_0,$field($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0)),$emb0($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0)));
	assume $local_value_is($s_$_0,#tok$1^51.7,#loc.max,L#max_$_1,^^u4);
	assume L#max_$_2 == L#max_$_1;
	goto anon14;
anon02_Else:
	assume $rd_inv($s_$_0,$field($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0)),$emb0($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0))) <= L#max_$_0;
	assume L#max_$_2 == L#max_$_0;
	goto anon14;
anon14:
	assume L#sum_$_0 <= $op_mul(L#i_$_0,L#max_$_2);
	assert  (L#i_$_0 + 1) <= P#N;
	assume (L#i_$_0 + 1) <= P#N;
	assert  F#fsum(L#i_$_0 + 1,call2formal_$_$result_$_0) == ($rd_inv($s_$_0,$field($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0)),$emb0($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0))) + F#fsum(L#i_$_0,call2formal_$_$result_$_0));
	assume F#fsum(L#i_$_0 + 1,call2formal_$_$result_$_0) == ($rd_inv($s_$_0,$field($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0)),$emb0($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0))) + F#fsum(L#i_$_0,call2formal_$_$result_$_0));
	assert  $in_range_u4(L#i_$_0 + 1);
	assume call0formal_$_SP#i_$_0 == (L#i_$_0 + 1);
	assert  0 <= call0formal_$_SP#i_$_0;
	assert  call0formal_$_SP#i_$_0 <= P#N;
	assert  (forall  Q#k$1^14.27#tc1 : Integer :: {$select.$map_t..^^mathint.^^mathint(call2formal_$_$result_$_0,Q#k$1^14.27#tc1)} {:weight  10}( ((0 <= Q#k$1^14.27#tc1) && (Q#k$1^14.27#tc1 < P#N)) ==> (0 <= $select.$map_t..^^mathint.^^mathint(call2formal_$_$result_$_0,Q#k$1^14.27#tc1)) ));
	assume F#fsum(call0formal_$_SP#i_$_0,call2formal_$_$result_$_0) <= F#fsum(P#N,call2formal_$_$result_$_0);
	assume $call_transition($s_$_0,$s_$_0);
	assume $full_stop_ext(#tok$1^57.27,$s_$_0);
	assert  F#fsum(L#i_$_0 + 1,call2formal_$_$result_$_0) < 4294967295;
	assume F#fsum(L#i_$_0 + 1,call2formal_$_$result_$_0) < 4294967295;
	assert  $in_range_u4(L#sum_$_0 + $rd_inv($s_$_0,$field($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0)),$emb0($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0))));
	assert  $thread_local($s_$_0,$idx($phys_ptr_cast(P#a,^^u4),L#i_$_0));
	assume L#sum_$_1 == (L#sum_$_0 + $rd_inv($s_$_0,$field($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0)),$emb0($idx($phys_ptr_cast(P#a,^^u4),L#i_$_0))));
	assume $local_value_is($s_$_0,#tok$1^60.5,#loc.sum,L#sum_$_1,^^u4);
	assert  $in_range_u4(L#i_$_0 + 1);
	assume L#i_$_1 == (L#i_$_0 + 1);
	assume $local_value_is($s_$_0,#tok$1^43.22,#loc.i,L#i_$_1,^^u4);
	assume true;
	assert  L#sum_$_1 == F#fsum(L#i_$_1,call2formal_$_$result_$_0);
	assert  (forall  Q#k$1^45.31#tc2_$1 : Integer :: {$idx($phys_ptr_cast(P#a,^^u4),Q#k$1^45.31#tc2_$1)} {:weight  10}( $in_range_u4(Q#k$1^45.31#tc2_$1) ==> ((Q#k$1^45.31#tc2_$1 < L#i_$_1) ==> ($rd_inv($s_$_0,$field($idx($phys_ptr_cast(P#a,^^u4),Q#k$1^45.31#tc2_$1)),$emb0($idx($phys_ptr_cast(P#a,^^u4),Q#k$1^45.31#tc2_$1))) <= L#max_$_2)) ));
	assert  L#sum_$_1 <= $op_mul(L#i_$_1,L#max_$_2);
	assert  L#i_$_1 <= P#N;
	assume false;
	assume $result_$_0 == $result;
	assume $s_$_2 == $s_$_0;
	goto $exit;
GeneratedUnifiedExit:
	assert  (forall  Q#k$1^34.27#tc2 : Integer :: {$idx($phys_ptr_cast(P#a,^^u4),Q#k$1^34.27#tc2)} {:weight  10}( $in_range_u4(Q#k$1^34.27#tc2) ==> ((Q#k$1^34.27#tc2 < P#N) ==> ($rd_inv($s_$_2,$field($idx($phys_ptr_cast(P#a,^^u4),Q#k$1^34.27#tc2)),$emb0($idx($phys_ptr_cast(P#a,^^u4),Q#k$1^34.27#tc2))) <= $rd_inv($s_$_2,$field($phys_ptr_cast(P#maxout,^^u4)),$emb0($phys_ptr_cast(P#maxout,^^u4))))) ));
	assert  $result_$_0 <= $op_mul(P#N,$rd_inv($s_$_2,$field($phys_ptr_cast(P#maxout,^^u4)),$emb0($phys_ptr_cast(P#maxout,^^u4))));
	assert  $mutable($s_$_2,$phys_ptr_cast(P#maxout,^^u4));
	assert  $emb($s_$_2,$phys_ptr_cast(P#maxout,^^u4)) == $emb($s,$phys_ptr_cast(P#maxout,^^u4));
	goto $exit;
}
