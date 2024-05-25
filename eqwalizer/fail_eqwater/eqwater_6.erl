-module(eqwater_6).
-compile([nowarn_export_all, export_all]).

-record(a_rec, {
  a :: atom()
}).
-record(ab_rec, {
  ab :: atom() | binary()
}).

-spec occ13
(#ab_rec{} | atom(), #a_rec{})
  -> atom().
occ13(#ab_rec{ab = A},
      #a_rec{a = A}) -> A;
occ13(A, _) -> A.
