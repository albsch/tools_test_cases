-module(type_asserts_6).
-compile([nowarn_export_all, export_all]).



-spec assert3(binary() | undefined)
      -> binary().
assert3(Arg) ->
  Arg =/= undefined orelse throw(bad_arg),
  Arg.
