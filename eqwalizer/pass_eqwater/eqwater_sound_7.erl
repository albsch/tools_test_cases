-module(eqwater_sound_7).
-compile([nowarn_export_all, export_all]).



-spec test35_pos([a | b], [b | c]) -> [b].
test35_pos(AB, BC) ->
  case AB of BC -> BC end.
