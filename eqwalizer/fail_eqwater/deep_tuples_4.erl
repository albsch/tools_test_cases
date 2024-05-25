-module(deep_tuples_4).
-compile([nowarn_export_all, export_all]).



-spec test4_neg
    ({{ok, number()}, {ok, number()}})
      -> none().
test4_neg({{_, _}, {Tag2, _}}) ->
  Tag2.
