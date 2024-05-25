-module(eqwater_sound_4).
-compile([nowarn_export_all, export_all]).



-type ab() :: atom() | binary().
-record(rec1, {id:: ab()}).
-spec t01(#rec1{}) -> binary().
t01(#rec1{id=A}) when is_atom(A) ->
  atom_to_binary(A);
t01(#rec1{id=B}) ->
  B.
