-module(eqwater_lists_2).
-compile([nowarn_export_all, export_all]).



-spec occ_list_07_neg
    ([term()]) ->
    [].
occ_list_07_neg([_, _ | _]) -> [];
occ_list_07_neg(L) -> L.
