-module(eqwater_94).
-compile([nowarn_export_all, export_all]).



-spec occ46({binary() | atom(), atom()}) -> {atom(), atom()}.
occ46(Tuple) ->
  case Tuple of
    {B, A} when is_binary(B) ->
      {undefined, A};
    {A1, A2} ->
      {A1, A2}
  end.
