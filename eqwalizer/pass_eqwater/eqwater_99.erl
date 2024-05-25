-module(eqwater_99).
-compile([nowarn_export_all, export_all]).



-spec occ52
    ([term()], integer() | undefined)
    -> integer().
occ52(L, undefined) when is_list(L) -> 0;
occ52(_, I) -> I.
