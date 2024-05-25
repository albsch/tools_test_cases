-module(eqwater_40).
-compile([nowarn_export_all, export_all]).



-type rich_tuple() ::
{atom(), integer()} | {integer(), atom()}.
-spec get_int1(rich_tuple()) -> integer().
get_int1({I, _})
  when is_integer(I) -> I;
get_int1({_, I}) -> I.
