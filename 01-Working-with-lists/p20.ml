(** Problem 20: Remove the K'th element from a list. *)

(** Removes [k]'th element from [list]. *)
let rec remove_at k list =
  let rec recur acc i list =
    match list with
      [] -> acc
    | head :: tail ->
      recur (if i = k then acc else head :: acc) (i + 1) tail
  in
  List.rev (recur [] 0 list)
