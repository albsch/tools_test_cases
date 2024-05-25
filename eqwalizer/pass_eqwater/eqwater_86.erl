-module(eqwater_86).
-compile([nowarn_export_all, export_all]).



-spec occ36(
    {atom()} | {{atom()}, {atom()}}
) -> {{atom()}, {atom()}}.
occ36({_, _} = P2) -> P2;
occ36(P1) -> {P1, P1}.
