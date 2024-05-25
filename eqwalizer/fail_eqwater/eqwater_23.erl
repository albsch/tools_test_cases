-module(eqwater_23).
-compile([nowarn_export_all, export_all]).

-spec occ53_neg
    ([term()], integer() | undefined)
    -> integer().
occ53_neg(L, undefined) when is_integer(L) -> 0;
occ53_neg(_, I) -> I.
