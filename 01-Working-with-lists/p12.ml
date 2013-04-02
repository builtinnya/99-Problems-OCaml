(** Problem 12: Decode a run-length encoded list. *)

open P11

(** Decodes a modified run-length encoded [list]. See p11. *)
let rec decode list =
  let rec run (len, sym) acc =
    if len <= 0 then acc
    else run (len - 1, sym) (sym :: acc)
  in
  (List.rev
     (List.fold_left
        (fun acc elt ->
          match elt with
            One sym -> sym :: acc
          | Many (len, sym) -> (run (len, sym) acc))
        [] list))
