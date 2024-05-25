-module(eqwater_records_4).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).
-type user() :: #rec1{} | integer().

-spec id5_neg(string(), user())
      -> integer().
id5_neg(Name, User) ->
  case User of
    #rec1{id = Id, name = Name} -> Id;
    Id -> Id
  end.
