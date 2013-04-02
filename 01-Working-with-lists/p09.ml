(** Problem 9: Pack consecutive duplicates of list elements into sublists. *)

(** Packs consecutive duplicates of [list] elements into sublists. *)
let rec pack list =
  let rec recur acc acc' list =
    match list with
      [] -> if acc' = [] then acc else acc' :: acc
    | head :: tail ->
      (match acc' with
        [] -> recur acc (head :: acc') tail
      | prev :: _ ->
        if head = prev then recur acc (head :: acc') tail
        else recur (acc' :: acc) [head] tail)
  in
  List.rev (recur [] [] list)
