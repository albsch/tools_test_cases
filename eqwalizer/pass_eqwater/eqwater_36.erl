-module(eqwater_36).
-compile([nowarn_export_all, export_all]).



-record(ab_rec, {
  ab :: atom() | binary()
}).
-record(a_rec, {
  a :: atom()
}).
-spec occ15
  (#a_rec{} | atom(), #ab_rec{})
    -> atom().
occ15(#a_rec{a = Z},
  #ab_rec{}) -> Z;
occ15(A, _) -> A.
