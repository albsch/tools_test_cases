-module(type_asserts_8).
-compile([nowarn_export_all, export_all]).



-spec assert5_neg(
    string() | binary()
) -> binary().
assert5_neg(Arg) ->
  is_list(Arg) orelse throw(bad_arg),
  Arg.
