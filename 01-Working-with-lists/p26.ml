(** Problem 26: Generate the combinations of K distinct objects chosen from the
    N elements of a list.
*)

(** [mapcon] as in Lisp family. *)
let rec mapcon f list =
  let rec recur acc = function
    | [] -> acc
    | list ->
      recur ((f list) @ acc) (List.tl list)
  in
  recur [] list

(** Generates the combinations of [k] distinct objects from [list]. *)
let rec extract k list =
  let rec recur acc depth list =
    if depth = k then [List.rev acc]
    else
      (mapcon
         (function
         | [] -> raise Not_found
         | head :: tail ->
           recur (head :: acc) (depth + 1) tail)
         list)
  in
  recur [] 0 list
