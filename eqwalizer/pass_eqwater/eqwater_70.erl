-module(eqwater_70).
-compile([nowarn_export_all, export_all]).



-type rich_tuple() ::
{atom(), integer()} | {integer(), atom()}.
-spec get_int(rich_tuple()) -> integer().
get_int({I, _}) when is_integer(I) -> I;
get_int({_, I}) -> I.
