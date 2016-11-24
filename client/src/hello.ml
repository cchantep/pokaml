open Foo

open Bar

let () =
  let x : foo = bar in
  let y = update x "hello" in
  print_endline "world"

let a = test
