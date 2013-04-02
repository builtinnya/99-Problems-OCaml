(** Problem 10: Run-length encoding of a list. *)

(** Encodes [list] into run-length encoding. *)
let rec encode list =
  let rec recur acc (len, sym) list =
    match list with
      [] -> if len = 0 then acc else (len, sym) :: acc
    | head :: tail ->
      if len = 0 then recur acc (1, head) tail
      else if head = sym then recur acc (len + 1, head) tail
      else recur ((len, sym) :: acc) (1, head) tail
  in
  List.rev (recur [] (0, `Unused) list)
