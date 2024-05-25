-module(eqwater_78).
-compile([nowarn_export_all, export_all]).



-spec foo1({
  atom() | binary(),
  atom() | binary()
}) ->
  binary().
foo1({X, Y}) when
  is_atom(X) or is_atom(Y) ->
    <<>>;
foo1({B1, B2}) ->
    <<B1/binary, B2/binary>>.
