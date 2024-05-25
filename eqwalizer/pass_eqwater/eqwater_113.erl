-module(eqwater_113).
-compile([nowarn_export_all, export_all]).



-spec andalso_throw_2
    ({a, ok} | {b, error}) -> ok.
andalso_throw_2(V) ->
    V =:= {b, error} andalso throw(error),
    {_, Res} = V,
    Res.
