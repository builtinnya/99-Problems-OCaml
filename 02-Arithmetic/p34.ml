(** Problem 34: Determine the prime factors of a given positive integer (2). *)

(** Returns a list containing the prime factors and their multiplicity of a
    positive integer [n].
*)
let factors n =
  let rec encode list =
    let rec recur acc (p, m) list =
      match list with
        [] -> if m = 0 then acc else (p, m) :: acc
      | head :: tail ->
        if m = 0 then recur acc (head, 1) tail
        else if head = p then recur acc (head, m + 1) tail
        else recur ((p, m) :: acc) (head, 1) tail
    in
    List.rev (recur [] (0, 0) list)
  in
  encode (P33.factors n)
