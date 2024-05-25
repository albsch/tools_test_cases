-module(eqwater_66).
-compile([nowarn_export_all, export_all]).



-record(response, {
  id1 :: undefined | number(),
  id2 :: undefined | number(),
  id3 :: undefined | number(),
  id4 :: undefined | number(),
  id5 :: undefined | number(),
  id6 :: undefined | number(),
  id7 :: undefined | number()
}).
-spec extract_id1
    (#response{}) -> number().
extract_id1(#response{
  id1 = Id1,
  id2 = Id2
}) ->
  if
    Id1 =/= undefined -> Id1;
    Id2 =/= undefined -> Id2;
    true -> erlang:error(no_id)
  end.
