-module(eqwater_records_5).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).
-record(rec2, {
  name :: string(),
  id :: integer()
}).

-spec normalize_neg1(
    {#rec1{}, #rec2{}} |
    {#rec2{}, #rec1{}}
) -> {#rec1{}, #rec2{}}.
normalize_neg1({R = #rec2{}, R}) ->
  {R, R};
normalize_neg1(Pair) -> Pair.
