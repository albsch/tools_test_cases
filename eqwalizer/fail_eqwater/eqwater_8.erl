-module(eqwater_8).
-compile([nowarn_export_all, export_all]).

-type rich_tuple() ::
{atom(), integer()} | {integer(), atom()}.

-spec get_int6
  (rich_tuple()) -> number().
get_int6({A1, A2})
  when is_atom(A1) and is_atom(A2) -> 1;
get_int6({_, I}) -> I.
