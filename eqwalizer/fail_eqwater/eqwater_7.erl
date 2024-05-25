-module(eqwater_7).
-compile([nowarn_export_all, export_all]).

-type rich_tuple() ::
{atom(), integer()} | {integer(), atom()}.

-spec get_int4_neg
  (rich_tuple()) -> integer().
get_int4_neg({A, I})
  when is_atom(A) -> I;
get_int4_neg({_, I}) -> I.
