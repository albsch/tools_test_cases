-module(eqwater_34).
-compile([nowarn_export_all, export_all]).



-record(ab_rec, {
  ab :: atom() | binary()
}).
-spec occ12(#ab_rec{} | atom())
  -> atom().
occ12(#ab_rec{ab = A}) ->
  if
    is_atom(A) -> A;
    true -> undefined
  end;
occ12(A) -> A.
