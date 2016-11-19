open Core.Std
open Async.Std

open Pokaml

let () =
  Command.async
    ~summary:"Simple http server that outputs body of POST's"
    Command.Spec.(empty +>
                  flag "-p" (optional_with_default 8080 int)
                    ~doc:"int Source port to listen on"
                 ) Pokaml.start_server
|> Command.run
