-module(eqwater_74).
-compile([nowarn_export_all, export_all]).



-type result(A) ::
  {ok, A} | {err, atom()}.
-spec occ_andalso
    ({result(number()), result(number())})
      -> number().
occ_andalso({{Tag1, I1}, {Tag2, I2}})
  when (Tag1 == ok) andalso (Tag2 == ok) ->
  I1 + I2;
occ_andalso(_) ->
  0.
