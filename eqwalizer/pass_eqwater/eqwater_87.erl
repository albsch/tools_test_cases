-module(eqwater_87).
-compile([nowarn_export_all, export_all]).



-spec occ37(
    {atom()} | {{atom()}, {atom()}}
) -> {{atom()}, {atom()}}.
occ37(P2 = {_, _}) -> P2;
occ37(P1) -> {P1, P1}.
