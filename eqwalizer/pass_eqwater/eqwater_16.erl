-module(eqwater_16).
-compile([nowarn_export_all, export_all]).



-spec occ05_2_cl
  (atom() | integer() | binary())
    -> binary().
occ05_2_cl(A)
  when is_atom(A); is_integer(A) ->
  <<>>;
occ05_2_cl(B) -> B.
