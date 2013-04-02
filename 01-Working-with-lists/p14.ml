(** Problem 14: Duplicate the elements of a list. *)

(** Duplicates each element of [list]. *)
let rec duplicate list =
  let dup acc elt =
    elt :: elt :: acc
  in
  List.rev (List.fold_left dup [] list)
