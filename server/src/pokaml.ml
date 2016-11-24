open Core.Std
open Async.Std
open Cohttp_async

open Foo

let start_server port () =
  eprintf "Listening for HTTP on port %d\n" port;
  eprintf "Try 'curl -X POST -d 'foo bar' http://localhost:%d\n" port;
  Cohttp_async.Server.create ~on_handler_error:`Raise
    (Tcp.on_port port) (fun ~body _ req ->
      match req |> Cohttp.Request.meth with
      | `POST ->
         (Body.to_string body) >>= (fun body ->
                                    (* Log.Global.info "Body: %s" body; *)
          Server.respond_with_string ~code:`OK body)
      | _ -> Server.respond `Method_not_allowed
    )
  >>= fun _ -> Deferred.never ()
