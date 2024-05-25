-module(eqwater_7).
-compile([nowarn_export_all, export_all]).



-spec occ03_cl
  ({a, atom()} | {b, binary()}) ->
  binary().
occ03_cl({a, A}) -> atom_to_binary(A);
occ03_cl({_, B}) -> B.
