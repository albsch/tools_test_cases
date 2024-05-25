-module(eqwater_62).
-compile([nowarn_export_all, export_all]).



-spec occ30({}) -> none().
occ30(X) ->
  if
    is_record(X, one_field) -> X
  end.
