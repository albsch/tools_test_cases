-module(eqwater_records_4).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).

-type version() :: non_neg_integer().
-type version3_int() ::
  {integer(), integer(), integer()}.
-spec id7(#rec1{} | version3_int())
      -> integer().
id7(#rec1{id = Id}) -> Id;
id7({X, _Y, _Z}) ->
  X.
