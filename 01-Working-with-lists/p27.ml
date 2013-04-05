(** Problem 27: Group the elements of a set into disjoint subsets. *)

(** [mapcan] as in Lisp family. *)
let rec mapcan f list =
  let rec recur acc = function
    | [] -> acc
    | head :: tail ->
      recur ((f head) @ acc) tail
  in
  recur [] list

(** Groups the elements of [list] into disjoint sublists. *)
let rec group list sizes =
  let remove to_remove list =
    List.filter (fun elt -> not (List.mem elt to_remove)) list
  in
  let rec recur acc list = function
    | [] -> [List.rev acc]
    | size :: rest_sizes ->
      (mapcan
         (fun comb ->
           recur (comb :: acc) (remove comb list) rest_sizes)
         (P26.extract size list))
  in
  recur [] list sizes
