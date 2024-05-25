-module(eqwater_sound_5).
-compile([nowarn_export_all, export_all]).



%% these edge cases don't
%% degrade with eqwater
-spec test33_pos(a | b, b | c) -> b.
test33_pos(AB, BC) ->
  case AB of BC -> BC end.
