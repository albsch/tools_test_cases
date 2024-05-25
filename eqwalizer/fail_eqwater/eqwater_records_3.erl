-module(eqwater_records_3).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).
-type user() :: #rec1{} | integer().

-spec id4_neg(user()) -> integer().
id4_neg(#rec1{id = Id, name = ""}) ->
  Id;
id4_neg(Id) -> Id.
