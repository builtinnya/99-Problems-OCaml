(** Problem 15: Replicate the elements of a list a given number of times. *)

(** Replicates the elements of [list] [n] times. *)
let rec replicate list n =
  let rec rep n acc elt =
    if n <= 0 then acc
    else rep (n - 1) (elt :: acc) elt
  in
  List.rev (List.fold_left (rep n) [] list)
