-module(eqwater_sound_2).
-compile([nowarn_export_all, export_all]).

-type ab() :: atom() | binary().

%% no smart logic about repeated vars
-spec t03(atom(), ab()) ->
  binary().
t03(A, A) -> atom_to_binary(A);
t03(_, B) -> B.
