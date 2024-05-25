-module(eqwater_27).
-compile([nowarn_export_all, export_all]).

-spec occ_guard_binary_2_neg(any()) -> binary().
occ_guard_binary_2_neg(V) when V =:= <<"ok">>; V =:= ok -> V;
occ_guard_binary_2_neg(V) -> <<"err">>.
