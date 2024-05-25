-module(eqwater_112).
-compile([nowarn_export_all, export_all]).



-spec andalso_throw_1
    (a | b) -> b.
andalso_throw_1(V) ->
    V =:= a andalso throw(error),
    V.
