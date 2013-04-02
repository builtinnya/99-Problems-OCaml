open OUnit
open Batteries

let assert_equal_things t1 t2 =
  assert_equal ~printer:(fun t -> (dump t)) t1 t2

let test_function1 title f specs =
  title>:::
    (List.map
       (fun (label, arg, res) ->
         label>::
           (fun () ->
             assert_equal_things res (f arg)))
       specs)

let test_p01 =
  (test_function1 "p01" P01.last
     ["last is last", [`a ; `b ; `c ; `d], (Some `d) ;
      "last of empty list", [], None])

let test_p02 =
  (test_function1 "p02" P02.last_two
     ["last two are last two", [`a ; `b ; `c ; `d], (Some (`c, `d)) ;
      "last two of one-element list", [`a], None])

let test_p03 =
  "p03">:::
    [
      "3rd is 3rd">::
        (fun () ->
          (assert_equal_things
             (Some `c) (P03.at 3 [`a ; `b ; `c ; `d ; `e]))) ;

      "Out of range">::
        (fun () ->
          (assert_equal_things
             None (P03.at 3 [`a])))
    ]

let test_p04 =
  (test_function1 "p04" P04.length
     ["three elements", [`a ; `b ; `c], 3 ;
      "empty list", [], 0])

let test_p05 =
  (test_function1 "p05" P05.rev
     ["reverse", [`a ; `b ; `c], [`c ; `b ; `a]])

let test_p06 =
  (test_function1 "p06" P06.is_palindrome
     ["palindrome", [`x ; `a ; `m ; `a ; `x], true ;
      "not palindrome", [`a ; `b], false])

open P07
let test_p07 =
  (test_function1 "p07" P07.flatten
     ["flatten", [One `a ; Many [One `b ; Many [One `c ; One `d] ; One `e]],
      [`a ; `b ; `c ; `d ; `e]])

let test_p08 =
  (test_function1 "p08" P08.compress
     ["compress", [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e],
      [`a;`b;`c;`a;`d;`e]])

let test_p09 =
  (test_function1 "p09" P09.pack
     ["pack", [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`d;`e;`e;`e;`e],
      [[`a;`a;`a;`a]; [`b]; [`c;`c]; [`a;`a]; [`d;`d]; [`e;`e;`e;`e]]])

let test_p10 =
  (test_function1 "p10" P10.encode
     ["run-length", [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e],
      [4,`a ; 1,`b ; 2,`c ; 2,`a ; 1,`d ; 4,`e]])

open P11
let test_p11 =
  (test_function1 "p11" P11.encode
     ["modified run-length", [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e],
      [Many (4,`a) ; One `b ; Many (2,`c) ; Many (2,`a) ; One `d ; Many (4,`e)]])

let test_p12 =
  (test_function1 "p12" P12.decode
     ["decode run-length", [Many (4,`a); One `b; Many (2,`c); Many (2,`a);
                            One `d; Many (4,`e)],
      [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e]])

let test_p13 =
  (test_function1 "p13" P13.encode
     ["modified run-length", [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e],
      [Many (4,`a) ; One `b ; Many (2,`c) ; Many (2,`a) ; One `d ; Many (4,`e)]])

let test_p14 =
  (test_function1 "p14" P14.duplicate
     ["duplicate", [`a;`b;`c;`c;`d], [`a;`a;`b;`b;`c;`c;`c;`c;`d;`d]])

let test_p15 =
  "p15">:::
    [
      "replicate three times">::
        (fun () ->
          (assert_equal_things
             [`a;`a;`a;`b;`b;`b;`c;`c;`c] (P15.replicate [`a;`b;`c] 3)))
    ]

let test_p16 =
  "p16">:::
    [
      "drop every third element">::
        (fun () ->
          (assert_equal_things
             [`a;`b;`d;`e;`g;`h;`j]
             (P16.drop [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 3)))
    ]

let test_p17 =
  "p17">:::
    [
      "split into two parts; the first part contains three elements">::
        (fun () ->
          (assert_equal_things
             ([`a;`b;`c] , [`d;`e;`f;`g;`h;`i;`j])
             (P17.split [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 3))) ;

      "what if the given number is greater than the length of the list?">::
        (fun () ->
          (assert_equal_things
             ([`a; `b; `c; `d], [])
             (P17.split [`a;`b;`c;`d] 5)))
    ]

let test_p18 =
  "p18">:::
    [
      "slice 2 6">::
        (fun () ->
          (assert_equal_things
             [`c;`d;`e;`f;`g]
             (P18.slice [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 2 6)))
    ]

let test_p19 =
  "p19">:::
    [
      "rotate three places to the left">::
        (fun () ->
          (assert_equal_things
             [`d;`e;`f;`g;`h;`a;`b;`c]
             (P19.rotate [`a;`b;`c;`d;`e;`f;`g;`h] 3))) ;

      "rotate two places to the right">::
        (fun () ->
          (assert_equal_things
             [`g;`h;`a;`b;`c;`d;`e;`f]
             (P19.rotate [`a;`b;`c;`d;`e;`f;`g;`h] (-2))))
    ]

let test_p20 =
  "p20">:::
    [
      "remove the second element">::
        (fun () ->
          (assert_equal_things
             [`a;`c;`d]
             (P20.remove_at 1 [`a;`b;`c;`d])))
    ]

let test_p21 =
  "p21">:::
    [
      "insert">::
        (fun () ->
          (assert_equal_things
             [`a;`alfa;`b;`c;`d]
             (P21.insert_at `alfa 1 [`a;`b;`c;`d])))
    ]

let test_p22 =
  "p22">:::
    [
      "range start < last">::
        (fun () ->
          (assert_equal_things
             [4;5;6;7;8;9]
             (P22.range 4 9))) ;

      "range start > last">::
        (fun () ->
          (assert_equal_things
             [9;8;7;6;5;4]
             (P22.range 9 4)))
    ]

let test_p23 =
  "p23">:::
    [
      "extract randomly">::
        (fun () ->
          (assert_equal_things
             [`g ; `d ; `a]
             (P23.rand_select [`a;`b;`c;`d;`e;`f;`g;`h] 3)))
    ]

let test_suite =
  "Working with lists">:::
    [
      test_p01;
      test_p02;
      test_p03;
      test_p04;
      test_p05;
      test_p06;
      test_p07;
      test_p08;
      test_p09;
      test_p10;
      test_p11;
      test_p12;
      test_p13;
      test_p14;
      test_p15;
      test_p16;
      test_p17;
      test_p18;
      test_p19;
      test_p20;
      test_p21;
      test_p22;
      test_p23;
    ]

let _ =
  run_test_tt_main test_suite
