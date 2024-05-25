-module(eqwater_14).
-compile([nowarn_export_all, export_all]).

-spec occ26_neg
  (fun() | {term()}) ->
  {term()}.
occ26_neg(F) when is_function(F, 1) -> {F(1)};
occ26_neg(T) -> T.
