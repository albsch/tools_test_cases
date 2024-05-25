-module(eqwater_79).
-compile([nowarn_export_all, export_all]).



-spec foo2(
  atom() | binary(),
  atom() | binary()
) ->
  binary().
foo2(X, Y) when
  is_atom(X) or is_atom(Y) ->
  <<>>;
foo2(B1, B2) ->
  <<B1/binary, B2/binary>>.
