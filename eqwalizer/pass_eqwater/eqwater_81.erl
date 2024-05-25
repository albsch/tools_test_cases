-module(eqwater_81).
-compile([nowarn_export_all, export_all]).



-spec foo4(
  atom() | binary(),
  atom() | binary()
) ->
  binary().
foo4(B1, B2) when
  (not is_atom(B1)) and
    (not is_atom(B2)) ->
  <<B1/binary, B2/binary>>;
foo4(_, _) ->
  <<>>.
