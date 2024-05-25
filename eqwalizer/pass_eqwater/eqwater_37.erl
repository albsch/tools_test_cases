-module(eqwater_37).
-compile([nowarn_export_all, export_all]).



-record(ab_rec, {
  ab :: atom() | binary()
}).
-record(a_rec, {
  a :: atom()
}).
-spec occ16
  (#a_rec{} | atom(), #ab_rec{})
    -> atom().
occ16(#a_rec{},
  #ab_rec{}) -> ok;
occ16(A, _) -> A.
