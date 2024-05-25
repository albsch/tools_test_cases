-module(eqwater_sound_9).
-compile([nowarn_export_all, export_all]).



-spec id(T) -> T.
id(X) -> X.
-spec foralls_matter() -> unreachable.
foralls_matter() ->
  X = fun erlang:is_number/1,
  case (fun id/1) of
    X -> X
  end.
