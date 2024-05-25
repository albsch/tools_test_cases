-module(eqwater_68).
-compile([nowarn_export_all, export_all]).



-type result(A) ::
  {ok, A} | {err, atom()}.
-spec map_result
    (fun((A) -> B), result(A))
      -> result(B).
map_result(F, Res) ->
  case Res of
    {ok, A} -> {ok, F(A)};
    Err -> Err
  end.
