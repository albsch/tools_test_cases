-module(eqwater_50).
-compile([nowarn_export_all, export_all]).



-record(union_field3, {
  union :: atom() | binary(),
  field :: atom()
}).
-spec record_occ09
  (#union_field3{}) -> atom().
record_occ09(#union_field3{_ = U, field = A})
  when is_binary(U) -> A;
record_occ09(#union_field3{_ = U, field = _}) ->
  U.
  
-record(union_field, {
  field :: atom() | binary()
}).
-spec record_occ10
    (#union_field{}) -> binary().
record_occ10(#union_field{_ = U})
  when is_atom(U) -> atom_to_binary(U);
record_occ10(#union_field{_ = U}) ->
  U.
    
