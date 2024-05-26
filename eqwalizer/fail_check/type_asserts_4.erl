-module(type_asserts_4).
-compile([nowarn_export_all, export_all]).



-spec scope_neg(term())
      -> {false | number(), number()}.
scope_neg(A) ->
  X = is_number(A) andalso A,
  {X, A}.
