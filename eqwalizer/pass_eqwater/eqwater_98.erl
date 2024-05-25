-module(eqwater_98).
-compile([nowarn_export_all, export_all]).



-spec occ51
    (ok, integer() | undefined)
    -> integer().
occ51(ok, undefined) -> 0;
occ51(ok, I) -> I.
