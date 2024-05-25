-module(deep_tuples_3).
-compile([nowarn_export_all, export_all]).



-spec test3_neg
    ({{ok, number()}, {ok, number()}})
      -> none().
test3_neg({{Tag1, _}, {_, _}}) ->
  Tag1.
