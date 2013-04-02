(** Problem 25: Generate a random permutation of the elements of a list. *)

(** Generates a random permutation of the elements of [list]. *)
let permutation list =
  P23.rand_select list (List.length list)
