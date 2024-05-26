-module(type_asserts_12).
-compile([nowarn_export_all, export_all]).



-spec any_to_atom3_neg(
    term()
) -> false | atom().
any_to_atom3_neg(A) ->
  is_binary(A)
    andalso list_to_atom(A).
