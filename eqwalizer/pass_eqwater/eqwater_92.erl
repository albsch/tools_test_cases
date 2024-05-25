-module(eqwater_92).
-compile([nowarn_export_all, export_all]).



-record(string_or_def, {
    value :: string() | undefined,
    default :: string()
}).
-spec occ44(#string_or_def{}) -> string().
occ44(R = #string_or_def{value = undefined, default = D}) ->
    D;
occ44(R = #string_or_def{}) ->
    R#string_or_def.value.
