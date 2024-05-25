-module(eqwater_102).
-compile([nowarn_export_all, export_all]).



-spec occ56
    ([atom()] | atom(), atom()) -> [atom()].
occ56(V, A) ->
    case V of
        [_] -> V;
        _ -> [A]
    end.
    
-spec occ_binary_pat_1(
  binary() | string(),
  integer()
) -> binary().
occ_binary_pat_1(X, Size) ->
  case X of
    <<_:Size/binary>> ->
      X;
    _ ->
      <<>>
  end.
