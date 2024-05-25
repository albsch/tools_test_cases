-module(eqwater_46).
-compile([nowarn_export_all, export_all]).



-record(union_field, {
  field :: atom() | binary()
}).
-spec record_occ01
(#union_field{}) -> binary().
record_occ01(#union_field{field = B})
  when is_binary(B) -> B;
record_occ01(#union_field{field = A}) ->
  atom_to_binary(A).
