(** Problem 33: Determine the prime factors of a given positive integer. *)

(** Returns the prime factors of a positive integer [n]. *)
let rec factors n =
  let rec next_prime p =
    let rec recur m cand =
      if cand mod m = 0 then recur 2 (cand + 1)
      else if cand > p then cand
      else recur (m + 1) cand
    in
    recur 2 (p + 1)
  in
  let rec recur acc n p =
    if n <= 1 then List.rev acc
    else if n mod p = 0 then recur (p :: acc) (n / p) p
    else recur acc n (next_prime p)
  in
  recur [] n 2
