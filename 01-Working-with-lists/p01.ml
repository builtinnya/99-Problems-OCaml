(** Problem 1: Last Element *)

(** Returns the last element of [list] if [list] is not empty,
    otherwise [None].
*)
let rec last list =
  match list with
    [] -> None
  | [element] -> Some element
  | head :: tail -> last tail
