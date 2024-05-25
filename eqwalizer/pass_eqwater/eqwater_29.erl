-module(eqwater_29).
-compile([nowarn_export_all, export_all]).



-spec lambda_call(X :: atom() | binary())
  -> binary().
lambda_call(X) ->
  (fun
    (A) when is_atom(A) ->
      atom_to_binary(A);
    (B) -> B
  end)(X).
