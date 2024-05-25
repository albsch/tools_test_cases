-module(eqwater_60).
-compile([nowarn_export_all, export_all]).



-spec occ25
  (fun(() -> atom()) | atom()) ->
  atom().
occ25(A) when is_atom(A) -> A;
occ25(F) -> F().
