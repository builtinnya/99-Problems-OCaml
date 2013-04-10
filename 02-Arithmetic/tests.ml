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

let test_p33 =
  (test_function1 "p33" P33.factors
     ["prime factors", 315, [3; 3; 5; 7]])

let test_p34 =
  (test_function1 "p34" P34.factors
     ["prime factors", 315, [3, 2; 5, 1; 7, 1]])

let test_p35 =
  (test_function1 "p35" P35.phi_improved
     ["phi(10)", 10, 4 ;
      "phi(13)", 13, 12])

let test_p36 =
  let n = 10090 in
  let title = Printf.sprintf "phi(%d)" n in
  "p36">:::
    [
      title>::
        (fun () ->
          (assert_equal_things
             () (P36.timeit P32.phi n))) ;

      ("improved " ^ title)>::
        (fun () ->
          (assert_equal_things
             () (P36.timeit P35.phi_improved n))) ;
    ]

let test_suite =
  "Arithmetic">:::
    [
      test_p29;
      test_p30;
      test_p31;
      test_p32;
      test_p33;
      test_p34;
      test_p35;
      test_p36;
    ]

let _ =
  run_test_tt_main test_suite
