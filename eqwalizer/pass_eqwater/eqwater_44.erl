-module(eqwater_44).
-compile([nowarn_export_all, export_all]).



-spec use_num_literals(
  {number(), atom()} |
  {atom(), binary()}
) -> binary().
use_num_literals({3.14, A}) ->
  atom_to_binary(A);
use_num_literals({0, A}) ->
  atom_to_binary(A);
use_num_literals({N, _})
  when is_number(N) -> <<>>;
use_num_literals({_, B}) ->
  B.
