open Core.Std
open OUnit2

module Foo_test = struct
    let bar ctx = 
      assert_equal ~msg:"Lorem" 1 1

    let suite = [
        "Ipsum" >:: bar;
      ]
  end

