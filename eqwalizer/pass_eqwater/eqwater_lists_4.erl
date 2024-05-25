-module(eqwater_lists_4).
-compile([nowarn_export_all, export_all]).



-spec occ_list_05
    ([binary()] | [atom()]) ->
    [binary()].
occ_list_05([H | T]) when is_binary(H) -> T.
