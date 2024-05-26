-module(type_asserts_2).
-compile([nowarn_export_all, export_all]).



-spec double_andalso(
    term(), term()
) -> false | {number(), atom()}.
double_andalso(N, A) ->
  is_number(N)
    andalso is_atom(A)
      andalso {N, A}.
