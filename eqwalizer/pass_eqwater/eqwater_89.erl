-module(eqwater_89).
-compile([nowarn_export_all, export_all]).



-record(rec10, {
  f1 :: a | b,
  f2 :: undefined | binary()
}).
-spec occ39(#rec10{}) -> binary().
occ39(#rec10{f2 = undefined}) -> <<>>;
occ39(#rec10{f2 = B}) -> B.
