-module(eqwater_28).
-compile([nowarn_export_all, export_all]).

-spec occ_guard_binary_3_neg(binary() | ok) -> ok.
occ_guard_binary_3_neg(V) when V =:= <<"ok">> -> ok;
occ_guard_binary_3_neg(V) -> V.
