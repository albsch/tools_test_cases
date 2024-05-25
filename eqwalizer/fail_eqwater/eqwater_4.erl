-module(eqwater_4).
-compile([nowarn_export_all, export_all]).

-spec occ05_3_neg_if
  (atom() | integer() | binary())
    -> binary().
occ05_3_neg_if(A) ->
  if
    is_atom(A);
    is_integer(A), A > 0 ->
      <<>>;
    true ->
      A
  end.
