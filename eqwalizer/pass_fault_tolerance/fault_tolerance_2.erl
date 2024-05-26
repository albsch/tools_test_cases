-module(fault_tolerance_2).
-compile([nowarn_export_all, export_all]).



-spec fixmes(atom()) -> ok.
fixmes(Atom) ->
  _ = Atom + 2,
  erlang:list_to_binary(Atom),
  error.
