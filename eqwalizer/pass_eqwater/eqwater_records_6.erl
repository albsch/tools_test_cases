-module(eqwater_records_6).
-compile([nowarn_export_all, export_all]).

-record(rec1, {
  id :: integer(),
  name :: string()
}).

-spec get_id_1(
    #rec1{} | integer()
) -> integer().
get_id_1(Rec) when is_record(Rec, rec1) ->
  get_rec1_id(Rec);
get_id_1(Id) -> Id.
