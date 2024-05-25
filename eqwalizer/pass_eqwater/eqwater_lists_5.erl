-module(eqwater_lists_5).
-compile([nowarn_export_all, export_all]).



-spec occ_list_06
    ([term()]) ->
    [].
occ_list_06([_ | _]) -> [];
occ_list_06(L) -> L.
