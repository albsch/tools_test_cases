-module(eqwater_83).
-compile([nowarn_export_all, export_all]).



% compare it with foo5
% occurrence typing for
% multi-param functions
% is not the same as for tuples
-spec foo6(
  atom() | binary(),
  atom() | binary()
) ->
  binary().
foo6(A1, A2) when
  is_atom(A1) and is_atom(A2) ->
  <<>>;
foo6(A, B) when
  is_atom(A) ->
  B;
foo6(B, A) when
  is_atom(A) ->
  B;
foo6(B1, B2) ->
  <<B1/binary, B2/binary>>.
