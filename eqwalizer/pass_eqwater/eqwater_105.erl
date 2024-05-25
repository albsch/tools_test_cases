-module(eqwater_105).
-compile([nowarn_export_all, export_all]).



-spec occ_guard_binary_4(any()) -> binary().
occ_guard_binary_4(V) when V =/= <<"ok">> -> <<"err">>;
occ_guard_binary_4(V) -> V.
