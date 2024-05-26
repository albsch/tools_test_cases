-module(type_asserts_5).
-compile([nowarn_export_all, export_all]).



-spec assert2(term()) -> binary().
assert2(Arg) ->
  is_binary(Arg) orelse error(bad_arg),
  Arg.
