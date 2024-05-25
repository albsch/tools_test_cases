-module(eqwater_records_8).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).

-spec get_id_3(
    #rec1{} | integer()
) -> integer().
get_id_3(#rec1{} = Rec)  ->
  get_rec1_id(Rec);
get_id_3(Id) -> Id.
