-module(eqwater_30).
-compile([nowarn_export_all, export_all]).



-spec lambda_call_elab
(X :: atom() | binary()) -> binary().
lambda_call_elab(X) ->
  Res =
  (fun
     (A) when is_atom(A) ->
       atom_to_binary(A);
     (B) -> B
  end)(X),
  Res.
