(** Problem 8: Eliminate consecutive duplicates of list elements. *)

(** Eliminates consecutive duplicates of elements of [list]. *)
let rec compress list =
  (List.rev
     (List.fold_left
        (fun acc elt ->
          match acc with
            [] -> [elt]
          | prev :: _ ->
            if prev = elt then acc else elt :: acc)
        [] list))
