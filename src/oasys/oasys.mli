open Coconuts
(* This is responsible for executing all of the commands *)

(* Takes in a command and then execute all necessary commands *)
val eval : string -> cmd_expr -> feedback
