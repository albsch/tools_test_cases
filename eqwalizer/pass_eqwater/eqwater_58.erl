-module(eqwater_58).
-compile([nowarn_export_all, export_all]).



-spec occ22
({a, A} | {b, B}, fun((B) -> A)) -> A.
occ22({a, A}, _) -> A;
occ22({b, B}, F) -> F(B).
