-module(eqwater_71).
-compile([nowarn_export_all, export_all]).



-spec occ_or
    (atom() | integer() | binary())
      -> binary().
occ_or(Arg) ->
  case Arg of
    A when is_atom(A) or
      is_integer(A) -> <<>>;
    B -> B
  end.
