-module(eqwater_16).
-compile([nowarn_export_all, export_all]).

-record(a, {id :: atom()}).

-spec occ28_neg
(tuple() | atom()) -> atom().
occ28_neg(R) when is_record(R, a) -> R#a.id;
occ28_neg(A) -> A.
