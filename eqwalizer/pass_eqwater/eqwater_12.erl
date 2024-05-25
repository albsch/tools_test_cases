-module(eqwater_12).
-compile([nowarn_export_all, export_all]).



-spec occ05_1
  (atom() | integer() | binary())
    -> binary().
occ05_1(Arg) ->
  case Arg of
    A when is_atom(A) or
           is_integer(A) -> <<>>;
    B -> B
  end.
