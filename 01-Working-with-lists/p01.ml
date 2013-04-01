(** Problem 1: Write a function [last : 'a list -> 'a option] that returns the
    last element of a list. *)

(** Returns the last element of [list] if [list] is not empty,
    otherwise [None].
*)
let rec last list =
  match list with
    [] -> None
  | [element]    -> Some element
  | head :: tail -> last tail
