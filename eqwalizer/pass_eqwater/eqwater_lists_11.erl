-module(eqwater_lists_11).
-compile([nowarn_export_all, export_all]).



-spec occ_list_19
    (atom() | binary()) -> [atom() | binary()].
occ_list_19(V) -> [ok | [V]].
