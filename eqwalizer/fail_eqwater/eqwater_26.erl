-module(eqwater_26).
-compile([nowarn_export_all, export_all]).

-spec occ_binary_pat_4_neg(
  {binary(), binary()} |
    {atom(), atom()},
  integer()
) -> binary().
occ_binary_pat_4_neg(X, Size) ->
  case X of
    {<<_:Size/binary>>, Bin} ->
      Bin;
    {_, Y} ->
      Y
  end.
