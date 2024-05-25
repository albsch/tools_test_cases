-module(deep_tuples_2).
-compile([nowarn_export_all, export_all]).



-spec test2_neg
    ({{ok, number()}, {ok, number()}})
      -> none().
test2_neg({{_Tag1, _}, {Tag2, _}}) ->
  Tag2.
