-module(eqwater_61).
-compile([nowarn_export_all, export_all]).



-record(one_field, {
  f1 :: integer()
}).
-record(two_fields1, {
  f1 :: integer(),
  f2 :: integer()
}).
-spec occ29(#one_field{} | #two_fields1{}) -> none().
occ29(X) ->
  case X of
    {} -> X
  end.
