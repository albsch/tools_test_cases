-module(eqwater_lists_3).
-compile([nowarn_export_all, export_all]).



-spec occ_list_08_neg
    ([term()] | atom()) ->
    atom().
occ_list_08_neg([_ | _]) -> ok;
occ_list_08_neg(A) -> A.
