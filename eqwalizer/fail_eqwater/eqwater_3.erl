-module(eqwater_3).
-compile([nowarn_export_all, export_all]).

-spec occ05_3_neg_cl
  (atom() | integer() | binary())
    -> binary().
occ05_3_neg_cl(A)
  when is_atom(A);
       is_integer(A), A > 0 ->
    <<>>;
occ05_3_neg_cl(B) -> B.
