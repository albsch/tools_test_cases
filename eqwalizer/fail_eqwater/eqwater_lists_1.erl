-module(eqwater_lists_1).
-compile([nowarn_export_all, export_all]).

-spec occ_list_04_neg
    ([binary() | atom()]) ->
    [binary()].
occ_list_04_neg(L = [H | _]) when is_binary(H) -> L.
