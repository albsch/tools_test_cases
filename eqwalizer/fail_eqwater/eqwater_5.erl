-module(eqwater_5).
-compile([nowarn_export_all, export_all]).

-record(ab_rec, {
  ab :: atom() | binary()
}).

-spec occ11(#ab_rec{} | atom())
  -> atom().
occ11(#ab_rec{ab = A})
  when is_atom(A) -> A;
occ11(A) -> A.
