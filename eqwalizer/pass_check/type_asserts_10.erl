-module(type_asserts_10).
-compile([nowarn_export_all, export_all]).



-spec any_to_atom1(
    string() | binary()
) -> false | atom().
any_to_atom1(A) ->
  Res = is_list(A)
    andalso list_to_atom(A),
  Res.
