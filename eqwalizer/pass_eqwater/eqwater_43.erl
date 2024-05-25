-module(eqwater_43).
-compile([nowarn_export_all, export_all]).



-type rich_tuple() ::
{atom(), integer()} | {integer(), atom()}.
-spec get_int5
  (rich_tuple()) -> none().
get_int5({A, A})
  when is_atom(A) -> A.
