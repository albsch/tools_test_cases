-module(eqwater_records_5).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).

-spec get_rec1_id(
    #rec1{}
) -> integer().
get_rec1_id(#rec1{id = Id}) -> Id.
