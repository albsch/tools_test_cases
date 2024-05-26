-module(type_asserts_9).
-compile([nowarn_export_all, export_all]).



%% we don't support not yet
-spec assert6(
    string() | binary()
) -> binary().
assert6(Arg) ->
  (not is_list(Arg))
    orelse throw(bad_arg),
  Arg.
