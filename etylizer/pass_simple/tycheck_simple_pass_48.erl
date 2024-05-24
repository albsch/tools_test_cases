-module(tycheck_simple_pass_48).
-compile([nowarn_export_all, export_all]).

% fun ref and call
-spec some_fun(string(), integer()) -> string().
some_fun(S, _) -> S.
