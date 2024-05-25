-module(eqwater_sound_1).
-compile([nowarn_export_all, export_all]).

-type ab() :: atom() | binary().

-spec t02(ab())
    -> binary().
t02(B) when is_binary(B),
            bit_size(B) > 2 ->
  B;
%% A may be not a binary - because of
%% the condition bit_size
t02(A) -> atom_to_binary(A).
