-module(eqwater_41).
-compile([nowarn_export_all, export_all]).



-type rich_tuple() ::
{atom(), integer()} | {integer(), atom()}.
-spec get_int2(rich_tuple()) -> integer().
get_int2({I1, _})
  when is_integer(I1) -> I1;
get_int2({_, I2}) -> I2.
