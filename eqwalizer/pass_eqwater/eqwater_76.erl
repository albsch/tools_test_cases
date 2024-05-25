-module(eqwater_76).
-compile([nowarn_export_all, export_all]).



-spec multi_param3(
    atom(),
    number() | atom()
) -> number().
multi_param3(X, Y) when is_atom(X),
  is_atom(Y) -> 1;
multi_param3(_, Y) -> Y.
