(** Problem 2: Find the last but one (last and penultimate) elements of
    a list. *)

(** Returns the last two elements of [list] if [list] has more than one
    elements. Otherwise [None].
*)
let rec last_two list =
  match list with
    [] -> None
  | [e] -> None
  | [e1 ; e2] -> Some (e1, e2)
  | head :: tail -> last_two tail
