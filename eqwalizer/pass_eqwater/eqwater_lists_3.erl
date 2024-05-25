-module(eqwater_lists_3).
-compile([nowarn_export_all, export_all]).



-spec occ_list_03
    ([binary()] | [atom()]) ->
    [binary()].
occ_list_03(L = [H | _]) when is_binary(H) -> L;
occ_list_03(L) -> lists:map(fun atom_to_binary/1, L).
