-module(eqwater_59).
-compile([nowarn_export_all, export_all]).



-spec occ24
(fun(() -> atom()) | atom()) ->
atom().
occ24(F) when is_function(F) -> F();
occ24(A) -> A.
