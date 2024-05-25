-module(eqwater_13).
-compile([nowarn_export_all, export_all]).



-spec occ05_1_cl
  (atom() | integer() | binary())
    -> binary().
occ05_1_cl(A)
  when is_atom(A) or
       is_integer(A) -> <<>>;
occ05_1_cl(B) -> B.
