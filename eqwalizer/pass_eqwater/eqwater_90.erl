-module(eqwater_90).
-compile([nowarn_export_all, export_all]).



-record(rec10, {
  f1 :: a | b,
  f2 :: undefined | binary()
}).
-spec occ40(#rec10{}) -> binary().
occ40(#rec10{f1 = a, f2 = undefined}) -> <<>>;
occ40(#rec10{f1 = a, f2 = B}) -> B.
