-module(eqwater_records_2).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).

-type user() :: #rec1{} | integer().
-spec id2(user()) -> integer().
id2(#rec1{id = Id}) -> Id;
id2(Id) -> Id.
