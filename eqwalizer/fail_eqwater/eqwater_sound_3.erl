-module(eqwater_sound_3).
-compile([nowarn_export_all, export_all]).

-spec tuple_trick_neg(_T, U) -> U.
tuple_trick_neg({X}, _) -> X.
