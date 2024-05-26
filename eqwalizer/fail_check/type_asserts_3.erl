-module(type_asserts_3).
-compile([nowarn_export_all, export_all]).



-spec double_andalso_neg(
    term(), term()
) -> false |  {atom(), number()}.
double_andalso_neg(N, A) ->
  is_number(N)
    andalso is_atom(A)
    andalso {N, A}.
