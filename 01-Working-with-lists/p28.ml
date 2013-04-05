(** Problem 28: Sorting a list of lists according to length of sublists. *)

(** Sorts [list] of lists by their length: too naive implementation. *)
let rec length_sort list =
  let rec find_longest list =
    let rec recur acc res = function
      | [] -> acc, res
      | head :: tail ->
        if (List.length head) > (List.length res)
        then recur (res :: acc) head tail
        else recur (head :: acc) res tail
    in
    match list with
      [] -> raise Not_found
    | head :: tail ->
      recur [] head tail
  in
  let rec recur acc list =
    if list = [] then acc
    else match (find_longest list) with
    | (rest, sl) -> recur (sl :: acc) rest
  in
  recur [] list

(** Sorts [list] of lists by frequency of lengths: too naive implementation. *)
let rec frequency_sort list =
  let group_by_length list =
    let rec recur acc acc' = function
      | [] -> if acc' = [] then acc else acc' :: acc
      | head :: tail ->
        (match acc' with
          [] -> recur acc [head] tail
        | prev :: _ ->
          if (List.length prev) = (List.length head)
          then recur acc (head :: acc') tail
          else recur (acc' :: acc) [head] tail)
    in
    recur [] [] (length_sort list)
  in
  let degroup list =
    List.fold_left (fun acc ll -> acc @ ll) [] list
  in
  degroup (length_sort (group_by_length list))
