-module(eqwater_64).
-compile([nowarn_export_all, export_all]).



-spec occ32
  ({a | integer(), b | integer()}) -> none().
occ32(X) ->
  case X of
    {{}, {}} -> X
  end.
