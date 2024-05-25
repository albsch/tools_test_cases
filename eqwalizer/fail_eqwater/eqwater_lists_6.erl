-module(eqwater_lists_6).
-compile([nowarn_export_all, export_all]).



-spec occ_list_11_neg
    ([atom()] | [binary()]) ->
    [binary()].
occ_list_11_neg([_, X | _]) when is_atom(X)
    -> [atom_to_binary(X)];
occ_list_11_neg(L) -> L.
