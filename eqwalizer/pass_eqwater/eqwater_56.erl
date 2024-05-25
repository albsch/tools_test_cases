-module(eqwater_56).
-compile([nowarn_export_all, export_all]).



-spec occ20
  (a | b) -> b.
occ20(B) when B =/= a -> B;
occ20(_) -> b.
