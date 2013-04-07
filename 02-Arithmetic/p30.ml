(** Problem 30: Determine the greatest common divisor of two positive integer
    numbers.
*)

(** Returns the greatest common divisor of two positive integers. *)
let rec gcd m n =
  if n = 0 then m
  else gcd n (m mod n)
