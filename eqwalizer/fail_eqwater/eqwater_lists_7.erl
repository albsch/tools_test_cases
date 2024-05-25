-module(eqwater_lists_7).
-compile([nowarn_export_all, export_all]).



-spec occ_list_14_neg
    ([binary()] | [atom()]) ->
    binary().
occ_list_14_neg([H | _]) when is_binary(H) -> H;
occ_list_14_neg([H | _]) -> atom_to_binary(H);
occ_list_14_neg(L) -> L.
