-module(eqwater_records_9).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).

-record(rec2, {
  name :: string(),
  id :: integer()
}).
-spec normalize(
    {#rec1{}, #rec2{}} |
    {#rec2{}, #rec1{}}
) -> {#rec1{}, #rec2{}}.
normalize({R2 = #rec2{}, R1}) -> {R1, R2};
normalize(Pair) -> Pair.
