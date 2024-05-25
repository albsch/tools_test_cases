-module(eqwater_sound_2).
-compile([nowarn_export_all, export_all]).



-type ab() :: atom() | binary().
-spec base2(ab())
    -> binary().
base2(A) when is_atom(A); is_number(A) ->
  atom_to_binary(A);
base2(B) -> B.
