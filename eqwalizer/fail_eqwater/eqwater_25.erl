-module(eqwater_25).
-compile([nowarn_export_all, export_all]).

-spec occ_binary_pat_2_neg(
    binary() | string(),
    integer()
) -> binary().
occ_binary_pat_2_neg(X, Size) ->
  case X of
    <<_:Size/binary>> ->
      X;
    _ ->
      X
  end.
