-module(eqwater_9).
-compile([nowarn_export_all, export_all]).

-type rich_tuple() ::
{atom(), integer()} | {integer(), atom()}.

-spec get_int7_neg
  (rich_tuple()) -> number().
get_int7_neg({A, A})
  % A is none()
  when is_atom(A) -> 0;
get_int7_neg({_, I}) -> I.
