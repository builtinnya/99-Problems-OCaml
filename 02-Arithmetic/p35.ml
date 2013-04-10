(** Problem 35: Calculate Euler's totient function phi(m) (improved). *)

open BatInt

(** Returns Euler's totient function phi([m]). *)
let rec phi_improved m =
  let rec calc p m =
    (p - 1) * (p ** (m - 1))
  in
  let rec recur res = function
    | [] -> res
    | (p, m) :: tail -> recur (res * (calc p m)) tail
  in
  recur 1 (P34.factors m)
