axiom $arch_ptr_size == 8;

axiom $arch_spec_ptr_start == $max.u8;

const unique ^$#thread_id: $ctype;

axiom $def_math_type(^$#thread_id);

type $#thread_id;

function F#fsum(SP#i: int, SP#map: $map_t..^^mathint.^^mathint) : int;

const unique cf#fsum: $pure_function;

axiom (forall SP#i: int, SP#map: $map_t..^^mathint.^^mathint :: { F#fsum(SP#i, SP#map) } F#fsum(SP#i, SP#map) == (if SP#i <= 0 then 0 else $select.$map_t..^^mathint.^^mathint(SP#map, SP#i - 1) + F#fsum(SP#i - 1, SP#map)));

axiom $function_arg_type(cf#fsum, 0, ^^mathint);

axiom $function_arg_type(cf#fsum, 1, ^^mathint);

axiom $function_arg_type(cf#fsum, 2, $map_t(^^mathint, ^^mathint));

procedure fsum(SP#i: int, SP#map: $map_t..^^mathint.^^mathint) returns ($result: int);
  ensures $result == (if SP#i <= 0 then 0 else $select.$map_t..^^mathint.^^mathint(SP#map, SP#i - 1) + F#fsum(SP#i - 1, SP#map));
  free ensures $result == F#fsum(SP#i, SP#map);
  free ensures $call_transition(old($s), $s);



implementation fsum(SP#i: int, SP#map: $map_t..^^mathint.^^mathint) returns ($result: int)
{
  var res_fsum#7: int;
  var ite#1: int;
  var #wrTime$1^5.39: int;
  var #stackframe: int;

  anon3:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$1^5.39, $s);
    assume $can_use_all_frame_axioms($s);
    assume $local_value_is($s, #tok$1^5.39, #loc.i, SP#i, ^^mathint);
    assume $local_value_is($s, #tok$1^5.39, #loc.map, $map_t..^^mathint.^^mathint_to_int(SP#map), $map_t(^^mathint, ^^mathint));
    assume #wrTime$1^5.39 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$1^5.39, (lambda #p: $ptr :: false));
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    // mathint ite#1; 
    assume $local_value_is($s, #tok$1^8.10, #loc.ite#1, ite#1, ^^mathint);
    assume true;
    // if (<=(i, 0)) ...
    if (SP#i <= 0)
    {
      anon1:
        // ite#1 := 0; 
        ite#1 := 0;
        assume $local_value_is($s, #tok$1^8.10, #loc.ite#1, ite#1, ^^mathint);
    }
    else
    {
      anon2:
        // mathint res_fsum#7; 
        assume $local_value_is($s, #tok$1^8.47, #loc.res_fsum#7, res_fsum#7, ^^mathint);
        // res_fsum#7 := fsum(-(i, 1), map); 
        call res_fsum#7 := fsum(SP#i - 1, SP#map);
        assume $full_stop_ext(#tok$1^8.47, $s);
        assume $local_value_is($s, #tok$1^8.47, #loc.res_fsum#7, res_fsum#7, ^^mathint);
        // ite#1 := +(@map_get(map, -(i, 1)), res_fsum#7); 
        ite#1 := $select.$map_t..^^mathint.^^mathint(SP#map, SP#i - 1) + res_fsum#7;
        assume $local_value_is($s, #tok$1^8.10, #loc.ite#1, ite#1, ^^mathint);
    }

  anon4:
    // return ite#1; 
    $result := ite#1;
    assert $position_marker();
    goto #exit;

  anon5:
    // empty

  #exit:
}



procedure fsum_lemma(SP#i: int, SP#j: int, SP#map: $map_t..^^mathint.^^mathint);
  requires 0 <= SP#i;
  requires SP#i <= SP#j;
  requires (forall Q#k$1^14.27#tc1: int :: {:weight 10} { $select.$map_t..^^mathint.^^mathint(SP#map, Q#k$1^14.27#tc1) } 0 <= Q#k$1^14.27#tc1 && Q#k$1^14.27#tc1 < SP#j ==> 0 <= $select.$map_t..^^mathint.^^mathint(SP#map, Q#k$1^14.27#tc1));
  ensures F#fsum(SP#i, SP#map) <= F#fsum(SP#j, SP#map);
  free ensures $call_transition(old($s), $s);



implementation fsum_lemma(SP#i: int, SP#j: int, SP#map: $map_t..^^mathint.^^mathint)
{
  var loopState#0: $state;
  var SL#k: int;
  var #wrTime$1^11.39: int;
  var #stackframe: int;

  anon9:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$1^11.39, $s);
    assume $can_use_all_frame_axioms($s);
    assume $local_value_is($s, #tok$1^11.39, #loc.i, SP#i, ^^mathint);
    assume $local_value_is($s, #tok$1^11.39, #loc.j, SP#j, ^^mathint);
    assume $local_value_is($s, #tok$1^11.39, #loc.map, $map_t..^^mathint.^^mathint_to_int(SP#map), $map_t(^^mathint, ^^mathint));
    assume #wrTime$1^11.39 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$1^11.39, (lambda #p: $ptr :: false));
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    // mathint k; 
    assume $local_value_is($s, #tok$1^17.25, #loc.k, SL#k, ^^mathint);
    // k := i; 
    SL#k := SP#i;
    assume $local_value_is($s, #tok$1^17.25, #loc.k, SL#k, ^^mathint);
    loopState#0 := $s;
    while (true)
      invariant F#fsum(SP#i, SP#map) <= F#fsum(SL#k, SP#map);
      invariant SP#i <= SL#k;
      invariant SL#k <= SP#j;
    {
      anon8:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#0, $s);
        assume $full_stop_ext(#tok$1^18.3, $s);
        assume $local_value_is($s, #tok$1^18.3, #loc.k, SL#k, ^^mathint);
        assume $local_value_is($s, #tok$1^18.3, #loc.j, SP#j, ^^mathint);
        // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
        assume $meta_eq(loopState#0, $s);
        assume true;
        // if (<(k, j)) ...
        if (SL#k < SP#j)
        {
          anon6:
        }
        else
        {
          anon7:
            // goto #break_5; 
            goto #break_5;
        }

      #continue_5:
        // k := +(k, 1); 
        SL#k := SL#k + 1;
        assume $local_value_is($s, #tok$1^18.17, #loc.k, SL#k, ^^mathint);
        assume true;
    }

  anon10:
    assume $full_stop_ext(#tok$1^18.3, $s);

  #break_5:
    // assert ==(k, j); 
    assert SL#k == SP#j;
    // assume ==(k, j); 
    assume SL#k == SP#j;
    // empty

  #exit:
}



procedure sum_max(P#a: $ptr, P#N: int, P#maxout: $ptr) returns ($result: int);
  requires $wrapped($s, $as_array($phys_ptr_cast(P#a, ^^u4), ^^u4, P#N), $array(^^u4, P#N));
  modifies $s, $cev_pc;
  free ensures $in_range_u4($result);
  ensures (forall Q#k$1^34.27#tc2: int :: {:weight 10} { $idx($phys_ptr_cast(P#a, ^^u4), Q#k$1^34.27#tc2) } $in_range_u4(Q#k$1^34.27#tc2) ==> Q#k$1^34.27#tc2 < P#N ==> $rd_inv($s, $field($idx($phys_ptr_cast(P#a, ^^u4), Q#k$1^34.27#tc2)), $emb0($idx($phys_ptr_cast(P#a, ^^u4), Q#k$1^34.27#tc2))) <= $rd_inv($s, $field($phys_ptr_cast(P#maxout, ^^u4)), $emb0($phys_ptr_cast(P#maxout, ^^u4))));
  ensures $result <= $op_mul(P#N, $rd_inv($s, $field($phys_ptr_cast(P#maxout, ^^u4)), $emb0($phys_ptr_cast(P#maxout, ^^u4))));
  ensures $mutable($s, $phys_ptr_cast(P#maxout, ^^u4));
  ensures $emb($s, $phys_ptr_cast(P#maxout, ^^u4)) == $emb(old($s), $phys_ptr_cast(P#maxout, ^^u4));
  free ensures $modifies(old($s), $s, (lambda #p: $ptr :: #p == $phys_ptr_cast(P#maxout, ^^u4)));
  free ensures $call_transition(old($s), $s);



implementation sum_max(P#a: $ptr, P#N: int, P#maxout: $ptr) returns ($result: int)
{
  var #wrTime$1^43.3: int;
  var loopState#1: $state;
  var L#max: int where $in_range_u4(L#max);
  var L#sum: int where $in_range_u4(L#sum);
  var L#i: int where $in_range_u4(L#i);
  var SL#am: $map_t..^^mathint.^^mathint;
  var #wrTime$1^30.1: int;
  var #stackframe: int;

  anon17:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$1^30.1, $s);
    assume $can_use_all_frame_axioms($s);
    assume $local_value_is($s, #tok$1^30.1, #loc.a, $ptr_to_int(P#a), $ptr_to(^^u4));
    assume $local_value_is($s, #tok$1^30.1, #loc.N, P#N, ^^u4);
    assume $local_value_is($s, #tok$1^30.1, #loc.maxout, $ptr_to_int(P#maxout), $ptr_to(^^u4));
    assume #wrTime$1^30.1 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$1^30.1, (lambda #p: $ptr :: #p == $phys_ptr_cast(P#maxout, ^^u4)));
    assume $mutable($s, $phys_ptr_cast(P#maxout, ^^u4));
    // assume true; 
    assume true;
    // assume @in_range_u4(N); 
    assume $in_range_u4(P#N);
    // assume true; 
    assume true;
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    // assert @_vcc_in_domain(@state, @_vcc_as_array(a, N), @_vcc_as_array(a, N)); 
    assert $in_domain_lab($s, $as_array($phys_ptr_cast(P#a, ^^u4), ^^u4, P#N), $as_array($phys_ptr_cast(P#a, ^^u4), ^^u4, P#N), l#public);
    // (mathint -> mathint) am; 
    assume $local_value_is($s, #tok$1^41.25, #loc.am, $map_t..^^mathint.^^mathint_to_int(SL#am), $map_t(^^mathint, ^^mathint));
    // uint32_t i; 
    assume $local_value_is($s, #tok$1^39.3, #loc.i, L#i, ^^u4);
    // uint32_t sum; 
    assume $local_value_is($s, #tok$1^38.3, #loc.sum, L#sum, ^^u4);
    // uint32_t max; 
    assume $local_value_is($s, #tok$1^37.3, #loc.max, L#max, ^^u4);
    // max := 0; 
    L#max := 0;
    assume $local_value_is($s, #tok$1^37.3, #loc.max, L#max, ^^u4);
    // sum := 0; 
    L#sum := 0;
    assume $local_value_is($s, #tok$1^38.3, #loc.sum, L#sum, ^^u4);
    // var uint32_t i
    // am := lambda#2(a, N); 
    call SL#am := lambda#2($phys_ptr_cast(P#a, ^^u4), P#N);
    assume $full_stop_ext(#tok$1^41.49, $s);
    assume $local_value_is($s, #tok$1^41.49, #loc.am, $map_t..^^mathint.^^mathint_to_int(SL#am), $map_t(^^mathint, ^^mathint));
    // assume <(fsum(N, am), 4294967295); 
    assume F#fsum(P#N, SL#am) < 4294967295;
    // i := 0; 
    L#i := 0;
    assume $local_value_is($s, #tok$1^43.8, #loc.i, L#i, ^^u4);
    call $bump_timestamp();
    assume $full_stop_ext(#tok$1^43.3, $s);
    loopState#1 := $s;
    assume #wrTime$1^43.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$1^43.3, (lambda #p: $ptr :: #p == $phys_ptr_cast(P#maxout, ^^u4)));
    assert (forall #loopWrites^$1^43.3: $ptr :: { $dont_instantiate(#loopWrites^$1^43.3) } $listed_in_writes($s, #wrTime$1^43.3, #loopWrites^$1^43.3) ==> $top_writable($s, #wrTime$1^30.1, #loopWrites^$1^43.3));
    while (true)
      invariant L#sum == F#fsum(L#i, SL#am);
      invariant (forall Q#k$1^45.31#tc2: int :: {:weight 10} { $idx($phys_ptr_cast(P#a, ^^u4), Q#k$1^45.31#tc2) } $in_range_u4(Q#k$1^45.31#tc2) ==> Q#k$1^45.31#tc2 < L#i ==> $rd_inv($s, $field($idx($phys_ptr_cast(P#a, ^^u4), Q#k$1^45.31#tc2)), $emb0($idx($phys_ptr_cast(P#a, ^^u4), Q#k$1^45.31#tc2))) <= L#max);
      invariant L#sum <= $op_mul(L#i, L#max);
      invariant L#i <= P#N;
    {
      anon16:
        assume $modifies(loopState#1, $s, (lambda #p: $ptr :: #p == $phys_ptr_cast(P#maxout, ^^u4)));
        assume $timestamp_post(loopState#1, $s);
        assume $full_stop_ext(#tok$1^43.3, $s);
        assume $local_value_is($s, #tok$1^43.3, #loc.max, L#max, ^^u4);
        assume $local_value_is($s, #tok$1^43.3, #loc.sum, L#sum, ^^u4);
        assume $local_value_is($s, #tok$1^43.3, #loc.am, $map_t..^^mathint.^^mathint_to_int(SL#am), $map_t(^^mathint, ^^mathint));
        assume $local_value_is($s, #tok$1^43.3, #loc.maxout, $ptr_to_int(P#maxout), $ptr_to(^^u4));
        assume $local_value_is($s, #tok$1^43.3, #loc.N, P#N, ^^u4);
        assume $local_value_is($s, #tok$1^43.3, #loc.a, $ptr_to_int(P#a), $ptr_to(^^u4));
        // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
        assume $meta_eq(loopState#1, $s);
        assume true;
        // if (<(i, N)) ...
        if (L#i < P#N)
        {
          anon13:
            // assert @reads_check_normal(a[i]); 
            assert $thread_local($s, $idx($phys_ptr_cast(P#a, ^^u4), L#i));
            assume true;
            // if (<(max, *(a[i]))) ...
            if (L#max < $rd_inv($s, $field($idx($phys_ptr_cast(P#a, ^^u4), L#i)), $emb0($idx($phys_ptr_cast(P#a, ^^u4), L#i))))
            {
              anon11:
                // assert @reads_check_normal(a[i]); 
                assert $thread_local($s, $idx($phys_ptr_cast(P#a, ^^u4), L#i));
                // max := *(a[i]); 
                L#max := $rd_inv($s, $field($idx($phys_ptr_cast(P#a, ^^u4), L#i)), $emb0($idx($phys_ptr_cast(P#a, ^^u4), L#i)));
                assume $local_value_is($s, #tok$1^51.7, #loc.max, L#max, ^^u4);
            }
            else
            {
              anon12:
                // empty
            }

          anon14:
            // assume <=(sum, *(i, max)); 
            assume L#sum <= $op_mul(L#i, L#max);
            // assert <=(+(i, 1), N); 
            assert L#i + 1 <= P#N;
            // assume <=(+(i, 1), N); 
            assume L#i + 1 <= P#N;
            // assert ==(fsum(+(i, 1), am), +(*(a[i]), fsum(i, am))); 
            assert F#fsum(L#i + 1, SL#am) == $rd_inv($s, $field($idx($phys_ptr_cast(P#a, ^^u4), L#i)), $emb0($idx($phys_ptr_cast(P#a, ^^u4), L#i))) + F#fsum(L#i, SL#am);
            // assume ==(fsum(+(i, 1), am), +(*(a[i]), fsum(i, am))); 
            assume F#fsum(L#i + 1, SL#am) == $rd_inv($s, $field($idx($phys_ptr_cast(P#a, ^^u4), L#i)), $emb0($idx($phys_ptr_cast(P#a, ^^u4), L#i))) + F#fsum(L#i, SL#am);
            // assert @in_range_u4(+(i, 1)); 
            assert $in_range_u4(L#i + 1);
            // stmt fsum_lemma(+(i, 1), N, am); 
            call fsum_lemma(L#i + 1, P#N, SL#am);
            assume $full_stop_ext(#tok$1^57.27, $s);
            // assert <(fsum(+(i, 1), am), 4294967295); 
            assert F#fsum(L#i + 1, SL#am) < 4294967295;
            // assume <(fsum(+(i, 1), am), 4294967295); 
            assume F#fsum(L#i + 1, SL#am) < 4294967295;
            // assert @in_range_u4(+(sum, *(a[i]))); 
            assert $in_range_u4(L#sum + $rd_inv($s, $field($idx($phys_ptr_cast(P#a, ^^u4), L#i)), $emb0($idx($phys_ptr_cast(P#a, ^^u4), L#i))));
            // assert @reads_check_normal(a[i]); 
            assert $thread_local($s, $idx($phys_ptr_cast(P#a, ^^u4), L#i));
            // sum := +(sum, *(a[i])); 
            L#sum := L#sum + $rd_inv($s, $field($idx($phys_ptr_cast(P#a, ^^u4), L#i)), $emb0($idx($phys_ptr_cast(P#a, ^^u4), L#i)));
            assume $local_value_is($s, #tok$1^60.5, #loc.sum, L#sum, ^^u4);
        }
        else
        {
          anon15:
            // goto #break_6; 
            goto #break_6;
        }

      #continue_6:
        // assert @in_range_u4(+(i, 1)); 
        assert $in_range_u4(L#i + 1);
        // i := +(i, 1); 
        L#i := L#i + 1;
        assume $local_value_is($s, #tok$1^43.22, #loc.i, L#i, ^^u4);
        assume true;
    }

  anon18:
    assume $full_stop_ext(#tok$1^43.3, $s);

  #break_6:
    // assert @prim_writes_check(maxout); 
    assert $writable_prim($s, #wrTime$1^30.1, $phys_ptr_cast(P#maxout, ^^u4));
    // *maxout := max; 
    call $write_int($field($phys_ptr_cast(P#maxout, ^^u4)), $emb0($phys_ptr_cast(P#maxout, ^^u4)), L#max);
    assume $full_stop_ext(#tok$1^62.4, $s);
    // assert ==(sum, fsum(N, am)); 
    assert L#sum == F#fsum(P#N, SL#am);
    // assume ==(sum, fsum(N, am)); 
    assume L#sum == F#fsum(P#N, SL#am);
    // assert @map_eq(am, lambda#3(a, N)); 
    assert $eq.$map_t..^^mathint.^^mathint(SL#am, F#lambda#3($s, $phys_ptr_cast(P#a, ^^u4), P#N));
    // assume @map_eq(am, lambda#4(a, N)); 
    assume $eq.$map_t..^^mathint.^^mathint(SL#am, F#lambda#4($s, $phys_ptr_cast(P#a, ^^u4), P#N));
    // return sum; 
    $result := L#sum;
    assert $position_marker();
    goto #exit;

  anon19:
    // empty

  #exit:
}



function F#lambda#4(#s: $state, #l1: $ptr, #l0: int) : $map_t..^^mathint.^^mathint;

const unique cf#lambda#4: $pure_function;

axiom (forall #s0: $state, #s1: $state, #l1: $ptr, #l0: int :: {:weight 5} { $trans_call_transition(#s0, #s1), F#lambda#4(#s0, #l1, #l0), F#lambda#4(#s1, #l1, #l0) } $eq.$map_t..^^mathint.^^mathint(F#lambda#4(#s0, #l1, #l0), F#lambda#4(#s1, #l1, #l0)) ==> F#lambda#4(#s0, #l1, #l0) == F#lambda#4(#s1, #l1, #l0));

axiom $function_arg_type(cf#lambda#4, 0, $map_t(^^mathint, ^^mathint));

axiom $function_arg_type(cf#lambda#4, 1, $ptr_to(^^u4));

axiom $function_arg_type(cf#lambda#4, 2, ^^u4);

procedure lambda#4(#l1: $ptr, #l0: int) returns ($result: $map_t..^^mathint.^^mathint);
  free ensures $result == F#lambda#4($s, #l1, #l0);
  free ensures $call_transition(old($s), $s);



axiom (forall Q#__vcc_state$1^65.32#tc3: $state, Q#x$1^65.32#tc1: int, #l1: $ptr, #l0: int :: {:weight 10} { $select.$map_t..^^mathint.^^mathint(F#lambda#4(Q#__vcc_state$1^65.32#tc3, $phys_ptr_cast(#l1, ^^u4), #l0), Q#x$1^65.32#tc1) } $good_state(Q#__vcc_state$1^65.32#tc3) && true && $in_range_u4(#l0) ==> $select.$map_t..^^mathint.^^mathint(F#lambda#4(Q#__vcc_state$1^65.32#tc3, $phys_ptr_cast(#l1, ^^u4), #l0), Q#x$1^65.32#tc1) == (if Q#x$1^65.32#tc1 < 0 || Q#x$1^65.32#tc1 >= #l0 then 0 else $rd_inv(Q#__vcc_state$1^65.32#tc3, $field($idx($phys_ptr_cast(#l1, ^^u4), Q#x$1^65.32#tc1)), $emb0($idx($phys_ptr_cast(#l1, ^^u4), Q#x$1^65.32#tc1)))));

function F#lambda#3(#s: $state, #l1: $ptr, #l0: int) : $map_t..^^mathint.^^mathint;

const unique cf#lambda#3: $pure_function;

axiom (forall #s0: $state, #s1: $state, #l1: $ptr, #l0: int :: {:weight 5} { $trans_call_transition(#s0, #s1), F#lambda#3(#s0, #l1, #l0), F#lambda#3(#s1, #l1, #l0) } $eq.$map_t..^^mathint.^^mathint(F#lambda#3(#s0, #l1, #l0), F#lambda#3(#s1, #l1, #l0)) ==> F#lambda#3(#s0, #l1, #l0) == F#lambda#3(#s1, #l1, #l0));

axiom $function_arg_type(cf#lambda#3, 0, $map_t(^^mathint, ^^mathint));

axiom $function_arg_type(cf#lambda#3, 1, $ptr_to(^^u4));

axiom $function_arg_type(cf#lambda#3, 2, ^^u4);

procedure lambda#3(#l1: $ptr, #l0: int) returns ($result: $map_t..^^mathint.^^mathint);
  free ensures $result == F#lambda#3($s, #l1, #l0);
  free ensures $call_transition(old($s), $s);



axiom (forall Q#__vcc_state$1^65.32#tc3: $state, Q#x$1^65.32#tc1: int, #l1: $ptr, #l0: int :: {:weight 10} { $select.$map_t..^^mathint.^^mathint(F#lambda#3(Q#__vcc_state$1^65.32#tc3, $phys_ptr_cast(#l1, ^^u4), #l0), Q#x$1^65.32#tc1) } $good_state(Q#__vcc_state$1^65.32#tc3) && true && $in_range_u4(#l0) ==> $select.$map_t..^^mathint.^^mathint(F#lambda#3(Q#__vcc_state$1^65.32#tc3, $phys_ptr_cast(#l1, ^^u4), #l0), Q#x$1^65.32#tc1) == (if Q#x$1^65.32#tc1 < 0 || Q#x$1^65.32#tc1 >= #l0 then 0 else $rd_inv(Q#__vcc_state$1^65.32#tc3, $field($idx($phys_ptr_cast(#l1, ^^u4), Q#x$1^65.32#tc1)), $emb0($idx($phys_ptr_cast(#l1, ^^u4), Q#x$1^65.32#tc1)))));

function F#lambda#2(#s: $state, #l1: $ptr, #l0: int) : $map_t..^^mathint.^^mathint;

const unique cf#lambda#2: $pure_function;

axiom (forall #s0: $state, #s1: $state, #l1: $ptr, #l0: int :: {:weight 5} { $trans_call_transition(#s0, #s1), F#lambda#2(#s0, #l1, #l0), F#lambda#2(#s1, #l1, #l0) } $eq.$map_t..^^mathint.^^mathint(F#lambda#2(#s0, #l1, #l0), F#lambda#2(#s1, #l1, #l0)) ==> F#lambda#2(#s0, #l1, #l0) == F#lambda#2(#s1, #l1, #l0));

axiom $function_arg_type(cf#lambda#2, 0, $map_t(^^mathint, ^^mathint));

axiom $function_arg_type(cf#lambda#2, 1, $ptr_to(^^u4));

axiom $function_arg_type(cf#lambda#2, 2, ^^u4);

procedure lambda#2(#l1: $ptr, #l0: int) returns ($result: $map_t..^^mathint.^^mathint);
  free ensures $result == F#lambda#2($s, #l1, #l0);
  free ensures $call_transition(old($s), $s);



axiom (forall Q#__vcc_state$1^41.49#tc3: $state, Q#x$1^41.49#tc1: int, #l1: $ptr, #l0: int :: {:weight 10} { $select.$map_t..^^mathint.^^mathint(F#lambda#2(Q#__vcc_state$1^41.49#tc3, $phys_ptr_cast(#l1, ^^u4), #l0), Q#x$1^41.49#tc1) } $good_state(Q#__vcc_state$1^41.49#tc3) && true && $in_range_u4(#l0) ==> $select.$map_t..^^mathint.^^mathint(F#lambda#2(Q#__vcc_state$1^41.49#tc3, $phys_ptr_cast(#l1, ^^u4), #l0), Q#x$1^41.49#tc1) == (if Q#x$1^41.49#tc1 < 0 || Q#x$1^41.49#tc1 >= #l0 then 0 else $rd_inv(Q#__vcc_state$1^41.49#tc3, $field($idx($phys_ptr_cast(#l1, ^^u4), Q#x$1^41.49#tc1)), $emb0($idx($phys_ptr_cast(#l1, ^^u4), Q#x$1^41.49#tc1)))));

const unique l#public: $label;

type $map_t..^^mathint.^^mathint;

function $select.$map_t..^^mathint.^^mathint(M: $map_t..^^mathint.^^mathint, p: int) : int;

function $store.$map_t..^^mathint.^^mathint(M: $map_t..^^mathint.^^mathint, p: int, v: int) : $map_t..^^mathint.^^mathint;

function $eq.$map_t..^^mathint.^^mathint(M1: $map_t..^^mathint.^^mathint, M2: $map_t..^^mathint.^^mathint) : bool;

const $zero.$map_t..^^mathint.^^mathint: $map_t..^^mathint.^^mathint;

axiom (forall M: $map_t..^^mathint.^^mathint, p: int, v: int :: true);

axiom (forall M: $map_t..^^mathint.^^mathint, p: int, v: int, q: int :: $select.$map_t..^^mathint.^^mathint($store.$map_t..^^mathint.^^mathint(M, q, v), p) == (if p == q then v else $select.$map_t..^^mathint.^^mathint(M, p)));

axiom (forall M1: $map_t..^^mathint.^^mathint, M2: $map_t..^^mathint.^^mathint :: { $eq.$map_t..^^mathint.^^mathint(M1, M2) } (forall p: int :: $select.$map_t..^^mathint.^^mathint(M1, p) == $select.$map_t..^^mathint.^^mathint(M2, p)) ==> $eq.$map_t..^^mathint.^^mathint(M1, M2));

axiom (forall M1: $map_t..^^mathint.^^mathint, M2: $map_t..^^mathint.^^mathint :: { $eq.$map_t..^^mathint.^^mathint(M1, M2) } $eq.$map_t..^^mathint.^^mathint(M1, M2) ==> M1 == M2);

axiom $int_to_map_t..^^mathint.^^mathint(0) == $zero.$map_t..^^mathint.^^mathint;

axiom (forall p: int :: $select.$map_t..^^mathint.^^mathint($zero.$map_t..^^mathint.^^mathint, p) == 0);

axiom true;

axiom $type_code_is(3, ^$#state_t);

const unique #loc.#l0: $token;

const unique #loc.#l1: $token;

const unique #tok$1^65.32: $token;

const unique #tok$1^62.4: $token;

const unique #tok$1^43.22: $token;

const unique #tok$1^60.5: $token;

const unique #tok$1^57.27: $token;

const unique #tok$1^51.7: $token;

const unique #tok$1^43.3: $token;

const unique #tok$1^43.8: $token;

const unique #tok$1^41.49: $token;

const unique #loc.max: $token;

const unique #tok$1^37.3: $token;

const unique #loc.sum: $token;

const unique #tok$1^38.3: $token;

const unique #tok$1^39.3: $token;

const unique #loc.am: $token;

const unique #tok$1^41.25: $token;

const unique #loc.maxout: $token;

const unique #loc.N: $token;

const unique #distTp2: $ctype;

axiom #distTp2 == $ptr_to(^^u4);

const unique #loc.a: $token;

const unique #tok$1^30.1: $token;

axiom $type_code_is(2, ^^u4);

const unique #tok$1^18.17: $token;

const unique #tok$1^18.3: $token;

const unique #loc.k: $token;

const unique #tok$1^17.25: $token;

const unique #loc.j: $token;

const unique #tok$1^11.39: $token;

axiom $type_code_is(1, ^^mathint);

const unique #loc.res_fsum#7: $token;

const unique #tok$1^8.47: $token;

const unique #loc.ite#1: $token;

const unique #tok$1^8.10: $token;

function $map_t..^^mathint.^^mathint_to_int(x: $map_t..^^mathint.^^mathint) : int;

function $int_to_map_t..^^mathint.^^mathint(x: int) : $map_t..^^mathint.^^mathint;

axiom (forall #x: $map_t..^^mathint.^^mathint :: #x == $int_to_map_t..^^mathint.^^mathint($map_t..^^mathint.^^mathint_to_int(#x)));

const unique #loc.map: $token;

const unique #loc.i: $token;

const unique #tok$1^5.39: $token;

const unique #file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cvscomp2010?5Cvscomp2010_p1_v2.c: $token;

axiom $file_name_is(1, #file^C?3A?5Cdev?5Cfelt?5Cvcc?5CTest?5Ctestsuite?5Cvscomp2010?5Cvscomp2010_p1_v2.c);

const unique #distTp1: $ctype;

axiom #distTp1 == $map_t(^^mathint, ^^mathint);
