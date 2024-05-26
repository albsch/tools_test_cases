-module(type_asserts_7).
-compile([nowarn_export_all, export_all]).



-spec assert4(binary() | undefined)
      -> binary().
assert4(Arg) ->
  Arg =/= undefined orelse error(bad_arg),
  Arg.
