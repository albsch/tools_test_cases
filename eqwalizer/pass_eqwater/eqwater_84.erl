-module(eqwater_84).
-compile([nowarn_export_all, export_all]).



-spec occ34
    (a | b) -> b.
occ34(B) when B /= a -> B;
occ34(_) -> b.
