-module(eqwater_55).
-compile([nowarn_export_all, export_all]).



-spec occ19
  (a | b) -> b.
occ19(A) when A =:= a -> b;
occ19(B) -> B.
