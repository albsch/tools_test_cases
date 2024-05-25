-module(eqwater_2).
-compile([nowarn_export_all, export_all]).



-spec occ01_elab
  (a | b) -> b.
occ01_elab(Arg) ->
  Res = case Arg of
    a -> b;
    B -> B
  end,
  Res.
