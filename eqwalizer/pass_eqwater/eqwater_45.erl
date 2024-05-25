-module(eqwater_45).
-compile([nowarn_export_all, export_all]).



-record(b, {id :: atom()}).
-record(a, {id :: atom()}).
-spec ab_b1(#a{} | #b{}) -> #b{}.
ab_b1(A) when is_record(A, a) ->
  #b{id = A#a.id};
ab_b1(B) ->
  B.
