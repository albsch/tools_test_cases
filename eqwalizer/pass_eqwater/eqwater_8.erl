-module(eqwater_8).
-compile([nowarn_export_all, export_all]).



-spec occ04(atom() | binary())
    -> binary().
occ04(Arg) ->
  case Arg of
    A when is_atom(A) ->
      atom_to_binary(A);
    B ->
      B
  end.
