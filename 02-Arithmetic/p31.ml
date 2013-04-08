(** Problem 31: Determine whether two positive integer numbers are coprime. *)

(** Are two positive integer numbers coprime? *)
let coprime m n =
  (P30.gcd m n) = 1
