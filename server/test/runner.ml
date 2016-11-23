open OUnit2

let suite = 
  let open Foo_test in
  "Pokaml" >::: Foo_test.suite

let () = run_test_tt_main suite
