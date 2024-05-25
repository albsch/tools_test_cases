-module(eqwater_114).
-compile([nowarn_export_all, export_all]).



-spec andalso_throw_3
    (binary() | err) -> binary().
andalso_throw_3(V) ->
    is_atom(V) andalso throw(error),
    V.
