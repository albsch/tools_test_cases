-module(eqwater_32).
-compile([nowarn_export_all, export_all]).

-spec andalso_throw_1_neg
    (a | b) -> b.
andalso_throw_1_neg(V) ->
    V =:= b andalso throw(error),
    V.
