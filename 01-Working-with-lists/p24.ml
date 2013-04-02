(** Problem 24: Lotto: Draw N different random numbers from the set 1..M. *)

(** Draws [n] different random numbers from the set 1..[m]. *)
let rec lotto_select n m =
  P23.rand_select (P22.range 1 m) n
