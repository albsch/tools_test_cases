-module(eqwater_lists_6).
-compile([nowarn_export_all, export_all]).



-spec occ_list_13
    ([binary()] | [atom()]) ->
    binary() | [].
occ_list_13([H | _]) when is_binary(H) -> H;
occ_list_13([H | _]) -> atom_to_binary(H);
occ_list_13(L) -> L.
