(** Problem 23: Extract a given number of randomly selected elements from
    a list.
*)

(** Extracts [n] elements randomly from [list] *)
let rec rand_select list n =

  let extract list =
    let len = List.length list in
    if len = 0 then failwith "Cannot extract from an empty list"
    else let i = Random.int len in
           (List.nth list i), (P20.remove_at i list)
  in

  let rec recur acc count list =
    if count = n then acc
    else let e, r = extract list in
         recur (e :: acc) (count + 1) r
  in

  recur [] 0 list
