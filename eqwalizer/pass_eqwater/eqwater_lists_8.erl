-module(eqwater_lists_8).
-compile([nowarn_export_all, export_all]).



-spec occ_list_16
    ([atom()] | [binary()]) ->
    [atom()].
occ_list_16(L) when is_binary(hd(L))
    -> [];
occ_list_16(L) -> L.
