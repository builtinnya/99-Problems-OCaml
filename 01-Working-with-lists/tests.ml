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

let test_suite =
  "Working with lists">:::
    [
      test_p01;
      test_p02;
      test_p03;
      test_p04;
      test_p05;
    ]

let _ =
  run_test_tt_main test_suite
