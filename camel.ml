open Str
open Async.Std
open Coconuts

let stdin : Reader.t = Lazy.force Reader.stdin

let lex s =
  Str.split (Str.regexp " ") s

let rec read () = failwith "Not implemented"
  (* (* prompt the user *)
  printf "enter a line:\n";
  lex (read_line()) *)

let output x = failwith "Not implemented"
