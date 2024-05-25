-module(eqwater_31).
-compile([nowarn_export_all, export_all]).



-spec
lambda1() ->
  fun((atom() | binary())
      -> binary()).
lambda1() ->
  fun
    (A) when is_atom(A) ->
      atom_to_binary(A);
    (B) -> B
  end.
