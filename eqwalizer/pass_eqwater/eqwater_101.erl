-module(eqwater_101).
-compile([nowarn_export_all, export_all]).



-spec occ55
    ([] | atom(), atom()) -> atom().
occ55([], A) -> A;
occ55(A, _) -> A.
