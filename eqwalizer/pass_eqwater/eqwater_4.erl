-module(eqwater_4).
-compile([nowarn_export_all, export_all]).



-spec occ02
  (a | {b, integer()}) -> integer().
occ02(Arg) ->
  case Arg of
    a -> 0;
    {_, I} -> I
  end.
