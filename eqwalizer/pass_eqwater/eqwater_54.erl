-module(eqwater_54).
-compile([nowarn_export_all, export_all]).



-spec occ18
  (a | b) -> b.
occ18(A) when A == a -> b;
occ18(B) -> B.
