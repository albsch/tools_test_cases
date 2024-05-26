-module(type_asserts_1).
-compile([nowarn_export_all, export_all]).



-spec assert1(term()) -> binary().
assert1(Arg) ->
  is_binary(Arg) orelse throw(bad_arg),
  Arg.
