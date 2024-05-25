-module(eqwater_77).
-compile([nowarn_export_all, export_all]).



-spec multi_param4(
    atom(),
    number() | atom()
) -> {term(), number()}.
multi_param4(X, Y) when is_atom(Y) ->
  {X, 1};
multi_param4(_, Y) ->
  {ok, Y}.
