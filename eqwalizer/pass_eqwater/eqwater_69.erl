-module(eqwater_69).
-compile([nowarn_export_all, export_all]).



-type choice(A) :: {bad, A} | {good, A}.
-type error() :: {err, atom()}.
-spec get(choice(A) | error())
      -> A | error().
get({Tag, A}) when (Tag == bad);
                   (Tag == good) ->
  A;
get(Err) ->
  Err.
