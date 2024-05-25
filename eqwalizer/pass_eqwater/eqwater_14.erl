-module(eqwater_14).
-compile([nowarn_export_all, export_all]).



-spec occ05_1_if
  (atom() | integer() | binary())
    -> binary().
occ05_1_if(A) ->
  if
    is_atom(A) or
    is_integer(A) -> <<>>;
    true -> A
  end.
