open Core.Std
open Async.Std
open Cohttp_async

let asset path = "./public/" ^ path

let handler ~body:_ _sock req =
  let uri = Cohttp.Request.uri req in
  match Uri.path uri with
  | "/" ->
      Server.respond_with_file (asset "main.html")
  | path when (String.is_prefix path "/assets/") ->
      let assetsPath = asset (String.drop_prefix path (String.length "/assets/")) in
      Server.respond_with_file assetsPath
  | _ ->
      Server.respond_with_string ~code:`Not_found "Route not found"

let start_server port () =
  eprintf "Listening for HTTP on port %d\n" port;
  Cohttp_async.Server.create ~on_handler_error:`Raise
    (Tcp.on_port port) handler
  >>= fun _ -> Deferred.never ()

let () =
  Command.async
    ~summary:"Start a hello world Async server"
    Command.Spec.(empty +>
      flag "-p" (optional_with_default 8080 int)
        ~doc:"int Source port to listen on"
    ) start_server
      |> Command.run
