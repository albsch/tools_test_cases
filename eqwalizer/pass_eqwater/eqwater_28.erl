-module(eqwater_28).
-compile([nowarn_export_all, export_all]).



-spec try_of_01_elab() -> binary().
try_of_01_elab() ->
  Res = try
    produce()
  of
    A when is_atom(A) ->
      atom_to_binary(A);
    B -> B
  catch
    _ -> <<>>
  after
    close()
  end,
  Res.
