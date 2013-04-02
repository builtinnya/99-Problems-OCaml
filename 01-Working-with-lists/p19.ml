(** Problem 19: Rotate a list N places to the left. *)

(** Rotates [list] [n] places to the left *)
let rec rotate list n =
  let appendr (l1, l2) =
    List.append l2 l1
  in
  appendr (P17.split list (if n >= 0 then n else (List.length list) + n))
