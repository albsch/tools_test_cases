-module(eqwater_93).
-compile([nowarn_export_all, export_all]).



-spec occ45(binary() | atom(), atom())
      -> {atom(), atom()}.
occ45(B, A) when is_binary(B) ->
  {undefined, A};
occ45(A1, A2) ->
  {A1, A2}.
