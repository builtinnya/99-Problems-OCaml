(** Problem 32: Calculate Euler's totient function phi(m). *)

(** Returns Euler's totient function phi([m]). *)
let rec phi m =
  let rec recur count r =
    if r >= m then count
    else if P31.coprime m r then recur (count + 1) (r + 1)
    else recur count (r + 1)
  in
  if m = 1 then 1
  else recur 0 1
