(** Problem 11: Modified run-length encoding. *)

type 'a rle =
    | One of 'a
    | Many of (int * 'a)

(** Encodes [list] into modified run-length encoding.
    If an element has no duplicates it is simply copied into the result list.
    Only elements with duplicates are transferred as (N, E).
*)
let rec encode list =
  let enc (len, sym) =
    if len = 1 then One sym
    else Many (len, sym)
  in
  let rec recur acc (len, sym) list =
    match list with
      [] -> if len = 0 then acc else (enc (len, sym)) :: acc
    | head :: tail ->
      if len = 0 then recur acc (1, head) tail
      else if head = sym then recur acc (len + 1, head) tail
      else recur ((enc (len, sym)) :: acc) (1, head) tail
  in
  List.rev (recur [] (0, `Unused) list)
