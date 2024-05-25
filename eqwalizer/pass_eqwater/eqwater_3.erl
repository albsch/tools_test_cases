-module(eqwater_3).
-compile([nowarn_export_all, export_all]).



-spec occ01_cl
  (a | b) -> b.
occ01_cl(a) -> b;
occ01_cl(B) -> B.
