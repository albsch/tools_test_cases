-module(eqwater_2).
-compile([nowarn_export_all, export_all]).

-spec occ05_3_neg
  (atom() | integer() | binary())
    -> binary().
occ05_3_neg(Arg) ->
  case Arg of
    A when is_atom(A);
      is_integer(A), A > 0 ->
      <<>>;
    B ->
      B
  end.
