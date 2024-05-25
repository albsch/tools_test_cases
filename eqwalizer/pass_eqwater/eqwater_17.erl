-module(eqwater_17).
-compile([nowarn_export_all, export_all]).



-spec occ05_2_if
  (atom() | integer() | binary())
    -> binary().
occ05_2_if(A) ->
  if
    is_atom(A); is_integer(A) ->
      <<>>;
    true ->
      A
  end.
