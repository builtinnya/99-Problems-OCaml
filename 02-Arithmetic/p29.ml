(** Problem 29: Determine whether a given integer number is prime. *)

(** Is [n] a prime number? *)
let rec is_prime n =
  let rec recur m =
    if m = n then true
    else if m > n then false
    else if n mod m = 0 then false
    else recur (m + 1)
  in
  recur 2
