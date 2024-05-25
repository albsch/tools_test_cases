-module(eqwater_sound_1).
-compile([nowarn_export_all, export_all]).



-type ab() :: atom() | binary().
-spec base1(ab())
  -> binary().
base1(A) when is_atom(A) ->
  atom_to_binary(A);
base1(B) -> B.
