-module(eqwater_sound_8).
-compile([nowarn_export_all, export_all]).



-spec test36_pos(F1, F2) -> F3
  when F1 :: fun((a) -> a | z),
  F2 :: fun((b) -> b | z),
  F3 :: fun((a | b) -> z).
test36_pos(F1, F2) ->
  case F1 of F2 -> F2 end.
