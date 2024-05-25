-module(eqwater_6).
-compile([nowarn_export_all, export_all]).



-spec occ03
  ({a, atom()} | {b, binary()}) ->
  binary().
occ03(Arg) ->
  case Arg of
    {a, A} -> atom_to_binary(A);
    {_, B} -> B
  end.
