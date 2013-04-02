(** Problem 18: Extract a slice from a list. *)

(** Returns a slice which contains [list] elements between [i]'th and [k]'th. *)
let rec slice list i k =
  let rec pick acc index list =
    match list with
      [] -> acc
    | head :: tail ->
      if i <= index && index <= k then pick (head :: acc) (index + 1) tail
      else if index < i then pick acc (index + 1) tail
      else acc
  in
  List.rev (pick [] 0 list)
