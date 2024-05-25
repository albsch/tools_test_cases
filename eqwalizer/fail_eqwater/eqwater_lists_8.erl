-module(eqwater_lists_8).
-compile([nowarn_export_all, export_all]).



-spec occ_list_20_neg
    (atom() | binary()) -> [atom()] | [binary()].
occ_list_20_neg(V) -> [ok | [V]].
