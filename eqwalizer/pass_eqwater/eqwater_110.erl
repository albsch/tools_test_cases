-module(eqwater_110).
-compile([nowarn_export_all, export_all]).



-spec non_linear_2
    (map(), integer() | undefined)
    -> integer().
non_linear_2(#{a := I}, I) -> 0;
non_linear_2(#{}, undefined) -> 0;
non_linear_2(#{}, I) -> I.
