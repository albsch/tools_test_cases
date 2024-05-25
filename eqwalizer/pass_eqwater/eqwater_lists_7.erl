-module(eqwater_lists_7).
-compile([nowarn_export_all, export_all]).



-spec occ_list_15
    ([atom()] | [binary()]) ->
    [binary()].
occ_list_15(L) when is_binary(hd(L))
    -> L;
occ_list_15(_) -> [].
