-module(eqwater_75).
-compile([nowarn_export_all, export_all]).



-spec multi_param1(
    term(),
    number() | atom()
) -> number().
multi_param1(_, A) when is_atom(A) -> 1;
multi_param1(_, Y) -> Y.
