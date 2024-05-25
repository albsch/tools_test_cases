-module(eqwater_10).
-compile([nowarn_export_all, export_all]).

-type rich_tuple() ::
{atom(), integer()} | {integer(), atom()}.

-spec get_int8_neg
  (rich_tuple()) -> number().
get_int8_neg({A, A1})
% A is none()
  when is_atom(A) andalso A == A1 -> 0;
get_int8_neg({_, I}) -> I.
