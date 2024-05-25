-module(eqwater_47).
-compile([nowarn_export_all, export_all]).



-record(a, {id :: atom()}).
-record(b, {id :: atom()}).
-spec record_occ02(#a{} | #b{}) -> #b{}.
record_occ02(#a{id=Id}) ->
  #b{id = Id};
record_occ02(B) ->
  B.
