-module(eqwater_20).
-compile([nowarn_export_all, export_all]).



-spec occ06_if
  (atom() | integer() | binary())
    -> binary().
occ06_if(A) ->
  if
    not is_binary(A) ->
      <<>>;
    true ->
      A
  end.
