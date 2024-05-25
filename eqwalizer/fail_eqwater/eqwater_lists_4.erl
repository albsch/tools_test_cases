-module(eqwater_lists_4).
-compile([nowarn_export_all, export_all]).



-spec occ_list_09
    ([term()] | atom()) ->
    atom().
occ_list_09([_ | _]) -> ok;
occ_list_09([]) -> nil;
occ_list_09(A) -> A.
