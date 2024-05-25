-module(eqwater_sound_3).
-compile([nowarn_export_all, export_all]).



-type ab() :: atom() | binary().
-spec base3(ab())
    -> binary().
base3(B) when is_binary(B) ->
  B;
base3(A) -> atom_to_binary(A).
