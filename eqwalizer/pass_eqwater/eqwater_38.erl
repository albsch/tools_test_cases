-module(eqwater_38).
-compile([nowarn_export_all, export_all]).



-spec occ17(
{ax, atom()} | atom(), {bx, atom()}) -> atom().
occ17({ax, _}, {bx, _}) -> ok;
occ17(A, _) -> A.
