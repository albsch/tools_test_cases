-module(eqwater_records_2).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).
-type user() :: #rec1{} | integer().

-spec id3_neg(user()) -> integer().
id3_neg(#rec1{id = Id, name = Name})
  when length(Name) == 0 ->
  Id;
id3_neg(Id) -> Id.
