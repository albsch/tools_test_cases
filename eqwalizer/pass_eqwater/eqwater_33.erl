-module(eqwater_33).
-compile([nowarn_export_all, export_all]).



%% important for thrift
%% see D31025723
-record(rec, {
  id1 :: undefined | integer(),
  id2 :: undefined | integer()
}).
-spec collect_ids(#rec{}) ->
  [integer()].
collect_ids(Rec) ->
  Ids0 = [],
  Ids1 = case Id1 = Rec#rec.id1 of
    undefined -> Ids0;
    _ -> [Id1 | Ids0]
  end,
  Ids2 = case Id2 = Rec#rec.id1 of
    undefined -> Ids0;
    _ -> [Id2 | Ids1]
  end,
  Ids2.
