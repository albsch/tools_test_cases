-module(eqwater_57).
-compile([nowarn_export_all, export_all]).



-spec occ21
  (a | b) -> b.
occ21(A) when A =/= b -> b;
occ21(B) -> B.
