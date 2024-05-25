-module(eqwater_15).
-compile([nowarn_export_all, export_all]).



-spec occ05_2
  (atom() | integer() | binary())
    -> binary().
occ05_2(Arg) ->
  case Arg of
    A when is_atom(A); is_integer(A) ->
      <<>>;
    B ->
      B
  end.
