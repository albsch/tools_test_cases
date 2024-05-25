-module(eqwater_9).
-compile([nowarn_export_all, export_all]).



-spec occ04_cl
  (atom() | binary())
    -> binary().
occ04_cl(A) when is_atom(A) ->
  atom_to_binary(A);
occ04_cl(B) ->
  B.
