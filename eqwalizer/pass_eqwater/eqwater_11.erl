-module(eqwater_11).
-compile([nowarn_export_all, export_all]).



-spec occ04_if_elab(atom() | binary())
    -> binary().
occ04_if_elab(A) ->
  Res = if
    is_atom(A) -> atom_to_binary(A);
    true -> A
  end,
  Res.
