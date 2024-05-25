-module(eqwater_106).
-compile([nowarn_export_all, export_all]).



-spec occ_guard_integer(any()) -> integer().
occ_guard_integer(V) when V =:= 0 -> V;
occ_guard_integer(V) when V =/= 1 -> -1;
occ_guard_integer(V) -> V.
