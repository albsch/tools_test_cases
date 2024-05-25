-module(eqwater_1).
-compile([nowarn_export_all, export_all]).



-spec occ01
  (a | b) -> b.
occ01(Arg) ->
  case Arg of
    a -> b;
    B -> B
  end.
