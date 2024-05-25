-module(eqwater_18).
-compile([nowarn_export_all, export_all]).



-spec occ06
  (atom() | integer() | binary())
    -> binary().
occ06(Arg) ->
  case Arg of
    A when not is_binary(A) ->
      <<>>;
    B ->
      B
  end.
