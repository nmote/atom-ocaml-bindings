let export_function name f =
  let exports = Js.Unsafe.variable "exports" in
  Js.Unsafe.set exports name (Js.wrap_callback f)

module Console = struct
  let log str =
    Firebug.console##log (Js.string str)
end
