-module(eqwater_lists_1).
-compile([nowarn_export_all, export_all]).



-spec occ_list_01
    ([integer()] | [atom()]) ->
    [integer()].
occ_list_01(L = [H | _]) when is_integer(H) -> L;
occ_list_01(_) -> [].
