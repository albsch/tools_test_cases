-module(eqwater_35).
-compile([nowarn_export_all, export_all]).



-record(a_rec, {
  a :: atom()
}).
-spec occ14
  (#a_rec{} | atom())
    -> atom().
occ14(#a_rec{a = Z}) -> Z;
occ14(A) -> A.
