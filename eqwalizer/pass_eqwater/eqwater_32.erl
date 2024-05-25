-module(eqwater_32).
-compile([nowarn_export_all, export_all]).



-record(eqwater, {f1, f2}).
-spec occ10(#eqwater{} | {err, term()}) ->
  {ok, term()} | {err, term()}.
occ10(In) ->
  case In of
    #eqwater{} -> {ok, In};
    Other -> Other
  end.
