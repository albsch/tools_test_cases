-module(eqwater_96).
-compile([nowarn_export_all, export_all]).



-spec occ48(binary() | atom(), atom())
      -> {atom(), atom()}.
occ48(A1, A2) ->
  case {A1, A2} of
    {B, _} when is_binary(B) ->
      {undefined, A2};
    _ ->
      {A1, A2}
  end.
