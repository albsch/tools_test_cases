-module(eqwater_27).
-compile([nowarn_export_all, export_all]).



-spec try_of_01() -> binary().
try_of_01() ->
  try
    produce()
  of
    A when is_atom(A) ->
      atom_to_binary(A);
    B -> B
  catch
    _ -> <<>>
  after
    close()
  end.
