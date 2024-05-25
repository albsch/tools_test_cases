-module(eqwater_11).
-compile([nowarn_export_all, export_all]).

-record(union_field, {
  field :: atom() | binary()
}).

-spec record_occ05_neg
  (#union_field{}) -> binary().
record_occ05_neg(#union_field{field = B})
  when is_binary(B) -> B;
record_occ05_neg(#union_field{field = A}) ->
  A.
