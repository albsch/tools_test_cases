-module(eqwater_sound_6).
-compile([nowarn_export_all, export_all]).



-spec test34_pos({a | b}, {b | c}) -> {b}.
test34_pos(AB, BC) ->
  case AB of BC -> BC end.
