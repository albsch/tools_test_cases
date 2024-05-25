-module(eqwater_49).
-compile([nowarn_export_all, export_all]).



-record(union_field, {
  field :: atom() | binary()
}).
-spec record_occ07
  (#union_field{}) -> binary().
record_occ07(#union_field{field = B})
  when is_binary(B) -> B;
record_occ07(R) ->
  record_occ07_tuple(R).
