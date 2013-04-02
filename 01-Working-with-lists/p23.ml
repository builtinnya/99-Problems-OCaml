(** Problem 23: Extract a given number of randomly selected elements from
    a list.
*)

(** Extracts [n] elements randomly from [list] *)
let rec rand_select list n =

  let extract_rand list len =
    let i = Random.int len in
    List.nth list i, P20.remove_at i list
  in

  let rec recur acc count list len =
    if count = n then acc
    else let e, r = extract_rand list len in
         recur (e :: acc) (count + 1) r (len - 1)
  in

  let len = List.length list in
  recur [] 0 list len
