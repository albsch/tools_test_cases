-module(eqwater_80).
-compile([nowarn_export_all, export_all]).



-spec foo3({
  atom() | binary(),
  atom() | binary()
}) ->
  binary().
foo3({B1, B2}) when
  (not is_atom(B1)) and
    (not is_atom(B2)) ->
  <<B1/binary, B2/binary>>;
foo3({_, _}) ->
  <<>>.
