(** Problem 5: Reverse a list. *)

(** Reverses [list]. *)
let rec rev list =
  let rec recur list acc =
    match list with
      [] -> acc
    | head :: tail -> recur tail (head :: acc)
  in
  recur list []
