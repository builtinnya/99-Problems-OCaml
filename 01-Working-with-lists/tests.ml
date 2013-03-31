open OUnit
open Batteries

let test_function1 title f specs =
  let assert_equal_things t1 t2 =
    assert_equal ~printer:(fun t -> (dump t)) t1 t2
  in
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

let test_suite =
  "Working with lists">:::
    [
      test_p01;
    ]

let _ =
  run_test_tt_main test_suite
