-module(tycheck_simple_pass_60).
-compile([nowarn_export_all, export_all]).

% Intersection
-spec use_atom(atom()) -> atom().
use_atom(X) -> X.
