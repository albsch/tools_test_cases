-module(eqwater_5).
-compile([nowarn_export_all, export_all]).



-spec occ02_cl
  (a | {b, integer()}) -> integer().
occ02_cl(a) -> 0;
occ02_cl({_, I}) -> I.
