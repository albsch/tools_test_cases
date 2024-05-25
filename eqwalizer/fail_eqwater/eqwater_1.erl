-module(eqwater_1).
-compile([nowarn_export_all, export_all]).

-record(union_field4, {
  x :: integer() | ok,
  y :: integer() | err
}).

-spec record_occ13_neg
    (#union_field4{}) -> integer().
record_occ13_neg(#union_field4{x = A, y = _}) -> A.
