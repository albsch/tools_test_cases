-module(eqwater_19).
-compile([nowarn_export_all, export_all]).

% We do not support "deep" matches
-spec occ42_neg(
    {string() | undefined, string()}
) -> string().
occ42_neg({F, S} = {undefined, _}) -> S;
occ42_neg({F, S} = {_, _}) -> F.
