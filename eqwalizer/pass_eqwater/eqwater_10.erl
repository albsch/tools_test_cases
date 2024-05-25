-module(eqwater_10).
-compile([nowarn_export_all, export_all]).



-spec occ04_if(atom() | binary())
    -> binary().
occ04_if(A) ->
  if
    is_atom(A) -> atom_to_binary(A);
    true -> A
  end.
