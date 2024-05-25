-module(eqwater_lists_2).
-compile([nowarn_export_all, export_all]).



-spec occ_list_02
    ([binary()] | [atom()]) ->
    binary().
occ_list_02([H | _]) when is_binary(H) -> H;
occ_list_02([H | _]) -> atom_to_binary(H).
