(** Problem 22: Create a list containing all integers within a given range. *)

(** Creates a list containing all integers between [start] and [last]. *)
let rec range start last =
  let step = if start < last then 1 else (-1) in
  let rec recur acc i =
    if i = last then i :: acc
    else recur (i :: acc) (i + step)
  in
  List.rev (recur [] start)
