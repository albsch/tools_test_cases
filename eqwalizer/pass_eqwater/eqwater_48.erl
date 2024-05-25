-module(eqwater_48).
-compile([nowarn_export_all, export_all]).



-record(a, {id :: atom()}).
-record(b, {id :: atom()}).
-record(union_field2, {
  field :: #a{} | #b{}
}).
-spec record_occ03
(#union_field2{}) -> #b{}.
record_occ03(#union_field2{field = A})
  when is_record(A, a) ->
  #b{id = A#a.id};
record_occ03(#union_field2{field = B}) ->
  B.
  
-record(union_field, {
  field :: atom() | binary()
}).
-spec record_occ04
  (#union_field{}) -> binary().
record_occ04(R)
  when is_binary(R#union_field.field) ->
  R#union_field.field;
record_occ04(R) ->
  atom_to_binary(R#union_field.field).
    
-record(union_field, {
  field :: atom() | binary()
}).
-spec record_occ06
  (#union_field{}) -> binary().
record_occ06(#union_field{field = B})
  when is_binary(B) -> B;
record_occ06(R) ->
  atom_to_binary(R#union_field.field).
  
-record(union_field, {
  field :: atom() | binary()
}).
-spec record_occ07_tuple
  ({union_field, atom()}) -> binary().
record_occ07_tuple({_, A}) -> atom_to_binary(A).
