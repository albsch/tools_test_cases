-module(eqwater_73).
-compile([nowarn_export_all, export_all]).



-type result(A) ::
  {ok, A} | {err, atom()}.
-spec occ_and
({result(number()), result(number())})
  -> number().
occ_and({{Tag1, I1}, {Tag2, I2}})
  when (Tag1 == ok) and (Tag2 == ok) ->
  I1 + I2;
occ_and(_) ->
  0.
