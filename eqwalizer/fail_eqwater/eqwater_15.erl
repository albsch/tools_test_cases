-module(eqwater_15).
-compile([nowarn_export_all, export_all]).

-spec occ27_neg
  (fun() | {term()}) ->
  {term()}.
occ27_neg(T) when is_tuple(T) -> T;
occ27_neg(F) -> F().
