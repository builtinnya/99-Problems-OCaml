(** Problem 36: Compare the two methods of calculating Euler's totient function.
*)

(** Returns time [f a] took to finish. *)
let timeit f a =
  let t0 = Unix.gettimeofday() in
  ignore(f a);
  let t1 = Unix.gettimeofday() in
  Printf.printf "\ntime = %f\n" (t1 -. t0)
