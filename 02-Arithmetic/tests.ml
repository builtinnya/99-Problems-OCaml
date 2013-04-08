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

let test_p29 =
  (test_function1 "p29" P29.is_prime
     ["1 is not a prime number", 1, false;
      "7 is a prime number", 7, true;
      "12 is not a prime number", 12, false])

let test_p30 =
  "p30">:::
    [
      "13 and 27">::
        (fun () ->
          (assert_equal_things
             1 (P30.gcd 13 27))) ;

      "20536 and 7826">::
        (fun () ->
          (assert_equal_things
             2 (P30.gcd 20536 7826)))
    ]

let test_p31 =
  "p31">:::
    [
      "13 and 27">::
        (fun () ->
          (assert_equal_things
             true (P31.coprime 13 27))) ;

      "20536 and 7826">::
        (fun () ->
          (assert_equal_things
             false (P31.coprime 20536 7826)))
    ]

let test_p32 =
  (test_function1 "p32" P32.phi
     ["phi(10)", 10, 4 ;
      "phi(13)", 13, 12])

let test_suite =
  "Arithmetic">:::
    [
      test_p29;
      test_p30;
      test_p31;
      test_p32;
    ]

let _ =
  run_test_tt_main test_suite
