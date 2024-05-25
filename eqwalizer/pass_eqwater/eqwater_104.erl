-module(eqwater_104).
-compile([nowarn_export_all, export_all]).



-spec occ_guard_binary_1(any()) -> binary().
occ_guard_binary_1(V) when V =:= <<"ok">> -> V;
occ_guard_binary_1(V) -> <<"err">>.
