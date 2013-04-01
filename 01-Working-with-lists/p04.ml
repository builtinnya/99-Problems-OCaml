(** Problem 4: Find the number of elements of a list. *)

(** Returns the number of elements of [list]. *)
let rec length list =
  let rec recur list acc =
    match list with
      [] -> acc
    | head :: tail -> recur tail (acc + 1)
  in
  recur list 0
