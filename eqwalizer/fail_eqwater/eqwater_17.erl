-module(eqwater_17).
-compile([nowarn_export_all, export_all]).

-record(one_field, {
  f1 :: integer()
}).
-record(two_fields1, {
  f1 :: integer(),
  f2 :: integer()
}).

% we don't "unfold" records
% as tuples yet
-spec todo04
(#one_field{} | #two_fields1{}) ->
integer().
todo04(X) ->
  case X of
    {_N, _N1} -> X#one_field.f1
  end.
