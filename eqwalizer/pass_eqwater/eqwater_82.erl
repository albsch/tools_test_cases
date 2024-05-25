-module(eqwater_82).
-compile([nowarn_export_all, export_all]).



-spec foo5({
  atom() | binary(),
  atom() | binary()
}) ->
  binary().
foo5({A1, A2}) when
  is_atom(A1) and is_atom(A2) ->
  <<>>;
foo5({A, B}) when
  is_atom(A) ->
  B;
foo5({B, A}) when
  is_atom(A) ->
  B;
foo5({B1, B2}) ->
  <<B1/binary, B2/binary>>.
