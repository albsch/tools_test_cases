-module(tycheck_simple_pass_49).
-compile([nowarn_export_all, export_all]).

% fun ref and call
-spec some_fun(string(), integer()) -> string().
some_fun(S, _) -> S.
-spec fun_ref_01() -> string().
fun_ref_01() -> some_fun("foo", 42).
