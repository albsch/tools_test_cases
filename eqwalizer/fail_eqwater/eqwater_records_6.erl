-module(eqwater_records_6).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).
-record(rec2, {
  name :: string(),
  id :: integer()
}).

-spec normalize_neg2(
    {#rec1{}, #rec2{}} |
    {#rec2{}, #rec1{}}
) -> {#rec1{}, #rec2{}}.
normalize_neg2(
    {R2 = #rec2{id = I},
     R1 = #rec1{id = I}}) -> {R1, R2};
normalize_neg2(Pair) -> Pair.
