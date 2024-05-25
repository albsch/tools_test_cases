-module(deep_tuples_1).
-compile([nowarn_export_all, export_all]).



-spec test1_neg
    ({{ok, number()}, {ok, number()}})
      -> none().
test1_neg({{Tag1, _}, {_Tag2, _}}) ->
  Tag1.
