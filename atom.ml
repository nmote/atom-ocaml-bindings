let js_atom () =
  Js.Unsafe.variable "atom"

module Notifications = struct
  let js_notifications () =
    Js.Unsafe.get (js_atom ()) "notifications"
  let addSuccess str =
    Js.Unsafe.meth_call (js_notifications ()) "addSuccess" [|Js.string str |> Js.Unsafe.inject|]
end
