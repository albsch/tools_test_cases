-module(eqwater_records_1).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).

-type user() :: #rec1{} | integer().
-spec id1(user()) -> integer().
id1(R) when is_record(R, rec1) ->
  R#rec1.id;
id1(Id) -> Id.
