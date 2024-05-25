-module(eqwater_lists_9).
-compile([nowarn_export_all, export_all]).



-spec occ_list_17
    ([atom()] | [binary()]) ->
    [atom()].
occ_list_17([H | _]) when is_binary(H)
    -> [];
occ_list_17(L) -> L.
