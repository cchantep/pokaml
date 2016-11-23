open Foo

let () =
  let x : foo = bar in
  let y = update x "hello" in
  print_endline "world"
