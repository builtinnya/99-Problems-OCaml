(** Problem 17: Split a list into two parts; the length of the first part is
    given.
*)

(** Splits [list] into two parts. The first part contains [n] elements. *)
let rec split list n =
  let rec recur acc n list =
    if n = 0 then (List.rev acc), list
    else match list with
      [] -> (List.rev acc), list
    | head :: tail -> recur (head :: acc) (n - 1) tail
  in
  recur [] n list
