-module(eqwater_records_7).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).

-spec get_id_2(
    #rec1{} | integer()
) -> integer().
get_id_2(Rec = #rec1{})  ->
  get_rec1_id(Rec);
get_id_2(Id) -> Id.
