(** Problem 6: Find out whether a list is a palindrome. *)

(** Returns true if and only if [list] is a palindrome. *)
let rec is_palindrome list =
  list = (List.rev list)
