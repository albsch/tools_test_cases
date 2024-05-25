-module(eqwater_records_3).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).

-type version() :: non_neg_integer().
-type version3() ::
  {version(), version(), version()}.
-spec id6(#rec1{} | version3())
      -> integer().
id6(#rec1{id = Id}) -> Id;
id6({X, _Y, _Z}) ->
  X.
