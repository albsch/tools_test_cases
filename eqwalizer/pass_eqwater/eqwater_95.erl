-module(eqwater_95).
-compile([nowarn_export_all, export_all]).



-spec occ47(binary() | atom(), atom())
      -> {atom(), atom()}.
occ47(A1, A2) ->
  case {A1, A2} of
    {B, _} when is_binary(B) ->
      {undefined, A2};
    {A3, A4} ->
      {A3, A4}
  end.
