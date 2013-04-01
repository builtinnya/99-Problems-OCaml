(** Problem 3: Find the [k]'th element of a list. *)

(** Returns the [k]'th element of [list] if arguments are meaningful.
    Otherwise [None].
*)
let rec at k list =
  match list with
    [] -> None
  | head :: tail ->
    if k <= 0 then None
    else if k = 1 then Some head
    else at (k - 1) tail
