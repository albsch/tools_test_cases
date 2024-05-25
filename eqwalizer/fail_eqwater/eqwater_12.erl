-module(eqwater_12).
-compile([nowarn_export_all, export_all]).

-record(union_field, {
  field :: atom() | binary()
}).
-record(union_field4, {
  x :: integer() | ok,
  y :: integer() | err
}).
  
-spec record_occ07_tuple
  ({union_field, atom()}) -> binary().
record_occ07_tuple({_, A}) -> atom_to_binary(A).
-spec record_occ07
  (#union_field{}) -> binary().
record_occ07(#union_field{field = B})
  when is_binary(B) -> B;
record_occ07(R) ->
  record_occ07_tuple(R).
-spec record_occ08_neg
  (#union_field{}) -> (atom() | binary()).
record_occ08_neg(#union_field{field = A})
  when is_atom(A) -> A;
record_occ08_neg(R) ->
  record_occ07_tuple(R).
  
record_occ13_neg(#union_field4{x = A, y = _}) -> A.
