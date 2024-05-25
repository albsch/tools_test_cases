-module(eqwater_42).
-compile([nowarn_export_all, export_all]).



-type rich_tuple() ::
{atom(), integer()} | {integer(), atom()}.
-spec get_int3(rich_tuple()) -> integer().
get_int3({A, I})
  when is_atom(A) -> I;
get_int3({I, _}) -> I.
