(** Problem 21: Insert an element at a given position into a list. *)

(** Inserts [element] at the position [k] into [list]. *)
let rec insert_at element k list =
  let rec recur acc i list =
    match list with
      [] -> acc
    | head :: tail ->
      recur (if i = k then head :: element :: acc else head :: acc) (i + 1) tail
  in
  List.rev (recur [] 0 list)
