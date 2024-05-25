-module(eqwater_19).
-compile([nowarn_export_all, export_all]).



-spec occ06_cl
  (atom() | integer() | binary())
    -> binary().
occ06_cl(A)
  when not is_binary(A) ->
    <<>>;
occ06_cl(B) ->
  B.
