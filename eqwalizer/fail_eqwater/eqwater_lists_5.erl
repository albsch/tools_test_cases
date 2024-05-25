-module(eqwater_lists_5).
-compile([nowarn_export_all, export_all]).



% Not supported
-spec occ_list_10
    ([term()]) ->
    [].
occ_list_10([_, _ | _]) -> [];
occ_list_10([_]) -> [];
occ_list_10(L) -> L.
