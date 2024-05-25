-module(eqwater_18).
-compile([nowarn_export_all, export_all]).

-spec multi_param2_neg(
    term(),
    number() | atom()
) -> number().
multi_param2_neg(X, Y) when is_atom(X),
                is_atom(Y) -> 1;
multi_param2_neg(_, Y) -> Y.
