-module(type_asserts_11).
-compile([nowarn_export_all, export_all]).



-spec any_to_atom2(
    string() | binary()
) -> false | atom().
any_to_atom2(A) ->
  is_binary(A)
    andalso list_to_atom(A).
