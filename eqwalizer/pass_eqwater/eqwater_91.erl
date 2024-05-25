-module(eqwater_91).
-compile([nowarn_export_all, export_all]).



-spec occ41(
    {string() | undefined, string()}
) -> string().
occ41(T = {undefined, S}) -> S;
occ41(T = {S, _}) -> S.
