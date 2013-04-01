(** Problem 7: Flatten a nested list structure. *)

(** There is no nested list type in OCaml, so we need to define one
    first. A node of a nested list is either an element, or a list of
    nodes. *)
type 'a node =
| One of 'a
| Many of 'a node list;;

(** Flattens a nested [list] *)
let rec flatten list =
  let rec recur list acc =
    match list with
      [] -> acc
    | head :: tail ->
      (match head with
        One  x -> recur tail (x :: acc)
      | Many l -> recur tail (recur l acc))
  in
  List.rev (recur list [])
