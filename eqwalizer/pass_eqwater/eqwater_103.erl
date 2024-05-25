-module(eqwater_103).
-compile([nowarn_export_all, export_all]).



-spec occ_binary_pat_3(
  {binary(), binary()} |
    {atom(), atom()},
  integer()
) -> binary().
occ_binary_pat_3(X, Size) ->
  case X of
    {<<_:Size/binary>>, Bin} ->
      Bin;
    _ ->
      <<>>
  end.
