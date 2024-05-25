-module(eqwater_72).
-compile([nowarn_export_all, export_all]).



-spec occ_orelse
    (atom() | integer() | binary())
      -> binary().
occ_orelse(Arg) ->
  case Arg of
    A when is_atom(A) orelse
      is_integer(A) -> <<>>;
    B -> B
  end.
