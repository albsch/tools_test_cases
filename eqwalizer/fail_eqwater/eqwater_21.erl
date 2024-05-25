-module(eqwater_21).
-compile([nowarn_export_all, export_all]).

-spec occ43_neg(
    {string() | undefined, string()}
) -> string().
occ43_neg({F, S} = {_, _}) -> S;
occ43_neg({F, S} = {_, _}) -> F.
