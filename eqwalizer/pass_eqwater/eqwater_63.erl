-module(eqwater_63).
-compile([nowarn_export_all, export_all]).



-spec occ31
({a, integer()} | {integer(), b}) -> none().
occ31(X) ->
  case X of
    {{}, {}} -> X
  end.
