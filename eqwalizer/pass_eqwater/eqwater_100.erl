-module(eqwater_100).
-compile([nowarn_export_all, export_all]).



-type m() :: #{
    a => a,
    b => b
}.
-spec occ54
    (m(), integer() | undefined)
    -> integer().
occ54(#{}, undefined) -> 0;
occ54(#{}, I) -> I.
