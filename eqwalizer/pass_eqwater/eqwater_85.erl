-module(eqwater_85).
-compile([nowarn_export_all, export_all]).



-spec occ35
    (a | b) -> b.
occ35(A) when A /= b -> b;
occ35(B) -> B.
