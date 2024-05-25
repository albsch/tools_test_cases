-module(eqwater_21).
-compile([nowarn_export_all, export_all]).



-spec occ07
  (atom() | binary(),
    number() | list()) ->
  binary() | number().
occ07(X, _) when not is_atom(X) -> X;
occ07(_, Y) when is_list(Y) -> 0;
occ07(_, Y) -> Y.
