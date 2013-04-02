(** Problem 16: Drop every N'th element from a list. *)

(** Drops every [n]'th element from [list]. *)
let rec drop list n =
  let rec recur acc count list =
    match list with
      [] -> acc
    | head :: tail ->
      if count = n then recur acc 1 tail
      else recur (head :: acc) (count + 1) tail
  in
  List.rev (recur [] 1 list)
